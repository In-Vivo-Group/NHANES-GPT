SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Get a severe sunburn with blisters' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'A severe sunburn for a few days with peeling' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Mildly burned with some tanning' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Turning darker without a sunburn' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Nothing would happen in half an hour' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED031 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED031 IS NULL THEN NULL 
ELSE SAFE_CAST(DED031 AS STRING) 
 END as skin_reaction_to_sun_after_non_exposure, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Dont go out in the sun' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034A AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DEQ034A IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034A AS STRING) 
 END as stay_in_the_shade, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034C AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034C IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034C AS STRING) 
 END as wear_a_long_sleeved_shirt, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034D AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034D IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034D AS STRING) 
 END as use_sunscreen, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ038G AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Enter number' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ038G AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Never' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ038G AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ038G AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ038G IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ038G AS STRING) 
 END as in_past_yr_did_you_have_sunburn, 

CASE
    WHEN SAFE_CAST(DEQ038Q AS FLOAT64) > 26.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DEQ038Q IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ038Q AS FLOAT64) 
 END as of_times_in_past_yr_you_had_a_sunburn, 

CASE
    WHEN SAFE_CAST(DED120 AS FLOAT64) > 491.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED120 IS NULL THEN NULL 
ELSE SAFE_CAST(DED120 AS FLOAT64) 
 END as minutes_outdoors_9am_5pm_work_day, 

CASE
    WHEN SAFE_CAST(DED125 AS FLOAT64) > 491.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED125 IS NULL THEN NULL 
ELSE SAFE_CAST(DED125 AS FLOAT64) 
 END as minutes_outdoors_9am_5pm_not_work_day, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Always' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Most of the time' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Sometimes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Rarely, or' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Never?' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ034B AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ034B IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ034B AS STRING) 
 END as wear_hat_that_shades_face_and_neck, 

CASE
    WHEN SAFE_CAST(DEQ036 AS FLOAT64) > 61.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DEQ036 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ036 AS FLOAT64) 
 END as spf_of_sunscreen_use_most_often, 

CASE
    WHEN SAFE_CAST(DED038Q AS FLOAT64) > 26.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DED038Q IS NULL THEN NULL 
ELSE SAFE_CAST(DED038Q AS FLOAT64) 
 END as of_times_in_past_yr_you_had_a_sunburn_DED038Q, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ053 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ053 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ053 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ053 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ053 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ053 AS STRING) 
 END as ever_told_had_psoriasis, 

CASE
    WHEN SAFE_CAST(DEQ055 AS FLOAT64) > 21.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN DEQ055 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ055 AS FLOAT64) 
 END as how_much_of_a_problem_has_psoriasis_been, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Little or no psoriasis' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Only a few patches (that could be covered by one or two palms of ( your/his/her) hand)' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Scattered patches (that could be covered between three and ten palms of (your/his her) hand) or..' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Extensive psoriasis ( covering large areas of the body, that would be more than ten palms of (your/h' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ057 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN DEQ057 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ057 AS STRING) 
 END as is_psoriasis_little_or_extensive, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 or 2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '3 to 5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '6 to 10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'More than 10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED011 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED011 IS NULL THEN NULL 
ELSE SAFE_CAST(DED011 AS STRING) 
 END as moles_at_least_1_4_inch_in_diameter, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Red' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Blonde' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Light brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Medium brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Dark brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED021 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED021 IS NULL THEN NULL 
ELSE SAFE_CAST(DED021 AS STRING) 
 END as natural_hair_color_at_age_18, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED041 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED041 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED041 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Has skin cancer but does not know what type (code only if volunteered)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED041 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED041 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED041 IS NULL THEN NULL 
ELSE SAFE_CAST(DED041 AS STRING) 
 END as ever_told_by_doctor_you_had_melanoma, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED051 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED051 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED051 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED051 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED051 IS NULL THEN NULL 
ELSE SAFE_CAST(DED051 AS STRING) 
 END as close_blood_relative_have_melanoma, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED061 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED061 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED061 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED061 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED061 IS NULL THEN NULL 
ELSE SAFE_CAST(DED061 AS STRING) 
 END as dermatitis_eczema_rash_in_past_year, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED071 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED071 IS NULL THEN NULL 
ELSE SAFE_CAST(DED071 AS STRING) 
 END as have_dermatitis_eczema_rash_now, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083A AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Hands' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083A AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083A AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN DEQ083A IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083A AS STRING) 
 END as hands_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083B AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Arms' -- categorize string values 
WHEN DEQ083B IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083B AS STRING) 
 END as arms_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DED083C AS FLOAT64),0) AS INT64) AS STRING) = '12' THEN 'Head, Face, or Neck' -- categorize string values 
