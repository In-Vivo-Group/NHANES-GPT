SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUAXSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUAXSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUAXSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Ineligible' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUAXSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN LUAXSTAT IS NULL THEN NULL 
ELSE SAFE_CAST(LUAXSTAT AS STRING) 
 END as elastography_exam_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXNC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Fasting < 3hrs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXNC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Unable to obtain 10 valid measures' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXNC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'IQR/M >30%' -- categorize numeric values
WHEN LUARXNC IS NULL THEN NULL 
ELSE SAFE_CAST(LUARXNC AS STRING) 
 END as reason_for_partial_exam, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXND AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Participant refusal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXND AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Limited time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXND AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Other (e.g. physical or technical limitations )' -- categorize numeric values
WHEN LUARXND IS NULL THEN NULL 
ELSE SAFE_CAST(LUARXND AS STRING) 
 END as reason_exam_not_done, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Pregnant/ Unable to get urine to test for pregnancy' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUARXIN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Other (e.g. insulin pump or other implantable electronic device)' -- categorize numeric values
WHEN LUARXIN IS NULL THEN NULL 
ELSE SAFE_CAST(LUARXIN AS STRING) 
 END as reason_ineligible, 

CASE
    WHEN REPLACE(LUAPNME,'.0','') = 'M' THEN 'M' -- categorize string values 
WHEN REPLACE(LUAPNME,'.0','') = 'XL' THEN 'XL' -- categorize string values 
WHEN LUAPNME IS NULL THEN NULL 
ELSE SAFE_CAST(LUAPNME AS STRING) 
 END as exam_wand_type, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '6' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN '7' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN '8' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN '9' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN '10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN '11' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN '12' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN '13' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN '14' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN '15' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN '16' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN '17' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN '18' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(19 AS FLOAT64),0) AS INT64) THEN '19' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN '20 to 29' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMVGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN '30 or more' -- categorize numeric values
WHEN LUANMVGP IS NULL THEN NULL 
ELSE SAFE_CAST(LUANMVGP AS STRING) 
 END as count_complete_measures_from_final_wand, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '4' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '6' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN '9' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN '10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN '11' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN '12' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN '13' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN '14' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN '15' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN '16' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN '17' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN '18' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(19 AS FLOAT64),0) AS INT64) THEN '19' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(20 AS FLOAT64),0) AS INT64) THEN '20 to 29' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LUANMTGP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN '30 or more' -- categorize numeric values
WHEN LUANMTGP IS NULL THEN NULL 
ELSE SAFE_CAST(LUANMTGP AS STRING) 
 END as count_measures_attempted_with_final_wand, 

CASE
    WHEN LUXSMED IS NULL THEN NULL 
ELSE SAFE_CAST(LUXSMED AS FLOAT64) 
 END as median_stiffness_e_kilopascals_kpa, 

CASE
    WHEN LUXSIQR IS NULL THEN NULL 
ELSE SAFE_CAST(LUXSIQR AS FLOAT64) 
 END as stiffness_e_interquartile_range_iqre, 

CASE
    WHEN LUXSIQRM IS NULL THEN NULL 
ELSE SAFE_CAST(LUXSIQRM AS FLOAT64) 
 END as ratio_stiffness_iqre_median_e, 

CASE
    WHEN LUXCAPM IS NULL THEN NULL 
ELSE SAFE_CAST(LUXCAPM AS FLOAT64) 
 END as median_cap_decibels_per_meter_db_m, 

CASE
    WHEN LUXCPIQR IS NULL THEN NULL 
ELSE SAFE_CAST(LUXCPIQR AS FLOAT64) 
 END as cap_interquartile_range_iqrc, 

CASE
    WHEN REPLACE(LUATECH,'.0','') = 'A' THEN 'A' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'B' THEN 'B' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'C' THEN 'C' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'D' THEN 'D' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'E' THEN 'E' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'F' THEN 'F' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'G' THEN 'G' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'H' THEN 'H' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'I' THEN 'I' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'J' THEN 'J' -- categorize string values 
WHEN REPLACE(LUATECH,'.0','') = 'YY' THEN 'Other staff' -- categorize string values 
WHEN LUATECH IS NULL THEN NULL 
ELSE SAFE_CAST(LUATECH AS STRING) 
 END as health_technician_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_liver_ultrasound_transient_elastography_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_LUX.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/LUX_J.htm
*/
