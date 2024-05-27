#!/usr/bin/env python
# coding: utf-8

# In[1]:


# ref: https://www.geeksforgeeks.org/implementing-apriori-algorithm-in-python/

# import
import pandas as pd
import duckdb
from mlxtend.frequent_patterns import apriori, association_rules
from googleapiclient.discovery import build
from google.oauth2 import service_account
import win32com.client
from pretty_html_table import build_table
import time


# In[2]:


# time
start_time = time.time()


# In[3]:


# transactions
data = pd.read_excel('Ushop L4M Data.xlsx')
data = data[['Name', 'Email', 'Financial Status', 'Fulfillment Status', 'Lineitem quantity', 'Lineitem name', 'Lineitem sku', 'Payment ID', 'Paid at']]
data.columns = ['name', 'email', 'fin_status', 'fulfil_status', 'item_qty', 'item_name', 'sku', 'pay_id', 'paid_at']
display(data)


# In[4]:


# clean transactions
qry = '''
select name txn_id, item_name, item_qty
from data 
where name in(select distinct name from data where fin_status='paid' and fulfil_status='fulfilled')
'''
data = duckdb.query(qry).df()
display(data)


# In[5]:


# prepare transactions
basket_ushop = (data
    .groupby(['txn_id', 'item_name'])['item_qty']
    .sum().unstack().reset_index().fillna(0)
    .set_index('txn_id'))
display(basket_ushop)


# In[6]:


# one-hot encode
def hot_encode(x):
    if(x <= 0): return 0
    if(x >= 1): return 1
basket_ushop = basket_ushop.applymap(hot_encode)
display(basket_ushop)


# In[7]:


# itemsets
frq_items_df = apriori(basket_ushop.astype('bool'), min_support=0.02, use_colnames=True)

# rules
rules_df = association_rules(frq_items_df, metric="lift", min_threshold=1)
rules_df = rules_df.sort_values(['confidence', 'lift'], ascending=[False, False])


# In[8]:


# clean itemsets
frq_items_df['itemsets'] = [itemset.replace("'", "")[11:-2] for itemset in frq_items_df['itemsets'].astype('string').tolist()]
frq_items_df['items'] = [itemset.count(", ") + 1 for itemset in frq_items_df['itemsets'].tolist()] 
frq_items_df = duckdb.query('''select items, itemsets itemset, support from frq_items_df where items>1 order by support desc''').df()
display(frq_items_df)


# In[9]:


# clean rules
cols = ['antecedents', 'consequents']
rules_df[cols] = rules_df[cols].applymap(lambda x: tuple(x))
rules_df = rules_df.explode('antecedents').reset_index(drop=True).explode('consequents').reset_index(drop=True)
rules_df = duckdb.query('''select antecedents antecedent, consequents consequent, support, confidence, lift, leverage, conviction, zhangs_metric from rules_df''').df()
display(rules_df)


# In[10]:


# credentials
SERVICE_ACCOUNT_FILE = 'read-write-to-gsheet-apis-1-04f16c652b1e.json'
SAMPLE_SPREADSHEET_ID = '1gkLRp59RyRw4UFds0-nNQhhWOaS4VFxtJ_Hgwg2x2A0'
SCOPES = ['https://www.googleapis.com/auth/spreadsheets']

# APIs
creds = service_account.Credentials.from_service_account_file(SERVICE_ACCOUNT_FILE, scopes=SCOPES)
service = build('sheets', 'v4', credentials=creds)
sheet = service.spreadsheets()

# clear
resultClear = sheet.values().clear(spreadsheetId=SAMPLE_SPREADSHEET_ID, range="'APRIORI'!A2:L").execute()

# update itemsets
write_df = frq_items_df.fillna('')
request = sheet.values().update(spreadsheetId=SAMPLE_SPREADSHEET_ID, range="'APRIORI'!A2", valueInputOption='USER_ENTERED', body={'values': [write_df.columns.values.tolist()] + write_df.values.tolist()}).execute()

# update rules
write_df = rules_df.fillna('')
request = sheet.values().update(spreadsheetId=SAMPLE_SPREADSHEET_ID, range="'APRIORI'!E2", valueInputOption='USER_ENTERED', body={'values': [write_df.columns.values.tolist()] + write_df.values.tolist()}).execute()


# In[11]:


# email
ol = win32com.client.Dispatch("outlook.application")
olmailitem = 0x0
newmail = ol.CreateItem(olmailitem)

# subject
newmail.Subject = 'Baskets for Ushop'

# recipients
newmail.To = 'shithi.maitra@unilever.com'
# newmail.To = 'avra.barua@unilever.com'
# newmail.CC = 'mehedi.asif@unilever.com; zakeea.husain@unilever.com; nazmussajid.ubl@gmail.com'

# body
newmail.HTMLbody = f'''
Dear concern,<br><br>
Thanks for sharing transactions from the <a href="https://ushopbd.com/">Shopify Ushopbd portal</a>. Here, I form baskets (itemsets of 'n' SKUs) using <b>APRIORI</b> algorithm. Below is a snapshot of top-05 rules:<br><br>
''' + build_table(rules_df.head(5), 'grey_dark', font_size='10px') + '''<br>
<i>A/B</i>-tests can be run on <i>Ushopbd</i> using the results. Your sharing of the method to download transactions will fully automate the process. Some definitions:<br><br>
- <b>*</b>Antecedent (<i>x</i>), <b>*</b>Consequent (<i>y</i>): If a customer buys <i>x</i>, she buys <i>y</i> too; i.e., <i>x</i> => <i>y</i><br>
- <b>*</b>Support: Frequency of <i>x</i> => <i>y</i><br>
- <b>*</b>Confidence: Probability of buying <i>y</i>, given <i>x</i> is bought<br>
- <b>*</b>Lift, <b>*</b>Leverage: Comparison of theoretical vs. observed tendencies<br>
- <b>*</b>Conviction, <b>*</b>Zhangs' metric: Correlation between <i>x</i> and <i>y</i><br><br>
You can find the complete results attached. Note, minimum support = 0.02, which may further be fine-tuned. This email is formatted and shot using <i>win32com</i>.<br><br>
Regards,<br>
Shithi Maitra<br>
Asst. Manager, Cust. Service Excellence<br>
Unilever BD Ltd.<br>
'''

# attachment
folder = r'C:\\Users\\Shithi.Maitra\\Unilever Codes\\Scraping Scripts\\'
filename = folder + "itemsets_for_ushop.xlsx"
newmail.Attachments.Add(filename)

# send
newmail.Send()


# In[12]:


# stats
elapsed_time = time.time() - start_time
print("Elapsed time to report (mins): " + str(round(elapsed_time / 60.00, 2)))