WHEN DED083C IS NULL THEN NULL 
ELSE SAFE_CAST(DED083C AS STRING) 
 END as head_face_or_neck_skin_affected, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DED083D AS FLOAT64),0) AS INT64) AS STRING) = '13' THEN 'Torso' -- categorize string values 
WHEN DED083D IS NULL THEN NULL 
ELSE SAFE_CAST(DED083D AS STRING) 
 END as torso_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083E AS FLOAT64),0) AS INT64) AS STRING) = '14' THEN 'Legs' -- categorize string values 
WHEN DEQ083E IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083E AS STRING) 
 END as legs_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083F AS FLOAT64),0) AS INT64) AS STRING) = '15' THEN 'Shoulder' -- categorize string values 
WHEN DEQ083F IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083F AS STRING) 
 END as shoulder_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083G AS FLOAT64),0) AS INT64) AS STRING) = '16' THEN 'Groin' -- categorize string values 
WHEN DEQ083G IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083G AS STRING) 
 END as groin_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083H AS FLOAT64),0) AS INT64) AS STRING) = '17' THEN 'Buttocks' -- categorize string values 
WHEN DEQ083H IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083H AS STRING) 
 END as buttocks_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DEQ083I AS FLOAT64),0) AS INT64) AS STRING) = '18' THEN 'Feet' -- categorize string values 
WHEN DEQ083I IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ083I AS STRING) 
 END as feet_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(DED083U AS FLOAT64),0) AS INT64) AS STRING) = '30' THEN 'Other Body Area' -- categorize string values 
WHEN DED083U IS NULL THEN NULL 
ELSE SAFE_CAST(DED083U AS STRING) 
 END as other_parts_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN 'Hands' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED082A IS NULL THEN NULL 
ELSE SAFE_CAST(DED082A AS STRING) 
 END as hands_affected_by_skin_condition_DED082A, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN 'Arms' -- categorize numeric values
WHEN DED082B IS NULL THEN NULL 
ELSE SAFE_CAST(DED082B AS STRING) 
 END as arms_affected_by_skin_condition_DED082B, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN 'Head, Face, or Neck' -- categorize numeric values
WHEN DED082C IS NULL THEN NULL 
ELSE SAFE_CAST(DED082C AS STRING) 
 END as head_face_or_neck_skin_affected_DED082C, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN 'Torso' -- categorize numeric values
WHEN DED082D IS NULL THEN NULL 
ELSE SAFE_CAST(DED082D AS STRING) 
 END as torso_affected_by_skin_condition_DED082D, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN 'Legs' -- categorize numeric values
WHEN DED082E IS NULL THEN NULL 
ELSE SAFE_CAST(DED082E AS STRING) 
 END as legs_affected_by_skin_condition_DED082E, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN 'Shoulder' -- categorize numeric values
WHEN DED082F IS NULL THEN NULL 
ELSE SAFE_CAST(DED082F AS STRING) 
 END as shoulder_affected_by_skin_condition_DED082F, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN 'Groin' -- categorize numeric values
WHEN DED082G IS NULL THEN NULL 
ELSE SAFE_CAST(DED082G AS STRING) 
 END as groin_affected_by_skin_condition_DED082G, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN 'Buttocks' -- categorize numeric values
WHEN DED082H IS NULL THEN NULL 
ELSE SAFE_CAST(DED082H AS STRING) 
 END as buttocks_affected_by_skin_condition_DED082H, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN 'Feet' -- categorize numeric values
WHEN DED082I IS NULL THEN NULL 
ELSE SAFE_CAST(DED082I AS STRING) 
 END as feet_affected_by_skin_condition_DED082I, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED082J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN 'Other Body Area (Specify)' -- categorize numeric values
WHEN DED082J IS NULL THEN NULL 
ELSE SAFE_CAST(DED082J AS STRING) 
 END as other_area_affected_by_skin_condition, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '1 or 2' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '3 to 5' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '6 to 10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'More than 10' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ010 AS STRING) 
 END as moles_at_least_1_4_inch_in_diameter_DEQ010, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Red' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Blonde' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Light brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Medium brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Dark brown' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ020 AS STRING) 
 END as natural_hair_color_at_age_18_DEQ020, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Get a severe sunburn with blisters' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'A severe sunburn for a few days with peeling' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Mildly burned with some tanning' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Turning darker without a sunburn' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Nothing would happen in half an hour' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ030 AS STRING) 
 END as skin_reaction_to_sun_after_non_exposure_DEQ030, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Has skin cancer but does not know what type (code only if volunteered)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ040 AS STRING) 
 END as ever_told_by_doctor_you_had_melanoma_DEQ040, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ050 AS STRING) 
 END as close_blood_relative_have_melanoma_DEQ050, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ060 AS STRING) 
 END as dermatitis_eczema_rash_in_past_year_DEQ060, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ070 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ070 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ070 AS STRING) 
 END as have_dermatitis_eczema_rash_now_DEQ070, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN 'Hands' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DED080A IS NULL THEN NULL 
