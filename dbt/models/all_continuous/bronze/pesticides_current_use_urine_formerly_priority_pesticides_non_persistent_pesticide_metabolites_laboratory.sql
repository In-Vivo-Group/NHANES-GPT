SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSC2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSC2YR AS FLOAT64) 
 END as environmental_c_2_year_weights, 

CASE
    WHEN URXBSM IS NULL THEN NULL 
ELSE SAFE_CAST(URXBSM AS FLOAT64) 
 END as bensulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBSMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDBSMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDBSMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDBSMLC AS STRING) 
 END as bensulfuron_methyl_comment_code, 

CASE
    WHEN URXCHS IS NULL THEN NULL 
ELSE SAFE_CAST(URXCHS AS FLOAT64) 
 END as chlorsulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCHSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCHSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCHSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCHSLC AS STRING) 
 END as chlorsulfuron_comment_code, 

CASE
    WHEN URXEMM IS NULL THEN NULL 
ELSE SAFE_CAST(URXEMM AS FLOAT64) 
 END as ethametsulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDEMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDEMMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDEMMLC AS STRING) 
 END as ethametsulfuron_methyl_comment_code, 

CASE
    WHEN URXFRM IS NULL THEN NULL 
ELSE SAFE_CAST(URXFRM AS FLOAT64) 
 END as foramsulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDFRMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDFRMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDFRMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDFRMLC AS STRING) 
 END as foramsulfuron_comment_code, 

CASE
    WHEN URXHLS IS NULL THEN NULL 
ELSE SAFE_CAST(URXHLS AS FLOAT64) 
 END as halosulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHLSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDHLSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDHLSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDHLSLC AS STRING) 
 END as halosulfuron_comment_code, 

CASE
    WHEN URXMSM IS NULL THEN NULL 
ELSE SAFE_CAST(URXMSM AS FLOAT64) 
 END as mesosulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMSMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMSMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMSMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMSMLC AS STRING) 
 END as mesosulfuron_methyl_comment_code, 

CASE
    WHEN URXMTM IS NULL THEN NULL 
ELSE SAFE_CAST(URXMTM AS FLOAT64) 
 END as metsulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMTMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMTMLC AS STRING) 
 END as metsulfuron_methyl_comment_code, 

CASE
    WHEN URXNOS IS NULL THEN NULL 
ELSE SAFE_CAST(URXNOS AS FLOAT64) 
 END as nicosulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNOSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDNOSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDNOSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDNOSLC AS STRING) 
 END as nicosulfuron_comment_code, 

CASE
    WHEN URXOXS IS NULL THEN NULL 
ELSE SAFE_CAST(URXOXS AS FLOAT64) 
 END as oxasulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOXSLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOXSLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOXSLC AS STRING) 
 END as oxasulfuron_comment_code, 

CASE
    WHEN URXPIM IS NULL THEN NULL 
ELSE SAFE_CAST(URXPIM AS FLOAT64) 
 END as primisulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPIMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPIMLC AS STRING) 
 END as primisulfuron_methyl_comment_code, 

CASE
    WHEN URXPRO IS NULL THEN NULL 
ELSE SAFE_CAST(URXPRO AS FLOAT64) 
 END as prosulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPROLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPROLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPROLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPROLC AS STRING) 
 END as prosulfuron_comment_code, 

CASE
    WHEN URXRIM IS NULL THEN NULL 
ELSE SAFE_CAST(URXRIM AS FLOAT64) 
 END as rimsulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDRIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDRIMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDRIMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDRIMLC AS STRING) 
 END as rimsulfuron_comment_code, 

CASE
    WHEN URXSMM IS NULL THEN NULL 
ELSE SAFE_CAST(URXSMM AS FLOAT64) 
 END as sulfometuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSMMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSMMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDSMMLC AS STRING) 
 END as sulfometuron_methyl_comment_code, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URXSSF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.0354 AS FLOAT64),0) AS INT64) THEN '0.0354' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URXSSF AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0.07 AS FLOAT64),0) AS INT64) THEN '0.07' -- categorize numeric values
WHEN URXSSF IS NULL THEN NULL 
ELSE SAFE_CAST(URXSSF AS STRING) 
 END as sulfosulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSSFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDSSFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDSSFLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDSSFLC AS STRING) 
 END as sulfosulfuron_comment_code, 

CASE
    WHEN URXTHF IS NULL THEN NULL 
ELSE SAFE_CAST(URXTHF AS FLOAT64) 
 END as thifensulfuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTHFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTHFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTHFLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTHFLC AS STRING) 
 END as thifensulfuron_methyl_comment_code, 

