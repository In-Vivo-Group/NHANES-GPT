SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN '1st day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN '2nd day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN '3rd day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN '4th day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN '5th day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN '6th day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN '7th day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(8 AS FLOAT64) THEN '8th day of wear' 
WHEN SAFE_CAST(PAXDAYD AS FLOAT64) = SAFE_CAST(9 AS FLOAT64) THEN '9th day of wear' 
WHEN PAXDAYD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXDAYD AS STRING) 
 END as day_of_pam_measurements_for_this_day, 

CASE
    WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(1 AS FLOAT64) THEN 'Sunday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(2 AS FLOAT64) THEN 'Monday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(3 AS FLOAT64) THEN 'Tuesday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(4 AS FLOAT64) THEN 'Wednesday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(5 AS FLOAT64) THEN 'Thursday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(6 AS FLOAT64) THEN 'Friday' 
WHEN SAFE_CAST(PAXDAYWD AS FLOAT64) = SAFE_CAST(7 AS FLOAT64) THEN 'Saturday' 
WHEN PAXDAYWD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXDAYWD AS STRING) 
 END as day_of_the_week, 

CASE
    WHEN PAXSSNDP IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSSNDP AS FLOAT64) 
 END as starting_sample_number_for_the_day, 

CASE
    WHEN REPLACE(PAXMSTD,'.0','') = 'Start time: (HH:MM:SS)' THEN 'Value was recorded' -- categorize string values 
WHEN PAXMSTD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXMSTD AS STRING) 
 END as start_time_hh_mm_ss, 

CASE
    WHEN PAXTMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXTMD AS FLOAT64) 
 END as total_minutes_with_data_for_this_day, 

CASE
    WHEN PAXAISMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXAISMD AS FLOAT64) 
 END as day_count_80hz_data_in_idle_sleep_mode, 

CASE
    WHEN PAXVMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXVMD AS FLOAT64) 
 END as day_count_mins_valid_data_no_qc_flag, 

CASE
    WHEN PAXMTSD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXMTSD AS FLOAT64) 
 END as day_sum_mims_triaxial_value, 

CASE
    WHEN PAXWWMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXWWMD AS FLOAT64) 
 END as day_sum_valid_wake_wear_minutes, 

CASE
    WHEN PAXSWMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXSWMD AS FLOAT64) 
 END as day_sum_valid_sleep_wear_minutes, 

CASE
    WHEN PAXNWMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXNWMD AS FLOAT64) 
 END as day_sum_valid_non_wear_minutes, 

CASE
    WHEN PAXUMD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXUMD AS FLOAT64) 
 END as day_sum_valid_unknown_minutes, 

CASE
    WHEN PAXLXSD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXLXSD AS FLOAT64) 
 END as day_sum_lux_values_for_valid_minutes, 

CASE
    WHEN PAXQFD IS NULL THEN NULL 
ELSE SAFE_CAST(PAXQFD AS FLOAT64) 
 END as day_sum_data_quality_flag_count, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_physical_activity_monitor_day_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAXDAY_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAXDAY_G.htm
*/
