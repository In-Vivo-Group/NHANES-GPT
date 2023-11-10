SELECT
SEQN as respondent_sequence_number,
WHEN WTSB2YR IS NOT NULL THEN WTSB2YRWHEN WTSB2YR IS NULL THEN NULL 
ELSE NULL 
 END as subsample_b_weights,
WHEN LBXPFDE IS NOT NULL THEN LBXPFDEWHEN LBXPFDE IS NULL THEN NULL 
ELSE NULL 
 END as perfluorodecanoic_acid_ng_ml,
CASE
        WHEN LBDPFDEL = 0 THEN 'At or above the detection limit' 
WHEN LBDPFDEL = 1 THEN 'Below lower detection limit' 
WHEN LBDPFDEL IS NULL THEN NULL 
ELSE NULL 
 END as perfluorodecanoic_acid_comment_code,
WHEN LBXPFHS IS NOT NULL THEN LBXPFHSWHEN LBXPFHS IS NULL THEN NULL 
ELSE NULL 
 END as perfluorohexane_sulfonic_acid_ng_ml,
CASE
        WHEN LBDPFHSL = 0 THEN 'At or above the detection limit' 
WHEN LBDPFHSL = 1 THEN 'Below lower detection limit' 
WHEN LBDPFHSL IS NULL THEN NULL 
ELSE NULL 
 END as perfluorohexane_sulfonic_acid_comt_code,
WHEN LBXMPAH IS NOT NULL THEN LBXMPAHWHEN LBXMPAH IS NULL THEN NULL 
ELSE NULL 
 END as 2_n_methyl_pfosa_acetic_acid_ng_ml,
CASE
        WHEN LBDMPAHL = 0 THEN 'At or above the detection limit' 
WHEN LBDMPAHL = 1 THEN 'Below lower detection limit' 
WHEN LBDMPAHL IS NULL THEN NULL 
ELSE NULL 
 END as 2_n_methyl_pfosa_acetic_acid_comt_code,
WHEN LBXPFNA IS NOT NULL THEN LBXPFNAWHEN LBXPFNA IS NULL THEN NULL 
ELSE NULL 
 END as perfluorononanoic_acid_ng_ml,
CASE
        WHEN LBDPFNAL = 0 THEN 'At or above the detection limit' 
WHEN LBDPFNAL = 1 THEN 'Below lower detection limit' 
WHEN LBDPFNAL IS NULL THEN NULL 
ELSE NULL 
 END as perfluorononanoic_acid_comment_code,
WHEN LBXPFUA IS NOT NULL THEN LBXPFUAWHEN LBXPFUA IS NULL THEN NULL 
ELSE NULL 
 END as perfluoroundecanoic_acid_ng_ml,
CASE
        WHEN LBDPFUAL = 0 THEN 'At or above the detection limit' 
WHEN LBDPFUAL = 1 THEN 'Below lower detection limit' 
WHEN LBDPFUAL IS NULL THEN NULL 
ELSE NULL 
 END as perfluoroundecanoic_acid_comment_code,
WHEN LBXNFOA IS NOT NULL THEN LBXNFOAWHEN LBXNFOA IS NULL THEN NULL 
ELSE NULL 
 END as n_perfluorooctanoic_acid_ng_ml,
CASE
        WHEN LBDNFOAL = 0 THEN 'At or above the detection limit' 
WHEN LBDNFOAL = 1 THEN 'Below lower detection limit' 
WHEN LBDNFOAL IS NULL THEN NULL 
ELSE NULL 
 END as n_perfluorooctanoic_acid_comment_code,
WHEN LBXBFOA IS NOT NULL THEN LBXBFOAWHEN LBXBFOA IS NULL THEN NULL 
ELSE NULL 
 END as br_perfluorooctanoic_acid_iso_ng_ml,
CASE
        WHEN LBDBFOAL = 0 THEN 'At or above the detection limit' 
WHEN LBDBFOAL = 1 THEN 'Below lower detection limit' 
WHEN LBDBFOAL IS NULL THEN NULL 
ELSE NULL 
 END as br_perfluorooctanoic_acid_iso_comt_code,
WHEN LBXNFOS IS NOT NULL THEN LBXNFOSWHEN LBXNFOS IS NULL THEN NULL 
ELSE NULL 
 END as n_perfluorooctane_sulfonic_acid_ng_ml,
CASE
        WHEN LBDNFOSL = 0 THEN 'At or above the detection limit' 
WHEN LBDNFOSL = 1 THEN 'Below lower detection limit' 
WHEN LBDNFOSL IS NULL THEN NULL 
ELSE NULL 
 END as n_perfluorooctane_sulfonic_comt_code,
WHEN LBXMFOS IS NOT NULL THEN LBXMFOSWHEN LBXMFOS IS NULL THEN NULL 
ELSE NULL 
 END as sm_pfos_ng_ml,
CASE
        WHEN LBDMFOSL = 0 THEN 'At or above the detection limit' 
WHEN LBDMFOSL = 1 THEN 'Below lower detection limit' 
WHEN LBDMFOSL IS NULL THEN NULL 
ELSE NULL 
 END as sm_pfos_comment_code,
 FROM {{ ref('stg_perfluoroalkyl_and_polyfluoroalkyl_substances_laboratory') }}