SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '6 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN '7 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ706 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN PAQ706 IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ706 AS STRING) 
 END as days_physically_active_at_least_60_min, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Less than 1 hour,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 hour,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4 hours, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5 hours or more, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN '{You dont/SP does not} watch TV or videos' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ710 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN PAQ710 IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ710 AS STRING) 
 END as hours_watch_tv_or_videos_past_30_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Less than 1 hour,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 hour,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 hours,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4 hours, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5 hours or more, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN '{you do not/SP does not} use a computer outside of school' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PAQ715 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN PAQ715 IS NULL THEN NULL 
ELSE SAFE_CAST(PAQ715 AS STRING) 
 END as hours_use_computer_past_30_days, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_physical_activity_youth_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PAQY.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PAQY_J.htm
*/
