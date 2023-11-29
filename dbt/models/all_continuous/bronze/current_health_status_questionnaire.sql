SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Excellent' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Very good,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Good,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Fair, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Poor?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSD010 IS NULL THEN NULL 
ELSE SAFE_CAST(HSD010 AS STRING) 
 END as general_health_condition, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ500 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ500 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ500 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ500 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ500 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ500 AS STRING) 
 END as sp_have_head_cold_or_chest_cold, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ510 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ510 AS STRING) 
 END as sp_have_stomach_or_intestinal_illness, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ520 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ520 AS STRING) 
 END as sp_have_flu_pneumonia_ear_infection, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HSQ571 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HSQ571 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HSQ571 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(HSQ571 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN HSQ571 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ571 AS STRING) 
 END as sp_donated_blood_in_past_12_months, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '6' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN '7' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN '8' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN '9' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN '10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN '11' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN '12' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ580 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ580 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ580 AS STRING) 
 END as how_long_ago_was_last_blood_donation, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ590 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ590 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ590 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ590 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ590 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ590 AS STRING) 
 END as blood_ever_tested_for_hiv_virus, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSAQUEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Dietary Recall Component -- B(1-11)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSAQUEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'MEC CAPI Questionnaire -- B(12-150)' -- categorize numeric values
WHEN HSAQUEX IS NULL THEN NULL 
ELSE SAFE_CAST(HSAQUEX AS STRING) 
 END as source_of_health_status_data, 

CASE
WHEN HSQ470 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ470 AS FLOAT64) 
 END as no_of_days_physical_health_was_not_good, 

CASE
WHEN HSQ480 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ480 AS FLOAT64) 
 END as no_of_days_mental_health_was_not_good, 

CASE
WHEN HSQ490 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ490 AS FLOAT64) 
 END as inactive_days_due_to_phys_mental_hlth, 

CASE
WHEN SAFE_CAST(HSQ493 AS FLOAT64) > 41.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN HSQ493 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ493 AS FLOAT64) 
 END as pain_make_it_hard_for_usual_activities, 

CASE
WHEN SAFE_CAST(HSQ496 AS FLOAT64) > 41.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN HSQ496 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ496 AS FLOAT64) 
 END as how_many_days_feel_anxious, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSD570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSD570 IS NULL THEN NULL 
ELSE SAFE_CAST(HSD570 AS STRING) 
 END as sp_donated_blood_in_past_12_months_HSD570, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(HSQ570 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN HSQ570 IS NULL THEN NULL 
ELSE SAFE_CAST(HSQ570 AS STRING) 
 END as sp_donated_blood_in_past_12_months_HSQ570, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_current_health_status_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HSQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HSQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HSQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HSQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HSQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/HSQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/HSQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/HSQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/HSQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/HSQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/HSQ.htm
*/
