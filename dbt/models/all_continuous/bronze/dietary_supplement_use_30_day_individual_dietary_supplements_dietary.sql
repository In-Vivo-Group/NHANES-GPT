SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN DSDPID IS NOT NULL THEN SAFE_CAST(DSDPID AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSDPID IS NULL THEN NULL 
ELSE SAFE_CAST(DSDPID AS FLOAT64) 
 END as supplement_id_number, 

CASE
WHEN REPLACE(DSDSUPP,'.0','') = 'Supplement Name' THEN 'Value was recorded' -- categorize string values 
WHEN DSDSUPP IS NULL THEN NULL 
ELSE SAFE_CAST(DSDSUPP AS STRING) 
 END as supplement_name, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDANTA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Non-antacid supplement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDANTA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Antacid reported with dietary supplement (DSQ)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDANTA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Antacid reported with medication (RXQ)' -- categorize numeric values
WHEN DSDANTA IS NULL THEN NULL 
ELSE SAFE_CAST(DSDANTA AS STRING) 
 END as antacid_reported_as_a_dietary_supplement, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DSD070 IS NULL THEN NULL 
ELSE SAFE_CAST(DSD070 AS STRING) 
 END as was_container_seen, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Exact or near exact match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Probable match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Generic match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Reasonable match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Default match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'No match' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMTCH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSDMTCH IS NULL THEN NULL 
ELSE SAFE_CAST(DSDMTCH AS STRING) 
 END as matching_code, 

CASE
WHEN DSD090 IS NULL THEN NULL 
ELSE SAFE_CAST(DSD090 AS FLOAT64) 
 END as how_long_supplement_taken_days, 

CASE
WHEN DSD103 IS NULL THEN NULL 
ELSE SAFE_CAST(DSD103 AS FLOAT64) 
 END as days_supplement_taken_past_30_days, 

CASE
WHEN DSD122Q IS NULL THEN NULL 
ELSE SAFE_CAST(DSD122Q AS FLOAT64) 
 END as quantity_of_supplement_taken_daily, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'TABLETS, CAPSULES, PILLS, CAPLETS, SOFTGELS, GEL CAPS, VEGICAPS, CHEWABLE TABLETS' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Droppers' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Drops' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Injections/shots' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'LOZENGES/COUGH DROPS' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Milliliters' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN 'Tablespoons' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN 'Teaspoons' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN 'Wafers' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN 'Cans' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN 'Grams' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN 'Dots' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN 'Cups' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(19 AS FLOAT64),0) AS INT64) THEN 'Sprays/Squirts' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN 'CHEWS/GUMMIES' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(21 AS FLOAT64),0) AS INT64) THEN 'Scoop' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(22 AS FLOAT64),0) AS INT64) THEN 'CC' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(23 AS FLOAT64),0) AS INT64) THEN 'Capful' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(27 AS FLOAT64),0) AS INT64) THEN 'Ounces' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(28 AS FLOAT64),0) AS INT64) THEN 'Packages/Packets' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(29 AS FLOAT64),0) AS INT64) THEN 'Vial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN 'Gumball' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(31 AS FLOAT64),0) AS INT64) THEN 'Strips' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(32 AS FLOAT64),0) AS INT64) THEN 'Bottle' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD122U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont Know' -- categorize numeric values
WHEN DSD122U IS NULL THEN NULL 
ELSE SAFE_CAST(DSD122U AS STRING) 
 END as dosage_form, 

CASE
WHEN DSDACTSS IS NULL THEN NULL 
ELSE SAFE_CAST(DSDACTSS AS FLOAT64) 
 END as reported_serving_size_label_serving_size, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSDDAY1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSDDAY1 AS STRING) 
 END as reported_product_during_day_1, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDAY2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSDDAY2 IS NULL THEN NULL 
ELSE SAFE_CAST(DSDDAY2 AS STRING) 
 END as reported_product_during_day_2, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ124 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Decided to take it for reasons of my own' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ124 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'A doctor or other health provider told me to' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ124 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ124 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSQ124 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ124 AS STRING) 
 END as took_product_on_own_or_doctor_advised, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN 'FOR GOOD BOWEL/COLON HEALTH' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont Know' -- categorize numeric values
WHEN DSQ128A IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128A AS STRING) 
 END as for_good_bowel_colon_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN 'FOR PROSTATE HEALTH' -- categorize numeric values
WHEN DSQ128B IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128B AS STRING) 
 END as for_prostate_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN 'FOR MENTAL HEALTH' -- categorize numeric values
