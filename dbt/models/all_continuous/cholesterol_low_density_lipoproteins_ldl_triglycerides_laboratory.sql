SELECT
SEQN as respondent_sequence_number,
WHEN WTSAF2YR IS NOT NULL THEN WTSAF2YRWHEN WTSAF2YR IS NULL THEN NULL 
ELSE NULL 
 END as fasting_subsample_2_year_mec_weight,
WHEN LBXTR IS NOT NULL THEN LBXTRWHEN LBXTR IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mg_dl,
WHEN LBDTRSI IS NOT NULL THEN LBDTRSIWHEN LBDTRSI IS NULL THEN NULL 
ELSE NULL 
 END as triglyceride_mmol_l,
WHEN LBDLDL IS NOT NULL THEN LBDLDLWHEN LBDLDL IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mg_dl,
WHEN LBDLDLSI IS NOT NULL THEN LBDLDLSIWHEN LBDLDLSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_friedewald_mmol_l,
WHEN LBDLDLM IS NOT NULL THEN LBDLDLMWHEN LBDLDLM IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mg_dl,
WHEN LBDLDMSI IS NOT NULL THEN LBDLDMSIWHEN LBDLDMSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_martin_hopkins_mmol_l,
WHEN LBDLDLN IS NOT NULL THEN LBDLDLNWHEN LBDLDLN IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mg_dl,
WHEN LBDLDNSI IS NOT NULL THEN LBDLDNSIWHEN LBDLDNSI IS NULL THEN NULL 
ELSE NULL 
 END as ldl_cholesterol_nih_equation_2_mmol_l,
 FROM {{ ref('stg_cholesterol_low_density_lipoproteins_ldl_triglycerides_laboratory') }}