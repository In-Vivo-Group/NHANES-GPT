SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ010 AS STRING) 
 END as had_problem_with_smell_past_12_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better Now' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse Now' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No Change' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ020 AS STRING) 
 END as had_change_ability_to_smell_since_age_25, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ030 AS STRING) 
 END as smells_bother_you_but_not_others, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ040 AS STRING) 
 END as had_phantom_odor, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than 3 Months Ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '3 to 12 months (1 year) ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '1 to 4 years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '5 to 9 years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Ten or more years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ060 AS STRING) 
 END as when_noticed_change_in_ability_to_smell, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'It is always there' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'It comes and goes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'I have a problem only with a cold' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ070 AS STRING) 
 END as frequency_of_problem_w_ability_to_smell, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ080 AS STRING) 
 END as had_problem_with_taste_past_12_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No Change' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ090A IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ090A AS STRING) 
 END as ability_to_taste_salt, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No Change' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ090B IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ090B AS STRING) 
 END as ability_to_taste_sourness, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No Change' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ090C IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ090C AS STRING) 
 END as ability_to_taste_sweetness, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Better' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Worse' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No Change' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ090D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ090D IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ090D AS STRING) 
 END as ability_to_taste_bitterness, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ100 AS STRING) 
 END as change_in_ability_to_taste_food_flavors, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ110 AS STRING) 
 END as persistent_taste_in_mouth_past_12_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sweet' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ120A IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120A AS STRING) 
 END as taste_in_mouth_sweet, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Sour' -- categorize numeric values
WHEN CSQ120B IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120B AS STRING) 
 END as taste_in_mouth_sour, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Salty' -- categorize numeric values
WHEN CSQ120C IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120C AS STRING) 
 END as taste_in_mouth_salty, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Bitter' -- categorize numeric values
WHEN CSQ120D IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120D AS STRING) 
 END as taste_in_mouth_bitter, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Metallic' -- categorize numeric values
WHEN CSQ120E IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120E AS STRING) 
 END as taste_in_mouth_metallic, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Burning or Tingling' -- categorize numeric values
WHEN CSQ120F IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120F AS STRING) 
 END as taste_in_mouth_burning_or_tingling, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Bad or Foul' -- categorize numeric values
WHEN CSQ120G IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120G AS STRING) 
 END as taste_in_mouth_bad_or_foul, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ120H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'or Something else' -- categorize numeric values
WHEN CSQ120H IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ120H AS STRING) 
 END as taste_in_mouth_something_else, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than 3 Months Ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '3 to 12 Months (1 Yesr) Ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '1 to 4 years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '5 to 9 years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Ten or more years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ140 AS STRING) 
 END as when_noticed_change_in_ability_to_taste, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ160 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ160 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ160 AS STRING) 
 END as discussed_t_s_problem_with_dr, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'In the Past 12 Months' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '1 to 4 Years Ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '5 to 9 years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Ten or more years ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ170 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ170 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ170 AS STRING) 
 END as when_t_s_problem_last_discussed_with_dr, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ180 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ180 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ180 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ180 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ180 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ180 AS STRING) 
 END as treatment_for_t_s_problem_last_12_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ190 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ190 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ190 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ190 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ190 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ190 AS STRING) 
 END as t_s_problem_interferes_with_daily_life, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ200 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ200 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ200 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ200 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ200 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ200 AS STRING) 
 END as persistent_cold_flu_last_12_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ202 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ202 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ202 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ202 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ202 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ202 AS STRING) 
 END as had_persistent_dry_mouth_in_past_12_mth, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ204 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ204 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ204 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ204 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ204 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ204 AS STRING) 
 END as frequent_nasal_congestion_in_past_12_mth, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ210 AS STRING) 
 END as ever_had_wisdom_teeth_removed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ220 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ220 AS STRING) 
 END as ever_had_tonsils_removed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ240 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ240 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ240 AS STRING) 
 END as head_injury_loss_of_consciousness, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ250 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ250 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ250 AS STRING) 
 END as broke_nose_serious_injury_to_face_skull, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CSQ260 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN CSQ260 IS NULL THEN NULL 
ELSE SAFE_CAST(CSQ260 AS STRING) 
 END as ever_had_two_or_more_sinus_infections, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ136 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ136 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ136 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ136 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ136 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ136 AS STRING) 
 END as ever_had_3_or_more_ear_infections, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ138 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ138 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ138 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AUQ138 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AUQ138 IS NULL THEN NULL 
ELSE SAFE_CAST(AUQ138 AS STRING) 
 END as ever_had_a_tube_placed_in_your_ear, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_taste_smell_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/CSQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/CSQ_G.htm
*/