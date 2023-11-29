SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Borderline' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ010 AS STRING) 
 END as doctor_told_you_have_diabetes, 

CASE
WHEN SAFE_CAST(DID040 AS FLOAT64) > 90.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID040 IS NULL THEN NULL 
ELSE SAFE_CAST(DID040 AS FLOAT64) 
 END as age_when_first_told_you_had_diabetes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ160 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ160 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ160 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ160 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ160 AS STRING) 
 END as ever_told_you_have_prediabetes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ180 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ180 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ180 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ180 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ180 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ180 AS STRING) 
 END as had_blood_tested_past_three_years, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ050 AS STRING) 
 END as taking_insulin_now, 

CASE
WHEN SAFE_CAST(DID060 AS FLOAT64) > 70.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID060 IS NULL THEN NULL 
ELSE SAFE_CAST(DID060 AS FLOAT64) 
 END as how_long_taking_insulin, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Years' -- categorize numeric values
WHEN DIQ060U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ060U AS STRING) 
 END as unit_of_measure_month_year, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ070 AS STRING) 
 END as take_diabetic_pills_to_lower_blood_sugar, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1 year ago or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'More than 1 year ago but no more than 2 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'More than 2 years ago but no more than 5 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'More than 5 years ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ230 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ230 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ230 AS STRING) 
 END as how_long_ago_saw_a_diabetes_specialist, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ240 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ240 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ240 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ240 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ240 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ240 AS STRING) 
 END as is_there_one_dr_you_see_for_diabetes, 

CASE
WHEN SAFE_CAST(DID250 AS FLOAT64) > 51.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID250 IS NULL THEN NULL 
ELSE SAFE_CAST(DID250 AS FLOAT64) 
 END as past_year_how_many_times_seen_doctor, 

CASE
WHEN SAFE_CAST(DID260 AS FLOAT64) > 61.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID260 IS NULL THEN NULL 
ELSE SAFE_CAST(DID260 AS FLOAT64) 
 END as how_often_check_blood_for_glucose_sugar, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ260U AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ260U AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Per week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ260U AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ260U AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ260U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ260U AS STRING) 
 END as unit_of_measure_day_week_month_year, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ275 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ275 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ275 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ275 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ275 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ275 AS STRING) 
 END as past_year_dr_checked_for_a1c, 

CASE
WHEN SAFE_CAST(DIQ280 AS FLOAT64) > 27.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ280 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ280 AS FLOAT64) 
 END as what_was_your_last_a1c_level, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Less than 6' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Less than 7' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Less than 8' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Less than 9' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Less than 10' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Provider did not specify goal' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ291 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DIQ291 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ291 AS STRING) 
 END as what_does_dr_say_a1c_should_be, 

CASE
WHEN SAFE_CAST(DIQ300S AS FLOAT64) > 223.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ300S IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ300S AS FLOAT64) 
 END as what_was_your_recent_sbp, 

CASE
WHEN SAFE_CAST(DIQ300D AS FLOAT64) > 201.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DIQ300D IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ300D AS FLOAT64) 
 END as what_was_your_recent_dbp, 

CASE
WHEN SAFE_CAST(DID310S AS FLOAT64) > 191.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID310S IS NULL THEN NULL 
ELSE SAFE_CAST(DID310S AS FLOAT64) 
 END as what_does_dr_say_sbp_should_be, 

CASE
WHEN SAFE_CAST(DID310D AS FLOAT64) > 151.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID310D IS NULL THEN NULL 
ELSE SAFE_CAST(DID310D AS FLOAT64) 
 END as what_does_dr_say_dbp_should_be, 

CASE
WHEN SAFE_CAST(DID320 AS FLOAT64) > 351.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID320 IS NULL THEN NULL 
ELSE SAFE_CAST(DID320 AS FLOAT64) 
 END as what_was_most_recent_ldl_number, 

CASE
WHEN SAFE_CAST(DID330 AS FLOAT64) > 261.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID330 IS NULL THEN NULL 
ELSE SAFE_CAST(DID330 AS FLOAT64) 
 END as what_does_dr_say_ldl_should_be, 

CASE
WHEN SAFE_CAST(DID341 AS FLOAT64) > 117.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID341 IS NULL THEN NULL 
ELSE SAFE_CAST(DID341 AS FLOAT64) 
 END as past_year_times_dr_check_feet_for_sores, 

CASE
WHEN SAFE_CAST(DID350 AS FLOAT64) > 41.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID350 IS NULL THEN NULL 
ELSE SAFE_CAST(DID350 AS FLOAT64) 
 END as how_often_do_you_check_your_feet, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ350U AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Per day' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ350U AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Per week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ350U AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Per month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ350U AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Per year' -- categorize string values 
