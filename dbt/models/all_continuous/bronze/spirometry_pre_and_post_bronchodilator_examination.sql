SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ENQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(ENQ010 AS STRING) 
 END as breathing_problem_require_oxygen, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ENQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(ENQ020 AS STRING) 
 END as problem_taking_deep_breath, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ010 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ010 AS STRING) 
 END as have_a_current_painful_ear_infection, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ020 AS STRING) 
 END as have_you_has_sp_ever_had_eye_surgery, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ030 AS STRING) 
 END as eye_surgery_in_the_last_3_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ040 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ040 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ040 AS STRING) 
 END as ever_had_open_chest_abdominal_surgery, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ050 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ050 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ050 AS STRING) 
 END as chest_abdominal_surgery_last_3_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ060 AS STRING) 
 END as tuberculosis_in_last_year, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'An aneurysm?' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ070A IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ070A AS STRING) 
 END as ever_told_had_an_aneurysm, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'a collapsed lung?' -- categorize numeric values
WHEN SPQ070B IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ070B AS STRING) 
 END as ever_told_had_a_collapsed_lung, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'a detached retina?' -- categorize numeric values
WHEN SPQ070C IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ070C AS STRING) 
 END as ever_told_had_a_detached_retina, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'a stroke?' -- categorize numeric values
WHEN SPQ070D IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ070D AS STRING) 
 END as ever_told_had_a_stroke, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ070E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'a heart attack?' -- categorize numeric values
WHEN SPQ070E IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ070E AS STRING) 
 END as ever_told_had_a_heart_attack, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ080 AS STRING) 
 END as stroke_in_the_last_3_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ090 AS STRING) 
 END as heart_attack_in_last_3_months, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SPQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(SPQ100 AS STRING) 
 END as coughed_up_blood_past_month, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ENQ100 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN ENQ100 IS NULL THEN NULL 
ELSE SAFE_CAST(ENQ100 AS STRING) 
 END as had_respiratory_illness, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete Exam' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial Exam' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Safety Exclusion' -- categorize numeric values
WHEN SPXNSTAT IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNSTAT AS STRING) 
 END as spirometry_first_test_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Safety exclusion' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'SP refusal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Physical limitation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Communication problem' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Equipment failure' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'SP ill/emergency' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(14 AS FLOAT64),0) AS INT64) THEN 'Interrupted' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(21 AS FLOAT64),0) AS INT64) THEN 'Reached maximum number of ENO trials' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(51 AS FLOAT64),0) AS INT64) THEN 'SP unable to comply' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(56 AS FLOAT64),0) AS INT64) THEN 'Came late/left early' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(72 AS FLOAT64),0) AS INT64) THEN 'Error (technician/software/supply)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(84 AS FLOAT64),0) AS INT64) THEN 'SP with child' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXNCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(122 AS FLOAT64),0) AS INT64) THEN 'Language barrier' -- categorize numeric values
WHEN SPXNCMT IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNCMT AS STRING) 
 END as spirometry_first_test_comment, 

CASE
    WHEN SPXNFVC IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFVC AS FLOAT64) 
 END as baseline_fvc_ml, 

CASE
    WHEN SPXNEV IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNEV AS FLOAT64) 
 END as baseline_extrapolated_volume_ml, 

CASE
    WHEN SPXNFEV5 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFEV5 AS FLOAT64) 
 END as baseline_fev_0_5_ml, 

CASE
    WHEN SPXNFEV7 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFEV7 AS FLOAT64) 
 END as baseline_fev_0_75_ml, 

CASE
    WHEN SPXNFEV1 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFEV1 AS FLOAT64) 
 END as baseline_fev_1_ml, 

CASE
    WHEN SPXNFEV3 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFEV3 AS FLOAT64) 
 END as baseline_fev_3_ml, 

CASE
    WHEN SPXNFEV6 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFEV6 AS FLOAT64) 
 END as baseline_fev_6_ml, 

CASE
    WHEN SPXNPEF IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNPEF AS FLOAT64) 
 END as baseline_pef_ml_s, 

CASE
    WHEN SPXNF257 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNF257 AS FLOAT64) 
 END as baseline_fef_25_75_ml_s, 

CASE
    WHEN SPXNFET IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNFET AS FLOAT64) 
 END as baseline_forced_expiratory_time_s, 

CASE
    WHEN REPLACE(SPXNQFVC,'.0','') = 'A' THEN 'Exceeds ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXNQFVC,'.0','') = 'B' THEN 'Meets ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXNQFVC,'.0','') = 'C' THEN 'Potentially usable value, but does not meet all ATS standards' -- categorize string values 
WHEN REPLACE(SPXNQFVC,'.0','') = 'D' THEN 'Questionable result, use with caution' -- categorize string values 
WHEN REPLACE(SPXNQFVC,'.0','') = 'F' THEN 'Results not valid' -- categorize string values 
WHEN SPXNQFVC IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNQFVC AS STRING) 
 END as baseline_fvc_quality_attribute, 

CASE
    WHEN REPLACE(SPXNQFV1,'.0','') = 'A' THEN 'Exceeds ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXNQFV1,'.0','') = 'B' THEN 'Meets ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXNQFV1,'.0','') = 'C' THEN 'Potentially usable value, but does not meet all ATS standards' -- categorize string values 
WHEN REPLACE(SPXNQFV1,'.0','') = 'D' THEN 'Questionable result, use with caution' -- categorize string values 
WHEN REPLACE(SPXNQFV1,'.0','') = 'F' THEN 'Results not valid' -- categorize string values 
WHEN SPXNQFV1 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNQFV1 AS STRING) 
 END as baseline_fev1_quality_attribute, 

CASE
    WHEN SPDNACC IS NULL THEN NULL 
