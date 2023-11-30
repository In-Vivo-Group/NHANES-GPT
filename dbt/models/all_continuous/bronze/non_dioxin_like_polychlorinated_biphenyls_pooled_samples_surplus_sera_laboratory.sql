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
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '40 Yrs. to 59Yrs.' -- categorize numeric values
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
    WHEN SS028 IS NULL THEN NULL 
ELSE SAFE_CAST(SS028 AS FLOAT64) 
 END as pcb28, 

CASE
    WHEN SS044 IS NULL THEN NULL 
ELSE SAFE_CAST(SS044 AS FLOAT64) 
 END as pcb44, 

CASE
    WHEN SS049 IS NULL THEN NULL 
ELSE SAFE_CAST(SS049 AS FLOAT64) 
 END as pcb49, 

CASE
    WHEN SS052 IS NULL THEN NULL 
ELSE SAFE_CAST(SS052 AS FLOAT64) 
 END as pcb52, 

CASE
    WHEN SS066 IS NULL THEN NULL 
ELSE SAFE_CAST(SS066 AS FLOAT64) 
 END as pcb66, 

CASE
    WHEN SS074 IS NULL THEN NULL 
ELSE SAFE_CAST(SS074 AS FLOAT64) 
 END as pcb74, 

CASE
    WHEN SS087 IS NULL THEN NULL 
ELSE SAFE_CAST(SS087 AS FLOAT64) 
 END as pcb87, 

CASE
    WHEN SS099 IS NULL THEN NULL 
ELSE SAFE_CAST(SS099 AS FLOAT64) 
 END as pcb99, 

CASE
    WHEN SS101 IS NULL THEN NULL 
ELSE SAFE_CAST(SS101 AS FLOAT64) 
 END as pcb101, 

CASE
    WHEN SS110 IS NULL THEN NULL 
ELSE SAFE_CAST(SS110 AS FLOAT64) 
 END as pcb110, 

CASE
    WHEN SS128 IS NULL THEN NULL 
ELSE SAFE_CAST(SS128 AS FLOAT64) 
 END as pcb128, 

CASE
    WHEN SS138 IS NULL THEN NULL 
ELSE SAFE_CAST(SS138 AS FLOAT64) 
 END as pcb138_158, 

CASE
    WHEN SS146 IS NULL THEN NULL 
ELSE SAFE_CAST(SS146 AS FLOAT64) 
 END as pcb146, 

CASE
    WHEN SS149 IS NULL THEN NULL 
ELSE SAFE_CAST(SS149 AS FLOAT64) 
 END as pcb149, 

CASE
    WHEN SS151 IS NULL THEN NULL 
ELSE SAFE_CAST(SS151 AS FLOAT64) 
 END as pcb151, 

CASE
    WHEN SS153 IS NULL THEN NULL 
ELSE SAFE_CAST(SS153 AS FLOAT64) 
 END as pcb153, 

CASE
    WHEN SS170 IS NULL THEN NULL 
ELSE SAFE_CAST(SS170 AS FLOAT64) 
 END as pcb170, 

CASE
    WHEN SS172 IS NULL THEN NULL 
ELSE SAFE_CAST(SS172 AS FLOAT64) 
 END as pcb172, 

CASE
    WHEN SS177 IS NULL THEN NULL 
ELSE SAFE_CAST(SS177 AS FLOAT64) 
 END as pcb177, 

CASE
    WHEN SS178 IS NULL THEN NULL 
ELSE SAFE_CAST(SS178 AS FLOAT64) 
 END as pcb178, 

CASE
    WHEN SS180 IS NULL THEN NULL 
ELSE SAFE_CAST(SS180 AS FLOAT64) 
 END as pcb180, 

CASE
    WHEN SS183 IS NULL THEN NULL 
ELSE SAFE_CAST(SS183 AS FLOAT64) 
 END as pcb183, 

CASE
    WHEN SS187 IS NULL THEN NULL 
ELSE SAFE_CAST(SS187 AS FLOAT64) 
 END as pcb187, 

CASE
    WHEN SS194 IS NULL THEN NULL 
ELSE SAFE_CAST(SS194 AS FLOAT64) 
 END as pcb194, 

CASE
    WHEN SS195 IS NULL THEN NULL 
ELSE SAFE_CAST(SS195 AS FLOAT64) 
 END as pcb195, 

CASE
    WHEN SS196 IS NULL THEN NULL 
ELSE SAFE_CAST(SS196 AS FLOAT64) 
 END as pcb196_203, 

CASE
    WHEN SS199 IS NULL THEN NULL 
ELSE SAFE_CAST(SS199 AS FLOAT64) 
 END as pcb199, 

CASE
    WHEN SS206 IS NULL THEN NULL 
ELSE SAFE_CAST(SS206 AS FLOAT64) 
 END as pcb206, 

CASE
    WHEN SS209 IS NULL THEN NULL 
ELSE SAFE_CAST(SS209 AS FLOAT64) 
 END as pcb209, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_non_dioxin_like_polychlorinated_biphenyls_pooled_samples_surplus_sera_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/SSPCB_B.htm
*/
