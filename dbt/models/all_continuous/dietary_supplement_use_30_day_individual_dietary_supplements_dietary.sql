SELECT
SEQN as respondent_sequence_number,
WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64)WHEN DSDPID IS NULL THEN NULL 
ELSE NULL 
 END as supplement_id_number,
CASE
        WHEN DSDSUPP = 'Supplement Name' THEN 'Value was recorded' 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE NULL 
 END as supplement_name,
CASE
        WHEN DSDANTA = 0 THEN 'Non-antacid supplement' 
WHEN DSDANTA = 1 THEN 'Antacid reported with dietary supplement (DSQ)' 
WHEN DSDANTA = 2 THEN 'Antacid reported with medication (RXQ)' 
WHEN DSDANTA IS NULL THEN NULL 
ELSE NULL 
 END as antacid_reported_as_a_dietary_supplement,
CASE
        WHEN DSD070 = 1 THEN 'Yes' 
WHEN DSD070 = 2 THEN 'No' 
WHEN DSD070 IS NULL THEN NULL 
ELSE NULL 
 END as was_container_seen,
CASE
        WHEN DSDMTCH = 1 THEN 'Exact or near exact match' 
WHEN DSDMTCH = 2 THEN 'Probable match' 
WHEN DSDMTCH = 3 THEN 'Generic match' 
WHEN DSDMTCH = 4 THEN 'Reasonable match' 
WHEN DSDMTCH = 5 THEN 'Default match' 
WHEN DSDMTCH = 6 THEN 'No match' 
WHEN DSDMTCH = 7 THEN 'Refused' 
WHEN DSDMTCH = 9 THEN 'Don\'t know' 
WHEN DSDMTCH IS NULL THEN NULL 
ELSE NULL 
 END as matching_code,
WHEN DSD090 IS NOT NULL THEN DSD090WHEN DSD090 IS NULL THEN NULL 
ELSE NULL 
 END as how_long_supplement_taken_days,
WHEN DSD103 IS NOT NULL THEN DSD103WHEN DSD103 IS NULL THEN NULL 
ELSE NULL 
 END as days_supplement_taken_past_30_days,
WHEN DSD122Q IS NOT NULL THEN DSD122QWHEN DSD122Q IS NULL THEN NULL 
ELSE NULL 
 END as quantity_of_supplement_taken_daily,
CASE
        WHEN DSD122U = 1 THEN 'TABLETS, CAPSULES, PILLS, CAPLETS, SOFTGELS, GEL CAPS, VEGICAPS, CHEWABLE TABLETS' 
WHEN DSD122U = 2 THEN 'Droppers' 
WHEN DSD122U = 3 THEN 'Drops' 
WHEN DSD122U = 5 THEN 'Injections/shots' 
WHEN DSD122U = 6 THEN 'LOZENGES/COUGH DROPS' 
WHEN DSD122U = 7 THEN 'Milliliters' 
WHEN DSD122U = 11 THEN 'Tablespoons' 
WHEN DSD122U = 12 THEN 'Teaspoons' 
WHEN DSD122U = 13 THEN 'Wafers' 
WHEN DSD122U = 15 THEN 'Cans' 
WHEN DSD122U = 16 THEN 'Grams' 
WHEN DSD122U = 17 THEN 'Dots' 
WHEN DSD122U = 18 THEN 'Cups' 
WHEN DSD122U = 19 THEN 'Sprays/Squirts' 
WHEN DSD122U = 20 THEN 'CHEWS/GUMMIES' 
WHEN DSD122U = 21 THEN 'Scoop' 
WHEN DSD122U = 22 THEN 'CC' 
WHEN DSD122U = 23 THEN 'Capful' 
WHEN DSD122U = 27 THEN 'Ounces' 
WHEN DSD122U = 28 THEN 'Packages/Packets' 
WHEN DSD122U = 29 THEN 'Vial' 
WHEN DSD122U = 30 THEN 'Gumball' 
WHEN DSD122U = 31 THEN 'Strips' 
WHEN DSD122U = 32 THEN 'Bottle' 
WHEN DSD122U = 77 THEN 'Refused' 
WHEN DSD122U = 99 THEN 'Don\'t Know' 
WHEN DSD122U IS NULL THEN NULL 
ELSE NULL 
 END as dosage_form,
