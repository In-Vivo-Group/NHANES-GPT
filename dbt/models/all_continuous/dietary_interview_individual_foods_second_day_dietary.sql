SELECT
SEQN as respondent_sequence_number,
WHEN WTDRD1 IS NOT NULL THEN WTDRD1WHEN WTDRD1 IS NULL THEN NULL 
ELSE NULL 
 END as dietary_day_one_sample_weight,
WHEN WTDR2D IS NOT NULL THEN WTDR2DWHEN WTDR2D IS NULL THEN NULL 
ELSE NULL 
 END as dietary_two_day_sample_weight,
WHEN DR2ILINE IS NOT NULL THEN DR2ILINEWHEN DR2ILINE IS NULL THEN NULL 
ELSE NULL 
 END as food_individual_component_number,
CASE
        WHEN DR2DRSTZ = 1 THEN 'Reliable and met the minimum criteria' 
WHEN DR2DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' 
WHEN DR2DRSTZ = 4 THEN 'Reported consuming breast-milk' 
WHEN DR2DRSTZ = 5 THEN 'Not done' 
WHEN DR2DRSTZ IS NULL THEN NULL 
ELSE NULL 
 END as dietary_recall_status,
WHEN DR2EXMER IS NOT NULL THEN DR2EXMERWHEN DR2EXMER IS NULL THEN NULL 
ELSE NULL 
 END as interviewer_id_code,
CASE
        WHEN DRABF = 1 THEN 'Yes' 
WHEN DRABF = 2 THEN 'No' 
WHEN DRABF IS NULL THEN NULL 
ELSE NULL 
 END as breast_fed_infant_either_day,
CASE
        WHEN DRDINT = 1 THEN 'Day 1 only' 
WHEN DRDINT = 2 THEN 'Day 1 and day 2' 
WHEN DRDINT IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_of_intake,
WHEN DR2DBIH IS NOT NULL THEN SAFE_CAST(DR2DBIH AS FLOAT64)WHEN DR2DBIH IS NULL THEN NULL 
ELSE NULL 
 END as of_days_b_w_intake_and_hh_interview,
CASE
        WHEN DR2DAY = 1 THEN 'Sunday' 
WHEN DR2DAY = 2 THEN 'Monday' 
WHEN DR2DAY = 3 THEN 'Tuesday' 
WHEN DR2DAY = 4 THEN 'Wednesday' 
WHEN DR2DAY = 5 THEN 'Thursday' 
WHEN DR2DAY = 6 THEN 'Friday' 
WHEN DR2DAY = 7 THEN 'Saturday' 
WHEN DR2DAY IS NULL THEN NULL 
ELSE NULL 
 END as intake_day_of_the_week,
CASE
        WHEN DR2LANG = 1 THEN 'English' 
WHEN DR2LANG = 2 THEN 'Spanish' 
WHEN DR2LANG = 3 THEN 'English and Spanish' 
WHEN DR2LANG = 4 THEN 'Other' 
WHEN DR2LANG = 5 THEN 'Asian Languages' 
WHEN DR2LANG = 6 THEN 'Asian Languages and English' 
WHEN DR2LANG IS NULL THEN NULL 
ELSE NULL 
 END as language_respondent_used_mostly,
WHEN DR2CCMNM IS NOT NULL THEN DR2CCMNMWHEN DR2CCMNM IS NULL THEN NULL 
ELSE NULL 
 END as combination_food_number,
CASE
        WHEN DR2CCMTX = 0 THEN 'Non-combination food' 
