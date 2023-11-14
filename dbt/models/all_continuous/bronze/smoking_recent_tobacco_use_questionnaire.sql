SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ681 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ681 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ681 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ681 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ681 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ681 AS STRING) 
 END as smoked_tobacco_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Cigarettes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ690A IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690A AS STRING) 
 END as used_last_5_days_cigarettes, 

CASE
WHEN SMQ710 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ710 AS STRING) 
 END as days_smoked_cigarettes_last_5_days, 

CASE
WHEN SMQ720 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ720 AS STRING) 
 END as cigarettes_smoked_per_day, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ725 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ725 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ725 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ725 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ725 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ725 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ725 AS STRING) 
 END as when_did_resp_smoke_last_cigarette, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Pipes' -- categorize numeric values
WHEN SMQ690B IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690B AS STRING) 
 END as used_last_5_days_pipes, 

CASE
WHEN SMQ740 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ740 AS STRING) 
 END as days_smoked_pipe_over_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Cigars or little cigars or cigarilllos' -- categorize numeric values
WHEN SMQ690C IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690C AS STRING) 
 END as used_last_5_days_cigars, 

CASE
WHEN SMQ770 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ770 AS STRING) 
 END as days_smoked_cigars_over_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ690G AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Water pipes or Hookahs' -- categorize string values 
WHEN SMQ690G IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690G AS STRING) 
 END as used_last_5_days_hookah_water_pipes, 

CASE
WHEN SAFE_CAST(SMQ845 AS FLOAT64) > 16.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ845 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ845 AS FLOAT64) 
 END as days_smoked_water_pipe_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ690H AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'E-cigarettes' -- categorize string values 
WHEN SMQ690H IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690H AS STRING) 
 END as used_last_5_days_e_cigarettes, 

CASE
WHEN SAFE_CAST(SMQ849 AS FLOAT64) > 16.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ849 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ849 AS FLOAT64) 
 END as days_smoked_e_cigarette_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ851 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ851 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ851 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ851 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ851 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ851 AS STRING) 
 END as used_smokeless_tobacco_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Chewing tobacco' -- categorize numeric values
WHEN SMQ690D IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690D AS STRING) 
 END as used_last_5_days_chewing_tobacco, 

CASE
WHEN SMQ800 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ800 AS STRING) 
 END as days_used_chewing_tobacco_last_5_day, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Snuff' -- categorize numeric values
WHEN SMQ690E IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690E AS STRING) 
 END as used_last_5_days_snuff, 

CASE
WHEN SMQ817 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ817 AS STRING) 
 END as days_used_snuff_over_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ690K AS FLOAT64),0) AS INT64) AS STRING) = '11' THEN 'Other Smokeless' -- categorize string values 
WHEN SMQ690K IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690K AS STRING) 
 END as used_last_5_days_other_smokeless, 

CASE
WHEN SAFE_CAST(SMQ857O AS FLOAT64) > 16.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ857O IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ857O AS FLOAT64) 
 END as days_used_other_smokeless_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ863 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ863 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ863 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ863 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ863 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ863 AS STRING) 
 END as used_nicotine_replacement_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ690F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Nicotine patches, gum, or other nicotine replacement therapy product' -- categorize numeric values
WHEN SMQ690F IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690F AS STRING) 
 END as used_last_5_days_patch_gum_other, 

CASE
WHEN SMQ830 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ830 AS STRING) 
 END as days_used_nicotine_quit_smoking_aids, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ840 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ840 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ840 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ840 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ840 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ840 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ840 AS STRING) 
 END as when_last_used_nicotine_quit_smoking_aid, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMDANY AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMDANY AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMDANY AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMDANY AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN SMDANY IS NULL THEN NULL 
ELSE SAFE_CAST(SMDANY AS STRING) 
 END as used_any_tobacco_product_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMAQUEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'ACASI   B(12 - 17 Yrs.)' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMAQUEX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'MEC CAPI   B(18 - 150 Yrs.)' -- categorize numeric values
WHEN SMAQUEX IS NULL THEN NULL 
ELSE SAFE_CAST(SMAQUEX AS STRING) 
 END as questionnaire_mode_flag, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ690I AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Snus' -- categorize string values 
WHEN SMQ690I IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690I AS STRING) 
 END as used_last_5_days_snus, 

CASE
WHEN SAFE_CAST(SMQ857 AS FLOAT64) > 15.0 THEN NULL -- remove missing, dont know, categories in float field  
WHEN SMQ857 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ857 AS FLOAT64) 
 END as days_used_snus_over_last_5_days, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ690J AS FLOAT64),0) AS INT64) AS STRING) = '10' THEN 'Dissolvables' -- categorize string values 
WHEN SMQ690J IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ690J AS STRING) 
 END as used_last_5_days_dissolvables, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ861 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '1' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ861 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(SMQ861 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN SMQ861 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ861 AS STRING) 
 END as days_used_dissolvable_over_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ680 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ680 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ680 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ680 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ680 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ680 AS STRING) 
 END as used_tobacco_nicotine_last_5_days, 

CASE
WHEN SMQ750 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ750 AS STRING) 
 END as pipes_smoked_per_day_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ755 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ755 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ755 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ755 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ755 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ755 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ755 AS STRING) 
 END as when_did_resp_smoke_last_pipe, 

CASE
WHEN SMQ780 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ780 AS STRING) 
 END as cigars_smoked_per_day_last_5_days, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ785 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ785 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ785 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ785 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ785 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ785 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ785 AS STRING) 
 END as when_did_resp_smoke_last_cigar, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ815 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ815 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ815 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ815 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ815 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ815 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ815 AS STRING) 
 END as when_did_resp_last_use_chewing_tobacco, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ819 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Today' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ819 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Yesterday' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ819 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '3 to 5 days ago' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ819 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(SMQ819 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN SMQ819 IS NULL THEN NULL 
ELSE SAFE_CAST(SMQ819 AS STRING) 
 END as when_last_used_snuff, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_smoking_recent_tobacco_use_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQRTU_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_SMQRTU.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SMQRTU_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SMQRTU_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SMQRTU_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/SMQRTU_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/SMQRTU_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/SMQRTU_D.htm
*/
