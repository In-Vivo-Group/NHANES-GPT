SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN BMDSTATS = '1' THEN 'Complete data for age group' 
WHEN BMDSTATS = '2' THEN 'Partial:  Only height and weight obtained' 
WHEN BMDSTATS = '3' THEN 'Other partial exam' 
WHEN BMDSTATS = '4' THEN 'No body measures exam data' 
WHEN BMDSTATS IS NULL THEN NULL 
ELSE NULL 
 END as body_measures_component_status_code,
WHEN BMXWT IS NOT NULL THEN BMXWTWHEN BMXWT IS NULL THEN NULL 
ELSE NULL 
 END as weight_kg,
CASE
        WHEN BMIWT = 1 THEN 'Could not obtain' 
WHEN BMIWT = 3 THEN 'Clothing' 
WHEN BMIWT = 4 THEN 'Medical appliance' 
WHEN BMIWT IS NULL THEN NULL 
ELSE NULL 
 END as weight_comment,
WHEN BMXRECUM IS NOT NULL THEN BMXRECUMWHEN BMXRECUM IS NULL THEN NULL 
ELSE NULL 
 END as recumbent_length_cm,
CASE
        WHEN BMIRECUM = 1 THEN 'Could not obtain' 
WHEN BMIRECUM = 3 THEN 'Not straight' 
WHEN BMIRECUM IS NULL THEN NULL 
ELSE NULL 
 END as recumbent_length_comment,
WHEN BMXHEAD IS NOT NULL THEN BMXHEADWHEN BMXHEAD IS NULL THEN NULL 
ELSE NULL 
 END as head_circumference_cm,
CASE
        WHEN BMIHEAD = 1 THEN 'Could not obtain' 
WHEN BMIHEAD IS NULL THEN NULL 
ELSE NULL 
 END as head_circumference_comment,
WHEN BMXHT IS NOT NULL THEN BMXHTWHEN BMXHT IS NULL THEN NULL 
ELSE NULL 
 END as standing_height_cm,
CASE
        WHEN BMIHT = 1 THEN 'Could not obtain' 
WHEN BMIHT = 3 THEN 'Not straight' 
WHEN BMIHT IS NULL THEN NULL 
ELSE NULL 
 END as standing_height_comment,
WHEN BMXBMI IS NOT NULL THEN BMXBMIWHEN BMXBMI IS NULL THEN NULL 
ELSE NULL 
 END as body_mass_index_kg_m_2,
WHEN BMXLEG IS NOT NULL THEN BMXLEGWHEN BMXLEG IS NULL THEN NULL 
ELSE NULL 
 END as upper_leg_length_cm,
CASE
        WHEN BMILEG = 1 THEN 'Could not obtain' 
WHEN BMILEG IS NULL THEN NULL 
ELSE NULL 
 END as upper_leg_length_comment,
WHEN BMXARML IS NOT NULL THEN BMXARMLWHEN BMXARML IS NULL THEN NULL 
ELSE NULL 
 END as upper_arm_length_cm,
CASE
        WHEN BMIARML = 1 THEN 'Could not obtain' 
WHEN BMIARML IS NULL THEN NULL 
ELSE NULL 
 END as upper_arm_length_comment,
WHEN BMXARMC IS NOT NULL THEN BMXARMCWHEN BMXARMC IS NULL THEN NULL 
ELSE NULL 
 END as arm_circumference_cm,
CASE
        WHEN BMIARMC = 1 THEN 'Could not obtain' 
WHEN BMIARMC IS NULL THEN NULL 
ELSE NULL 
 END as arm_circumference_comment,
WHEN BMXWAIST IS NOT NULL THEN BMXWAISTWHEN BMXWAIST IS NULL THEN NULL 
ELSE NULL 
 END as waist_circumference_cm,
CASE
        WHEN BMIWAIST = 1 THEN 'Could not obtain' 
WHEN BMIWAIST IS NULL THEN NULL 
ELSE NULL 
 END as waist_circumference_comment,
WHEN BMXHIP IS NOT NULL THEN SAFE_CAST(BMXHIP AS FLOAT64)WHEN BMXHIP IS NULL THEN NULL 
ELSE NULL 
 END as hip_circumference_cm,
CASE
        WHEN BMIHIP = '1' THEN 'Could not obtain' 
WHEN BMIHIP IS NULL THEN NULL 
ELSE NULL 
 END as hip_circumference_comment,
 FROM {{ ref('stg_body_measures_examination') }}