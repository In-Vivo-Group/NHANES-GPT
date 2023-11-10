SELECT
SEQN as respondent_sequence_number,
WHEN WTSA2YR IS NOT NULL THEN SAFE_CAST(WTSA2YR AS FLOAT64)WHEN WTSA2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_a_weights,
WHEN URX2MH IS NOT NULL THEN SAFE_CAST(URX2MH AS FLOAT64)WHEN URX2MH IS NULL THEN NULL 
ELSE NULL 
 END as 2_methylhippuric_acid_ng_ml,
CASE
    WHEN URD2MHLC = 0 THEN 'At or above the detection limit' 
WHEN URD2MHLC = 1 THEN 'Below lower detection limit' 
WHEN URD2MHLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_methylhippuric_acid_comment_code,
WHEN URX34M IS NOT NULL THEN SAFE_CAST(URX34M AS FLOAT64)WHEN URX34M IS NULL THEN NULL 
ELSE NULL 
 END as 3_methipurc_acd_4_methipurc_acd_ng_ml,
CASE
    WHEN URD34MLC = 0 THEN 'At or above the detection limit' 
WHEN URD34MLC = 1 THEN 'Below lower detection limit' 
WHEN URD34MLC IS NULL THEN NULL 
ELSE NULL 
 END as 3_methipurc_acd_4_methipurc_acid_comt,
WHEN URXAAM IS NOT NULL THEN SAFE_CAST(URXAAM AS FLOAT64)WHEN URXAAM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_carbamoylethyl_l_cys_ng_ml,
CASE
    WHEN URDAAMLC = 0 THEN 'At or above the detection limit' 
WHEN URDAAMLC = 1 THEN 'Below lower detection limit' 
WHEN URDAAMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_carbamoylethyl_l_cys_comt,
WHEN URXAMC IS NOT NULL THEN SAFE_CAST(URXAMC AS FLOAT64)WHEN URXAMC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_n_methlcarbamoyl_l_cys_ng_ml,
CASE
    WHEN URDAMCLC = 0 THEN 'At or above the detection limit' 
WHEN URDAMCLC = 1 THEN 'Below lower detection limit' 
WHEN URDAMCLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_n_methlcarbamoyl_l_cys_comt,
WHEN URXATC IS NOT NULL THEN SAFE_CAST(URXATC AS FLOAT64)WHEN URXATC IS NULL THEN NULL 
ELSE NULL 
 END as 2_amnothiazolne_4_carbxylic_acid_ng_ml,
CASE
    WHEN URDATCLC = 0 THEN 'At or above the detection limit' 
WHEN URDATCLC = 1 THEN 'Below lower detection limit' 
WHEN URDATCLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_amnothiazolne_4_carbxylic_acid_comt,
WHEN URXBMA IS NOT NULL THEN SAFE_CAST(URXBMA AS FLOAT64)WHEN URXBMA IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_benzyl_l_cysteine_ng_ml,
CASE
    WHEN URDBMALC = 0 THEN 'At or above the detection limit' 
WHEN URDBMALC = 1 THEN 'Below lower detection limit' 
WHEN URDBMALC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_benzyl_l_cysteine_comt,
WHEN URXBPM IS NOT NULL THEN SAFE_CAST(URXBPM AS FLOAT64)WHEN URXBPM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_n_propyl_l_cysteine_ng_ml,
CASE
    WHEN URDBPMLC = 0 THEN 'At or above the detection limit' 
WHEN URDBPMLC = 1 THEN 'Below lower detection limit' 
WHEN URDBPMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_n_propyl_l_cysteine_comt,
WHEN URXCEM IS NOT NULL THEN SAFE_CAST(URXCEM AS FLOAT64)WHEN URXCEM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_carbxyethyl_l_cys_ng_ml,
CASE
    WHEN URDCEMLC = 0 THEN 'At or above the detection limit' 
WHEN URDCEMLC = 1 THEN 'Below lower detection limit' 
WHEN URDCEMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_carbxyethyl_l_cys_comt,
WHEN URXCYHA IS NOT NULL THEN SAFE_CAST(URXCYHA AS FLOAT64)WHEN URXCYHA IS NULL THEN NULL 
ELSE NULL 
 END as cyha_cysteine_ng_ml,
CASE
    WHEN URDCYALC = 0 THEN 'At or above the detection limit' 
WHEN URDCYALC = 1 THEN 'Below lower detection limit' 
WHEN URDCYALC IS NULL THEN NULL 
ELSE NULL 
 END as cyha_cysteine_comment_code,
WHEN URXCYM IS NOT NULL THEN SAFE_CAST(URXCYM AS FLOAT64)WHEN URXCYM IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_ng_ml,
CASE
    WHEN URDCYMLC = 0 THEN 'At or above the detection limit' 
WHEN URDCYMLC = 1 THEN 'Below lower detection limit' 
WHEN URDCYMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_acetyl_s_2_cyanoethyl_l_cyst_comt,
WHEN URXDHB IS NOT NULL THEN SAFE_CAST(URXDHB AS FLOAT64)WHEN URXDHB IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_4_dihidxybutl_l_cys_ng_ml,
CASE
    WHEN URDDHBLC = 0 THEN 'At or above the detection limit' 
