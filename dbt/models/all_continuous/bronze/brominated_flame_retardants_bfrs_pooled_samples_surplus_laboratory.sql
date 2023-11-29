SELECT
CASE
WHEN POOLID IS NULL THEN NULL 
ELSE SAFE_CAST(POOLID AS FLOAT64) 
 END as pool_id_number, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIAGENDR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Male' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIAGENDR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Female' -- categorize numeric values
WHEN RIAGENDR IS NULL THEN NULL 
ELSE SAFE_CAST(RIAGENDR AS STRING) 
 END as gender, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRAETN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRAETN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRAETN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Mexican American' -- categorize numeric values
WHEN RIDRAETN IS NULL THEN NULL 
ELSE SAFE_CAST(RIDRAETN AS STRING) 
 END as ethnicity, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '6 Yrs. to 11 Yrs.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '12 Yrs. to 19 Yrs.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '20 Yrs. to 39 Yrs.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '40 Yrs. to 59 Yrs.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '60 Yrs. to 150 Yrs.' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(-1 AS FLOAT64),0) AS INT64) THEN '3 Yrs. to 5 Yrs.' -- categorize numeric values
WHEN RIDAGGRP IS NULL THEN NULL 
ELSE SAFE_CAST(RIDAGGRP AS STRING) 
 END as age_group, 

CASE
WHEN RIANSMP IS NULL THEN NULL 
ELSE SAFE_CAST(RIANSMP AS FLOAT64) 
 END as number_of_samples_included_in_pool, 

CASE
WHEN SSBB1 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBB1 AS FLOAT64) 
 END as ppbb153, 

CASE
WHEN SSBR2 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR2 AS FLOAT64) 
 END as bde28, 

CASE
WHEN SSBR3 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR3 AS FLOAT64) 
 END as pbbde47, 

CASE
WHEN SSBR4 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR4 AS FLOAT64) 
 END as pbde86, 

CASE
WHEN SSBR5 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR5 AS FLOAT64) 
 END as pbde99, 

CASE
WHEN SSBR6 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR6 AS FLOAT64) 
 END as pbde100, 

CASE
WHEN SSBR66 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR66 AS FLOAT64) 
 END as pbde66, 

CASE
WHEN SSBR7 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR7 AS FLOAT64) 
 END as pbde153, 

CASE
WHEN SSBR8 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR8 AS FLOAT64) 
 END as pde154, 

CASE
WHEN SSBR9 IS NULL THEN NULL 
ELSE SAFE_CAST(SSBR9 AS FLOAT64) 
 END as pde183, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_brominated_flame_retardants_bfrs_pooled_samples_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSBFR_B.htm
*/
