SELECT
SEQN as respondent_sequence_number,
CASE
    WHEN SMQ681 = 1 THEN 'Yes' 
WHEN SMQ681 = 2 THEN 'No' 
WHEN SMQ681 = 7 THEN 'Refused' 
WHEN SMQ681 = 9 THEN 'Don't know' 
WHEN SMQ681 IS NULL THEN NULL 
ELSE NULL 
 END as smoked_tobacco_last_5_days,
CASE
    WHEN SMQ690A = 1 THEN 'Cigarettes' 
WHEN SMQ690A = 77 THEN 'Refused' 
WHEN SMQ690A = 99 THEN 'Don't know' 
WHEN SMQ690A IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_cigarettes,
WHEN SMQ710 IS NOT NULL THEN SAFE_CAST(SMQ710 AS FLOAT64)WHEN SMQ710 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_cigarettes_last_5_days,
WHEN SMQ720 IS NOT NULL THEN SAFE_CAST(SMQ720 AS FLOAT64)WHEN SMQ720 IS NULL THEN NULL 
ELSE NULL 
 END as cigarettes_smoked_per_day,
CASE
    WHEN SMQ725 = 1 THEN 'Today' 
WHEN SMQ725 = 2 THEN 'Yesterday' 
WHEN SMQ725 = 3 THEN '3 to 5 days ago' 
WHEN SMQ725 = 7 THEN 'Refused' 
WHEN SMQ725 = 9 THEN 'Don't know' 
WHEN SMQ725 IS NULL THEN NULL 
ELSE NULL 
 END as when_did_resp_smoke_last_cigarette,
CASE
    WHEN SMQ690B = 2 THEN 'Pipes' 
WHEN SMQ690B IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_pipes,
WHEN SMQ740 IS NOT NULL THEN SAFE_CAST(SMQ740 AS FLOAT64)WHEN SMQ740 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_pipe_over_last_5_days,
CASE
    WHEN SMQ690C = 3 THEN 'Cigars or little cigars or cigarilllos' 
WHEN SMQ690C IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_cigars,
WHEN SMQ770 IS NOT NULL THEN SAFE_CAST(SMQ770 AS FLOAT64)WHEN SMQ770 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_cigars_over_last_5_days,
CASE
    WHEN SMQ690G = 7 THEN 'Water pipes or Hookahs' 
WHEN SMQ690G IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_hookah_water_pipes,
WHEN SMQ845 IS NOT NULL THEN SAFE_CAST(SMQ845 AS FLOAT64)WHEN SMQ845 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_water_pipe_last_5_days,
CASE
    WHEN SMQ690H = 8 THEN 'E-cigarettes' 
WHEN SMQ690H IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_e_cigarettes,
WHEN SMQ849 IS NOT NULL THEN SAFE_CAST(SMQ849 AS FLOAT64)WHEN SMQ849 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_e_cigarette_last_5_days,
CASE
    WHEN SMQ851 = 1 THEN 'Yes' 
WHEN SMQ851 = 2 THEN 'No' 
WHEN SMQ851 = 7 THEN 'Refused' 
WHEN SMQ851 = 9 THEN 'Don't know' 
WHEN SMQ851 IS NULL THEN NULL 
ELSE NULL 
 END as used_smokeless_tobacco_last_5_days,
CASE
    WHEN SMQ690D = 4 THEN 'Chewing tobacco' 
WHEN SMQ690D IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_chewing_tobacco,
WHEN SMQ800 IS NOT NULL THEN SAFE_CAST(SMQ800 AS FLOAT64)WHEN SMQ800 IS NULL THEN NULL 
ELSE NULL 
 END as days_used_chewing_tobacco_last_5_day,
CASE
    WHEN SMQ690E = 5 THEN 'Snuff' 
WHEN SMQ690E IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_snuff,
WHEN SMQ817 IS NOT NULL THEN SAFE_CAST(SMQ817 AS FLOAT64)WHEN SMQ817 IS NULL THEN NULL 
ELSE NULL 
 END as days_used_snuff_over_last_5_days,
CASE
    WHEN SMQ690K = 11 THEN 'Other Smokeless' 
WHEN SMQ690K IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_other_smokeless,
WHEN SMQ857O IS NOT NULL THEN SAFE_CAST(SMQ857O AS FLOAT64)WHEN SMQ857O IS NULL THEN NULL 
ELSE NULL 
 END as days_used_other_smokeless_last_5_days,
CASE
    WHEN SMQ863 = 1 THEN 'Yes' 
WHEN SMQ863 = 2 THEN 'No' 
WHEN SMQ863 = 7 THEN 'Refused' 
WHEN SMQ863 = 9 THEN 'Don't know' 
WHEN SMQ863 IS NULL THEN NULL 
ELSE NULL 
 END as used_nicotine_replacement_last_5_days,
CASE
    WHEN SMQ690F = 6 THEN 'Nicotine patches, gum, or other nicotine replacement therapy product' 
WHEN SMQ690F IS NULL THEN NULL 
ELSE NULL 
 END as used_last_5_days_patch_gum_other,
WHEN SMQ830 IS NOT NULL THEN SAFE_CAST(SMQ830 AS FLOAT64)WHEN SMQ830 IS NULL THEN NULL 
ELSE NULL 
 END as days_used_nicotine_quit_smoking_aids,
CASE
    WHEN SMQ840 = 1 THEN 'Today' 
WHEN SMQ840 = 2 THEN 'Yesterday' 
WHEN SMQ840 = 3 THEN '3 to 5 days ago' 
WHEN SMQ840 = 7 THEN 'Refused' 
WHEN SMQ840 = 9 THEN 'Don't know' 
WHEN SMQ840 IS NULL THEN NULL 
ELSE NULL 
 END as when_last_used_nicotine_quit_smoking_aid,
CASE
    WHEN SMDANY = 1 THEN 'Yes' 
WHEN SMDANY = 2 THEN 'No' 
WHEN SMDANY = 7 THEN 'Refused' 
WHEN SMDANY = 9 THEN 'Don't know' 
WHEN SMDANY IS NULL THEN NULL 
ELSE NULL 
 END as used_any_tobacco_product_last_5_days,
CASE
    WHEN SMAQUEX = 1 THEN 'ACASI   B(12 - 17 Yrs.)' 
WHEN SMAQUEX = 2 THEN 'MEC CAPI   B(18 - 150 Yrs.)' 
WHEN SMAQUEX IS NULL THEN NULL 
ELSE NULL 
 END as questionnaire_mode_flag,
 FROM {ref('stg_smoking_recent_tobacco_use_questionnaire'})