WHEN DSQ128C IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128C AS STRING) 
 END as for_mental_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN 'TO PREVENT HEALTH PROBLEMS' -- categorize numeric values
WHEN DSQ128D IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128D AS STRING) 
 END as to_prevent_health_problems, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN 'TO IMPROVE MY OVERALL HEALTH' -- categorize numeric values
WHEN DSQ128E IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128E AS STRING) 
 END as to_improve_my_overall_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN 'FOR TEETH, PREVENT CAVITIES' -- categorize numeric values
WHEN DSQ128F IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128F AS STRING) 
 END as for_teeth_prevent_cavities, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN 'TO SUPPLEMENT MY DIET, FOOD NOT ENOUGH' -- categorize numeric values
WHEN DSQ128G IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128G AS STRING) 
 END as to_supplement_my_diet_food_not_enough, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN 'TO MAINTAIN HEALTH (TO STAY HEALTHY)' -- categorize numeric values
WHEN DSQ128H IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128H AS STRING) 
 END as to_maintain_health_to_stay_healthy, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN 'TO PREVENT COLDS, BOOST IMMUNE SYSTEM' -- categorize numeric values
WHEN DSQ128I IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128I AS STRING) 
 END as to_prevent_colds_boost_immune_system, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(19 AS FLOAT64),0) AS INT64) THEN 'FOR HEART HEALTH, CHOLESTEROL' -- categorize numeric values
WHEN DSQ128J IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128J AS STRING) 
 END as for_heart_health_cholesterol, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128K AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN 'FOR EYE HEALTH' -- categorize numeric values
WHEN DSQ128K IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128K AS STRING) 
 END as for_eye_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128L AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(21 AS FLOAT64),0) AS INT64) THEN 'FOR HEALTHY JOINTS, ARTHRITIS' -- categorize numeric values
WHEN DSQ128L IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128L AS STRING) 
 END as for_healthy_joints_arthritis, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128M AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(22 AS FLOAT64),0) AS INT64) THEN 'HEALTHY SKIN, HAIR, AND NAIL' -- categorize numeric values
WHEN DSQ128M IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128M AS STRING) 
 END as for_healthy_skin_hair_and_nails, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128N AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(23 AS FLOAT64),0) AS INT64) THEN 'FOR WEIGHT LOSS' -- categorize numeric values
WHEN DSQ128N IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128N AS STRING) 
 END as for_weight_loss, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128O AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(24 AS FLOAT64),0) AS INT64) THEN 'FOR BONE HEALTH, BUILD STRONG BONES, OSTEOPOROSIS' -- categorize numeric values
WHEN DSQ128O IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128O AS STRING) 
 END as for_bone_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128P AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(25 AS FLOAT64),0) AS INT64) THEN 'TO GET MORE ENERGY' -- categorize numeric values
WHEN DSQ128P IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128P AS STRING) 
 END as to_get_more_energy, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128Q AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(26 AS FLOAT64),0) AS INT64) THEN 'FOR PREGNANCY/BREASTFEEDING' -- categorize numeric values
WHEN DSQ128Q IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128Q AS STRING) 
 END as for_pregnancy_breastfeeding, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128R AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(27 AS FLOAT64),0) AS INT64) THEN 'FOR ANEMIA, SUCH AS LOW IRON' -- categorize numeric values
WHEN DSQ128R IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128R AS STRING) 
 END as for_anemia_such_as_low_iron, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128T AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(28 AS FLOAT64),0) AS INT64) THEN 'TO MAINTAIN BLOOD SUGAR, DIABETES' -- categorize numeric values
WHEN DSD128T IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128T AS STRING) 
 END as to_maintain_blood_sugar_diabetes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128V AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN 'FOR KIDNEY AND BLADDER HEALTH' -- categorize numeric values
WHEN DSD128V IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128V AS STRING) 
 END as for_kidney_and_bladder_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128W AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(31 AS FLOAT64),0) AS INT64) THEN 'FOR RESPIRATORY HEALTH, ASTHMA' -- categorize numeric values
WHEN DSD128W IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128W AS STRING) 
 END as for_respiratory_health_asthma, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128X AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(32 AS FLOAT64),0) AS INT64) THEN 'FOR ALLERGIES' -- categorize numeric values
WHEN DSD128X IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128X AS STRING) 
 END as for_allergies, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128Z AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(34 AS FLOAT64),0) AS INT64) THEN 'IMPROVE DIGESTION' -- categorize numeric values
WHEN DSD128Z IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128Z AS STRING) 
 END as to_improve_digestion, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128AA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(35 AS FLOAT64),0) AS INT64) THEN 'FOR MENOPAUSE, HOT FLASHES' -- categorize numeric values