WHEN DR2CCMTX = 1 THEN 'Beverage w/ additions' 
WHEN DR2CCMTX = 2 THEN 'Cereal w/ additions' 
WHEN DR2CCMTX = 3 THEN 'Bread/baked products w/ additions' 
WHEN DR2CCMTX = 4 THEN 'Salad' 
WHEN DR2CCMTX = 5 THEN 'Sandwiches' 
WHEN DR2CCMTX = 6 THEN 'Soup' 
WHEN DR2CCMTX = 7 THEN 'Frozen meals' 
WHEN DR2CCMTX = 8 THEN 'Ice cream/frozen yogurt w/ additions' 
WHEN DR2CCMTX = 9 THEN 'Dried beans and vegetable w/ additions' 
WHEN DR2CCMTX = 10 THEN 'Fruit w/ additions' 
WHEN DR2CCMTX = 11 THEN 'Tortilla products' 
WHEN DR2CCMTX = 12 THEN 'Meat, poultry, fish' 
WHEN DR2CCMTX = 13 THEN 'LunchablesÂ®' 
WHEN DR2CCMTX = 14 THEN 'Chips w/ additions' 
WHEN DR2CCMTX = 90 THEN 'Other mixtures' 
WHEN DR2CCMTX IS NULL THEN NULL 
ELSE NULL 
 END as combination_food_type,
WHEN DR2_020 IS NOT NULL THEN DR2_020WHEN DR2_020 IS NULL THEN NULL 
ELSE NULL 
 END as time_of_eating_occasion_hh_mm,
CASE
        WHEN DR2_030Z = 1 THEN 'Breakfast' 
WHEN DR2_030Z = 2 THEN 'Lunch' 
WHEN DR2_030Z = 3 THEN 'Dinner' 
WHEN DR2_030Z = 4 THEN 'Supper' 
WHEN DR2_030Z = 5 THEN 'Brunch' 
WHEN DR2_030Z = 6 THEN 'Snack' 
WHEN DR2_030Z = 7 THEN 'Drink' 
WHEN DR2_030Z = 8 THEN 'Infant feeding' 
WHEN DR2_030Z = 9 THEN 'Extended consumption' 
WHEN DR2_030Z = 10 THEN 'Desayano' 
WHEN DR2_030Z = 11 THEN 'Almuerzo' 
WHEN DR2_030Z = 12 THEN 'Comida' 
WHEN DR2_030Z = 13 THEN 'Merienda' 
WHEN DR2_030Z = 14 THEN 'Cena' 
WHEN DR2_030Z = 15 THEN 'Entre comida' 
WHEN DR2_030Z = 16 THEN 'Botana' 
WHEN DR2_030Z = 17 THEN 'Bocadillo' 
WHEN DR2_030Z = 18 THEN 'Tentempie' 
WHEN DR2_030Z = 19 THEN 'Bebida' 
WHEN DR2_030Z = 91 THEN 'Other' 
WHEN DR2_030Z = 99 THEN 'Don\'t know' 
WHEN DR2_030Z IS NULL THEN NULL 
ELSE NULL 
 END as name_of_eating_occasion,
CASE
        WHEN DR2FS = 1 THEN 'Store - grocery/supermarket' 
WHEN DR2FS = 2 THEN 'Restaurant with waiter/waitress' 
WHEN DR2FS = 3 THEN 'Restaurant fast food/pizza' 
WHEN DR2FS = 4 THEN 'Bar/tavern/lounge' 
WHEN DR2FS = 5 THEN 'Restaurant no additional information' 
WHEN DR2FS = 6 THEN 'Cafeteria NOT in a K-12 school' 
WHEN DR2FS = 7 THEN 'Cafeteria in a K-12 school' 
WHEN DR2FS = 8 THEN 'Child/Adult care center' 
WHEN DR2FS = 9 THEN 'Child/Adult home care' 
WHEN DR2FS = 10 THEN 'Soup kitchen/shelter/food pantry' 
WHEN DR2FS = 11 THEN 'Meals on Wheels' 
WHEN DR2FS = 12 THEN 'Community food program - other' 
WHEN DR2FS = 13 THEN 'Community program no additional information' 
WHEN DR2FS = 14 THEN 'Vending machine' 
WHEN DR2FS = 15 THEN 'Common coffee pot or snack tray' 
WHEN DR2FS = 16 THEN 'From someone else/gift' 
WHEN DR2FS = 17 THEN 'Mail order purchase' 
WHEN DR2FS = 18 THEN 'Residential dining facility' 
WHEN DR2FS = 19 THEN 'Grown or caught by you or someone you know' 
WHEN DR2FS = 20 THEN 'Fish caught by you or someone you know' 
WHEN DR2FS = 24 THEN 'Sport, recreation, or entertainment facility' 
WHEN DR2FS = 25 THEN 'Street vendor, vending truck' 
WHEN DR2FS = 26 THEN 'Fundraiser sales' 
WHEN DR2FS = 27 THEN 'Store - convenience type' 
WHEN DR2FS = 28 THEN 'Store - no additional info' 
WHEN DR2FS = 91 THEN 'Other, specify' 
WHEN DR2FS = 99 THEN 'Don\'t know' 
WHEN DR2FS IS NULL THEN NULL 
ELSE NULL 
 END as source_of_food,
