SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ510 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ510 IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ510 AS STRING) 
 END as dr_told_to_take_daily_low_dose_aspirin, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ515 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ515 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ515 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ515 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Stopped aspirin use due to side effects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ515 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ515 IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ515 AS STRING) 
 END as followed_advice_took_low_dose_aspirin, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ520 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ520 IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ520 AS STRING) 
 END as taking_low_dose_aspirin_on_your_own, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'One every day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'One every other day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Another schedule' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ525G IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ525G AS STRING) 
 END as schedule_frequency_of_aspirin_use, 

CASE
    WHEN RXQ525Q IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ525Q AS FLOAT64) 
 END as another_asa_schedule_number_of_doses, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Per day' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RXQ525U AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN RXQ525U IS NULL THEN NULL 
ELSE SAFE_CAST(RXQ525U AS STRING) 
 END as another_asa_schedule_frequency_of_doses, 

CASE
    WHEN RXD530 IS NULL THEN NULL 
ELSE SAFE_CAST(RXD530 AS FLOAT64) 
 END as aspirin_dose_in_milligrams_mg, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_preventive_aspirin_use_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/RXQASA_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_RXQASA.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/RXQASA_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/RXQASA_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/RXQASA_G.htm
*/
