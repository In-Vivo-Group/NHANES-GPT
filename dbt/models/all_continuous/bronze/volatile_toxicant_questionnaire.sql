SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS STRING) 
 END as voc_subsample_weight, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ210 AS STRING) 
 END as attached_garage, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ200A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ200A AS STRING) 
 END as store_paints_or_fuels_inside_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ231A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ231A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ231A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ231A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ231A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ231A AS STRING) 
 END as use_moth_balls_or_toilet_deodorizers, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ233A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ233A AS STRING) 
 END as past_3_days_inhale_smoke_for_10_minutes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'More than 2 days' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ233B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ233B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ233B AS STRING) 
 END as when_did_you_last_inhale_smoke_for_10min, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ241A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ241A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ241A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ241A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ241A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ241A AS STRING) 
 END as did_you_cook_with_natural_gas, 

CASE
WHEN VTD241B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD241B AS STRING) 
 END as long_ago_did_you_cook_with_natural_gas, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ244A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ244A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ244A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ244A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ244A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ244A AS STRING) 
 END as did_you_pump_gas_into_your_car, 

CASE
WHEN VTD244B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD244B AS STRING) 
 END as long_ago_did_you_pump_gas_in_your_car, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ251A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ251A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ251A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ251A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ251A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ251A AS STRING) 
 END as spend_time_in_pool_hot_tub_steam_room, 

CASE
WHEN VTD251B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD251B AS STRING) 
 END as how_long_ago_since_at_pool_hot_tub, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ261A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ261A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ261A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ261A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ261A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ261A AS STRING) 
 END as in_last_48_hrs_use_dry_cleaning_solvent, 

CASE
WHEN VTD261B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD261B AS STRING) 
 END as long_since_use_dry_cleaning_solvents, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ271A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ271A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ271A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ271A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ271A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ271A AS STRING) 
 END as in_last_48_hrs_bathe_for_5_minutes, 

CASE
WHEN VTD271B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD271B AS STRING) 
 END as how_long_in_hrs_since_you_bathed, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ281A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ281A AS STRING) 
 END as in_past_48_hrs_breathe_paint_fumes, 

CASE
WHEN VTD281B IS NULL THEN NULL 
ELSE SAFE_CAST(VTD281B AS STRING) 
 END as how_long_since_breathed_paint_fumes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ281C IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ281C AS STRING) 
 END as in_past_48_hrs_breathe_diesel_fumes, 

CASE
WHEN VTD281D IS NULL THEN NULL 
ELSE SAFE_CAST(VTD281D AS STRING) 
 END as how_long_since_breathed_diesel_fumes, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ281E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ281E IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ281E AS STRING) 
 END as breathe_fingernail_polish_fumes, 

CASE
WHEN VTD281F IS NULL THEN NULL 
ELSE SAFE_CAST(VTD281F AS STRING) 
 END as how_long_since_breathed_polish_fumes, 

CASE
WHEN WTSVOCPR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOCPR AS STRING) 
 END as voc_subsample_weight_pre_pandemic, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ220 IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ220 AS STRING) 
 END as private_well, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_toxicant_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/VTQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_VTQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/VTQ_I.htm
*/
