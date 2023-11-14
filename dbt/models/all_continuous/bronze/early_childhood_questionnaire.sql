SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN ECD010 IS NULL THEN NULL 
ELSE SAFE_CAST(ECD010 AS STRING) 
 END as mother_s_age_when_born, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ020 AS STRING) 
 END as mother_smoked_when_pregnant, 

CASE
WHEN ECD070A IS NULL THEN NULL 
ELSE SAFE_CAST(ECD070A AS STRING) 
 END as weight_at_birth_pounds, 

CASE
WHEN ECD070B IS NULL THEN NULL 
ELSE SAFE_CAST(ECD070B AS STRING) 
 END as weight_at_birth_ounces, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'More than 5-1/2 lbs. (2500 g), or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 5-1/2 lbs. (2500 g)?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ080 AS STRING) 
 END as weight_more_less_than_5_5_lbs, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'More than 9 lbs. (4100 g), or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Less than 9 lbs. (4100 g)?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ090 AS STRING) 
 END as weight_more_less_than_9_0_lbs, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(WHQ030E AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Overweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(WHQ030E AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Underweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(WHQ030E AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'About the right weight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(WHQ030E AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(WHQ030E AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN WHQ030E IS NULL THEN NULL 
ELSE SAFE_CAST(WHQ030E AS STRING) 
 END as how_do_you_consider_your_child_s_weight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(MCQ080E AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(MCQ080E AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(MCQ080E AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(MCQ080E AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN MCQ080E IS NULL THEN NULL 
ELSE SAFE_CAST(MCQ080E AS STRING) 
 END as your_child_was_overweight, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ECQ150 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ECQ150 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ECQ150 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(ECQ150 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN ECQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ150 AS STRING) 
 END as help_your_child_control_weight, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ030 AS STRING) 
 END as mother_quit_smoking_while_pregnant, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'First month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Second month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Third month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Fourth month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Fifth month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Sixth month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Seventh month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Eighth month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Ninth month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ040 AS STRING) 
 END as mother_quit_smoking_while_pregnant_mo, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ060 AS STRING) 
 END as receive_newborn_care_at_health_facility, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(FSQ121 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(FSQ121 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(FSQ121 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(FSQ121 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN FSQ121 IS NULL THEN NULL 
ELSE SAFE_CAST(FSQ121 AS STRING) 
 END as now_attend_headstart, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ100 AS STRING) 
 END as ever_attend_day_care_or_preschool, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ110 AS STRING) 
 END as now_attend_day_care_or_preschool, 

CASE
WHEN ECQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ010 AS STRING) 
 END as mother_s_age_when_born_ECQ010, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECD100 IS NULL THEN NULL 
ELSE SAFE_CAST(ECD100 AS STRING) 
 END as ever_attend_day_care_or_preschool_ECD100, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ECD110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ECD110 IS NULL THEN NULL 
ELSE SAFE_CAST(ECD110 AS STRING) 
 END as now_attend_day_care_or_preschool_ECD110, 

CASE
WHEN ECQ130 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ130 AS STRING) 
 END as hours_spent_away_from_home_weekday_day, 

CASE
WHEN ECQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(ECQ140 AS STRING) 
 END as hours_spent_away_from_home_weekend_day, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_early_childhood_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ECQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_ECQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/ECQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ECQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ECQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/ECQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/ECQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/ECQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/ECQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/ECQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/ECQ.htm
*/
