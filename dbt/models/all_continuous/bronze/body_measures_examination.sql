SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSTATS AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Complete data for age group' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSTATS AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Partial:  Only height and weight obtained' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSTATS AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Other partial exam' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSTATS AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No body measures exam data' -- categorize string values 
WHEN BMDSTATS IS NULL THEN NULL 
ELSE SAFE_CAST(BMDSTATS AS STRING) 
 END as body_measures_component_status_code, 

CASE
WHEN BMXWT IS NULL THEN NULL 
ELSE SAFE_CAST(BMXWT AS STRING) 
 END as weight_kg, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIWT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIWT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Clothing' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIWT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Medical appliance' -- categorize numeric values
WHEN BMIWT IS NULL THEN NULL 
ELSE SAFE_CAST(BMIWT AS STRING) 
 END as weight_comment, 

CASE
WHEN BMXRECUM IS NULL THEN NULL 
ELSE SAFE_CAST(BMXRECUM AS STRING) 
 END as recumbent_length_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIRECUM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIRECUM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not straight' -- categorize numeric values
WHEN BMIRECUM IS NULL THEN NULL 
ELSE SAFE_CAST(BMIRECUM AS STRING) 
 END as recumbent_length_comment, 

CASE
WHEN BMXHEAD IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHEAD AS STRING) 
 END as head_circumference_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIHEAD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIHEAD IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHEAD AS STRING) 
 END as head_circumference_comment, 

CASE
WHEN BMXHT IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHT AS STRING) 
 END as standing_height_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIHT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIHT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not straight' -- categorize numeric values
WHEN BMIHT IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHT AS STRING) 
 END as standing_height_comment, 

CASE
WHEN BMXBMI IS NULL THEN NULL 
ELSE SAFE_CAST(BMXBMI AS STRING) 
 END as body_mass_index_kg_m_2, 

CASE
WHEN BMXLEG IS NULL THEN NULL 
ELSE SAFE_CAST(BMXLEG AS STRING) 
 END as upper_leg_length_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMILEG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMILEG IS NULL THEN NULL 
ELSE SAFE_CAST(BMILEG AS STRING) 
 END as upper_leg_length_comment, 

CASE
WHEN BMXARML IS NULL THEN NULL 
ELSE SAFE_CAST(BMXARML AS STRING) 
 END as upper_arm_length_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIARML AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARML IS NULL THEN NULL 
ELSE SAFE_CAST(BMIARML AS STRING) 
 END as upper_arm_length_comment, 

CASE
WHEN BMXARMC IS NULL THEN NULL 
ELSE SAFE_CAST(BMXARMC AS STRING) 
 END as arm_circumference_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIARMC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIARMC IS NULL THEN NULL 
ELSE SAFE_CAST(BMIARMC AS STRING) 
 END as arm_circumference_comment, 

CASE
WHEN BMXWAIST IS NULL THEN NULL 
ELSE SAFE_CAST(BMXWAIST AS STRING) 
 END as waist_circumference_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMIWAIST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMIWAIST IS NULL THEN NULL 
ELSE SAFE_CAST(BMIWAIST AS STRING) 
 END as waist_circumference_comment, 

