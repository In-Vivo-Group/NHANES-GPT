SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTFSM IS NULL THEN NULL 
ELSE SAFE_CAST(WTFSM AS FLOAT64) 
 END as two_year_smoking_weights, 

CASE
WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as urinary_creatinine_mg_dl, 

CASE
WHEN URXUAS3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAS3 AS FLOAT64) 
 END as urinary_arsenous_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUA3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUA3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUA3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUA3LC AS STRING) 
 END as urinary_arsenous_acid_comment_code, 

CASE
WHEN URXUAS5 IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAS5 AS FLOAT64) 
 END as urinary_arsenic_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUA5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUA5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUA5LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUA5LC AS STRING) 
 END as urinary_arsenic_acid_comment_code, 

CASE
WHEN URXUAB IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAB AS FLOAT64) 
 END as urinary_arsenobetaine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUABLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUABLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUABLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUABLC AS STRING) 
 END as urinary_arsenobetaine_comment_code, 

CASE
WHEN URXUAC IS NULL THEN NULL 
ELSE SAFE_CAST(URXUAC AS FLOAT64) 
 END as urinary_arsenocholine_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUACLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUACLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUACLC AS STRING) 
 END as urinary_arsenocholine_comment_code, 

CASE
WHEN URXUDMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUDMA AS FLOAT64) 
 END as urinary_dimethylarsinic_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUDALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUDALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUDALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDUDALC AS STRING) 
 END as urinary_dimethylarsinic_acid_comment_cod, 

CASE
WHEN URXUMMA IS NULL THEN NULL 
ELSE SAFE_CAST(URXUMMA AS FLOAT64) 
 END as urinary_monomethylacrsonic_acid_ug_l, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMMAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDUMMAL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDUMMAL IS NULL THEN NULL 
ELSE SAFE_CAST(URDUMMAL AS STRING) 
 END as urinary_mma_acid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_arsenics_speciated_urine_special_sample_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/UASS_H.htm
*/
