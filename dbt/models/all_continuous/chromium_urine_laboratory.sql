SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN WTSA2YRWHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URXUCM IS NOT NULL THEN URXUCMWHEN URXUCM IS NULL THEN NULL 
ELSE NULL 
 END as chromium_urine_ug_l,
CASE
        WHEN URDUCMLC = 0 THEN 'At or above detection limit' 
WHEN URDUCMLC = 1 THEN 'below lower detection limit' 
WHEN URDUCMLC IS NULL THEN NULL 
ELSE NULL 
 END as chromium_urine_comment_code,
 FROM {{ ref('stg_chromium_urine_laboratory') }}