SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'VO2max estimated' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Tested but VO2max estimate missing' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN CVDEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXSTS AS STRING) 
 END as cv_fitness_exam_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'None' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Met exclusion criteria' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Pregnant more than 12 weeks' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Refusal' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No time' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Technical problem' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Met priority 1 stopping criteria' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Met priority 2 stopping criteria' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Not able to calculate VO2max' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCMT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(90 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN CVDEXCMT IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCMT AS STRING) 
 END as comment_code_for_cv_fitness_exam_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL1 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL1 AS STRING) 
 END as excluded_per_physical_limitations, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL2 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL2 AS STRING) 
 END as excluded_per_cardiovascular_conditions, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL3 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL3 AS STRING) 
 END as excluded_per_lung_breathing_conditions, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL4 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL4 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL4 AS STRING) 
 END as excluded_per_asthma_symptoms, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL5 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL5 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL5 AS STRING) 
 END as excluded_per_medications, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDEXCL6 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVDEXCL6 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXCL6 AS STRING) 
 END as excluded_per_other_specific_reasons, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220A IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220A AS STRING) 
 END as priority_2_stop_excessive_hr_in_stage_2, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220B IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220B AS STRING) 
 END as priority_2_stop_excessive_hr_in_stage_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220C IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220C AS STRING) 
 END as priority_2_stop_excessive_bp, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220E IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220E AS STRING) 
 END as priority_2_stop_significant_drop_in_sbp, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220G IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220G AS STRING) 
 END as priority_2_stop_variability_in_hr, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220H IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220H AS STRING) 
 END as priority_2_stop_participant_request, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220I AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220I IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220I AS STRING) 
 END as priority_2_stop_equipment_failure, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220J AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220J IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220J AS STRING) 
 END as priority_2_stop_participant_grips_rails, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220K AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220K AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220K IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220K AS STRING) 
 END as priority_2_stop_participant_overexerted, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220L AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220L AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220L IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220L AS STRING) 
 END as priority_2_stop_technician_discretion, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220M AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVQ220M AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN CVQ220M IS NULL THEN NULL 
ELSE SAFE_CAST(CVQ220M AS STRING) 
 END as priority_2_stop_other_specified_reasons, 

CASE
    WHEN CVDEXLEN IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXLEN AS FLOAT64) 
 END as length_of_cv_fitness_exam_min, 

CASE
    WHEN CVDEXMER IS NULL THEN NULL 
ELSE SAFE_CAST(CVDEXMER AS FLOAT64) 
 END as examiner_id_code, 

CASE
    WHEN CVDPMHR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDPMHR AS FLOAT64) 
 END as predicted_maximal_heart_rate_per_min, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Little or no regular recreation, sport or physical activity and avoids walking or exertion' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Little or no regular recreation, sport or physical activity but walks for pleasure and occasionally exercises' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Participating regularly in recreation or work requiring modest physical activity for 10 to 60 minutes per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Participating regulalry in recreation or work requiring modest physical activity for more than 60 minutes per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Participating regularly in heavy physical activity for less than 30 minutes per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Participating regularly in heavy physical activity for 30 - 60 minutes per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Participating regularly in heavy physical activity for 1 - 3 hours per week' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVXPARC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Participating regularly in heavy physical activity for more than 3 hours per week' -- categorize numeric values
WHEN CVXPARC IS NULL THEN NULL 
ELSE SAFE_CAST(CVXPARC AS STRING) 
 END as physical_activity_readiness_code, 

CASE
    WHEN CVDVOMAX IS NULL THEN NULL 
ELSE SAFE_CAST(CVDVOMAX AS FLOAT64) 
 END as predicted_vo2max_ml_kg_min, 

CASE
    WHEN CVAPROT IS NULL THEN NULL 
ELSE SAFE_CAST(CVAPROT AS FLOAT64) 
 END as assigned_exercise_protocol, 

CASE
    WHEN CVDPROT IS NULL THEN NULL 
ELSE SAFE_CAST(CVDPROT AS FLOAT64) 
 END as exercise_protocol_used_in_stage_1_and_2, 

CASE
    WHEN CVATEMP IS NULL THEN NULL 
ELSE SAFE_CAST(CVATEMP AS FLOAT64) 
 END as room_temperature_degrees_f, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAARM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Right' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAARM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Left' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAARM AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Could not obtain' -- categorize numeric values
WHEN CVAARM IS NULL THEN NULL 
ELSE SAFE_CAST(CVAARM AS STRING) 
 END as arm_selected_for_blood_pressure_monitor, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVACUFF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Child' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVACUFF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Adult' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVACUFF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Large arm' -- categorize numeric values
WHEN CVACUFF IS NULL THEN NULL 
ELSE SAFE_CAST(CVACUFF AS STRING) 
 END as cuff_size_for_blood_pressure_monitor, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAVEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAVEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVAVEST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN CVAVEST IS NULL THEN NULL 
ELSE SAFE_CAST(CVAVEST AS STRING) 
 END as mesh_vest_used, 

CASE
    WHEN CVAWS1 IS NULL THEN NULL 
ELSE SAFE_CAST(CVAWS1 AS FLOAT64) 
 END as warm_up_speed_mph, 

CASE
    WHEN CVAWG1 IS NULL THEN NULL 