WHEN DSDACTSS IS NOT NULL THEN DSDACTSSWHEN DSDACTSS IS NULL THEN NULL 
ELSE NULL 
 END as reported_serving_size_label_serving_size,
CASE
        WHEN DSDDAY1 = 1 THEN 'Yes' 
WHEN DSDDAY1 = 2 THEN 'No' 
WHEN DSDDAY1 = 7 THEN 'Refused' 
WHEN DSDDAY1 = 9 THEN 'Don\'t know' 
WHEN DSDDAY1 IS NULL THEN NULL 
ELSE NULL 
 END as reported_product_during_day_1,
CASE
        WHEN DSDDAY2 = 1 THEN 'Yes' 
WHEN DSDDAY2 = 2 THEN 'No' 
WHEN DSDDAY2 = 7 THEN 'Refused' 
WHEN DSDDAY2 = 9 THEN 'Don\'t know' 
WHEN DSDDAY2 IS NULL THEN NULL 
ELSE NULL 
 END as reported_product_during_day_2,
CASE
        WHEN DSQ124 = 1 THEN 'Decided to take it for reasons of my own' 
WHEN DSQ124 = 2 THEN 'A doctor or other health provider told me to' 
WHEN DSQ124 = 7 THEN 'Refused' 
WHEN DSQ124 = 9 THEN 'Don\'t know' 
WHEN DSQ124 IS NULL THEN NULL 
ELSE NULL 
 END as took_product_on_own_or_doctor_advised,
CASE
        WHEN DSQ128A = 10 THEN 'FOR GOOD BOWEL/COLON HEALTH' 
WHEN DSQ128A = 77 THEN 'Refused' 
WHEN DSQ128A = 99 THEN 'Don\'t Know' 
WHEN DSQ128A IS NULL THEN NULL 
ELSE NULL 
 END as for_good_bowel_colon_health,
CASE
        WHEN DSQ128B = 11 THEN 'FOR PROSTATE HEALTH' 
WHEN DSQ128B IS NULL THEN NULL 
ELSE NULL 
 END as for_prostate_health,
CASE
        WHEN DSQ128C = 12 THEN 'FOR MENTAL HEALTH' 
WHEN DSQ128C IS NULL THEN NULL 
ELSE NULL 
 END as for_mental_health,
CASE
        WHEN DSQ128D = 13 THEN 'TO PREVENT HEALTH PROBLEMS' 
WHEN DSQ128D IS NULL THEN NULL 
ELSE NULL 
 END as to_prevent_health_problems,
CASE
        WHEN DSQ128E = 14 THEN 'TO IMPROVE MY OVERALL HEALTH' 
WHEN DSQ128E IS NULL THEN NULL 
ELSE NULL 
 END as to_improve_my_overall_health,
CASE
        WHEN DSQ128F = 15 THEN 'FOR TEETH, PREVENT CAVITIES' 
WHEN DSQ128F IS NULL THEN NULL 
ELSE NULL 
 END as for_teeth_prevent_cavities,
CASE
        WHEN DSQ128G = 16 THEN 'TO SUPPLEMENT MY DIET, FOOD NOT ENOUGH' 
WHEN DSQ128G IS NULL THEN NULL 
ELSE NULL 
 END as to_supplement_my_diet_food_not_enough,
CASE
        WHEN DSQ128H = 17 THEN 'TO MAINTAIN HEALTH (TO STAY HEALTHY)' 
WHEN DSQ128H IS NULL THEN NULL 
ELSE NULL 
 END as to_maintain_health_to_stay_healthy,
CASE
        WHEN DSQ128I = 18 THEN 'TO PREVENT COLDS, BOOST IMMUNE SYSTEM' 
WHEN DSQ128I IS NULL THEN NULL 
ELSE NULL 
 END as to_prevent_colds_boost_immune_system,
CASE
        WHEN DSQ128J = 19 THEN 'FOR HEART HEALTH, CHOLESTEROL' 
WHEN DSQ128J IS NULL THEN NULL 
ELSE NULL 
 END as for_heart_health_cholesterol,
CASE
        WHEN DSQ128K = 20 THEN 'FOR EYE HEALTH' 
WHEN DSQ128K IS NULL THEN NULL 
ELSE NULL 
 END as for_eye_health,
CASE
        WHEN DSQ128L = 21 THEN 'FOR HEALTHY JOINTS, ARTHRITIS' 