CASE
    WHEN URXTRA IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRA AS FLOAT64) 
 END as triasulfuron_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTRALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTRALC AS STRING) 
 END as triasulfuron_comment_code, 

CASE
    WHEN URXTRN IS NULL THEN NULL 
ELSE SAFE_CAST(URXTRN AS FLOAT64) 
 END as tribenuron_methyl_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTRNLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDTRNLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTRNLC AS STRING) 
 END as tribenuron_methyl_comment_code, 

CASE
    WHEN URXUCR IS NULL THEN NULL 
ELSE SAFE_CAST(URXUCR AS FLOAT64) 
 END as creatinine_urine_mg_dl, 

CASE
    WHEN URX24D IS NULL THEN NULL 
ELSE SAFE_CAST(URX24D AS FLOAT64) 
 END as lab_2_4_d_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD24DLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD24DLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD24DLC AS STRING) 
 END as lab_2_4_d_comment_code, 

CASE
    WHEN URX25T IS NULL THEN NULL 
ELSE SAFE_CAST(URX25T AS FLOAT64) 
 END as lab_2_4_5_trichlorophenoxyacetic_acid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD25TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD25TLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URD25TLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD25TLC AS STRING) 
 END as lab_2_4_5_trichlorophenoxyacetic_acid_code, 

CASE
    WHEN URXAPE IS NULL THEN NULL 
ELSE SAFE_CAST(URXAPE AS FLOAT64) 
 END as acephate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDAPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDAPELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDAPELC AS STRING) 
 END as acephate_comment_code, 

CASE
    WHEN URXCBF IS NULL THEN NULL 
ELSE SAFE_CAST(URXCBF AS FLOAT64) 
 END as carbofuranphenol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDCBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCBFLC AS STRING) 
 END as carbofuranphenol_comment_code, 

CASE
    WHEN URXETU IS NULL THEN NULL 
ELSE SAFE_CAST(URXETU AS FLOAT64) 
 END as ethylenethio_urea_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDETULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDETULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDETULC AS STRING) 
 END as ethylenethio_urea_comment_code, 

CASE
    WHEN URXMMI IS NULL THEN NULL 
ELSE SAFE_CAST(URXMMI AS FLOAT64) 
 END as methamidaphos_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMMILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMMILC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMMILC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMMILC AS STRING) 
 END as methamidaphos_comment_code, 

CASE
    WHEN URXMTO IS NULL THEN NULL 
ELSE SAFE_CAST(URXMTO AS FLOAT64) 
 END as dimethoate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMTOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDMTOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMTOLC AS STRING) 
 END as dimethoate_comment_code, 

CASE
    WHEN URXOMO IS NULL THEN NULL 
ELSE SAFE_CAST(URXOMO AS FLOAT64) 
 END as o_methoate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOMOLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDOMOLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOMOLC AS STRING) 
 END as o_methoate_comment_code, 

CASE
    WHEN URXPCP IS NULL THEN NULL 
ELSE SAFE_CAST(URXPCP AS FLOAT64) 
 END as pentachlorophenol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPCPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPCPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPCPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPCPLC AS STRING) 
 END as pentachlorophenol_comment_code, 

CASE
    WHEN URXPPX IS NULL THEN NULL 
ELSE SAFE_CAST(URXPPX AS FLOAT64) 
 END as lab_2_isopropoxyphenol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPPXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPPXLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPPXLC AS STRING) 
 END as lab_2_isopropoxyphenol_comment_code, 

CASE
    WHEN URXPTU IS NULL THEN NULL 
ELSE SAFE_CAST(URXPTU AS FLOAT64) 
 END as propylenethio_urea_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPTULC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN URDPTULC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPTULC AS STRING) 
 END as propylenethio_urea_comment_code, 

CASE
    WHEN WTSPP2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP2YR AS FLOAT64) 
 END as pesticides_subsample_2_year_mec_weight, 

CASE
    WHEN WTSPP4YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP4YR AS FLOAT64) 
 END as pesticides_subsample_4_year_mec_weight, 

CASE
    WHEN URXATZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXATZ AS FLOAT64) 
 END as atrazine_mercapturate_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDATZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDATZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDATZLC AS STRING) 
 END as atrazine_mercapturate_comment_code, 

CASE
    WHEN URXDEE IS NULL THEN NULL 
ELSE SAFE_CAST(URXDEE AS FLOAT64) 
 END as deet_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDEELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDDEELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDEELC AS STRING) 
 END as deet_comment_code, 

