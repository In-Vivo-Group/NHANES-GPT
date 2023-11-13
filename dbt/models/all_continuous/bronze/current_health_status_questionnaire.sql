SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN HSD010 = 1 THEN 'Excellent' -- categorize numeric values
WHEN HSD010 = 2 THEN 'Very good,' -- categorize numeric values
WHEN HSD010 = 3 THEN 'Good,' -- categorize numeric values
WHEN HSD010 = 4 THEN 'Fair, or' -- categorize numeric values
WHEN HSD010 = 5 THEN 'Poor?' -- categorize numeric values
WHEN HSD010 = 7 THEN 'Refused' -- categorize numeric values
WHEN HSD010 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HSD010 IS NULL THEN NULL 
ELSE HSD010 
 END as general_health_condition, 

CASE
            WHEN HSQ500 = 1 THEN 'Yes' -- categorize numeric values
WHEN HSQ500 = 2 THEN 'No' -- categorize numeric values
WHEN HSQ500 = 7 THEN 'Refused' -- categorize numeric values
WHEN HSQ500 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HSQ500 IS NULL THEN NULL 
ELSE HSQ500 
 END as sp_have_head_cold_or_chest_cold, 

CASE
            WHEN HSQ510 = 1 THEN 'Yes' -- categorize numeric values
WHEN HSQ510 = 2 THEN 'No' -- categorize numeric values
WHEN HSQ510 = 7 THEN 'Refused' -- categorize numeric values
WHEN HSQ510 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HSQ510 IS NULL THEN NULL 
ELSE HSQ510 
 END as sp_have_stomach_or_intestinal_illness, 

CASE
            WHEN HSQ520 = 1 THEN 'Yes' -- categorize numeric values
WHEN HSQ520 = 2 THEN 'No' -- categorize numeric values
WHEN HSQ520 = 7 THEN 'Refused' -- categorize numeric values
WHEN HSQ520 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HSQ520 IS NULL THEN NULL 
ELSE HSQ520 
 END as sp_have_flu_pneumonia_ear_infection, 

CASE
            WHEN HSQ571 = '1' THEN 'Yes' -- categorize string values 
WHEN HSQ571 = '2' THEN 'No' -- categorize string values 
WHEN HSQ571 = '7' THEN 'Refused' -- categorize string values 
WHEN HSQ571 = '9' THEN 'Dont know' -- categorize string values 
WHEN HSQ571 IS NULL THEN NULL 
ELSE HSQ571 
 END as sp_donated_blood_in_past_12_months, 

CASE
            WHEN HSQ580 = 1 THEN '1' -- categorize numeric values
WHEN HSQ580 = 2 THEN '2' -- categorize numeric values
WHEN HSQ580 = 3 THEN '3' -- categorize numeric values
WHEN HSQ580 = 4 THEN '4' -- categorize numeric values
WHEN HSQ580 = 5 THEN '5' -- categorize numeric values
WHEN HSQ580 = 6 THEN '6' -- categorize numeric values
WHEN HSQ580 = 7 THEN '7' -- categorize numeric values
WHEN HSQ580 = 8 THEN '8' -- categorize numeric values
WHEN HSQ580 = 9 THEN '9' -- categorize numeric values
WHEN HSQ580 = 10 THEN '10' -- categorize numeric values
WHEN HSQ580 = 11 THEN '11' -- categorize numeric values
WHEN HSQ580 = 12 THEN '12' -- categorize numeric values
WHEN HSQ580 = 77 THEN 'Refused' -- categorize numeric values
WHEN HSQ580 = 99 THEN 'Dont know' -- categorize numeric values
WHEN HSQ580 IS NULL THEN NULL 
ELSE HSQ580 
 END as how_long_ago_was_last_blood_donation, 

CASE
            WHEN HSQ590 = 1 THEN 'Yes' -- categorize numeric values
WHEN HSQ590 = 2 THEN 'No' -- categorize numeric values
WHEN HSQ590 = 7 THEN 'Refused' -- categorize numeric values
WHEN HSQ590 = 9 THEN 'Dont know' -- categorize numeric values
WHEN HSQ590 IS NULL THEN NULL 
ELSE HSQ590 
 END as blood_ever_tested_for_hiv_virus, 

CASE
            WHEN HSAQUEX = 1 THEN 'Dietary Recall Component -- B(1-11)' -- categorize numeric values
WHEN HSAQUEX = 2 THEN 'MEC CAPI Questionnaire -- B(12-150)' -- categorize numeric values
WHEN HSAQUEX IS NULL THEN NULL 
ELSE HSAQUEX 
 END as source_of_health_status_data, 

 FROM {{ ref('stg_current_health_status_questionnaire') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HSQ_J.htm
        