CASE
        WHEN DR2_040Z = 1 THEN 'Yes' 
WHEN DR2_040Z = 2 THEN 'No' 
WHEN DR2_040Z = 7 THEN 'Refused' 
WHEN DR2_040Z = 9 THEN 'Don\'t know' 
WHEN DR2_040Z IS NULL THEN NULL 
ELSE NULL 
 END as did_you_eat_this_meal_at_home,
WHEN DR2IFDCD IS NOT NULL THEN DR2IFDCDWHEN DR2IFDCD IS NULL THEN NULL 
ELSE NULL 
 END as usda_food_code,
WHEN DR2IGRMS IS NOT NULL THEN DR2IGRMSWHEN DR2IGRMS IS NULL THEN NULL 
ELSE NULL 
 END as grams,
WHEN DR2IKCAL IS NOT NULL THEN DR2IKCALWHEN DR2IKCAL IS NULL THEN NULL 
ELSE NULL 
 END as energy_kcal,
WHEN DR2IPROT IS NOT NULL THEN DR2IPROTWHEN DR2IPROT IS NULL THEN NULL 
ELSE NULL 
 END as protein_gm,
WHEN DR2ICARB IS NOT NULL THEN DR2ICARBWHEN DR2ICARB IS NULL THEN NULL 
ELSE NULL 
 END as carbohydrate_gm,
WHEN DR2ISUGR IS NOT NULL THEN DR2ISUGRWHEN DR2ISUGR IS NULL THEN NULL 
ELSE NULL 
 END as total_sugars_gm,
WHEN DR2IFIBE IS NOT NULL THEN DR2IFIBEWHEN DR2IFIBE IS NULL THEN NULL 
ELSE NULL 
 END as dietary_fiber_gm,
WHEN DR2ITFAT IS NOT NULL THEN DR2ITFATWHEN DR2ITFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_fat_gm,
WHEN DR2ISFAT IS NOT NULL THEN DR2ISFATWHEN DR2ISFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_saturated_fatty_acids_gm,
WHEN DR2IMFAT IS NOT NULL THEN DR2IMFATWHEN DR2IMFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_monounsaturated_fatty_acids_gm,
WHEN DR2IPFAT IS NOT NULL THEN DR2IPFATWHEN DR2IPFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_polyunsaturated_fatty_acids_gm,
WHEN DR2ICHOL IS NOT NULL THEN DR2ICHOLWHEN DR2ICHOL IS NULL THEN NULL 
ELSE NULL 
 END as cholesterol_mg,
WHEN DR2IATOC IS NOT NULL THEN DR2IATOCWHEN DR2IATOC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_e_as_alpha_tocopherol_mg,
WHEN DR2IATOA IS NOT NULL THEN DR2IATOAWHEN DR2IATOA IS NULL THEN NULL 
ELSE NULL 
 END as added_alpha_tocopherol_vitamin_e_mg,
WHEN DR2IRET IS NOT NULL THEN DR2IRETWHEN DR2IRET IS NULL THEN NULL 
ELSE NULL 
 END as retinol_mcg,
WHEN DR2IVARA IS NOT NULL THEN DR2IVARAWHEN DR2IVARA IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_a_rae_mcg,
WHEN DR2IACAR IS NOT NULL THEN DR2IACARWHEN DR2IACAR IS NULL THEN NULL 
ELSE NULL 
 END as alpha_carotene_mcg,
WHEN DR2IBCAR IS NOT NULL THEN DR2IBCARWHEN DR2IBCAR IS NULL THEN NULL 
ELSE NULL 
 END as beta_carotene_mcg,