CASE
WHEN BMXHIP IS NOT NULL THEN SAFE_CAST(BMXHIP AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXHIP IS NULL THEN NULL 
ELSE SAFE_CAST(BMXHIP AS FLOAT64) 
 END as hip_circumference_cm, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMIHIP AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Could not obtain' -- categorize string values 
WHEN BMIHIP IS NULL THEN NULL 
ELSE SAFE_CAST(BMIHIP AS STRING) 
 END as hip_circumference_comment, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDBMIC AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Underweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDBMIC AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Normal weight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDBMIC AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Overweight' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDBMIC AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Obese' -- categorize string values 
WHEN BMDBMIC IS NULL THEN NULL 
ELSE SAFE_CAST(BMDBMIC AS STRING) 
 END as bmi_category_children_youth, 

CASE
WHEN BMXSAD1 IS NOT NULL THEN SAFE_CAST(BMXSAD1 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXSAD1 IS NULL THEN NULL 
ELSE SAFE_CAST(BMXSAD1 AS FLOAT64) 
 END as sagittal_abdominal_diameter_1st_cm, 

CASE
WHEN BMXSAD2 IS NOT NULL THEN SAFE_CAST(BMXSAD2 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXSAD2 IS NULL THEN NULL 
ELSE SAFE_CAST(BMXSAD2 AS FLOAT64) 
 END as sagittal_abdominal_diameter_2nd_cm, 

CASE
WHEN BMXSAD3 IS NOT NULL THEN SAFE_CAST(BMXSAD3 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXSAD3 IS NULL THEN NULL 
ELSE SAFE_CAST(BMXSAD3 AS FLOAT64) 
 END as sagittal_abdominal_diameter_3rd_cm, 

CASE
WHEN BMXSAD4 IS NOT NULL THEN SAFE_CAST(BMXSAD4 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMXSAD4 IS NULL THEN NULL 
ELSE SAFE_CAST(BMXSAD4 AS FLOAT64) 
 END as sagittal_abdominal_diameter_4th_cm, 

CASE
WHEN BMDAVSAD IS NOT NULL THEN SAFE_CAST(BMDAVSAD AS FLOAT64) -- correct wrong data types for numerical data 
WHEN BMDAVSAD IS NULL THEN NULL 
ELSE SAFE_CAST(BMDAVSAD AS FLOAT64) 
 END as average_sagittal_abdominal_diameter_cm, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSADCM AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Could not obtain' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSADCM AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'SP unable to comply with exam instruction' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSADCM AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'SP discomfort' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSADCM AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Use of positioning cushion' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSADCM AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Other' -- categorize string values 
WHEN BMDSADCM IS NULL THEN NULL 
ELSE SAFE_CAST(BMDSADCM AS STRING) 
 END as sagittal_abdominal_diameter_comment, 

CASE
WHEN BMXTRI IS NULL THEN NULL 
ELSE SAFE_CAST(BMXTRI AS STRING) 
 END as triceps_skinfold_mm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMITRI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMITRI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Exceeds capacity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMITRI AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Hard to obtain' -- categorize numeric values
WHEN BMITRI IS NULL THEN NULL 
ELSE SAFE_CAST(BMITRI AS STRING) 
 END as triceps_skinfold_comment, 

CASE
WHEN BMXSUB IS NULL THEN NULL 
ELSE SAFE_CAST(BMXSUB AS STRING) 
 END as subscapular_skinfold_mm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMISUB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMISUB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Exceeds capacity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMISUB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Hard to obtain' -- categorize numeric values
WHEN BMISUB IS NULL THEN NULL 
ELSE SAFE_CAST(BMISUB AS STRING) 
 END as subscapular_skinfold_comment, 

CASE
WHEN BMXCALF IS NULL THEN NULL 
ELSE SAFE_CAST(BMXCALF AS STRING) 
 END as maximal_calf_circumference_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMICALF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMICALF IS NULL THEN NULL 
ELSE SAFE_CAST(BMICALF AS STRING) 
 END as maximal_calf_comment, 

CASE
WHEN BMXTHICR IS NULL THEN NULL 
ELSE SAFE_CAST(BMXTHICR AS STRING) 
 END as thigh_circumference_cm, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMITHICR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMITHICR IS NULL THEN NULL 
ELSE SAFE_CAST(BMITHICR AS STRING) 
 END as thigh_circumference_comment, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDRECUF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Difference between recumbent length  and standing height was greater than 2.5 cm' -- categorize string values 
WHEN BMDRECUF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDRECUF AS STRING) 
 END as height_length_difference_flagged, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDSUBF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Unusual value noted during data review' -- categorize string values 
WHEN BMDSUBF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDSUBF AS STRING) 
 END as unusual_value_noted_during_data_review, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDTHICF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Unusual value noted during data review' -- categorize string values 
WHEN BMDTHICF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDTHICF AS STRING) 
 END as unusual_value_noted_during_data_review_BMDTHICF, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDLEGF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Unusual value noted during data review' -- categorize string values 
WHEN BMDLEGF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDLEGF AS STRING) 
 END as unusual_value_noted_during_data_review_BMDLEGF, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDARMLF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Unusual value noted during data review' -- categorize string values 
WHEN BMDARMLF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDARMLF AS STRING) 
 END as unusual_value_noted_during_data_review_BMDARMLF, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMDCALFF AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Unusual value noted during data review' -- categorize string values 