ELSE SAFE_CAST(DED080A AS STRING) 
 END as hands_affected_by_skin_condition_DED080A, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN 'Arms' -- categorize numeric values
WHEN DED080B IS NULL THEN NULL 
ELSE SAFE_CAST(DED080B AS STRING) 
 END as arms_affected_by_skin_condition_DED080B, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN 'Head, Face, or Neck' -- categorize numeric values
WHEN DED080C IS NULL THEN NULL 
ELSE SAFE_CAST(DED080C AS STRING) 
 END as head_face_or_neck_skin_affected_DED080C, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(13 AS FLOAT64),0) AS INT64) THEN 'Torso' -- categorize numeric values
WHEN DED080D IS NULL THEN NULL 
ELSE SAFE_CAST(DED080D AS STRING) 
 END as torso_affected_by_skin_condition_DED080D, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN 'Legs' -- categorize numeric values
WHEN DED080E IS NULL THEN NULL 
ELSE SAFE_CAST(DED080E AS STRING) 
 END as legs_affected_by_skin_condition_DED080E, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(15 AS FLOAT64),0) AS INT64) THEN 'Shoulder' -- categorize numeric values
WHEN DED080F IS NULL THEN NULL 
ELSE SAFE_CAST(DED080F AS STRING) 
 END as shoulder_affected_by_skin_condition_DED080F, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(16 AS FLOAT64),0) AS INT64) THEN 'Groin' -- categorize numeric values
WHEN DED080G IS NULL THEN NULL 
ELSE SAFE_CAST(DED080G AS STRING) 
 END as groin_affected_by_skin_condition_DED080G, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(17 AS FLOAT64),0) AS INT64) THEN 'Buttocks' -- categorize numeric values
WHEN DED080H IS NULL THEN NULL 
ELSE SAFE_CAST(DED080H AS STRING) 
 END as buttocks_affected_by_skin_condition_DED080H, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(18 AS FLOAT64),0) AS INT64) THEN 'Feet' -- categorize numeric values
WHEN DED080I IS NULL THEN NULL 
ELSE SAFE_CAST(DED080I AS STRING) 
 END as feet_affected_by_skin_condition_DED080I, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DED080J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(30 AS FLOAT64),0) AS INT64) THEN 'Other (Specify)' -- categorize numeric values
WHEN DED080J IS NULL THEN NULL 
ELSE SAFE_CAST(DED080J AS STRING) 
 END as other_area_affected_by_skin_condition_DED080J, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ090 AS STRING) 
 END as chemicals_substances_cause_condition, 

CASE
    WHEN REPLACE(DED100A,'.0','') = '1st Chemical/substance listed' THEN 'Value was recorded' -- categorize string values 
WHEN DED100A IS NULL THEN NULL 
ELSE SAFE_CAST(DED100A AS STRING) 
 END as que_1st_chemical_substance_listed, 

CASE
    WHEN REPLACE(DED100B,'.0','') = '2nd Chemical/substance listed' THEN 'Value was recorded' -- categorize string values 
WHEN DED100B IS NULL THEN NULL 
ELSE SAFE_CAST(DED100B AS STRING) 
 END as que_2nd_chemical_substance_listed, 

CASE
    WHEN REPLACE(DED100C,'.0','') = '3rd Chemical/substance listed' THEN 'Value was recorded' -- categorize string values 
WHEN DED100C IS NULL THEN NULL 
ELSE SAFE_CAST(DED100C AS STRING) 
 END as que_3rd_chemical_substance_listed, 

CASE
    WHEN REPLACE(DED100D,'.0','') = 'Other Coatings- waxes? oils?' THEN 'Other Coatings- waxes? oils?' -- categorize string values 
WHEN DED100D IS NULL THEN NULL 
ELSE SAFE_CAST(DED100D AS STRING) 
 END as que_4th_chemical_substance_listed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DEQ110 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DEQ110 IS NULL THEN NULL 
ELSE SAFE_CAST(DEQ110 AS STRING) 
 END as substances_picked_up_at_work, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dermatology_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DEQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DEQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DEQ_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DEQ_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/DEQ_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEQ.htm
*/
