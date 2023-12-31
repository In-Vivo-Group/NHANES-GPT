SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SEQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ010 AS STRING) 
 END as hemophilia, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SEQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ020 AS STRING) 
 END as cancer_chemotherapy_past_or_future_4_wks, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SEQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ030 AS STRING) 
 END as pacemaker_or_automatic_defibrillator, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SEQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ040 AS STRING) 
 END as amputations_of_legs_feet_other_than_toes, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Right' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Left' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Both' -- categorize numeric values
WHEN SEQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ050 AS STRING) 
 END as where_is_the_amputation, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SEQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ060 AS STRING) 
 END as are_you_currently_pregnant, 

CASE
    WHEN SEQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ070 AS FLOAT64) 
 END as how_many_weeks, 

CASE
    WHEN WHQ020L IS NULL THEN NULL 
ELSE SAFE_CAST(WHQ020L AS FLOAT64) 
 END as how_much_weight_without_clothes_or_shoes, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Excluded' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SEQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Reviewed, not excluded' -- categorize numeric values
WHEN SEQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(SEQ080 AS STRING) 
 END as cv_exclusion_physician_medical_review, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_shared_exclusion_questions_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SEQ.htm
*/
