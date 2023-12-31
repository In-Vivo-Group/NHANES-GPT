SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDAACST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine scan completed, L1-L4 are valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDAACST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine scan completed, among L1-L4 one or more vertebrae are invalid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDAACST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, pregnancy' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDAACST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, weight > 450 lbs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDAACST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, other reason' -- categorize numeric values
WHEN DXDAACST IS NULL THEN NULL 
ELSE SAFE_CAST(DXDAACST AS STRING) 
 END as abdominal_aortic_calcification_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAACTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAACTV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Invalid data' -- categorize numeric values
WHEN DXXAACTV IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAACTV AS STRING) 
 END as aac_total_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Insufficient scan area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL1CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (degenerative diseases, spinal fusion, fractures)' -- categorize numeric values
WHEN DXXAL1CC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL1CC AS STRING) 
 END as aac_l1_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Insufficient scan area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL2CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (degenerative diseases, spinal fusion, fractures)' -- categorize numeric values
WHEN DXXAL2CC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL2CC AS STRING) 
 END as aac_l2_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Insufficient scan area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL3CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (degenerative diseases, spinal fusion, fractures)' -- categorize numeric values
WHEN DXXAL3CC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL3CC AS STRING) 
 END as aac_l3_invalidity_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Insufficient scan area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXAL4CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (degenerative diseases, spinal fusion, fractures)' -- categorize numeric values
WHEN DXXAL4CC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL4CC AS STRING) 
 END as aac_l4_invalidity_code, 

CASE
    WHEN DXXAL1 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL1 AS FLOAT64) 
 END as aac_l1_posterior_score, 

CASE
    WHEN DXXAL1AN IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL1AN AS FLOAT64) 
 END as aac_l1_anterior_score, 

CASE
    WHEN DXXAL2 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL2 AS FLOAT64) 
 END as aac_l2_posterior_score, 

CASE
    WHEN DXXAL2AN IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL2AN AS FLOAT64) 
 END as aac_l2_anterior_score, 

CASE
    WHEN DXXAL3 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL3 AS FLOAT64) 
 END as aac_l3_posterior_score, 

CASE
    WHEN DXXAL3AN IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL3AN AS FLOAT64) 
 END as aac_l3_anterior_score, 

CASE
    WHEN DXXAL4 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL4 AS FLOAT64) 
 END as aac_l4_posterior_score, 

CASE
    WHEN DXXAL4AN IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL4AN AS FLOAT64) 
 END as aac_l4_anterior_score, 

CASE
    WHEN DXXAL4MD IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAL4MD AS FLOAT64) 
 END as aac_l4_mid_score, 

CASE
    WHEN DXXAC8AN IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAC8AN AS FLOAT64) 
 END as aac_anterior_8_score, 

CASE
    WHEN DXXAC8PO IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAC8PO AS FLOAT64) 
 END as aac_posterior_8_score, 

CASE
    WHEN DXXAAC8 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAAC8 AS FLOAT64) 
 END as aac_total_8_score, 

CASE
    WHEN DXXAAC24 IS NULL THEN NULL 
ELSE SAFE_CAST(DXXAAC24 AS FLOAT64) 
 END as aac_total_24_score, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_abdominal_aortic_calcification_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DXXAAC_H.htm
*/