WHEN DSQ128L IS NULL THEN NULL 
ELSE NULL 
 END as for_healthy_joints_arthritis,
CASE
        WHEN DSQ128M = 22 THEN 'HEALTHY SKIN, HAIR, AND NAIL' 
WHEN DSQ128M IS NULL THEN NULL 
ELSE NULL 
 END as for_healthy_skin_hair_and_nails,
CASE
        WHEN DSQ128N = 23 THEN 'FOR WEIGHT LOSS' 
WHEN DSQ128N IS NULL THEN NULL 
ELSE NULL 
 END as for_weight_loss,
CASE
        WHEN DSQ128O = 24 THEN 'FOR BONE HEALTH, BUILD STRONG BONES, OSTEOPOROSIS' 
WHEN DSQ128O IS NULL THEN NULL 
ELSE NULL 
 END as for_bone_health,
CASE
        WHEN DSQ128P = 25 THEN 'TO GET MORE ENERGY' 
WHEN DSQ128P IS NULL THEN NULL 
ELSE NULL 
 END as to_get_more_energy,
CASE
        WHEN DSQ128Q = 26 THEN 'FOR PREGNANCY/BREASTFEEDING' 
WHEN DSQ128Q IS NULL THEN NULL 
ELSE NULL 
 END as for_pregnancy_breastfeeding,
CASE
        WHEN DSQ128R = 27 THEN 'FOR ANEMIA, SUCH AS LOW IRON' 
WHEN DSQ128R IS NULL THEN NULL 
ELSE NULL 
 END as for_anemia_such_as_low_iron,
CASE
        WHEN DSD128T = 28 THEN 'TO MAINTAIN BLOOD SUGAR, DIABETES' 
WHEN DSD128T IS NULL THEN NULL 
ELSE NULL 
 END as to_maintain_blood_sugar_diabetes,
CASE
        WHEN DSD128V = 30 THEN 'FOR KIDNEY AND BLADDER HEALTH' 
WHEN DSD128V IS NULL THEN NULL 
ELSE NULL 
 END as for_kidney_and_bladder_health,
CASE
        WHEN DSD128W = 31 THEN 'FOR RESPIRATORY HEALTH, ASTHMA' 
WHEN DSD128W IS NULL THEN NULL 
ELSE NULL 
 END as for_respiratory_health_asthma,
CASE
        WHEN DSD128X = 32 THEN 'FOR ALLERGIES' 
WHEN DSD128X IS NULL THEN NULL 
ELSE NULL 
 END as for_allergies,
CASE
        WHEN DSD128Z = 34 THEN 'IMPROVE DIGESTION' 
WHEN DSD128Z IS NULL THEN NULL 
ELSE NULL 
 END as to_improve_digestion,
CASE
        WHEN DSD128AA = 35 THEN 'FOR MENOPAUSE, HOT FLASHES' 
WHEN DSD128AA IS NULL THEN NULL 
ELSE NULL 
 END as for_menopause_hot_flashes,
CASE
        WHEN DSD128BB = 36 THEN 'FOR MUSCLE RELATED ISSUES, MUSCLE CRAMPS' 
WHEN DSD128BB IS NULL THEN NULL 
ELSE NULL 
 END as for_muscle_related_issues_muscle_cramps,
CASE
        WHEN DSD128DD = 38 THEN 'FOR RELAXATION, STRESS, SLEEP' 
WHEN DSD128DD IS NULL THEN NULL 
ELSE NULL 
 END as for_relaxation_stress_sleep,
CASE
        WHEN DSD128EE = 39 THEN 'FOR NERVOUS SYSTEM HEALTH' 
WHEN DSD128EE IS NULL THEN NULL 
ELSE NULL 
 END as for_nervous_system_health,
CASE
        WHEN DSD128FF = 40 THEN 'FOR LIVER HEALTH, DETOXIFICATION, CLEANSE SYSTEM' 
WHEN DSD128FF IS NULL THEN NULL 
ELSE NULL 
 END as for_liver_health_detoxification,
CASE
        WHEN DSD128GG = 41 THEN 'FOR ANTIOXIDANTS' 
WHEN DSD128GG IS NULL THEN NULL 
ELSE NULL 
 END as for_antioxidants,
CASE
        WHEN DSD128HH = 42 THEN 'WORD OF MOUTH, ADVERTISEMENT' 