CASE
    WHEN URXCPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXCPM AS FLOAT64) 
 END as lab_3_5_6_trichloropyridinol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDCPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCPMLC AS STRING) 
 END as lab_3_5_6_trichloropyridinol_comment_code, 

CASE
    WHEN URXDIZ IS NULL THEN NULL 
ELSE SAFE_CAST(URXDIZ AS FLOAT64) 
 END as oxypyrimidine_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDIZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDIZLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDDIZLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDIZLC AS STRING) 
 END as oxypyrimidine_comment_code, 

CASE
    WHEN URXPAR IS NULL THEN NULL 
ELSE SAFE_CAST(URXPAR AS FLOAT64) 
 END as paranitrophenol_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDPARLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDPARLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDPARLC AS STRING) 
 END as paranitrophenol_comment_code, 

CASE
    WHEN URXOP1 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP1 AS FLOAT64) 
 END as dimethylphosphate_ug_l_result, 

CASE
    WHEN URXOP2 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP2 AS FLOAT64) 
 END as diethylphosphate_ug_l_result, 

CASE
    WHEN URXOP3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP3 AS FLOAT64) 
 END as dimethylthiophosphate_ug_l_result, 

CASE
    WHEN URXOP4 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP4 AS FLOAT64) 
 END as diethylthiophosphate_ug_l_result, 

CASE
    WHEN URXOP5 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP5 AS FLOAT64) 
 END as dimethyldithiophosphate_ug_l_result, 

CASE
    WHEN URXOP6 IS NULL THEN NULL 
ELSE SAFE_CAST(URXOP6 AS FLOAT64) 
 END as diethyldithiophosphate_ug_l_result, 

CASE
    WHEN URX4FP IS NULL THEN NULL 
ELSE SAFE_CAST(URX4FP AS FLOAT64) 
 END as lab_4_fluoro_3_phenoxybenzoic_ug_l_acid, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URD4FPLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URD4FPLC IS NULL THEN NULL 
ELSE SAFE_CAST(URD4FPLC AS STRING) 
 END as fluoro_phenoxybenzoic_acid_code, 

CASE
    WHEN URXCB3 IS NULL THEN NULL 
ELSE SAFE_CAST(URXCB3 AS FLOAT64) 
 END as dibromovinyl_dimeth_prop_carboacid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCB3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDCB3LC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCB3LC AS STRING) 
 END as dibromovinyl_dimeth_prop_carboacid_code, 

CASE
    WHEN URXCCC IS NULL THEN NULL 
ELSE SAFE_CAST(URXCCC AS FLOAT64) 
 END as dichlorovnl_dimeth_prop_carboacid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDCCCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCCCLC AS STRING) 
 END as dichlorovnl_dimeth_prop_carboacid_code, 

CASE
    WHEN URXCMH IS NULL THEN NULL 
ELSE SAFE_CAST(URXCMH AS FLOAT64) 
 END as chloro_hydro_meth_chromen_one_ol_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCMHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDCMHLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDCMHLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDCMHLC AS STRING) 
 END as chloro_hydro_meth_chromen_one_ol_code, 

CASE
    WHEN URXDPY IS NULL THEN NULL 
ELSE SAFE_CAST(URXDPY AS FLOAT64) 
 END as diethylaminomethylpyrimidinol_one_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDDPYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDDPYLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDDPYLC AS STRING) 
 END as diethamino_methpyrimidin_ol_one_code, 

CASE
    WHEN URXMET IS NULL THEN NULL 
ELSE SAFE_CAST(URXMET AS FLOAT64) 
 END as metolachlor_mercapturate_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMETLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMETLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDMETLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMETLC AS STRING) 
 END as metolachlor_mercapturate_comment_code, 

CASE
    WHEN URXOPM IS NULL THEN NULL 
ELSE SAFE_CAST(URXOPM AS FLOAT64) 
 END as lab_3_phenoxybenzoic_ug_l_acid_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDOPMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDOPMLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDOPMLC AS STRING) 
 END as lab_3_phenoxybenzoic_acid_comment_code, 

CASE
    WHEN URXTCC IS NULL THEN NULL 
ELSE SAFE_CAST(URXTCC AS FLOAT64) 
 END as dichlorovnl_dimeth_prop_carboacid_ug_l_URXTCC, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDTCCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDTCCLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDTCCLC AS STRING) 
 END as dichlorovnl_dimeth_prop_carboacid_code_URDTCCLC, 

CASE
    WHEN URXACE IS NULL THEN NULL 
ELSE SAFE_CAST(URXACE AS FLOAT64) 
 END as acetochlor_mercapturate_ug_l_result, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDACELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDACELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDACELC IS NULL THEN NULL 
