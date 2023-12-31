SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSB2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTSB2YR AS FLOAT64) 
 END as two_year_mec_weights_of_subsample_b, 

CASE
    WHEN LBXHCB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCB AS FLOAT64) 
 END as hexachlorobenzene_ng_g, 

CASE
    WHEN LBXHCBLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHCBLA AS FLOAT64) 
 END as hexachlorobenzene_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHCBLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHCBLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHCBLC AS STRING) 
 END as hexachlorobenzene_comment_code, 

CASE
    WHEN LBXBHC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBHC AS FLOAT64) 
 END as beta_hexachlorocyclohexane_ng_g, 

CASE
    WHEN LBXBHCLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBHCLA AS FLOAT64) 
 END as b_hexachlorocyclohexane_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBHCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBHCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBHCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBHCLC AS STRING) 
 END as beta_hexachlorocyclohexane_comment_code, 

CASE
    WHEN LBXGHC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGHC AS FLOAT64) 
 END as gamma_hexachlorocyclohexane_ng_g, 

CASE
    WHEN LBXGHCLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXGHCLA AS FLOAT64) 
 END as g_hexachlorocyclohexane_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDGHCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDGHCLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDGHCLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDGHCLC AS STRING) 
 END as gamma_hexachlorocyclohexane_comment_code, 

CASE
    WHEN LBXPDE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPDE AS FLOAT64) 
 END as p_p_dde_ng_g, 

CASE
    WHEN LBXPDELA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPDELA AS FLOAT64) 
 END as ppdde_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPDELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPDELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPDELC AS STRING) 
 END as ppdde_comment_code, 

CASE
    WHEN LBXPDT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPDT AS FLOAT64) 
 END as p_p_ddt_ng_g, 

CASE
    WHEN LBXPDTLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPDTLA AS FLOAT64) 
 END as ppddt_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPDTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDPDTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDPDTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDPDTLC AS STRING) 
 END as ppddt_comment_code, 

CASE
    WHEN LBXODT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXODT AS FLOAT64) 
 END as o_p_ddt_ng_g, 

CASE
    WHEN LBXODTLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXODTLA AS FLOAT64) 
 END as opddt_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDODTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDODTLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDODTLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDODTLC AS STRING) 
 END as opddt_comment_code, 

CASE
    WHEN LBXOXY IS NULL THEN NULL 
ELSE SAFE_CAST(LBXOXY AS FLOAT64) 
 END as oxychlordane_ng_g, 

CASE
    WHEN LBXOXYLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXOXYLA AS FLOAT64) 
 END as oxychlordane_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDOXYLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDOXYLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDOXYLC AS STRING) 
 END as oxychlordane_comment_code, 

CASE
    WHEN LBXTNA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTNA AS FLOAT64) 
 END as trans_nonachlor_ng_g, 

CASE
    WHEN LBXTNALA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTNALA AS FLOAT64) 
 END as trans_nonachlor_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTNALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDTNALC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDTNALC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDTNALC AS STRING) 
 END as trans_nonachlor_comment_code, 

CASE
    WHEN LBXHPE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHPE AS FLOAT64) 
 END as heptachlor_epoxide_ng_g, 

CASE
    WHEN LBXHPELA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXHPELA AS FLOAT64) 
 END as heptachlor_epoxide_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDHPELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDHPELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDHPELC AS STRING) 
 END as heptachlor_epoxide_comment_code, 

CASE
    WHEN LBXMIR IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMIR AS FLOAT64) 
 END as mirex_ng_g, 

CASE
    WHEN LBXMIRLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMIRLA AS FLOAT64) 
 END as mirex_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMIRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDMIRLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDMIRLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDMIRLC AS STRING) 
 END as mirex_comment_code, 

CASE
    WHEN LBXALD IS NULL THEN NULL 
ELSE SAFE_CAST(LBXALD AS FLOAT64) 
 END as aldrin_ng_g, 

CASE
    WHEN LBXALDLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXALDLA AS FLOAT64) 
 END as aldrin_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDALDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDALDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDALDLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDALDLC AS STRING) 
 END as aldrin_comment_code, 

CASE
    WHEN LBXDIE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDIE AS FLOAT64) 
 END as dieldrin_ng_g, 

CASE
    WHEN LBXDIELA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDIELA AS FLOAT64) 
 END as dieldrin_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDIELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDDIELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDDIELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDDIELC AS STRING) 
 END as dieldrin_comment_code, 

CASE
    WHEN LBXEND IS NULL THEN NULL 
ELSE SAFE_CAST(LBXEND AS FLOAT64) 
 END as endrin_ng_g, 

CASE
    WHEN LBXENDLA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXENDLA AS FLOAT64) 
 END as endrin_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDENDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDENDLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDENDLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDENDLC AS STRING) 
 END as endrin_comment_code, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_pesticides_organochlorine_metabolites_serum_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L28OCP_C.htm
*/
