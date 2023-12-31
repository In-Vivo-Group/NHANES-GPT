SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ100 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ100 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ100 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ100 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN PUQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(PUQ100 AS STRING) 
 END as products_used_in_home_to_control_insects, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ110 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ110 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ110 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUQ110 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN PUQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(PUQ110 AS STRING) 
 END as products_used_to_kill_weeds, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD010 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD010 AS STRING) 
 END as pest_control_in_home_in_past_month, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Entire home' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Kitchen or dining room, not entire home' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Other rooms' -- categorize numeric values
WHEN PUD020 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD020 AS STRING) 
 END as rooms_treated_for_pests, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD021 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD021 AS STRING) 
 END as foundation_outside_of_building_treated, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD031 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD031 AS STRING) 
 END as non_professional_treated_home, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD032 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'One time only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD032 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Two or more times' -- categorize numeric values
WHEN PUD032 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD032 AS STRING) 
 END as treatments_in_home_by_non_professional, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD033 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD033 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD033 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD033 AS STRING) 
 END as professional_treated_home, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD034 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'One time only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD034 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Two or more times' -- categorize numeric values
WHEN PUD034 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD034 AS STRING) 
 END as treatments_in_home_by_professional, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUD041 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUD041 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN PUD041 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD041 AS STRING) 
 END as home_have_private_yard, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUD061 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(PUD061 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN PUD061 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD061 AS STRING) 
 END as pest_control_in_yard_in_past_month, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD071 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD071 AS STRING) 
 END as non_professional_treated_yard, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD072 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'One time only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD072 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Two or more times' -- categorize numeric values
WHEN PUD072 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD072 AS STRING) 
 END as treatments_in_yard_by_non_professional, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD073 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD073 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD073 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD073 AS STRING) 
 END as professional_treated_yard, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD074 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'One time only' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD074 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Two or more times' -- categorize numeric values
WHEN PUD074 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD074 AS STRING) 
 END as treatments_in_yard_by_professional, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD040 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD040 AS STRING) 
 END as home_have_private_yard_PUD040, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(PUD060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN PUD060 IS NULL THEN NULL 
ELSE SAFE_CAST(PUD060 AS STRING) 
 END as pest_control_in_yard_in_past_month_PUD060, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pesticide_use_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PUQMEC_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_PUQMEC.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PUQMEC_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PUQMEC_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PUQMEC_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/PUQMEC_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/PUQMEC_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/PUQMEC_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/PUQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/PUQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/PUQ.htm
*/
