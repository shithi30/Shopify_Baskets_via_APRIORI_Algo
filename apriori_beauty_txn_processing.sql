SELECT 
    -- customer-wise lifetime services they took, in the form of transactions
    IF(SUM(Full_Body_Therapy)>0, 1, 0) Full_Body_Therapy,
    IF(SUM(Head__Neck___Shoulder)>0, 1, 0) Head__Neck___Shoulder,
    IF(SUM(Back_Therapy)>0, 1, 0) Back_Therapy,
    IF(SUM(Foot_Massage)>0, 1, 0) Foot_Massage,
    IF(SUM(Foot_therapy)>0, 1, 0) Foot_therapy,
    IF(SUM(Full_Body_Thai_Therapy)>0, 1, 0) Full_Body_Thai_Therapy,
    IF(SUM(Hot_Oil_Massage)>0, 1, 0) Hot_Oil_Massage,
    IF(SUM(Quick_Relaxation)>0, 1, 0) Quick_Relaxation,
    IF(SUM(Ultimate_Relaxation)>0, 1, 0) Ultimate_Relaxation,
    IF(SUM(Akth_Engagement_Makeup)>0, 1, 0) Akth_Engagement_Makeup,
    IF(SUM(City_Bank_Makeup_Package)>0, 1, 0) City_Bank_Makeup_Package,
    IF(SUM(Complete_Makeover)>0, 1, 0) Complete_Makeover,
    IF(SUM(Face_Make_Up)>0, 1, 0) Face_Make_Up,
    IF(SUM(Holud_Mehendi_Makeup)>0, 1, 0) Holud_Mehendi_Makeup,
    IF(SUM(Wedding_Makeover_Packages)>0, 1, 0) Wedding_Makeover_Packages,
    IF(SUM(Wedding_Reception_Makeup)>0, 1, 0) Wedding_Reception_Makeup,
    IF(SUM(Facial)>0, 1, 0) Facial,
    IF(SUM(Aloevera_Facial)>0, 1, 0) Aloevera_Facial,
    IF(SUM(Aparajita_Facial)>0, 1, 0) Aparajita_Facial,
    IF(SUM(Gold_Facial)>0, 1, 0) Gold_Facial,
    IF(SUM(Herbal_Facial)>0, 1, 0) Herbal_Facial,
    IF(SUM(Anti_Tan_facial_Kit)>0, 1, 0) Anti_Tan_facial_Kit,
    IF(SUM(Anti_Tan_Orange_Facial)>0, 1, 0) Anti_Tan_Orange_Facial,
    IF(SUM(Instant_Glow_Facial)>0, 1, 0) Instant_Glow_Facial,
    IF(SUM(Papaya_Facial)>0, 1, 0) Papaya_Facial,
    IF(SUM(Party_Glow_Facial)>0, 1, 0) Party_Glow_Facial,
    IF(SUM(Raaga_Anti_Acne_Facial)>0, 1, 0) Raaga_Anti_Acne_Facial,
    IF(SUM(Raaga_Anti_aging_Facial)>0, 1, 0) Raaga_Anti_aging_Facial,
    IF(SUM(Raaga_Fairness_Facial)>0, 1, 0) Raaga_Fairness_Facial,
    IF(SUM(Raaga_Platinum_Facial)>0, 1, 0) Raaga_Platinum_Facial,
    IF(SUM(Spa_Facial)>0, 1, 0) Spa_Facial,
    IF(SUM(Scrubs)>0, 1, 0) Scrubs,
    IF(SUM(Underarm_Waxing)>0, 1, 0) Underarm_Waxing,
    IF(SUM(Waxing)>0, 1, 0) Waxing,
    IF(SUM(Waxing__half_leg___half_hand_)>0, 1, 0) Waxing__half_leg___half_hand_,
    IF(SUM(Haircut)>0, 1, 0) Haircut,
    IF(SUM(Aparajita_Hair_Treatment)>0, 1, 0) Aparajita_Hair_Treatment,
    IF(SUM(Basic_simple_HairDo)>0, 1, 0) Basic_simple_HairDo,
    IF(SUM(Boishakhi_HairDo)>0, 1, 0) Boishakhi_HairDo,
    IF(SUM(Care_For_Your_Hair)>0, 1, 0) Care_For_Your_Hair,
    IF(SUM(Hair_Colour)>0, 1, 0) Hair_Colour,
    IF(SUM(Hair_Highlights)>0, 1, 0) Hair_Highlights,
    IF(SUM(Hair_Rebonding)>0, 1, 0) Hair_Rebonding,
    IF(SUM(Hair_Style)>0, 1, 0) Hair_Style,
    IF(SUM(Hair_Treatment)>0, 1, 0) Hair_Treatment,
    IF(SUM(Aparajita_Bag)>0, 1, 0) Aparajita_Bag,
    IF(SUM(Round_Collar)>0, 1, 0) Round_Collar,
    IF(SUM(T_Shirt)>0, 1, 0) T_Shirt,
    IF(SUM(Uniform)>0, 1, 0) Uniform,
    IF(SUM(Polo)>0, 1, 0) Polo,
    IF(SUM(Pre_Bridal)>0, 1, 0) Pre_Bridal,
    IF(SUM(Sharee_Draping)>0, 1, 0) Sharee_Draping,
    IF(SUM(Manicure)>0, 1, 0) Manicure,
    IF(SUM(Pedicure)>0, 1, 0) Pedicure,
    IF(SUM(Herbal_Pedicure)>0, 1, 0) Herbal_Pedicure,
    IF(SUM(Manicure_with_Uptan)>0, 1, 0) Manicure_with_Uptan,
    IF(SUM(Men_s_Manicures___Pedicures)>0, 1, 0) Men_s_Manicures___Pedicures,
    IF(SUM(Pedicure_with_Uptan)>0, 1, 0) Pedicure_with_Uptan,
    IF(SUM(Simple_Nail_Art)>0, 1, 0) Simple_Nail_Art,
    IF(SUM(Salon)>0, 1, 0) Salon,
    IF(SUM(Beauty_Kit)>0, 1, 0) Beauty_Kit,
    IF(SUM(Boishakhi_TouchUp)>0, 1, 0) Boishakhi_TouchUp,
    IF(SUM(Brightening_Treatment)>0, 1, 0) Brightening_Treatment,
    IF(SUM(Protein_Treatment)>0, 1, 0) Protein_Treatment,
    IF(SUM(City_Bank_Grooming_Package)>0, 1, 0) City_Bank_Grooming_Package,
    IF(SUM(Complete_Care)>0, 1, 0) Complete_Care,
    IF(SUM(Quick_Groom_Up)>0, 1, 0) Quick_Groom_Up,
    IF(SUM(Threading)>0, 1, 0) Threading,
    IF(SUM(Special_Cleanup)>0, 1, 0) Special_Cleanup,
    IF(SUM(Shaving___Trimming)>0, 1, 0) Shaving___Trimming,
    IF(SUM(Consultancy)>0, 1, 0) Consultancy,
    IF(SUM(Eid_Standard_Package)>0, 1, 0) Eid_Standard_Package,
    IF(SUM(Groom_up_Subscription)>0, 1, 0) Groom_up_Subscription,
    IF(SUM(Instant_Glow_Package)>0, 1, 0) Instant_Glow_Package,
    IF(SUM(Jersey)>0, 1, 0) Jersey,
    IF(SUM(Kurbani)>0, 1, 0) Kurbani,
    IF(SUM(Monthly)>0, 1, 0) Monthly,
    IF(SUM(Twice_A_Month)>0, 1, 0) Twice_A_Month,
    IF(SUM(Boishakhi_Mehedi)>0, 1, 0) Boishakhi_Mehedi,
    IF(SUM(Both_Hand_Mehendi)>0, 1, 0) Both_Hand_Mehendi,
    IF(SUM(Bridal_Henna)>0, 1, 0) Bridal_Henna,
    IF(SUM(Simple_Mehendi)>0, 1, 0) Simple_Mehendi,
    IF(SUM(Ma_Ar_Ami)>0, 1, 0) Ma_Ar_Ami,
    IF(SUM(Ma_Er_Jonno_Aram)>0, 1, 0) Ma_Er_Jonno_Aram,
    IF(SUM(Ma_er_jonno_Groomup)>0, 1, 0) Ma_er_jonno_Groomup