WHEN DR2ICRYP IS NOT NULL THEN DR2ICRYPWHEN DR2ICRYP IS NULL THEN NULL 
ELSE NULL 
 END as beta_cryptoxanthin_mcg,
WHEN DR2ILYCO IS NOT NULL THEN DR2ILYCOWHEN DR2ILYCO IS NULL THEN NULL 
ELSE NULL 
 END as lycopene_mcg,
WHEN DR2ILZ IS NOT NULL THEN DR2ILZWHEN DR2ILZ IS NULL THEN NULL 
ELSE NULL 
 END as lutein_zeaxanthin_mcg,
WHEN DR2IVB1 IS NOT NULL THEN DR2IVB1WHEN DR2IVB1 IS NULL THEN NULL 
ELSE NULL 
 END as thiamin_vitamin_b1_mg,
WHEN DR2IVB2 IS NOT NULL THEN DR2IVB2WHEN DR2IVB2 IS NULL THEN NULL 
ELSE NULL 
 END as riboflavin_vitamin_b2_mg,
WHEN DR2INIAC IS NOT NULL THEN DR2INIACWHEN DR2INIAC IS NULL THEN NULL 
ELSE NULL 
 END as niacin_mg,
WHEN DR2IVB6 IS NOT NULL THEN DR2IVB6WHEN DR2IVB6 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b6_mg,
WHEN DR2IFOLA IS NOT NULL THEN DR2IFOLAWHEN DR2IFOLA IS NULL THEN NULL 
ELSE NULL 
 END as total_folate_mcg,
WHEN DR2IFA IS NOT NULL THEN DR2IFAWHEN DR2IFA IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_mcg,
WHEN DR2IFF IS NOT NULL THEN DR2IFFWHEN DR2IFF IS NULL THEN NULL 
ELSE NULL 
 END as food_folate_mcg,
WHEN DR2IFDFE IS NOT NULL THEN DR2IFDFEWHEN DR2IFDFE IS NULL THEN NULL 
ELSE NULL 
 END as folate_dfe_mcg,
WHEN DR2ICHL IS NOT NULL THEN SAFE_CAST(DR2ICHL AS FLOAT64)WHEN DR2ICHL IS NULL THEN NULL 
ELSE NULL 
 END as total_choline_mg,
WHEN DR2IVB12 IS NOT NULL THEN DR2IVB12WHEN DR2IVB12 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b12_mcg,
WHEN DR2IB12A IS NOT NULL THEN DR2IB12AWHEN DR2IB12A IS NULL THEN NULL 
ELSE NULL 
 END as added_vitamin_b12_mcg,
WHEN DR2IVC IS NOT NULL THEN DR2IVCWHEN DR2IVC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg,
WHEN DR2IVD IS NOT NULL THEN SAFE_CAST(DR2IVD AS FLOAT64)WHEN DR2IVD IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_d_d2_d3_mcg,
WHEN DR2IVK IS NOT NULL THEN DR2IVKWHEN DR2IVK IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_k_mcg,
WHEN DR2ICALC IS NOT NULL THEN DR2ICALCWHEN DR2ICALC IS NULL THEN NULL 
ELSE NULL 
 END as calcium_mg,
WHEN DR2IPHOS IS NOT NULL THEN DR2IPHOSWHEN DR2IPHOS IS NULL THEN NULL 
ELSE NULL 
 END as phosphorus_mg,
WHEN DR2IMAGN IS NOT NULL THEN DR2IMAGNWHEN DR2IMAGN IS NULL THEN NULL 
ELSE NULL 
 END as magnesium_mg,
WHEN DR2IIRON IS NOT NULL THEN DR2IIRONWHEN DR2IIRON IS NULL THEN NULL 
ELSE NULL 
 END as iron_mg,
WHEN DR2IZINC IS NOT NULL THEN DR2IZINCWHEN DR2IZINC IS NULL THEN NULL 
ELSE NULL 
 END as zinc_mg,
WHEN DR2ICOPP IS NOT NULL THEN DR2ICOPPWHEN DR2ICOPP IS NULL THEN NULL 
ELSE NULL 
 END as copper_mg,
