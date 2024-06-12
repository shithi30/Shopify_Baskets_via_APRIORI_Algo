# # APRIORI tutorial
# APRIORI theory: https://www.youtube.com/watch?v=WGlMlS_Yydk
# APRIORI numerical: https://www.youtube.com/watch?v=LZii6N4vGDs
# APRIORI implementation in R: https://www.youtube.com/watch?v=NnJ4CHDeXOc

# ultimate good rules

# R libraries
library('arules')
library('arulesViz')

# load data
setwd("F:/Sheba/knowing the data")
beauty_data <- read.csv("apriori_beauty_lifetime.csv")

# data to transactions
beauty_transactions <- as(as.matrix(beauty_data), "transactions")

# strong rules
rules <- apriori(beauty_transactions, parameter=list(support=0.0001, confidence=0.3, target="rules"))
strong_rules <- sort(rules, by="confidence", decreasing=T)
inspect(head(strong_rules, 10))

## sample results
#     lhs                                       rhs                            support      confidence  lift      count
# [01] {Groom_Up_Packages}                      => {Beauty_Salon_Services}     0.009742693  0.6554622   0.9365751    78
# [02] {Best_Deal_for_Beauty,                                                                                          
#       Makeup_and_Hairstyle}                   => {Beauty_Salon_Services}     0.002373220  0.6551724   0.9361610    19
# [03] {Beauty_Salon_Services,                                                                                         
#       Wow_Flash,                                                                                                     
#       Body_Therapy_Wellness}                  => {Exclusive_Beauty_Services} 0.001873595  0.6521739   4.9679394    15
# [04] {Beauty_Salon_Mehedi_Packages,                                                                                  
#       Beauty_Salon_Services,                                                                                         
#       Body_Therapy_Wellness}                  => {Exclusive_Beauty_Services} 0.001373970  0.6470588   4.9289752    11
# [05] {Aporajita_Uniform,                                                                                             
#       Bag_Screen_Print}                       => {Accessories}               0.001124157  0.6428571 428.8928571     9
# [06] {Beauty_Salon_Services,                                                                                         
#       Wow_Flash,                                                                                                     
#       Sheba_Aparajita_Certified_Services}     => {Exclusive_Beauty_Services} 0.001124157  0.6428571   4.8969689     9
# [07] {Beauty_Salon_Services,                                                                                         
#       Exclusive_Beauty_Services,                                                                                     
#       Wedding_Mehendi}                        => {Makeup_and_Hairstyle}      0.001498876  0.6315789   6.2118195    12
# [08] {Exclusive_Beauty_Services}              => {Beauty_Salon_Services}     0.080564577  0.6137012   0.8769038   645
# [09] {Beauty_Salon_Services,                                                                                         
#       September_Special_Limited_Availability} => {Exclusive_Beauty_Services} 0.001498876  0.6000000   4.5705043    12
# [10] {Wow_Flash,                                                                                                     
#       Makeup_and_Hairstyle}                   => {Exclusive_Beauty_Services} 0.001124157  0.6000000   4.5705043     9

# frequent itemsets of 3
itemsets <- apriori(beauty_transactions, parameter=list(minlen=3, maxlen=3, support=0.01, target="frequent itemsets"))
inspect(head(sort(itemsets, by="support"), 25))