FROM
    -- individual customers and their uniquely taken itemsets 
    (SELECT DISTINCT 
        customer_id, 
        IF(services LIKE '%Full Body Therapy%', 1, 0) Full_Body_Therapy,
        IF(services LIKE '%Head, Neck & Shoulder%', 1, 0) Head__Neck___Shoulder,
        IF(services LIKE '%Back Therapy%', 1, 0) Back_Therapy,
        IF(services LIKE '%Foot Massage%', 1, 0) Foot_Massage,
        IF(services LIKE '%Foot therapy%', 1, 0) Foot_therapy,
        IF(services LIKE '%Full Body Thai Therapy%', 1, 0) Full_Body_Thai_Therapy,
        IF(services LIKE '%Hot Oil Massage%', 1, 0) Hot_Oil_Massage,
        IF(services LIKE '%Quick Relaxation%', 1, 0) Quick_Relaxation,
        IF(services LIKE '%Ultimate Relaxation%', 1, 0) Ultimate_Relaxation,
        IF(services LIKE '%Akth/Engagement Makeup%', 1, 0) Akth_Engagement_Makeup,
        IF(services LIKE '%City Bank Makeup Package%', 1, 0) City_Bank_Makeup_Package,
        IF(services LIKE '%Complete Makeover%', 1, 0) Complete_Makeover,
        IF(services LIKE '%Face Make-Up%', 1, 0) Face_Make_Up,
        IF(services LIKE '%Holud/Mehendi Makeup%', 1, 0) Holud_Mehendi_Makeup,
        IF(services LIKE '%Wedding Makeover Packages%', 1, 0) Wedding_Makeover_Packages,
        IF(services LIKE '%Wedding/Reception Makeup%', 1, 0) Wedding_Reception_Makeup,
        
        IF(services LIKE '%Facial%'
            AND services NOT LIKE '%Aloevera Facial%'
            AND services NOT LIKE '%Aparajita Facial%'
            AND services NOT LIKE '%Gold Facial%'
            AND services NOT LIKE '%Herbal Facial%'
            AND services NOT LIKE '%Anti Tan facial Kit%'
            AND services NOT LIKE '%Anti-Tan Orange Facial%'
            AND services NOT LIKE '%Instant Glow Facial%'
            AND services NOT LIKE '%Papaya Facial%'
            AND services NOT LIKE '%Party Glow Facial%'
            AND services NOT LIKE '%Raaga Anti-Acne Facial%'
            AND services NOT LIKE '%Raaga Anti-aging Facial%'
            AND services NOT LIKE '%Raaga Fairness Facial%'
            AND services NOT LIKE '%Raaga Platinum Facial%'
            AND services NOT LIKE '%Spa Facial%', 1, 0) Facial,
        
        IF(services LIKE '%Aloevera Facial%', 1, 0) Aloevera_Facial,
        IF(services LIKE '%Aparajita Facial%', 1, 0) Aparajita_Facial,
        IF(services LIKE '%Gold Facial%', 1, 0) Gold_Facial,
        IF(services LIKE '%Herbal Facial%', 1, 0) Herbal_Facial,
        IF(services LIKE '%Anti Tan facial Kit%', 1, 0) Anti_Tan_facial_Kit,
        IF(services LIKE '%Anti-Tan Orange Facial%', 1, 0) Anti_Tan_Orange_Facial,
        IF(services LIKE '%Instant Glow Facial%', 1, 0) Instant_Glow_Facial,
        IF(services LIKE '%Papaya Facial%', 1, 0) Papaya_Facial,
        IF(services LIKE '%Party Glow Facial%', 1, 0) Party_Glow_Facial,
        IF(services LIKE '%Raaga Anti-Acne Facial%', 1, 0) Raaga_Anti_Acne_Facial,
        IF(services LIKE '%Raaga Anti-aging Facial%', 1, 0) Raaga_Anti_aging_Facial,
        IF(services LIKE '%Raaga Fairness Facial%', 1, 0) Raaga_Fairness_Facial,
        IF(services LIKE '%Raaga Platinum Facial%', 1, 0) Raaga_Platinum_Facial,
        IF(services LIKE '%Spa Facial%', 1, 0) Spa_Facial,
        IF(services LIKE '%Scrubs%', 1, 0) Scrubs,
        IF(services LIKE '%Underarm Waxing%', 1, 0) Underarm_Waxing,
        
        IF(services LIKE '%Waxing%'
            AND services NOT LIKE '%Underarm Waxing%'
            AND services NOT LIKE '%Waxing (half leg + half hand)%', 1, 0) Waxing,
            
        IF(services LIKE '%Waxing (half leg + half hand)%', 1, 0) Waxing__half_leg___half_hand_,
        
        IF(services LIKE '%Haircut%' OR services LIKE '%Hair Cut%', 1, 0) Haircut,
        
        IF(services LIKE '%Aparajita Hair Treatment%', 1, 0) Aparajita_Hair_Treatment,
        IF(services LIKE '%Basic simple HairDo%', 1, 0) Basic_simple_HairDo,
        IF(services LIKE '%Boishakhi HairDo%', 1, 0) Boishakhi_HairDo,
        IF(services LIKE '%Care For Your Hair%', 1, 0) Care_For_Your_Hair,
        IF(services LIKE '%Hair Colour%', 1, 0) Hair_Colour,
        IF(services LIKE '%Hair Highlights%', 1, 0) Hair_Highlights,
        
        IF(services LIKE '%Hair Rebonding%' OR services LIKE '%Hair Rebounding%', 1, 0) Hair_Rebonding,
        
        IF(services LIKE '%Hair Style%', 1, 0) Hair_Style,
        
        IF(services LIKE '%Hair Treatment%'
            AND services NOT LIKE '%Aparajita Hair Treatment%', 1, 0) Hair_Treatment,
            
        IF(services LIKE '%Aparajita Bag%', 1, 0) Aparajita_Bag,
        IF(services LIKE '%Round Collar%', 1, 0) Round_Collar,
        IF(services LIKE '%T-Shirt%', 1, 0) T_Shirt,
        IF(services LIKE '%Uniform%', 1, 0) Uniform,
        IF(services LIKE '%Polo%', 1, 0) Polo,
        IF(services LIKE '%Pre Bridal%', 1, 0) Pre_Bridal,
        IF(services LIKE '%Sharee Draping%', 1, 0) Sharee_Draping,
        
        IF(services LIKE '%Manicure%'
            AND services NOT LIKE '%Manicure with Uptan%'
            AND services NOT LIKE "%Men's Manicures & Pedicures%", 1, 0) Manicure,
        
        IF(services LIKE '%Pedicure%'
            AND services NOT LIKE '%Herbal Pedicure%'
            AND services NOT LIKE "%Men's Manicures & Pedicures%"
            AND services NOT LIKE '%Pedicure with Uptan%', 1, 0) Pedicure,
        
        IF(services LIKE '%Herbal Pedicure%', 1, 0) Herbal_Pedicure,
        IF(services LIKE '%Manicure with Uptan%', 1, 0) Manicure_with_Uptan,
        IF(services LIKE "%Men's Manicures & Pedicures%", 1, 0) Men_s_Manicures___Pedicures,
        IF(services LIKE '%Pedicure with Uptan%', 1, 0) Pedicure_with_Uptan,
        IF(services LIKE '%Simple Nail Art%', 1, 0) Simple_Nail_Art,
        IF(services LIKE '%Salon%', 1, 0) Salon,
        IF(services LIKE '%Beauty Kit%', 1, 0) Beauty_Kit,
        IF(services LIKE '%Boishakhi TouchUp%', 1, 0) Boishakhi_TouchUp,
        IF(services LIKE '%Brightening Treatment%', 1, 0) Brightening_Treatment,
        IF(services LIKE '%Protein Treatment%', 1, 0) Protein_Treatment,
        IF(services LIKE '%City Bank Grooming Package%', 1, 0) City_Bank_Grooming_Package,
        IF(services LIKE '%Complete Care%', 1, 0) Complete_Care,
        IF(services LIKE '%Quick Groom Up%', 1, 0) Quick_Groom_Up,
        IF(services LIKE '%Threading%', 1, 0) Threading,
        IF(services LIKE '%Special Cleanup%', 1, 0) Special_Cleanup,
        IF(services LIKE '%Shaving & Trimming%', 1, 0) Shaving___Trimming,
        IF(services LIKE '%Consultancy%', 1, 0) Consultancy,
        IF(services LIKE '%Eid Standard Package%', 1, 0) Eid_Standard_Package,
        IF(services LIKE '%Groom up Subscription%', 1, 0) Groom_up_Subscription,
        IF(services LIKE '%Instant Glow Package%', 1, 0) Instant_Glow_Package,
        IF(services LIKE '%Jersey%', 1, 0) Jersey,
        IF(services LIKE '%Kurbani%', 1, 0) Kurbani,
        IF(services LIKE '%Monthly%', 1, 0) Monthly,
        IF(services LIKE '%Twice A Month%', 1, 0) Twice_A_Month,
        IF(services LIKE '%Boishakhi Mehedi%', 1, 0) Boishakhi_Mehedi,
        IF(services LIKE '%Both Hand Mehendi%', 1, 0) Both_Hand_Mehendi,
        IF(services LIKE '%Bridal Henna%', 1, 0) Bridal_Henna,
        IF(services LIKE '%Simple Mehendi%', 1, 0) Simple_Mehendi,
        IF(services LIKE '%Ma Ar Ami%', 1, 0) Ma_Ar_Ami,
        IF(services LIKE '%Ma Er Jonno Aram%', 1, 0) Ma_Er_Jonno_Aram,
        IF(services LIKE '%Ma er jonno Groomup%', 1, 0) Ma_er_jonno_Groomup
        
    FROM partner_order_report 
    WHERE master_category_id IN(183, 334, 544, 296)) A
    
GROUP BY customer_id