WHEN DIQ350U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ350U AS STRING) 
 END as unit_of_measure_day_week_month_year_DIQ350U, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Less than 1 month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '1-12 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '13-24 months' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Greater than 2 years' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ360 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ360 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ360 AS STRING) 
 END as last_time_had_pupils_dilated_for_exam, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ080 AS STRING) 
 END as diabetes_affected_eyes_had_retinopathy, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ170 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ170 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ170 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ170 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ170 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ170 AS STRING) 
 END as ever_told_have_health_risk_for_diabetes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ172 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ172 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ172 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ172 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ172 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ172 AS STRING) 
 END as feel_could_be_at_risk_for_diabetes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175A AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Family history' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175A AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175A AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DIQ175A IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175A AS STRING) 
 END as family_history, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175B AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Overweight' -- categorize string values 
WHEN DIQ175B IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175B AS STRING) 
 END as overweight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175C AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Age' -- categorize string values 
WHEN DIQ175C IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175C AS STRING) 
 END as age, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175D AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Poor diet' -- categorize string values 
WHEN DIQ175D IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175D AS STRING) 
 END as poor_diet, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175E AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Race' -- categorize string values 
WHEN DIQ175E IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175E AS STRING) 
 END as race, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175F AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Had a baby weighed over 9 lbs. at birth' -- categorize string values 
WHEN DIQ175F IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175F AS STRING) 
 END as had_a_baby_weighed_over_9_lbs_at_birth, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175G AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Lack of physical activity' -- categorize string values 
WHEN DIQ175G IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175G AS STRING) 
 END as lack_of_physical_activity, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175H AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'High blood pressure' -- categorize string values 
WHEN DIQ175H IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175H AS STRING) 
 END as high_blood_pressure, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175I AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'High blood sugar' -- categorize string values 
WHEN DIQ175I IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175I AS STRING) 
 END as high_blood_sugar, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175J AS FLOAT64),0) AS INT64) AS STRING) = '19' THEN 'High cholesterol' -- categorize string values 
WHEN DIQ175J IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175J AS STRING) 
 END as high_cholesterol, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175K AS FLOAT64),0) AS INT64) AS STRING) = '20' THEN 'Hypoglycemic' -- categorize string values 
WHEN DIQ175K IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175K AS STRING) 
 END as hypoglycemic, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175L AS FLOAT64),0) AS INT64) AS STRING) = '21' THEN 'Extreme hunger' -- categorize string values 
WHEN DIQ175L IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175L AS STRING) 
 END as extreme_hunger, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175M AS FLOAT64),0) AS INT64) AS STRING) = '22' THEN 'Tingling/numbness in hands or feet' -- categorize string values 
WHEN DIQ175M IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175M AS STRING) 
 END as tingling_numbness_in_hands_or_feet, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175N AS FLOAT64),0) AS INT64) AS STRING) = '23' THEN 'Blurred vision' -- categorize string values 
WHEN DIQ175N IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175N AS STRING) 
 END as blurred_vision, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175O AS FLOAT64),0) AS INT64) AS STRING) = '24' THEN 'Increased fatigue' -- categorize string values 
WHEN DIQ175O IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175O AS STRING) 
 END as increased_fatigue, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175P AS FLOAT64),0) AS INT64) AS STRING) = '25' THEN 'Anyone could be at risk' -- categorize string values 
WHEN DIQ175P IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175P AS STRING) 
 END as anyone_could_be_at_risk, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175Q AS FLOAT64),0) AS INT64) AS STRING) = '26' THEN 'Doctor warning' -- categorize string values 
WHEN DIQ175Q IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175Q AS STRING) 
 END as doctor_warning, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175R AS FLOAT64),0) AS INT64) AS STRING) = '27' THEN 'Other, specify' -- categorize string values 
WHEN DIQ175R IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175R AS STRING) 
 END as other_specify, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175S AS FLOAT64),0) AS INT64) AS STRING) = '28' THEN 'Gestational diabetes' -- categorize string values 
WHEN DIQ175S IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175S AS STRING) 
 END as gestational_diabetes, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175T AS FLOAT64),0) AS INT64) AS STRING) = '29' THEN 'Frequent urination' -- categorize string values 
WHEN DIQ175T IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175T AS STRING) 
 END as frequent_urination, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175U AS FLOAT64),0) AS INT64) AS STRING) = '30' THEN 'Thirst' -- categorize string values 
WHEN DIQ175U IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175U AS STRING) 
 END as thirst, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175V AS FLOAT64),0) AS INT64) AS STRING) = '31' THEN 'Craving for sweet/eating a lot of sugar' -- categorize string values 
WHEN DIQ175V IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175V AS STRING) 
 END as craving_for_sweet_eating_a_lot_of_sugar, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175W AS FLOAT64),0) AS INT64) AS STRING) = '32' THEN 'Medication' -- categorize string values 
