SELECT
SEQN as respondent_sequence_number,
WHEN URXVOL1 IS NOT NULL THEN URXVOL1WHEN URXVOL1 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_1_ml,
WHEN URDFLOW1 IS NOT NULL THEN URDFLOW1WHEN URDFLOW1 IS NULL THEN NULL 
ELSE NULL 
 END as urine_1_flow_rate_ml_min,
WHEN URDTIME1 IS NOT NULL THEN URDTIME1WHEN URDTIME1 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_last_urination_urine_1,
WHEN URXVOL2 IS NOT NULL THEN URXVOL2WHEN URXVOL2 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_2_ml,
WHEN URDFLOW2 IS NOT NULL THEN URDFLOW2WHEN URDFLOW2 IS NULL THEN NULL 
ELSE NULL 
 END as urine_2_flow_rate_ml_min,
WHEN URDTIME2 IS NOT NULL THEN URDTIME2WHEN URDTIME2 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_urine_1_urine_2,
WHEN URXVOL3 IS NOT NULL THEN URXVOL3WHEN URXVOL3 IS NULL THEN NULL 
ELSE NULL 
 END as the_volume_of_urine_collection_3_ml,
WHEN URDFLOW3 IS NOT NULL THEN URDFLOW3WHEN URDFLOW3 IS NULL THEN NULL 
ELSE NULL 
 END as urine_3_flow_rate_ml_min,
WHEN URDTIME3 IS NOT NULL THEN URDTIME3WHEN URDTIME3 IS NULL THEN NULL 
ELSE NULL 
 END as minutes_b_w_urine_2_urine_3,
 FROM {{ ref('stg_urine_flow_rate_laboratory') }}