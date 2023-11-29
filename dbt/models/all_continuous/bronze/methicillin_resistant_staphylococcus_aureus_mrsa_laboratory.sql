SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMS1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMS1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN LBXMS1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMS1 AS STRING) 
 END as s_aureus_present_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXM1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXM1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN LBXM1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXM1 AS STRING) 
 END as mrsa_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMT1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMT1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMT1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMT1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMT1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMT1 AS STRING) 
 END as tetracycline_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMZ1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMZ1 AS STRING) 
 END as trimethoprim_sulfamethoxazole_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMC1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMC1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMC1 AS STRING) 
 END as clindamycin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXME1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXME1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXME1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXME1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXME1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXME1 AS STRING) 
 END as erythromycin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMP1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMP1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMP1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMP1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMP1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMP1 AS STRING) 
 END as penicillin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMV1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMV1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMV1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMV1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMV1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMV1 AS STRING) 
 END as vancomycin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMO1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMO1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMO1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMO1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMO1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMO1 AS STRING) 
 END as oxacillin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMG1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMG1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMG1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMG1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMG1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMG1 AS STRING) 
 END as gentamicin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXML1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXML1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXML1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXML1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXML1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXML1 AS STRING) 
 END as levofloxacin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMR1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMR1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMR1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMR1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMR1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMR1 AS STRING) 
 END as rifampin_1, 

CASE
    WHEN REPLACE(LBAMMT1,'.0','') = 'Molecular type 1' THEN 'Value was recorded' -- categorize string values 
WHEN LBAMMT1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBAMMT1 AS STRING) 
 END as molecular_type_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBL1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBL1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXBL1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No result' -- categorize numeric values
WHEN LBXBL1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBL1 AS STRING) 
 END as b_lactamase_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'No inducible resistance detected' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Inducible resistance detected' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No result' -- categorize numeric values
WHEN LBXCD1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCD1 AS STRING) 
 END as clinda_induction_d_test_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXCH1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXCH1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCH1 AS STRING) 
 END as chloramphenicol_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDX1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDX1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDX1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDX1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXDX1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDX1 AS STRING) 
 END as doxycycline_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Nonsusceptible' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXDY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No result' -- categorize numeric values
WHEN LBXDY1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDY1 AS STRING) 
 END as daptomycin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Non susceptible' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXLZ1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'No result' -- categorize numeric values
WHEN LBXLZ1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLZ1 AS STRING) 
 END as linezolid_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXQD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXQD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXQD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXQD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXQD1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXQD1 AS STRING) 
 END as quinupristin_dalfopristin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMS2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMS2 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN LBXMS2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMS2 AS STRING) 
 END as s_aureus_present_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMT2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMT2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMT2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMT2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMT2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMT2 AS STRING) 
 END as tetracyline_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMZ2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMZ2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMZ2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMZ2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMZ2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMZ2 AS STRING) 
 END as trimethoprim_sulfamethoxazole_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMC2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMC2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMC2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMC2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMC2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMC2 AS STRING) 
 END as clindamycin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXME2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXME2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXME2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXME2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXME2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXME2 AS STRING) 
 END as erythromycin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMP2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMP2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMP2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMP2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMP2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMP2 AS STRING) 
 END as penicillin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMV2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMV2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMV2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMV2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMV2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMV2 AS STRING) 
 END as vancomycin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMO2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMO2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMO2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMO2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMO2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMO2 AS STRING) 
 END as oxacillin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMG2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMG2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMG2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMG2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMG2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMG2 AS STRING) 
 END as gentamicin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXML2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXML2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXML2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXML2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXML2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXML2 AS STRING) 
 END as levofloxacin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMR2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMR2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMR2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMR2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMR2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMR2 AS STRING) 
 END as rifampin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXBL2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Negative' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXBL2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Positive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXBL2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'No result' -- categorize string values 
WHEN LBXBL2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXBL2 AS STRING) 
 END as b_lactamase, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCD2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'No inducible resistance detected' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCD2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Inducible resistance detected' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCD2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'No result' -- categorize string values 
WHEN LBXCD2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCD2 AS STRING) 
 END as clinda_induction_d, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCH2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCH2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCH2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXCH2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXCH2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXCH2 AS STRING) 
 END as chloramphenicol, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDX2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDX2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDX2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDX2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXDX2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDX2 AS STRING) 
 END as doxycycline, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDY2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDY2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nonsusceptible' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXDY2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'No result' -- categorize string values 
WHEN LBXDY2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDY2 AS STRING) 
 END as daptomycin, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXLZ2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXLZ2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Nonsusceptible' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXLZ2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'No result' -- categorize string values 
WHEN LBXLZ2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXLZ2 AS STRING) 
 END as linezolid, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXQD2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXQD2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXQD2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXQD2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXQD2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXQD2 AS STRING) 
 END as quinupristin_dalfopristin, 

CASE
    WHEN LBAMMT2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBAMMT2 AS FLOAT64) 
 END as molecular_type_2, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETA AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETA IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETA AS STRING) 
 END as enterotoxin_a, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETB AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETB IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETB AS STRING) 
 END as enterotoxin_b, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETC AS STRING) 
 END as enterotoxin_c, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETD AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETD IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETD AS STRING) 
 END as enterotoxin_d, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETE IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETE AS STRING) 
 END as enterotoxin_e, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXETH AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXETH IS NULL THEN NULL 
ELSE SAFE_CAST(LBXETH AS STRING) 
 END as enterotoxin_h, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTSS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXTSS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXTSS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXTSS AS STRING) 
 END as toxic_shock_syndrome_toxin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXPVL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Positive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXPVL AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Negative' -- categorize numeric values
WHEN LBXPVL IS NULL THEN NULL 
ELSE SAFE_CAST(LBXPVL AS STRING) 
 END as panton_valentine_leukocidin, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Type I' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Type II' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Type III' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Type IV-No Subtype' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Type Iva' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Type Ivb' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Type Ivc' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN 'Not Typable' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXSCC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'No data' -- categorize numeric values
WHEN LBXSCC IS NULL THEN NULL 
ELSE SAFE_CAST(LBXSCC AS STRING) 
 END as sccmec_type, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMI1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMI1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMI1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMI1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMI1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMI1 AS STRING) 
 END as imipenem_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMF1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMF1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMF1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMF1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMF1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMF1 AS STRING) 
 END as cefazolin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMD1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMD1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMD1 AS STRING) 
 END as ciprofloxacin_1, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sensitive' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Resistant' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Intermediate' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBXMY1 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'No Result' -- categorize numeric values
WHEN LBXMY1 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMY1 AS STRING) 
 END as amoxicillin_k_clavulanate_1, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMI2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMI2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMI2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMI2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMI2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMI2 AS STRING) 
 END as imipenem_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMF2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMF2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMF2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMF2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMF2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMF2 AS STRING) 
 END as cefazolin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMD2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMD2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMD2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMD2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMD2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMD2 AS STRING) 
 END as ciprofloxacin_2, 

CASE
    WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMY2 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Sensitive' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMY2 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'Resistant' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMY2 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'Intermediate' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(LBXMY2 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'No Result' -- categorize string values 
WHEN LBXMY2 IS NULL THEN NULL 
ELSE SAFE_CAST(LBXMY2 AS STRING) 
 END as amoxicillin_k_clavulanate_2, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_methicillin_resistant_staphylococcus_aureus_mrsa_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/L35_C.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/L35_B.htm
*/