WHEN DSD128AA IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128AA AS STRING) 
 END as for_menopause_hot_flashes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128BB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(36 AS FLOAT64),0) AS INT64) THEN 'FOR MUSCLE RELATED ISSUES, MUSCLE CRAMPS' -- categorize numeric values
WHEN DSD128BB IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128BB AS STRING) 
 END as for_muscle_related_issues_muscle_cramps, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128DD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(38 AS FLOAT64),0) AS INT64) THEN 'FOR RELAXATION, STRESS, SLEEP' -- categorize numeric values
WHEN DSD128DD IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128DD AS STRING) 
 END as for_relaxation_stress_sleep, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128EE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(39 AS FLOAT64),0) AS INT64) THEN 'FOR NERVOUS SYSTEM HEALTH' -- categorize numeric values
WHEN DSD128EE IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128EE AS STRING) 
 END as for_nervous_system_health, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128FF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(40 AS FLOAT64),0) AS INT64) THEN 'FOR LIVER HEALTH, DETOXIFICATION, CLEANSE SYSTEM' -- categorize numeric values
WHEN DSD128FF IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128FF AS STRING) 
 END as for_liver_health_detoxification, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128GG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(41 AS FLOAT64),0) AS INT64) THEN 'FOR ANTIOXIDANTS' -- categorize numeric values
WHEN DSD128GG IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128GG AS STRING) 
 END as for_antioxidants, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128HH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(42 AS FLOAT64),0) AS INT64) THEN 'WORD OF MOUTH, ADVERTISEMENT' -- categorize numeric values
WHEN DSD128HH IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128HH AS STRING) 
 END as word_of_mouth_advertisement, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128II AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(43 AS FLOAT64),0) AS INT64) THEN 'FOR THYROID HEALTH, GOUT' -- categorize numeric values
WHEN DSD128II IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128II AS STRING) 
 END as for_thyroid_health_gout, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128JJ AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(44 AS FLOAT64),0) AS INT64) THEN 'FOR WEIGHT GAIN' -- categorize numeric values
WHEN DSD128JJ IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128JJ AS STRING) 
 END as for_weight_gain, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD128KK AS FLOAT64),0) AS INT64) AS STRING) = '45' THEN 'LOW LEVELS IN BLOOD' -- categorize string values 
WHEN DSD128KK IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128KK AS STRING) 
 END as low_levels_in_blood, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD128LL AS FLOAT64),0) AS INT64) AS STRING) = '46' THEN 'FOR SUPPORT AFTER SURGERY' -- categorize string values 
WHEN DSD128LL IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128LL AS STRING) 
 END as for_support_after_surgery, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD128MM AS FLOAT64),0) AS INT64) AS STRING) = '47' THEN 'HEADACHES AND DIZZINESS' -- categorize string values 
WHEN DSD128MM IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128MM AS STRING) 
 END as headaches_and_dizziness, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSQ128NN AS FLOAT64),0) AS INT64) AS STRING) = '48' THEN 'TO BUILD MUSCLE' -- categorize string values 
WHEN DSQ128NN IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128NN AS STRING) 
 END as to_build_muscle, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD128OO AS FLOAT64),0) AS INT64) AS STRING) = '49' THEN 'FOR INFLAMMATION' -- categorize string values 
WHEN DSD128OO IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128OO AS STRING) 
 END as for_inflammation, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DSD128PP AS FLOAT64),0) AS INT64) AS STRING) = '50' THEN 'FOR FLUID/WATER BALANCE' -- categorize string values 
WHEN DSD128PP IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128PP AS STRING) 
 END as for_fluid_water_balance, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSQ128S AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(91 AS FLOAT64),0) AS INT64) THEN 'OTHER SPECIFY' -- categorize numeric values
WHEN DSQ128S IS NULL THEN NULL 
ELSE SAFE_CAST(DSQ128S AS STRING) 
 END as other, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Antacid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Calcium Supplement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Both' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Neither' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ215A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ215A IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ215A AS STRING) 
 END as antacid_calcium_supplement_or_both, 

CASE
WHEN DSQIKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIKCAL AS FLOAT64) 
 END as energy_kcal, 

CASE
WHEN DSQIPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIPROT AS FLOAT64) 
 END as protein_gm, 

CASE
WHEN DSQICARB IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICARB AS FLOAT64) 
 END as carbohydrate_gm, 

CASE
WHEN DSQISUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DSQISUGR AS FLOAT64) 
 END as total_sugars_gm, 