WHEN DSD128HH IS NULL THEN NULL 
ELSE NULL 
 END as word_of_mouth_advertisement,
CASE
        WHEN DSD128II = 43 THEN 'FOR THYROID HEALTH, GOUT' 
WHEN DSD128II IS NULL THEN NULL 
ELSE NULL 
 END as for_thyroid_health_gout,
CASE
        WHEN DSD128JJ = 44 THEN 'FOR WEIGHT GAIN' 
WHEN DSD128JJ IS NULL THEN NULL 
ELSE NULL 
 END as for_weight_gain,
CASE
        WHEN DSD128KK = '45' THEN 'LOW LEVELS IN BLOOD' 
WHEN DSD128KK IS NULL THEN NULL 
ELSE NULL 
 END as low_levels_in_blood,
CASE
        WHEN DSD128LL = '46' THEN 'FOR SUPPORT AFTER SURGERY' 
WHEN DSD128LL IS NULL THEN NULL 
ELSE NULL 
 END as for_support_after_surgery,
CASE
        WHEN DSD128MM = '47' THEN 'HEADACHES AND DIZZINESS' 
WHEN DSD128MM IS NULL THEN NULL 
ELSE NULL 
 END as headaches_and_dizziness,
CASE
        WHEN DSQ128NN = '48' THEN 'TO BUILD MUSCLE' 
WHEN DSQ128NN IS NULL THEN NULL 
ELSE NULL 
 END as to_build_muscle,
CASE
        WHEN DSD128OO = '49' THEN 'FOR INFLAMMATION' 
WHEN DSD128OO IS NULL THEN NULL 
ELSE NULL 
 END as for_inflammation,
CASE
        WHEN DSD128PP = '50' THEN 'FOR FLUID/WATER BALANCE' 
WHEN DSD128PP IS NULL THEN NULL 
ELSE NULL 
 END as for_fluid_water_balance,
CASE
        WHEN DSQ128S = 91 THEN 'OTHER SPECIFY' 
WHEN DSQ128S IS NULL THEN NULL 
ELSE NULL 
 END as other,
CASE
        WHEN RXQ215A = 1 THEN 'Antacid' 
WHEN RXQ215A = 2 THEN 'Calcium Supplement' 
WHEN RXQ215A = 3 THEN 'Both' 
WHEN RXQ215A = 4 THEN 'Neither' 
WHEN RXQ215A = 7 THEN 'Refused' 
WHEN RXQ215A = 9 THEN 'Don\'t know' 
WHEN RXQ215A IS NULL THEN NULL 
ELSE NULL 
 END as antacid_calcium_supplement_or_both,
WHEN DSQIKCAL IS NOT NULL THEN DSQIKCALWHEN DSQIKCAL IS NULL THEN NULL 
ELSE NULL 
 END as energy_kcal,
WHEN DSQIPROT IS NOT NULL THEN DSQIPROTWHEN DSQIPROT IS NULL THEN NULL 
ELSE NULL 
 END as protein_gm,
WHEN DSQICARB IS NOT NULL THEN DSQICARBWHEN DSQICARB IS NULL THEN NULL 
ELSE NULL 
 END as carbohydrate_gm,
WHEN DSQISUGR IS NOT NULL THEN DSQISUGRWHEN DSQISUGR IS NULL THEN NULL 
ELSE NULL 
 END as total_sugars_gm,
WHEN DSQIFIBE IS NOT NULL THEN DSQIFIBEWHEN DSQIFIBE IS NULL THEN NULL 
ELSE NULL 
 END as dietary_fiber_gm,
WHEN DSQITFAT IS NOT NULL THEN DSQITFATWHEN DSQITFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_fat_gm,
WHEN DSQISFAT IS NOT NULL THEN DSQISFATWHEN DSQISFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_saturated_fatty_acids_gm,
WHEN DSQIMFAT IS NOT NULL THEN DSQIMFATWHEN DSQIMFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_monounsaturated_fatty_acids_gm,
WHEN DSQIPFAT IS NOT NULL THEN DSQIPFATWHEN DSQIPFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_polyunsaturated_fatty_acids_gm,
WHEN DSQICHOL IS NOT NULL THEN DSQICHOLWHEN DSQICHOL IS NULL THEN NULL 
ELSE NULL 
 END as cholesterol_mg,