ELSE SAFE_CAST(CVAWG1 AS FLOAT64) 
 END as warm_up_grade_incline, 

CASE
    WHEN CVDWTIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDWTIM AS FLOAT64) 
 END as amount_of_time_spent_in_warm_up_min, 

CASE
    WHEN CVXWRPE IS NULL THEN NULL 
ELSE SAFE_CAST(CVXWRPE AS FLOAT64) 
 END as warm_up_rating_of_perceived_exertion, 

CASE
    WHEN CVDWHR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDWHR AS FLOAT64) 
 END as warm_up_heart_rate_per_min, 

CASE
    WHEN CVDWSY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDWSY AS FLOAT64) 
 END as warm_up_systolic_bp_mm_hg, 

CASE
    WHEN CVDWDI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDWDI AS FLOAT64) 
 END as warm_up_diastolic_bp_mm_hg, 

CASE
    WHEN CVDS1S IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1S AS FLOAT64) 
 END as stage_1_speed_mph, 

CASE
    WHEN CVDS1G IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1G AS FLOAT64) 
 END as stage_1_grade_incline, 

CASE
    WHEN CVDS1TIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1TIM AS FLOAT64) 
 END as amount_of_time_spent_in_stage_1_min, 

CASE
    WHEN CVXS1RPE IS NULL THEN NULL 
ELSE SAFE_CAST(CVXS1RPE AS FLOAT64) 
 END as stage_1_rating_of_perceived_exertion, 

CASE
    WHEN CVDS1HR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1HR AS FLOAT64) 
 END as stage_1_heart_rate_per_min, 

CASE
    WHEN CVDS1SY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1SY AS FLOAT64) 
 END as stage_1_systolic_bp_mm_hg, 

CASE
    WHEN CVDS1DI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS1DI AS FLOAT64) 
 END as stage_1_diastolic_bp_mm_hg, 

CASE
    WHEN CVDS2S IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2S AS FLOAT64) 
 END as stage_2_speed_mph, 

CASE
    WHEN CVDS2G IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2G AS FLOAT64) 
 END as stage_2_grade_incline, 

CASE
    WHEN CVDS2TIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2TIM AS FLOAT64) 
 END as amount_of_time_spent_in_stage_2_min, 

CASE
    WHEN CVXS2RPE IS NULL THEN NULL 
ELSE SAFE_CAST(CVXS2RPE AS FLOAT64) 
 END as stage_2_rating_of_perceived_exertion, 

CASE
    WHEN CVDS2HR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2HR AS FLOAT64) 
 END as stage_2_heart_rate_per_min, 

CASE
    WHEN CVDS2SY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2SY AS FLOAT64) 
 END as stage_2_systolic_bp_mm_hg, 

CASE
    WHEN CVDS2DI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDS2DI AS FLOAT64) 
 END as stage_2_diastolic_bp_mm_hg, 

CASE
    WHEN CVDR1TIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR1TIM AS FLOAT64) 
 END as amount_of_time_spent_in_recovery_1_min, 

CASE
    WHEN CVDR1HR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR1HR AS FLOAT64) 
 END as recovery_1_heart_rate_per_min, 

CASE
    WHEN CVDR1SY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR1SY AS FLOAT64) 
 END as recovery_1_systolic_bp_mm_hg, 

CASE
    WHEN CVDR1DI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR1DI AS FLOAT64) 
 END as recovery_1_diastolic_bp_mm_hg, 

CASE
    WHEN CVDR2TIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR2TIM AS FLOAT64) 
 END as amount_of_time_spent_in_recovery_2_min, 

CASE
    WHEN CVDR2HR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR2HR AS FLOAT64) 
 END as recovery_2_heart_rate_per_min, 

CASE
    WHEN CVDR2SY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR2SY AS FLOAT64) 
 END as recovery_2_systolic_bp_mm_hg, 

CASE
    WHEN CVDR2DI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR2DI AS FLOAT64) 
 END as recovery_2_diastolic_bp_mm_hg, 

CASE
    WHEN CVDR3TIM IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR3TIM AS FLOAT64) 
 END as amount_of_time_spent_in_recovery_3_min, 

CASE
    WHEN CVDR3HR IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR3HR AS FLOAT64) 
 END as recovery_3_heart_rate_per_min, 

CASE
    WHEN CVDR3SY IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR3SY AS FLOAT64) 
 END as recovery_3_systolic_bp_mm_hg, 

CASE
    WHEN CVDR3DI IS NULL THEN NULL 
ELSE SAFE_CAST(CVDR3DI AS FLOAT64) 
 END as recovery_3_diastolic_bp_mm_hg, 

CASE
    WHEN CVDESVO2 IS NULL THEN NULL 
ELSE SAFE_CAST(CVDESVO2 AS FLOAT64) 
 END as estimated_vo2max_ml_kg_min, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDFITLV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Low' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDFITLV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Moderate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(CVDFITLV AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'High' -- categorize numeric values
WHEN CVDFITLV IS NULL THEN NULL 
ELSE SAFE_CAST(CVDFITLV AS STRING) 
 END as cardiovascular_fitness_level, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_cardiovascular_fitness_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/CVX_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/CVX_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/CVX.htm
*/
