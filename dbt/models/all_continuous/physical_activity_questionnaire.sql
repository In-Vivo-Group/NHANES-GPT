SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN PAQ605 = '1' THEN 'Yes' 
WHEN PAQ605 = '2' THEN 'No' 
WHEN PAQ605 = '7' THEN 'Refused' 
WHEN PAQ605 = '9' THEN 'Don\'t know' 
WHEN PAQ605 IS NULL THEN NULL 
ELSE NULL 
 END as vigorous_work_activity,
WHEN PAQ610 IS NOT NULL THEN SAFE_CAST(PAQ610 AS FLOAT64)WHEN PAQ610 IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_vigorous_work,
WHEN PAD615 IS NOT NULL THEN SAFE_CAST(PAD615 AS FLOAT64)WHEN PAD615 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_vigorous_intensity_work,
CASE
        WHEN PAQ620 = '1' THEN 'Yes' 
WHEN PAQ620 = '2' THEN 'No' 
WHEN PAQ620 = '7' THEN 'Refused' 
WHEN PAQ620 = '9' THEN 'Don\'t know' 
WHEN PAQ620 IS NULL THEN NULL 
ELSE NULL 
 END as moderate_work_activity,
WHEN PAQ625 IS NOT NULL THEN SAFE_CAST(PAQ625 AS FLOAT64)WHEN PAQ625 IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_moderate_work,
WHEN PAD630 IS NOT NULL THEN SAFE_CAST(PAD630 AS FLOAT64)WHEN PAD630 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_moderate_intensity_work,
CASE
        WHEN PAQ635 = '1' THEN 'Yes' 
WHEN PAQ635 = '2' THEN 'No' 
WHEN PAQ635 = '7' THEN 'Refused' 
WHEN PAQ635 = '9' THEN 'Don\'t know' 
WHEN PAQ635 IS NULL THEN NULL 
ELSE NULL 
 END as walk_or_bicycle,
WHEN PAQ640 IS NOT NULL THEN SAFE_CAST(PAQ640 AS FLOAT64)WHEN PAQ640 IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_walk_or_bicycle,
WHEN PAD645 IS NOT NULL THEN SAFE_CAST(PAD645 AS FLOAT64)WHEN PAD645 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_walk_bicycle_for_transportation,
CASE
        WHEN PAQ650 = '1' THEN 'Yes' 
WHEN PAQ650 = '2' THEN 'No' 
WHEN PAQ650 = '7' THEN 'Refused' 
WHEN PAQ650 = '9' THEN 'Don\'t know' 
WHEN PAQ650 IS NULL THEN NULL 
ELSE NULL 
 END as vigorous_recreational_activities,
WHEN PAQ655 IS NOT NULL THEN SAFE_CAST(PAQ655 AS FLOAT64)WHEN PAQ655 IS NULL THEN NULL 
ELSE NULL 
 END as days_vigorous_recreational_activities,
WHEN PAD660 IS NOT NULL THEN SAFE_CAST(PAD660 AS FLOAT64)WHEN PAD660 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_vigorous_recreational_activities,
CASE
        WHEN PAQ665 = '1' THEN 'Yes' 
WHEN PAQ665 = '2' THEN 'No' 
WHEN PAQ665 = '7' THEN 'Refused' 
WHEN PAQ665 = '9' THEN 'Don\'t know' 
WHEN PAQ665 IS NULL THEN NULL 
ELSE NULL 
 END as moderate_recreational_activities,
WHEN PAQ670 IS NOT NULL THEN SAFE_CAST(PAQ670 AS FLOAT64)WHEN PAQ670 IS NULL THEN NULL 
ELSE NULL 
 END as days_moderate_recreational_activities,
WHEN PAD675 IS NOT NULL THEN SAFE_CAST(PAD675 AS FLOAT64)WHEN PAD675 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_moderate_recreational_activities,
WHEN PAD680 IS NOT NULL THEN SAFE_CAST(PAD680 AS FLOAT64)WHEN PAD680 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_sedentary_activity,
 FROM {{ ref('stg_physical_activity_questionnaire') }}