WHEN URDDHBLC = 1 THEN 'Below lower detection limit' 
WHEN URDDHBLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_4_dihidxybutl_l_cys_comt,
WHEN URXGAM IS NOT NULL THEN SAFE_CAST(URXGAM AS FLOAT64)WHEN URXGAM IS NULL THEN NULL 
ELSE NULL 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_ng_ml,
CASE
    WHEN URDGAMLC = 0 THEN 'At or above the detection limit' 
WHEN URDGAMLC = 1 THEN 'Below lower detection limit' 
WHEN URDGAMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ac_s_2_carbmo_2_hydxel_l_cys_comt,
WHEN URXHEM IS NOT NULL THEN SAFE_CAST(URXHEM AS FLOAT64)WHEN URXHEM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxyethyl_l_cys_ng_ml,
CASE
    WHEN URDHEMLC = 0 THEN 'At or above the detection limit' 
WHEN URDHEMLC = 1 THEN 'Below lower detection limit' 
WHEN URDHEMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxyethyl_l_cys_comt,
WHEN URXHP2 IS NOT NULL THEN SAFE_CAST(URXHP2 AS FLOAT64)WHEN URXHP2 IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxypropyl_l_cys_ng_ml,
CASE
    WHEN URDHP2LC = 0 THEN 'At or above the detection limit' 
WHEN URDHP2LC = 1 THEN 'Below lower detection limit' 
WHEN URDHP2LC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_2_hydroxypropyl_l_cys_comt,
WHEN URXHPM IS NOT NULL THEN SAFE_CAST(URXHPM AS FLOAT64)WHEN URXHPM IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_hydroxypropyl_l_cys_ng_ml,
CASE
    WHEN URDHPMLC = 0 THEN 'At or above the detection limit' 
WHEN URDHPMLC = 1 THEN 'Below lower detection limit' 
WHEN URDHPMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_3_hydroxypropyl_l_cys_comt,
WHEN URXIPM3 IS NOT NULL THEN SAFE_CAST(URXIPM3 AS FLOAT64)WHEN URXIPM3 IS NULL THEN NULL 
ELSE NULL 
 END as ipm3_cysteine_ng_ml,
CASE
    WHEN URDPM3LC = 0 THEN 'At or above the detection limit' 
WHEN URDPM3LC = 1 THEN 'Below lower detection limit' 
WHEN URDPM3LC IS NULL THEN NULL 
ELSE NULL 
 END as ipm3_cysteine_comment_code,
WHEN URXMAD IS NOT NULL THEN SAFE_CAST(URXMAD AS FLOAT64)WHEN URXMAD IS NULL THEN NULL 
ELSE NULL 
 END as mandelic_acid_ng_ml,
CASE
    WHEN URDMADLC = 0 THEN 'At or above the detection limit' 
WHEN URDMADLC = 1 THEN 'Below lower detection limit' 
WHEN URDMADLC IS NULL THEN NULL 
ELSE NULL 
 END as mandelic_acid_comment_code,
WHEN URXMB3 IS NOT NULL THEN SAFE_CAST(URXMB3 AS FLOAT64)WHEN URXMB3 IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_ng_ml,
CASE
    WHEN URDMB3LC = 0 THEN 'At or above the detection limit' 
WHEN URDMB3LC = 1 THEN 'Below lower detection limit' 
WHEN URDMB3LC IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_4_hydrxy_2_butenyl_l_cys_comt,
WHEN URXPHE IS NOT NULL THEN SAFE_CAST(URXPHE AS FLOAT64)WHEN URXPHE IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_ng_ml,
CASE
    WHEN URDPHELC = 0 THEN 'At or above the detection limit' 
WHEN URDPHELC = 1 THEN 'Below lower detection limit' 
WHEN URDPHELC IS NULL THEN NULL 
ELSE NULL 
 END as n_ace_s_phenl_2_hydxyetl_l_cys_comt,
WHEN URXPHG IS NOT NULL THEN SAFE_CAST(URXPHG AS FLOAT64)WHEN URXPHG IS NULL THEN NULL 
ELSE NULL 
 END as phenylglyoxylic_acid_ng_ml,
CASE
    WHEN URDPHGLC = 0 THEN 'At or above the detection limit' 
WHEN URDPHGLC = 1 THEN 'Below lower detection limit' 
WHEN URDPHGLC IS NULL THEN NULL 
ELSE NULL 
 END as phenylglyoxylic_acid_comment_code,
WHEN URXPMM IS NOT NULL THEN SAFE_CAST(URXPMM AS FLOAT64)WHEN URXPMM IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_ng_ml,
CASE
    WHEN URDPMMLC = 0 THEN 'At or above the detection limit' 
WHEN URDPMMLC = 1 THEN 'Below lower detection limit' 
WHEN URDPMMLC IS NULL THEN NULL 
ELSE NULL 
 END as n_a_s_3_hydrxprpl_1_metl_l_cys_comt,
WHEN URXTTC IS NOT NULL THEN SAFE_CAST(URXTTC AS FLOAT64)WHEN URXTTC IS NULL THEN NULL 
ELSE NULL 
 END as 2_thioxothiazolidine_4_carboxylic_acid,
CASE
    WHEN URDTTCLC = 0 THEN 'At or above the detection limit' 
WHEN URDTTCLC = 1 THEN 'Below lower detection limit' 
WHEN URDTTCLC IS NULL THEN NULL 
ELSE NULL 
 END as 2_thoxothazlidne_4_carbxylic_comt,
 FROM {ref('stg_volatile_organic_compound_voc_metabolites_urine_laboratory'})