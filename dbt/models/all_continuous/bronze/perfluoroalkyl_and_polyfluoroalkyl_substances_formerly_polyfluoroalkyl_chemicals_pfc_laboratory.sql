SELECT
start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_formerly_polyfluoroalkyl_chemicals_pfc_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:

*/