CASE
WHEN DSQIFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIFIBE AS FLOAT64) 
 END as dietary_fiber_gm, 

CASE
WHEN DSQITFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQITFAT AS FLOAT64) 
 END as total_fat_gm, 

CASE
WHEN DSQISFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQISFAT AS FLOAT64) 
 END as total_saturated_fatty_acids_gm, 

CASE
WHEN DSQIMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIMFAT AS FLOAT64) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
WHEN DSQIPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIPFAT AS FLOAT64) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
WHEN DSQICHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICHOL AS FLOAT64) 
 END as cholesterol_mg, 

CASE
WHEN DSQILYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DSQILYCO AS FLOAT64) 
 END as lycopene_mcg, 

CASE
WHEN DSQILZ IS NULL THEN NULL 
ELSE SAFE_CAST(DSQILZ AS FLOAT64) 
 END as lutein_zeaxanthin_mcg, 

CASE
WHEN DSQIVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVB1 AS FLOAT64) 
 END as thiamin_vitamin_b1_mg, 

CASE
WHEN DSQIVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVB2 AS FLOAT64) 
 END as riboflavin_vitamin_b2_mg, 

CASE
WHEN DSQINIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQINIAC AS FLOAT64) 
 END as niacin_mg, 

CASE
WHEN DSQIVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVB6 AS FLOAT64) 
 END as vitamin_b6_mg, 

CASE
WHEN DSQIFA IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIFA AS FLOAT64) 
 END as folic_acid_mcg, 

CASE
WHEN DSQIFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIFDFE AS FLOAT64) 
 END as folate_dfe_mcg, 

CASE
WHEN DSQICHL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICHL AS FLOAT64) 
 END as total_choline_mg, 

CASE
WHEN DSQIVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVB12 AS FLOAT64) 
 END as vitamin_b12_mcg, 

CASE
WHEN DSQIVC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVC AS FLOAT64) 
 END as vitamin_c_mg, 

CASE
WHEN DSQIVK IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVK AS FLOAT64) 
 END as vitamin_k_mcg, 

CASE
WHEN DSQIVD IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIVD AS FLOAT64) 
 END as vitamin_d_d2_d3_mcg, 

CASE
WHEN DSQICALC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICALC AS FLOAT64) 
 END as calcium_mg, 

CASE
WHEN DSQIPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIPHOS AS FLOAT64) 
 END as phosphorus_mg, 

CASE
WHEN DSQIMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIMAGN AS FLOAT64) 
 END as magnesium_mg, 

CASE
WHEN DSQIIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIIRON AS FLOAT64) 
 END as iron_mg, 

CASE
WHEN DSQIZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIZINC AS FLOAT64) 
 END as zinc_mg, 

CASE
WHEN DSQICOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICOPP AS FLOAT64) 
 END as copper_mg, 

CASE
WHEN DSQISODI IS NULL THEN NULL 
ELSE SAFE_CAST(DSQISODI AS FLOAT64) 
 END as sodium_mg, 

CASE
WHEN DSQIPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIPOTA AS FLOAT64) 
 END as potassium_mg, 

CASE
WHEN DSQISELE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQISELE AS FLOAT64) 
 END as selenium_mcg, 

CASE
WHEN DSQICAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DSQICAFF AS FLOAT64) 
 END as caffeine_mg, 

CASE
WHEN DSQIIODI IS NOT NULL THEN SAFE_CAST(DSQIIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSQIIODI IS NULL THEN NULL 
ELSE SAFE_CAST(DSQIIODI AS FLOAT64) 
 END as iodine_mcg, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(29 AS FLOAT64),0) AS INT64) THEN 'FOR HEALTHY HAIR AND NAILS' -- categorize numeric values
WHEN DSD128U IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128U AS STRING) 
 END as for_healthy_hair_and_nails, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128Y AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(33 AS FLOAT64),0) AS INT64) THEN 'CURRENTLY BREASTFEEDING' -- categorize numeric values
WHEN DSD128Y IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128Y AS STRING) 
 END as currently_breastfeeding, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD128CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(37 AS FLOAT64),0) AS INT64) THEN 'TO IMPROVE SLEEP' -- categorize numeric values
WHEN DSD128CC IS NULL THEN NULL 
ELSE SAFE_CAST(DSD128CC AS STRING) 
 END as to_improve_sleep, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_supplement_use_30_day_individual_dietary_supplements_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DSQIDS_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DSQIDS.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DSQIDS_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DSQIDS_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DSQIDS_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DSQIDS_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DSQIDS_E.htm
*/
