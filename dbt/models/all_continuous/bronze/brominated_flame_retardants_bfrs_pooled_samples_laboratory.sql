SELECT
CASE
    WHEN SAMPLEID IS NULL THEN NULL 
ELSE SAFE_CAST(SAMPLEID AS FLOAT64) 
 END as pool_identification_number, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Mexican American' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Other Hispanic' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic Asian' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH3 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Other Race, Including Multiracial' -- categorize numeric values
WHEN RIDRETH3 IS NULL THEN NULL 
ELSE SAFE_CAST(RIDRETH3 AS STRING) 
 END as race_hispanic_origin, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '12-19 years' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '20-39 years' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '40-59 years' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDAGGRP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '60+ years' -- categorize numeric values
WHEN RIDAGGRP IS NULL THEN NULL 
ELSE SAFE_CAST(RIDAGGRP AS STRING) 
 END as age_group, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RIAGENDR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Male' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIAGENDR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Female' -- categorize numeric values
WHEN RIAGENDR IS NULL THEN NULL 
ELSE SAFE_CAST(RIAGENDR AS STRING) 
 END as gender, 

CASE
    WHEN RIANSMP IS NULL THEN NULL 
ELSE SAFE_CAST(RIANSMP AS FLOAT64) 
 END as number_of_samples_in_a_pool, 

CASE
    WHEN WTBSMSMA IS NULL THEN NULL 
ELSE SAFE_CAST(WTBSMSMA AS FLOAT64) 
 END as sum_of_adjusted_subsample_b_weights, 

CASE
    WHEN LBCBB1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBB1 AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hexabromobiphenyl_pg_g, 

CASE
    WHEN LBCBB1LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBB1LA AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hxbrmbiphl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBB1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBB1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBB1LC AS STRING) 
 END as lab_2_2_4_4_5_5_hexabromobiphenyl_comnt, 

CASE
    WHEN LBCBR1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR1 AS FLOAT64) 
 END as lab_2_2_4_tribromodiphenyl_ether_pg_g, 

CASE
    WHEN LBCBR1LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR1LA AS FLOAT64) 
 END as lab_2_2_4_tribrmobiphl_ether_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR1LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR1LC AS STRING) 
 END as lab_2_2_4_tribromodiphenyl_ether_comment, 

CASE
    WHEN LBCBR11 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR11 AS FLOAT64) 
 END as decabromodiphenyl_ether_pg_g, 

CASE
    WHEN LBCBR11L IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR11L AS FLOAT64) 
 END as decabromodiphenyl_ether_lipid_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR11C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR11C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR11C IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR11C AS STRING) 
 END as decabromodiphenyl_ether_comment, 

CASE
    WHEN LBCBR2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR2 AS FLOAT64) 
 END as lab_2_4_4_tribromodiphenyl_ether_pg_g, 

CASE
    WHEN LBCBR2LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR2LA AS FLOAT64) 
 END as lab_2_4_4_tribrmdphenyl_ethr_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR2LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR2LC AS STRING) 
 END as lab_2_4_4_tribromodiphenyl_ether_comment, 

CASE
    WHEN LBCBR3 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR3 AS FLOAT64) 
 END as lab_2_2_4_4_tetrabromodiphenyl_ethr_pg_g, 

CASE
    WHEN LBCBR3LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR3LA AS FLOAT64) 
 END as lab_2_2_4_4_tebrmdphnyl_ethr_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR3LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR3LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR3LC AS STRING) 
 END as lab_2_2_4_4_tetrabromphenyl_ether_comment, 

CASE
    WHEN LBCBR4 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR4 AS FLOAT64) 
 END as lab_2_2_3_4_4_pentbromodiphenyl_ethr_pg_g, 

CASE
    WHEN LBCBR4LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR4LA AS FLOAT64) 
 END as lab_2_2_3_4_4_pntabromphnyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR4LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR4LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR4LC AS STRING) 
 END as lab_2_2_3_4_4_pentabromphenyl_ether_comt, 