WHEN DR2ISODI IS NOT NULL THEN DR2ISODIWHEN DR2ISODI IS NULL THEN NULL 
ELSE NULL 
 END as sodium_mg,
WHEN DR2IPOTA IS NOT NULL THEN DR2IPOTAWHEN DR2IPOTA IS NULL THEN NULL 
ELSE NULL 
 END as potassium_mg,
WHEN DR2ISELE IS NOT NULL THEN DR2ISELEWHEN DR2ISELE IS NULL THEN NULL 
ELSE NULL 
 END as selenium_mcg,
WHEN DR2ICAFF IS NOT NULL THEN DR2ICAFFWHEN DR2ICAFF IS NULL THEN NULL 
ELSE NULL 
 END as caffeine_mg,
WHEN DR2ITHEO IS NOT NULL THEN DR2ITHEOWHEN DR2ITHEO IS NULL THEN NULL 
ELSE NULL 
 END as theobromine_mg,
WHEN DR2IALCO IS NOT NULL THEN DR2IALCOWHEN DR2IALCO IS NULL THEN NULL 
ELSE NULL 
 END as alcohol_gm,
WHEN DR2IMOIS IS NOT NULL THEN DR2IMOISWHEN DR2IMOIS IS NULL THEN NULL 
ELSE NULL 
 END as moisture_gm,
WHEN DR2IS040 IS NOT NULL THEN DR2IS040WHEN DR2IS040 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_4_0_butanoic_gm,
WHEN DR2IS060 IS NOT NULL THEN DR2IS060WHEN DR2IS060 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_6_0_hexanoic_gm,
WHEN DR2IS080 IS NOT NULL THEN DR2IS080WHEN DR2IS080 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_8_0_octanoic_gm,
WHEN DR2IS100 IS NOT NULL THEN DR2IS100WHEN DR2IS100 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_10_0_decanoic_gm,
WHEN DR2IS120 IS NOT NULL THEN DR2IS120WHEN DR2IS120 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_12_0_dodecanoic_gm,
WHEN DR2IS140 IS NOT NULL THEN DR2IS140WHEN DR2IS140 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_14_0_tetradecanoic_gm,
WHEN DR2IS160 IS NOT NULL THEN DR2IS160WHEN DR2IS160 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_16_0_hexadecanoic_gm,
WHEN DR2IS180 IS NOT NULL THEN DR2IS180WHEN DR2IS180 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_18_0_octadecanoic_gm,
WHEN DR2IM161 IS NOT NULL THEN DR2IM161WHEN DR2IM161 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_16_1_hexadecenoic_gm,
WHEN DR2IM181 IS NOT NULL THEN DR2IM181WHEN DR2IM181 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_18_1_octadecenoic_gm,
WHEN DR2IM201 IS NOT NULL THEN DR2IM201WHEN DR2IM201 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_20_1_eicosenoic_gm,
WHEN DR2IM221 IS NOT NULL THEN DR2IM221WHEN DR2IM221 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_22_1_docosenoic_gm,
WHEN DR2IP182 IS NOT NULL THEN DR2IP182WHEN DR2IP182 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_2_octadecadienoic_gm,
WHEN DR2IP183 IS NOT NULL THEN DR2IP183WHEN DR2IP183 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_3_octadecatrienoic_gm,
WHEN DR2IP184 IS NOT NULL THEN DR2IP184WHEN DR2IP184 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_4_octadecatetraenoic_gm,
WHEN DR2IP204 IS NOT NULL THEN DR2IP204WHEN DR2IP204 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_20_4_eicosatetraenoic_gm,
WHEN DR2IP205 IS NOT NULL THEN DR2IP205WHEN DR2IP205 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_20_5_eicosapentaenoic_gm,
WHEN DR2IP225 IS NOT NULL THEN DR2IP225WHEN DR2IP225 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_22_5_docosapentaenoic_gm,
WHEN DR2IP226 IS NOT NULL THEN DR2IP226WHEN DR2IP226 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_22_6_docosahexaenoic_gm,
 FROM {{ ref('stg_dietary_interview_individual_foods_second_day_dietary') }}