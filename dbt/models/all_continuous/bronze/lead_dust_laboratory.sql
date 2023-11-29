SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCDINDEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Index Child' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCDINDEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Other Household Child' -- categorize numeric values
WHEN DCDINDEX IS NULL THEN NULL 
ELSE SAFE_CAST(DCDINDEX AS STRING) 
 END as index_child_for_sampling, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCDSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Floor Only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCDSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Window Only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCDSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Floor and Window' -- categorize numeric values
WHEN DCDSTAT IS NULL THEN NULL 
ELSE SAFE_CAST(DCDSTAT AS STRING) 
 END as dust_sample_status, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Living Room/Family Room/Den' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Dining Room' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Kitchen' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Bedroom' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Another room' -- categorize numeric values
WHEN DCD030 IS NULL THEN NULL 
ELSE SAFE_CAST(DCD030 AS STRING) 
 END as room_where_samples_taken, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD070A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCD070A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DCD070A IS NULL THEN NULL 
ELSE SAFE_CAST(DCD070A AS STRING) 
 END as room_selected_was_floor_carpeted, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DCQ070B IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ070B AS STRING) 
 END as room_selected_had_floor_mat, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DCQ070C IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ070C AS STRING) 
 END as room_selected_had_area_rug, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ070D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DCQ070D IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ070D AS STRING) 
 END as room_selected_had_wall_wall_carpeting, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Low pile' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'High pile' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not applicable' -- categorize numeric values
WHEN DCQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ090 AS STRING) 
 END as carpet_pile_depth, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Smooth and Cleanable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Not Smooth and Cleanable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Carpet' -- categorize numeric values
WHEN DCQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ160 AS STRING) 
 END as surface_condition_for_floor_dust_sample, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN DCQ240 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ240 AS STRING) 
 END as window_sill_finished, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Smooth and Cleanable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Not Smooth and Cleanable' -- categorize numeric values
WHEN DCQ250 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ250 AS STRING) 
 END as surface_condition_for_sill_dust_sample, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ400 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Dirtier than average' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ400 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Average' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ400 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Cleaner than average' -- categorize numeric values
WHEN DCQ400 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ400 AS STRING) 
 END as room_cleanliness, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Very cluttered (nothing in place)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Average amount of clutter' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DCQ410 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Organized (nothing out of place)' -- categorize numeric values
WHEN DCQ410 IS NULL THEN NULL 
ELSE SAFE_CAST(DCQ410 AS STRING) 
 END as room_clutter, 

CASE
WHEN LBXDFS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDFS AS FLOAT64) 
 END as floor_gfaas_ug_sq_ft, 

CASE
WHEN LBXDFSF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDFSF AS FLOAT64) 
 END as floor_faas_ug_sq_ft, 

CASE
WHEN LBDDWS IS NULL THEN NULL 
ELSE SAFE_CAST(LBDDWS AS FLOAT64) 
 END as window_faas_ug_sq_ft, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDFSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above limit of detection' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDFSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below limit of detection' -- categorize numeric values
WHEN LBDDFSLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDDFSLC AS STRING) 
 END as lead_dust_floor_gfaas_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDD3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above limit of detection' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDD3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below limit of detection' -- categorize numeric values
WHEN LBDD3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDD3LC AS STRING) 
 END as lead_dust_floor_faas_comment_code, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDWSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above limit of detection' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDWSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below limit of detection' -- categorize numeric values
WHEN LBDDWSLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDDWSLC AS STRING) 
 END as lead_dust_window_sill_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_lead_dust_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L20_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L20_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB20.htm
*/
