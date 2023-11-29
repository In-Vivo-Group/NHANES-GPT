SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '2 or more times a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Once a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '2 or more times a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Once a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '1-3 times a month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BHQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ010 AS STRING) 
 END as bowel_leakage_consisted_of_gas, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '2 or more times a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Once a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '2 or more times a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Once a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '1-3 times a month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BHQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ020 AS STRING) 
 END as bowel_leakage_consisted_of_mucus, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '2 or more times a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Once a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '2 or more times a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Once a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '1-3 times a month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BHQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ030 AS STRING) 
 END as bowel_leakage_consisted_of_liquid, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '2 or more times a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Once a day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '2 or more times a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Once a week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '1-3 times a month' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BHQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ040 AS STRING) 
 END as bowel_leakage_consisted_of_solid_stool, 

CASE
    WHEN BHD050 IS NULL THEN NULL 
ELSE SAFE_CAST(BHD050 AS FLOAT64) 
 END as how_often_have_bowel_movements, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Type 1 (separate hard lumps, like nuts)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Type 2 (sausage-like, but lumpy)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Type 3 (like a sausage but with cracks in the surface)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Type 4 (like a sausage or snake, smooth and soft)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Type 5 (soft blobs with clear-cut edges)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Type 6 (fluffy pieces with ragged edges, a mushy stool)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Type 7 (watery, no solid pieces)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BHQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BHQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ060 AS STRING) 
 END as common_stool_type, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ070 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN BHQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ070 AS STRING) 
 END as had_an_urgent_need_to_empty_bowels, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ080 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN BHQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ080 AS STRING) 
 END as in_past_12_months_been_constipated, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ090 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN BHQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ090 AS STRING) 
 END as in_past_12_months_had_diarrhea, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ100 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ100 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ100 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ100 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN BHQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ100 AS STRING) 
 END as in_past_30_days_taken_laxative, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Most days' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '1-3 times a week' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '2-3 times a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Once a month' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BHQ110 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN BHQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(BHQ110 AS STRING) 
 END as times_taken_laxative_in_past_30_days, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_bowel_health_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/BHQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/BHQ_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/BHQ_D.htm
*/