WHEN DIQ175W IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175W AS STRING) 
 END as medication, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ175X AS FLOAT64),0) AS INT64) AS STRING) = '33' THEN 'Polycystic ovarian syndrome' -- categorize string values 
WHEN DIQ175X IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ175X AS STRING) 
 END as polycystic_ovarian_syndrome, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '3 months ago or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'More than 3 months ago but not more than 6 months ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'More than 6 months ago but not more than 9 months ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'More than 9 months ago but not more than 12 months ago, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'More than 12 months ago' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ220 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ220 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ220 AS STRING) 
 END as when_was_your_diabetes_diagnosed, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190A AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190A AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190A AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190A AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ190A IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ190A AS STRING) 
 END as past_yr_told_control_weight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190B AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190B AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190B AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190B AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ190B IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ190B AS STRING) 
 END as past_yr_told_increase_physical_activity, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190C AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190C AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190C AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ190C AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ190C IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ190C AS STRING) 
 END as past_yr_told_reduce_fat_calories_in_diet, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200A AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200A AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200A AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200A AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ200A IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ200A AS STRING) 
 END as are_you_controlling_weight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200B AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200B AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200B AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200B AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ200B IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ200B AS STRING) 
 END as are_you_increasing_physical_activity, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200C AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200C AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200C AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ200C AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DIQ200C IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ200C AS STRING) 
 END as are_you_reducing_fat_calories_in_diet, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DID070 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DID070 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DID070 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DID070 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DID070 IS NULL THEN NULL 
ELSE SAFE_CAST(DID070 AS STRING) 
 END as take_diabetic_pills_to_lower_blood_sugar_DID070, 

CASE
WHEN SAFE_CAST(DID270 AS FLOAT64) > 35.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID270 IS NULL THEN NULL 
ELSE SAFE_CAST(DID270 AS FLOAT64) 
 END as past_year_times_checked_for_a1c, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '6 or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '7 or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '8 or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '9 or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN '10 or less' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Provider did not specify goal' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DIQ290 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DIQ290 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ290 AS STRING) 
 END as what_does_dr_say_a1c_should_be_DIQ290, 

CASE
WHEN SAFE_CAST(DID340 AS FLOAT64) > 155.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DID340 IS NULL THEN NULL 
ELSE SAFE_CAST(DID340 AS FLOAT64) 
 END as past_year_times_dr_check_feet_for_sores_DID340, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter number' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 1 year' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DID040G IS NULL THEN NULL 
ELSE SAFE_CAST(DID040G AS STRING) 
 END as age_when_first_told_you_had_diabetes_DID040G, 

CASE
WHEN DID040Q IS NULL THEN NULL 
ELSE SAFE_CAST(DID040Q AS FLOAT64) 
 END as number_of_years_of_age, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter number (of months or years)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 1 month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DID060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DID060G IS NULL THEN NULL 
ELSE SAFE_CAST(DID060G AS STRING) 
 END as how_long_taking_insulin_DID060G, 

CASE
WHEN DID060Q IS NULL THEN NULL 
ELSE SAFE_CAST(DID060Q AS FLOAT64) 
 END as number_of_mons_yrs_taking_insulin, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ090 AS STRING) 
 END as ulcer_sore_not_healed_within_4_weeks, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ100 AS STRING) 
 END as numbness_in_hands_feet_past_3_mos, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Hands' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Feet' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Both' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ110 AS STRING) 
 END as numbness_in_hands_feet_or_both, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ120 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ120 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ120 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ120 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ120 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ120 AS STRING) 
 END as pain_tingling_in_hands_feet_past_3_mos, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Hands' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Feet' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Both' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ130 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ130 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ130 AS STRING) 
 END as pain_tingling_in_hands_feet_or_both, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ140 AS STRING) 
 END as pain_in_either_leg_while_walking, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ150 AS STRING) 
 END as pain_in_calf_or_calves, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter number' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 1 year' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ040G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ040G IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ040G AS STRING) 
 END as age_when_first_told_you_had_diabetes_DIQ040G, 

CASE
WHEN DIQ040Q IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ040Q AS FLOAT64) 
 END as number_of_years_of_age_DIQ040Q, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Enter number (of months or years)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 1 month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DIQ060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DIQ060G IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ060G AS STRING) 
 END as how_long_taking_insulin_DIQ060G, 

CASE
WHEN DIQ060Q IS NULL THEN NULL 
ELSE SAFE_CAST(DIQ060Q AS FLOAT64) 
 END as number_of_mos_yrs_taking_insulin_DIQ060Q, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_diabetes_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DIQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DIQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DIQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DIQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DIQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DIQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DIQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DIQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DIQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/DIQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DIQ.htm
*/
