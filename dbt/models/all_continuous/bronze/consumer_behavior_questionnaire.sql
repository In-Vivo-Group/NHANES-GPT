SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(CBD071 AS FLOAT64) > 4296.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD071 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD071 AS FLOAT64) 
 END as money_spent_at_supermarket_grocery_store, 

CASE
WHEN SAFE_CAST(CBD091 AS FLOAT64) > 868.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD091 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD091 AS FLOAT64) 
 END as money_spent_on_nonfood_items, 

CASE
WHEN SAFE_CAST(CBD111 AS FLOAT64) > 3011.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD111 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD111 AS FLOAT64) 
 END as money_spent_on_food_at_other_stores, 

CASE
WHEN SAFE_CAST(CBD121 AS FLOAT64) > 5211.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD121 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD121 AS FLOAT64) 
 END as money_spent_on_eating_out, 

CASE
WHEN SAFE_CAST(CBD131 AS FLOAT64) > 961.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN CBD131 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD131 AS FLOAT64) 
 END as money_spent_on_carryout_delivered_foods, 

CASE
WHEN CBD070 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD070 AS FLOAT64) 
 END as money_spent_at_supermarket_grocery_store_CBD070, 

CASE
WHEN CBD090 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD090 AS FLOAT64) 
 END as money_spent_on_nonfood_items_CBD090, 

CASE
WHEN CBD110 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD110 AS FLOAT64) 
 END as money_spent_on_food_at_other_stores_CBD110, 

CASE
WHEN CBD120 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD120 AS FLOAT64) 
 END as money_spent_on_eating_out_CBD120, 

CASE
WHEN CBD130 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD130 AS FLOAT64) 
 END as money_spent_on_carryout_delivered_foods_CBD130, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBD010 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD010 AS STRING) 
 END as anyone_in_the_family_on_a_special_diet, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ020 AS STRING) 
 END as fruits_available_at_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ030 AS STRING) 
 END as dark_green_vegetables_available_at_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ040 AS STRING) 
 END as salty_snacks_available_at_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ050 AS STRING) 
 END as fat_free_low_fat_milk_available_at_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Always' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Most of the time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sometimes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Rarely' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Never' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ060 AS STRING) 
 END as soft_drinks_available_at_home, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'More than once a week,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Once a week,' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Once every two weeks, or' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Once a month or less?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Rarely make any major shopping trips, only small trips' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Rarely shop for food' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CBQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CBQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ140 AS STRING) 
 END as how_often_do_you_do_major_food_shopping, 

CASE
WHEN CBD150 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD150 AS FLOAT64) 
 END as time_to_get_to_grocery_store, 

CASE
WHEN CBD160 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD160 AS FLOAT64) 
 END as of_times_someone_cooked_dinner_at_home, 

CASE
WHEN CBD170 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD170 AS FLOAT64) 
 END as time_spent_cooking_dinner_cleaning_up, 

CASE
WHEN CBD180 IS NULL THEN NULL 
ELSE SAFE_CAST(CBD180 AS FLOAT64) 
 END as of_meals_family_ate_together_in_7_days, 

CASE
WHEN CBQ190 IS NULL THEN NULL 
ELSE SAFE_CAST(CBQ190 AS FLOAT64) 
 END as of_meals_ate_together_cooked_at_home, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_consumer_behavior_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/CBQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/CBQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CBQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CBQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/CBQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/CBQ_E.htm
*/