CASE
    WHEN LBCBR5 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR5 AS FLOAT64) 
 END as lab_2_2_4_4_5_pentabromodiphnyl_ethr_pg_g, 

CASE
    WHEN LBCBR5LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR5LA AS FLOAT64) 
 END as lab_2_2_4_4_5_pntabromphenyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR5LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR5LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR5LC AS STRING) 
 END as lab_2_2_4_4_5_pentabromphenyl_ether_comt, 

CASE
    WHEN LBCBR6 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR6 AS FLOAT64) 
 END as lab_2_2_4_4_6_pentabromodiphyl_ether_pg_g, 

CASE
    WHEN LBCBR6LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR6LA AS FLOAT64) 
 END as lab_2_2_4_4_6_pentabromdphyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR6LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR6LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR6LC AS STRING) 
 END as lab_2_2_4_4_6_pentabromdphenyl_ether_comt, 

CASE
    WHEN LBCBR66 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR66 AS FLOAT64) 
 END as lab_2_3_4_4_tetrabromodiphenyl_ether_pg_g, 

CASE
    WHEN LBCBR66L IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR66L AS FLOAT64) 
 END as lab_2_3_4_4_tetrabromodiphyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR66C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR66C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR66C IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR66C AS STRING) 
 END as lab_2_3_4_4_tetrabromodiphenyl_ether_comt, 

CASE
    WHEN LBCBR7 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR7 AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hxbromodiphnyl_ethr_pg_g, 

CASE
    WHEN LBCBR7LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR7LA AS FLOAT64) 
 END as lab_2_2_4_4_5_5_hxbrmphenyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR7LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR7LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR7LC AS STRING) 
 END as lab_2_2_4_4_5_5_hexabromphenyl_ether_comt, 

CASE
    WHEN LBCBR8 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR8 AS FLOAT64) 
 END as lab_2_2_4_4_5_6_hxabromodiphyl_ethr_pg_g, 

CASE
    WHEN LBCBR8LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR8LA AS FLOAT64) 
 END as lab_2_2_4_4_5_6_hxbrmphenyl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR8LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR8LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR8LC AS STRING) 
 END as lab_2_2_4_4_5_6_hexabromphenyl_ether_comt, 

CASE
    WHEN LBCBR9 IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR9 AS FLOAT64) 
 END as lab_2_2_3_4_4_5_6_hptbrodiphyl_ethr_pg_g, 

CASE
    WHEN LBCBR9LA IS NULL THEN NULL 
ELSE SAFE_CAST(LBCBR9LA AS FLOAT64) 
 END as lab_2_2_3_4_4_5_6_hptbrphnl_lpd_adj_ng_g, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDBR9LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN LBDBR9LC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDBR9LC AS STRING) 
 END as lab_2_2_3_4_4_5_6_heptabrophenl_ether_cmt, 

CASE
    WHEN WTSMSMPA IS NULL THEN NULL 
ELSE SAFE_CAST(WTSMSMPA AS FLOAT64) 
 END as sum_of_adjusted_subsample_weights, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Mexican American' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Other Hispanic' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(RIDRETH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Other Race, Including Multiracial' -- categorize numeric values
WHEN RIDRETH1 IS NULL THEN NULL 
ELSE SAFE_CAST(RIDRETH1 AS STRING) 
 END as race_hispanic_origin_RIDRETH1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(ETHNICTY AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic White' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ETHNICTY AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Non-Hispanic Black' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ETHNICTY AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Mexican American' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(ETHNICTY AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Other' -- categorize numeric values
WHEN ETHNICTY IS NULL THEN NULL 
ELSE SAFE_CAST(ETHNICTY AS STRING) 
 END as ethnicity_recode, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_brominated_flame_retardants_bfrs_pooled_samples_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BFRPOL_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BFRPOL_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/BFRPOL_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/BFRPOL_E.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/BFRPOL_D.htm
*/
