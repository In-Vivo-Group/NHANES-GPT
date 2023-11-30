SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN LBXSAL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSAL AS FLOAT64) 
 END as albumin_g_dl, 

CASE
    WHEN LBDSALSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSALSI AS FLOAT64) 
 END as albumin_g_l, 

CASE
    WHEN LBXSATSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSATSI AS FLOAT64) 
 END as alt_u_l, 

CASE
    WHEN LBXSASSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSASSI AS FLOAT64) 
 END as ast_u_l, 

CASE
    WHEN LBXSAPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSAPSI AS FLOAT64) 
 END as alkaline_phosphotase_u_l, 

CASE
    WHEN LBXSBU IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSBU AS FLOAT64) 
 END as blood_urea_nitrogen_mg_dl, 

CASE
    WHEN LBDSBUSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSBUSI AS FLOAT64) 
 END as blood_urea_nitrogen_mmol_l, 

CASE
    WHEN LBXSCA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCA AS FLOAT64) 
 END as calcium_total_mg_dl, 

CASE
    WHEN LBDSCASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCASI AS FLOAT64) 
 END as calcium_total_mmol_l, 

CASE
    WHEN LBXSCH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCH AS FLOAT64) 
 END as cholesterol_total_mg_dl, 

CASE
    WHEN LBDSCHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCHSI AS FLOAT64) 
 END as cholesterol_total_mmol_l, 

CASE
    WHEN LBXSC3SI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSC3SI AS FLOAT64) 
 END as bicarbonate_mmol_l, 

CASE
    WHEN LBXSGTSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGTSI AS FLOAT64) 
 END as ggt_u_l, 

CASE
    WHEN LBXSGL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGL AS FLOAT64) 
 END as glucose_mg_dl, 

CASE
    WHEN LBDSGLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSGLSI AS FLOAT64) 
 END as glucose_mmol_l, 

CASE
    WHEN LBXSIR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSIR AS FLOAT64) 
 END as iron_ug_dl, 

CASE
    WHEN LBDSIRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSIRSI AS FLOAT64) 
 END as iron_umol_l, 

CASE
    WHEN LBXSLDSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSLDSI AS FLOAT64) 
 END as ldh_u_l, 

CASE
    WHEN LBXSPH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSPH AS FLOAT64) 
 END as phosphorus_mg_dl, 

CASE
    WHEN LBDSPHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSPHSI AS FLOAT64) 
 END as phosphorus_mmol_l, 

CASE
    WHEN LBXSTB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTB AS FLOAT64) 
 END as bilirubin_total_mg_dl, 

CASE
    WHEN LBDSTBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTBSI AS FLOAT64) 
 END as bilirubin_total_umol_l, 

CASE
    WHEN LBXSTP IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTP AS FLOAT64) 
 END as protein_total_g_dl, 

CASE
    WHEN LBDSTPSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTPSI AS FLOAT64) 
 END as protein_total_g_l, 

CASE
    WHEN LBXSTR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSTR AS FLOAT64) 
 END as triglycerides_mg_dl, 

CASE
    WHEN LBDSTRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSTRSI AS FLOAT64) 
 END as triglycerides_mmol_l, 

CASE
    WHEN LBXSUA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSUA AS FLOAT64) 
 END as uric_acid_mg_dl, 

CASE
    WHEN LBDSUASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSUASI AS FLOAT64) 
 END as uric_acid_umol_l, 

CASE
    WHEN LBXSCR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCR AS FLOAT64) 
 END as creatinine_mg_dl, 

CASE
    WHEN LBDSCRSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSCRSI AS FLOAT64) 
 END as creatinine_umol_l, 

CASE
    WHEN LBXSNASI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSNASI AS FLOAT64) 
 END as sodium_mmol_l, 

CASE
    WHEN LBXSKSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSKSI AS FLOAT64) 
 END as potassium_mmol_l, 

CASE
    WHEN LBXSCLSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCLSI AS FLOAT64) 
 END as chloride_mmol_l, 

CASE
    WHEN LBXSOSSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSOSSI AS FLOAT64) 
 END as osmolality_mosm_kg, 

CASE
    WHEN LBXSGB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSGB AS FLOAT64) 
 END as globulin_g_dl, 

CASE
    WHEN LBDSGBSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDSGBSI AS FLOAT64) 
 END as globulin_g_l, 

CASE
    WHEN LBXFSH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXFSH AS FLOAT64) 
 END as follicle_stimulating_hormone_miu_ml, 

CASE
    WHEN LBDFSHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDFSHSI AS FLOAT64) 
 END as follicle_stimulating_hormone_iu_l, 

CASE
    WHEN LBXLH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLH AS FLOAT64) 
 END as luteinizing_hormone_miu_ml, 

CASE
    WHEN LBDLHSI IS NULL THEN NULL 
ELSE SAFE_CAST(LBDLHSI AS FLOAT64) 
 END as luteinizing_hormone_iu_l, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_standard_biochemistry_profile_hormones_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB18.htm
*/