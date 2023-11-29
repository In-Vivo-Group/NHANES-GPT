SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LB2DAY IS NULL THEN NULL 
ELSE SAFE_CAST(LB2DAY AS FLOAT64) 
 END as days_between_the_first_and_second_exam, 

CASE
    WHEN LB2SAL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SAL AS FLOAT64) 
 END as albumin_g_dl, 

CASE
    WHEN LB2SALSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SALSI AS FLOAT64) 
 END as albumin_g_l, 

CASE
    WHEN LB2SATSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SATSI AS FLOAT64) 
 END as alt_u_l, 

CASE
    WHEN LB2SASSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SASSI AS FLOAT64) 
 END as ast_u_l, 

CASE
    WHEN LB2SAPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SAPSI AS FLOAT64) 
 END as alkaline_phosphotase_u_l, 

CASE
    WHEN LB2SBU IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SBU AS FLOAT64) 
 END as blood_urea_nitrogen_mg_dl, 

CASE
    WHEN LB2SBUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SBUSI AS FLOAT64) 
 END as blood_urea_nitrogen_mmol_l, 

CASE
    WHEN LB2SCA IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCA AS FLOAT64) 
 END as total_calcium_mg_dl, 

CASE
    WHEN LB2SCASI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCASI AS FLOAT64) 
 END as total_calcium_mmol_l, 

CASE
    WHEN LB2SCH IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCH AS FLOAT64) 
 END as cholesterol_mg_dl, 

CASE
    WHEN LB2SCHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCHSI AS FLOAT64) 
 END as cholesterol_mmol_l, 

CASE
    WHEN LB2SC3SI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SC3SI AS FLOAT64) 
 END as bicarbonate_mmol_l, 

CASE
    WHEN LB2SGTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SGTSI AS FLOAT64) 
 END as ggt_u_l, 

CASE
    WHEN LB2SGL IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SGL AS FLOAT64) 
 END as glucose_mg_dl, 

CASE
    WHEN LB2SGLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SGLSI AS FLOAT64) 
 END as glucose_serum_mmol_l, 

CASE
    WHEN LB2SIR IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SIR AS FLOAT64) 
 END as iron_ug_dl, 

CASE
    WHEN LB2SIRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SIRSI AS FLOAT64) 
 END as iron_umol_l, 

CASE
    WHEN LB2SLDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SLDSI AS FLOAT64) 
 END as ldh_u_l, 

CASE
    WHEN LB2SPH IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SPH AS FLOAT64) 
 END as phosphorus_mg_dl, 

CASE
    WHEN LB2SPHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SPHSI AS FLOAT64) 
 END as phosphorus_mmol_l, 

CASE
    WHEN LB2STB IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STB AS FLOAT64) 
 END as bilirubin_total_mg_dl, 

CASE
    WHEN LB2STBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STBSI AS FLOAT64) 
 END as bilirubin_total_umol_l, 

CASE
    WHEN LB2STP IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STP AS FLOAT64) 
 END as protein_total_g_dl, 

CASE
    WHEN LB2STPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STPSI AS FLOAT64) 
 END as total_protein_g_l, 

CASE
    WHEN LB2STR IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STR AS FLOAT64) 
 END as triglycerides_mg_dl, 

CASE
    WHEN LB2STRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2STRSI AS FLOAT64) 
 END as triglycerides_mmol_l, 

CASE
    WHEN LB2SUA IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SUA AS FLOAT64) 
 END as uric_acid_mg_dl, 

CASE
    WHEN LB2SUASI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SUASI AS FLOAT64) 
 END as uric_acid_umol_l, 

CASE
    WHEN LB2SCR IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCR AS FLOAT64) 
 END as creatinine_mg_dl, 

CASE
    WHEN LB2SCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCRSI AS FLOAT64) 
 END as creatinine_umol_l, 

CASE
    WHEN LB2SNASI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SNASI AS FLOAT64) 
 END as sodium_mmol_l, 

CASE
    WHEN LB2SKSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SKSI AS FLOAT64) 
 END as potassium_mmol_l, 

CASE
    WHEN LB2SCLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2SCLSI AS FLOAT64) 
 END as chloride_mmol_l, 

CASE
    WHEN LB2FSH IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FSH AS FLOAT64) 
 END as follicle_stimulating_hormone_miu_ml, 

CASE
    WHEN LB2FSHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2FSHSI AS FLOAT64) 
 END as follicle_stimulating_hormone_iu_l, 

CASE
    WHEN LB2LH IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LH AS FLOAT64) 
 END as luteinizing_hormone_miu_ml, 

CASE
    WHEN LB2LHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LB2LHSI AS FLOAT64) 
 END as luteinizing_hormone_iu_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_standard_biochemistry_profile_follicle_stimulating_hormone_luteinizing_hormone_second_exam_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L40_2_B.htm
*/