WHEN BMDCALFF IS NULL THEN NULL 
ELSE SAFE_CAST(BMDCALFF AS STRING) 
 END as unusual_value_noted_during_data_review_BMDCALFF, 

CASE
WHEN BMAEXLEN IS NULL THEN NULL 
ELSE SAFE_CAST(BMAEXLEN AS STRING) 
 END as length_of_a_mec_exam_sec, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN BMAEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(BMAEXSTS AS STRING) 
 END as status_of_a_mec_exam, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Safety exclusion' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'SP refusal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Physical limitation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Communication problem' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Equipment failure' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'SP ill/emergency' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(56 AS FLOAT64),0) AS INT64) THEN 'Came late/left early' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Other, specify' -- categorize numeric values
WHEN BMAEXCMT IS NULL THEN NULL 
ELSE SAFE_CAST(BMAEXCMT AS STRING) 
 END as comment_code_for_an_exam, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAAMP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAAMP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN BMAAMP IS NULL THEN NULL 
ELSE SAFE_CAST(BMAAMP AS STRING) 
 END as amputations, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAUREXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAUREXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAUREXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMAUREXT IS NULL THEN NULL 
ELSE SAFE_CAST(BMAUREXT AS STRING) 
 END as amputations_upper_right_extremity, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMAUPREL AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Above elbow' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMAUPREL AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Below elbow' -- categorize string values 
WHEN BMAUPREL IS NULL THEN NULL 
ELSE SAFE_CAST(BMAUPREL AS STRING) 
 END as amputations_ur_above_or_below_elbow, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAULEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAULEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMAULEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMAULEXT IS NULL THEN NULL 
ELSE SAFE_CAST(BMAULEXT AS STRING) 
 END as amputations_upper_left_extremity, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMAUPLEL AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Above elbow' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(BMAUPLEL AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Below elbow' -- categorize string values 
WHEN BMAUPLEL IS NULL THEN NULL 
ELSE SAFE_CAST(BMAUPLEL AS STRING) 
 END as amputations_ul_above_or_below_elbow, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALOREX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALOREX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALOREX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMALOREX IS NULL THEN NULL 
ELSE SAFE_CAST(BMALOREX AS STRING) 
 END as amputations_lower_right_extremity, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALORKN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Above knee' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALORKN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Below knee' -- categorize numeric values
WHEN BMALORKN IS NULL THEN NULL 
ELSE SAFE_CAST(BMALORKN AS STRING) 
 END as amputations_lr_above_or_below_knee, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALLEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALLEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALLEXT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN BMALLEXT IS NULL THEN NULL 
ELSE SAFE_CAST(BMALLEXT AS STRING) 
 END as amputations_lower_left_extremity, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALLKNE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Above knee' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(BMALLKNE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Below knee' -- categorize numeric values
WHEN BMALLKNE IS NULL THEN NULL 
ELSE SAFE_CAST(BMALLKNE AS STRING) 
 END as amputations_ll_above_or_below_knee, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_body_measures_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BMX_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_BMX.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BMX_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BMX_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BMX_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/BMX_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/BMX_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/BMX_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/BMX_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/BMX_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/BMX.htm
*/