WHEN DSQILYCO IS NOT NULL THEN DSQILYCOWHEN DSQILYCO IS NULL THEN NULL 
ELSE NULL 
 END as lycopene_mcg,
WHEN DSQILZ IS NOT NULL THEN DSQILZWHEN DSQILZ IS NULL THEN NULL 
ELSE NULL 
 END as lutein_zeaxanthin_mcg,
WHEN DSQIVB1 IS NOT NULL THEN DSQIVB1WHEN DSQIVB1 IS NULL THEN NULL 
ELSE NULL 
 END as thiamin_vitamin_b1_mg,
WHEN DSQIVB2 IS NOT NULL THEN DSQIVB2WHEN DSQIVB2 IS NULL THEN NULL 
ELSE NULL 
 END as riboflavin_vitamin_b2_mg,
WHEN DSQINIAC IS NOT NULL THEN DSQINIACWHEN DSQINIAC IS NULL THEN NULL 
ELSE NULL 
 END as niacin_mg,
WHEN DSQIVB6 IS NOT NULL THEN DSQIVB6WHEN DSQIVB6 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b6_mg,
WHEN DSQIFA IS NOT NULL THEN DSQIFAWHEN DSQIFA IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_mcg,
WHEN DSQIFDFE IS NOT NULL THEN DSQIFDFEWHEN DSQIFDFE IS NULL THEN NULL 
ELSE NULL 
 END as folate_dfe_mcg,
WHEN DSQICHL IS NOT NULL THEN DSQICHLWHEN DSQICHL IS NULL THEN NULL 
ELSE NULL 
 END as total_choline_mg,
WHEN DSQIVB12 IS NOT NULL THEN DSQIVB12WHEN DSQIVB12 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b12_mcg,
WHEN DSQIVC IS NOT NULL THEN DSQIVCWHEN DSQIVC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg,
WHEN DSQIVK IS NOT NULL THEN DSQIVKWHEN DSQIVK IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_k_mcg,
WHEN DSQIVD IS NOT NULL THEN DSQIVDWHEN DSQIVD IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_d_d2_d3_mcg,
WHEN DSQICALC IS NOT NULL THEN DSQICALCWHEN DSQICALC IS NULL THEN NULL 
ELSE NULL 
 END as calcium_mg,
WHEN DSQIPHOS IS NOT NULL THEN DSQIPHOSWHEN DSQIPHOS IS NULL THEN NULL 
ELSE NULL 
 END as phosphorus_mg,
WHEN DSQIMAGN IS NOT NULL THEN DSQIMAGNWHEN DSQIMAGN IS NULL THEN NULL 
ELSE NULL 
 END as magnesium_mg,
WHEN DSQIIRON IS NOT NULL THEN DSQIIRONWHEN DSQIIRON IS NULL THEN NULL 
ELSE NULL 
 END as iron_mg,
WHEN DSQIZINC IS NOT NULL THEN DSQIZINCWHEN DSQIZINC IS NULL THEN NULL 
ELSE NULL 
 END as zinc_mg,
WHEN DSQICOPP IS NOT NULL THEN DSQICOPPWHEN DSQICOPP IS NULL THEN NULL 
ELSE NULL 
 END as copper_mg,
WHEN DSQISODI IS NOT NULL THEN DSQISODIWHEN DSQISODI IS NULL THEN NULL 
ELSE NULL 
 END as sodium_mg,
WHEN DSQIPOTA IS NOT NULL THEN DSQIPOTAWHEN DSQIPOTA IS NULL THEN NULL 
ELSE NULL 
 END as potassium_mg,
WHEN DSQISELE IS NOT NULL THEN DSQISELEWHEN DSQISELE IS NULL THEN NULL 
ELSE NULL 
 END as selenium_mcg,
WHEN DSQICAFF IS NOT NULL THEN DSQICAFFWHEN DSQICAFF IS NULL THEN NULL 
ELSE NULL 
 END as caffeine_mg,
WHEN DSQIIODI IS NOT NULL THEN SAFE_CAST(DSQIIODI AS FLOAT64)WHEN DSQIIODI IS NULL THEN NULL 
ELSE NULL 
 END as iodine_mcg,
 FROM {{ ref('stg_dietary_supplement_use_30_day_individual_dietary_supplements_dietary') }}