ELSE SAFE_CAST(URDACELC AS STRING) 
 END as acetochlor_mercapturate_comment_code, 

CASE
    WHEN WTSPP01 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP01 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_01, 

CASE
    WHEN WTSPP02 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP02 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_02, 

CASE
    WHEN WTSPP03 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP03 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_03, 

CASE
    WHEN WTSPP04 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP04 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_04, 

CASE
    WHEN WTSPP05 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP05 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_05, 

CASE
    WHEN WTSPP06 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP06 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_06, 

CASE
    WHEN WTSPP07 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP07 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_07, 

CASE
    WHEN WTSPP08 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP08 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_08, 

CASE
    WHEN WTSPP09 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP09 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_09, 

CASE
    WHEN WTSPP10 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP10 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_10, 

CASE
    WHEN WTSPP11 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP11 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_11, 

CASE
    WHEN WTSPP12 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP12 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_12, 

CASE
    WHEN WTSPP13 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP13 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_13, 

CASE
    WHEN WTSPP14 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP14 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_14, 

CASE
    WHEN WTSPP15 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP15 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_15, 

CASE
    WHEN WTSPP16 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP16 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_16, 

CASE
    WHEN WTSPP17 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP17 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_17, 

CASE
    WHEN WTSPP18 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP18 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_18, 

CASE
    WHEN WTSPP19 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP19 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_19, 

CASE
    WHEN WTSPP20 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP20 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_20, 

CASE
    WHEN WTSPP21 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP21 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_21, 

CASE
    WHEN WTSPP22 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP22 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_22, 

CASE
    WHEN WTSPP23 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP23 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_23, 

CASE
    WHEN WTSPP24 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP24 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_24, 

CASE
    WHEN WTSPP25 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP25 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_25, 

CASE
    WHEN WTSPP26 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP26 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_26, 

CASE
    WHEN WTSPP27 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP27 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_27, 

CASE
    WHEN WTSPP28 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP28 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_28, 

CASE
    WHEN WTSPP29 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP29 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_29, 

CASE
    WHEN WTSPP30 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP30 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_30, 

CASE
    WHEN WTSPP31 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP31 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_31, 

CASE
    WHEN WTSPP32 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP32 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_32, 

CASE
    WHEN WTSPP33 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP33 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_33, 

CASE
    WHEN WTSPP34 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP34 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_34, 

CASE
    WHEN WTSPP35 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP35 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_35, 

CASE
    WHEN WTSPP36 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP36 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_36, 

CASE
    WHEN WTSPP37 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP37 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_37, 

CASE
    WHEN WTSPP38 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP38 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_38, 

CASE
    WHEN WTSPP39 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP39 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_39, 

CASE
    WHEN WTSPP40 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP40 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_40, 

CASE
    WHEN WTSPP41 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP41 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_41, 

CASE
    WHEN WTSPP42 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP42 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_42, 

CASE
    WHEN WTSPP43 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP43 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_43, 

CASE
    WHEN WTSPP44 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP44 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_44, 

CASE
    WHEN WTSPP45 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP45 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_45, 

CASE
    WHEN WTSPP46 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP46 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_46, 

CASE
    WHEN WTSPP47 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP47 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_47, 

CASE
    WHEN WTSPP48 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP48 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_48, 

CASE
    WHEN WTSPP49 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP49 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_49, 

CASE
    WHEN WTSPP50 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP50 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_50, 

CASE
    WHEN WTSPP51 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP51 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_51, 

CASE
    WHEN WTSPP52 IS NULL THEN NULL 
ELSE SAFE_CAST(WTSPP52 AS FLOAT64) 
 END as ppesticides_mec_weight_jack_knife_rep_52, 

CASE
    WHEN URXALA IS NULL THEN NULL 
ELSE SAFE_CAST(URXALA AS FLOAT64) 
 END as alachlor_mercapturate_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDALALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDALALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDALALC IS NULL THEN NULL 
ELSE SAFE_CAST(URDALALC AS STRING) 
 END as alachlor_mercapturate_comment_code, 

CASE
    WHEN URXMAL IS NULL THEN NULL 
ELSE SAFE_CAST(URXMAL AS FLOAT64) 
 END as malathion_diacid_ug_l, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(URDMALLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN URDMALLC IS NULL THEN NULL 
ELSE SAFE_CAST(URDMALLC AS STRING) 
 END as malathion_diacid_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pesticides_current_use_urine_formerly_priority_pesticides_non_persistent_pesticide_metabolites_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/UPP_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/UPP_D.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L26UPP_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L26PP_B.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/LAB26PP.htm
*/