ELSE SAFE_CAST(SPDNACC AS FLOAT64) 
 END as baseline_number_of_acceptable_curves, 

CASE
    WHEN REPLACE(SPXNQEFF,'.0','') = 'A' THEN 'All 6 spirometry quality curve attributes are acceptable' -- categorize string values 
WHEN REPLACE(SPXNQEFF,'.0','') = 'B' THEN 'The curves had a large time to peak flow or a non-repeatable peak flow' -- categorize string values 
WHEN REPLACE(SPXNQEFF,'.0','') = 'C' THEN 'The curves had either < 6 seconds of exhalation or no plateau' -- categorize string values 
WHEN REPLACE(SPXNQEFF,'.0','') = 'D' THEN 'The curves had either a cough or large extrapolated volume' -- categorize string values 
WHEN SPXNQEFF IS NULL THEN NULL 
ELSE SAFE_CAST(SPXNQEFF AS STRING) 
 END as baseline_effort_quality_attribute, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPDBRONC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPDBRONC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SPDBRONC IS NULL THEN NULL 
ELSE SAFE_CAST(SPDBRONC AS STRING) 
 END as selected_for_bronchodilator, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete Exam' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial Exam' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not Done' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBSTAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Safety Exclusion' -- categorize numeric values
WHEN SPXBSTAT IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBSTAT AS STRING) 
 END as spirometry_second_test_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'SP refusal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Physical limitation' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Communication problem' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'SP ill/emergency' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(27 AS FLOAT64),0) AS INT64) THEN 'Proxy no information' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(51 AS FLOAT64),0) AS INT64) THEN 'SP unable to comply' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SPXBCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN SPXBCMT IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBCMT AS STRING) 
 END as spirometry_second_test_comment, 

CASE
    WHEN SPXBFVC IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFVC AS FLOAT64) 
 END as exa_2nd_test_fvc_ml, 

CASE
    WHEN SPXBEV IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBEV AS FLOAT64) 
 END as exa_2nd_test_extrapolated_volume_ml, 

CASE
    WHEN SPXBFEV5 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFEV5 AS FLOAT64) 
 END as exa_2nd_test_fev_0_5_ml, 

CASE
    WHEN SPXBFEV7 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFEV7 AS FLOAT64) 
 END as exa_2nd_test_fev_0_75_ml, 

CASE
    WHEN SPXBFEV1 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFEV1 AS FLOAT64) 
 END as exa_2nd_test_fev_1_ml, 

CASE
    WHEN SPXBFEV3 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFEV3 AS FLOAT64) 
 END as exa_2nd_test_fev_3_ml, 

CASE
    WHEN SPXBFEV6 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFEV6 AS FLOAT64) 
 END as exa_2nd_test_fev_6_ml, 

CASE
    WHEN SPXBPEF IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBPEF AS FLOAT64) 
 END as exa_2nd_test_pef_ml_s, 

CASE
    WHEN SPXBF257 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBF257 AS FLOAT64) 
 END as exa_2nd_test_fef_25_75_ml_s, 

CASE
    WHEN SPXBFET IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBFET AS FLOAT64) 
 END as exa_2nd_test_forced_expiratory_time_s, 

CASE
    WHEN REPLACE(SPXBQFVC,'.0','') = 'A' THEN 'Exceeds ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXBQFVC,'.0','') = 'B' THEN 'Meets ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXBQFVC,'.0','') = 'C' THEN 'Potentially usable value, but does not meet all ATS standards' -- categorize string values 
WHEN REPLACE(SPXBQFVC,'.0','') = 'D' THEN 'Questionable result, use with caution' -- categorize string values 
WHEN REPLACE(SPXBQFVC,'.0','') = 'F' THEN 'Results not valid' -- categorize string values 
WHEN SPXBQFVC IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBQFVC AS STRING) 
 END as exa_2nd_test_fvc_quality_attribute, 

CASE
    WHEN REPLACE(SPXBQFV1,'.0','') = 'A' THEN 'Exceeds ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXBQFV1,'.0','') = 'B' THEN 'Meets ATS data collection standards' -- categorize string values 
WHEN REPLACE(SPXBQFV1,'.0','') = 'C' THEN 'Potentially usable value, but does not meet all ATS standards' -- categorize string values 
WHEN REPLACE(SPXBQFV1,'.0','') = 'D' THEN 'Questionable result, use with caution' -- categorize string values 
WHEN REPLACE(SPXBQFV1,'.0','') = 'F' THEN 'Results not valid' -- categorize string values 
WHEN SPXBQFV1 IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBQFV1 AS STRING) 
 END as exa_2nd_test_fev1_quality_attribute, 

CASE
    WHEN SPDBACC IS NULL THEN NULL 
ELSE SAFE_CAST(SPDBACC AS FLOAT64) 
 END as exa_2nd_test_number_of_acceptable_curves, 

CASE
    WHEN REPLACE(SPXBQEFF,'.0','') = 'A' THEN 'All 6 spirometry quality curve attributes are acceptable' -- categorize string values 
WHEN REPLACE(SPXBQEFF,'.0','') = 'B' THEN 'The curves had a large time to peak flow or a non-repeatable peak flow' -- categorize string values 
WHEN REPLACE(SPXBQEFF,'.0','') = 'C' THEN 'The curves had either < 6 seconds of exhalation or no plateau' -- categorize string values 
WHEN REPLACE(SPXBQEFF,'.0','') = 'D' THEN 'The curves had either a cough or large extrapolated volume' -- categorize string values 
WHEN SPXBQEFF IS NULL THEN NULL 
ELSE SAFE_CAST(SPXBQEFF AS STRING) 
 END as exa_2nd_test_effort_quality_attribute, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_spirometry_pre_and_post_bronchodilator_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SPX_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SPX_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SPX_E.htm
*/
