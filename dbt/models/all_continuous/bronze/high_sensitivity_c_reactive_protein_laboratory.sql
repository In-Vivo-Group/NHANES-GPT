SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXHSCRP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHSCRP AS FLOAT64) 
 END as hs_c_reactive_protein_mg_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHRPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHRPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHRPLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHRPLC AS STRING) 
 END as hs_c_reactive_protein_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_high_sensitivity_c_reactive_protein_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HSCRP_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_HSCRP.htm
*/
