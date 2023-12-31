SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ010 AS STRING) 
 END as dizzy_balance_falling_problems_past_yr, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ020A IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ020A AS STRING) 
 END as dizziness_problems_in_past_year, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ020B IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ020B AS STRING) 
 END as balance_problems_in_past_year, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ020C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ020C IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ020C AS STRING) 
 END as falling_problems_in_past_year, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than 2 weeks' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 weeks to 3 months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'More than 3 months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ030A IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ030A AS STRING) 
 END as how_long_did_dizziness_last, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than 2 weeks' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2 weeks to 3 months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'More than 3 months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ030B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ030B IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ030B AS STRING) 
 END as how_long_did_balance_problem_last, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ040 AS STRING) 
 END as get_dizzy_when_turn_over_in_bed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'A cold or the flu' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ060A IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060A AS STRING) 
 END as off_balance_due_to_cold_or_flu, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Injuries or accidents' -- categorize numeric values
WHEN BAQ060B IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060B AS STRING) 
 END as off_balance_due_to_injury_or_accident, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Use of drugs or medications' -- categorize numeric values
WHEN BAQ060C IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060C AS STRING) 
 END as off_balance_due_to_drugs_or_medicine, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Age or getting older' -- categorize numeric values
WHEN BAQ060D IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060D AS STRING) 
 END as off_balance_due_to_aging, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Surgery' -- categorize numeric values
WHEN BAQ060E IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060E AS STRING) 
 END as off_balance_due_to_surgery, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Hearing problems - including ringing in the ears' -- categorize numeric values
WHEN BAQ060F IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060F AS STRING) 
 END as off_balance_due_to_hearing_problem, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Vision or seeing problems' -- categorize numeric values
WHEN BAQ060G IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060G AS STRING) 
 END as off_balance_due_to_vision_problem, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ060H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN BAQ060H IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ060H AS STRING) 
 END as nothing_related_to_balance_problem, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ070 AS STRING) 
 END as received_treatment_for_dizziness_balance, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ075 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than 1 year ago,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ075 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '1 to 5 years ago, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ075 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '5 years or more ago?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ075 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ075 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ075 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ075 AS STRING) 
 END as how_long_ago_were_you_treated, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ080A IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ080A AS STRING) 
 END as did_treatment_involve_medication, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ080B IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ080B AS STRING) 
 END as did_treatment_involve_surgery_to_ear, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ080C IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ080C AS STRING) 
 END as did_treatment_involve_other_type_surgery, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ080D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ080D IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ080D AS STRING) 
 END as did_treatment_involve_exercises, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Get better,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Get worse, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Stay the same?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ090 AS STRING) 
 END as treatment_affect_on_dizziness_balance, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BAQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN BAQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(BAQ100 AS STRING) 
 END as blood_relative_dizziness_balance_problem, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_balance_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/BAQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/BAQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/BAQ.htm
*/
