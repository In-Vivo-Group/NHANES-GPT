SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTANA2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTANA2YR AS FLOAT64) 
 END as two_year_ssana_subsample_weights, 

CASE
    WHEN SSCYT IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYT AS FLOAT64) 
 END as total_cytoplasm_intensity, 

CASE
    WHEN SSNUC IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUC AS FLOAT64) 
 END as total_nucleus_intensity, 

CASE
    WHEN SSTOMIC IS NULL THEN NULL 
ELSE SAFE_CAST(SSTOMIC AS FLOAT64) 
 END as total_mitotic_intensity, 

CASE
    WHEN SSMSI IS NULL THEN NULL 
ELSE SAFE_CAST(SSMSI AS FLOAT64) 
 END as maxim_signal_intensity, 

CASE
    WHEN REPLACE(SSTSUM,'.0','') = 'titer summary' THEN 'Value was recorded' -- categorize string values 
WHEN SSTSUM IS NULL THEN NULL 
ELSE SAFE_CAST(SSTSUM AS STRING) 
 END as titer_summary, 

CASE
    WHEN SSNUCPOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCPOS AS FLOAT64) 
 END as nucleus_nucleolar_positive, 

CASE
    WHEN SSNUCSIG IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCSIG AS FLOAT64) 
 END as nucleus_nucleolar_signal, 

CASE
    WHEN SSNUHOMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUHOMP AS FLOAT64) 
 END as nucleus_homogenous_positive, 

CASE
    WHEN SSNUHOMS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUHOMS AS FLOAT64) 
 END as nucleus_homogenous_signal, 

CASE
    WHEN SSNDFSPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNDFSPS AS FLOAT64) 
 END as nucleus_dense_fine_speckles_positive, 

CASE
    WHEN SSNDSPSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSNDSPSG AS FLOAT64) 
 END as nucleus_dense_fine_speckles_signal, 

CASE
    WHEN SSNFSPOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFSPOS AS FLOAT64) 
 END as nucleus_fine_speckles_positive, 

CASE
    WHEN SSNFSPSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSNFSPSG AS FLOAT64) 
 END as nucleus_fine_speckles_signal, 

CASE
    WHEN SSNUCSPP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCSPP AS FLOAT64) 
 END as nucleus_coarse_speckles_positive, 

CASE
    WHEN SSNUCSPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCSPS AS FLOAT64) 
 END as nucleus_coarse_speckles_signal, 

CASE
    WHEN SSNUCENP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCENP AS FLOAT64) 
 END as nucleus_centromere_positive, 

CASE
    WHEN SSNUCENS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUCENS AS FLOAT64) 
 END as nuclear_centomere_signal, 

CASE
    WHEN SSNUDOTP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUDOTP AS FLOAT64) 
 END as nuclear_dots_positive, 

CASE
    WHEN SSNUDOTS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUDOTS AS FLOAT64) 
 END as nuclear_dots_signal, 

CASE
    WHEN SSNUENVP IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUENVP AS FLOAT64) 
 END as nuclear_envelope_positive, 

CASE
    WHEN SSNUENVS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNUENVS AS FLOAT64) 
 END as nuclear_envelope_signal, 

CASE
    WHEN SSNPSPOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPSPOS AS FLOAT64) 
 END as nucleus_pcna_like_positive, 

CASE
    WHEN SSNPSSIG IS NULL THEN NULL 
ELSE SAFE_CAST(SSNPSSIG AS FLOAT64) 
 END as nucleus_pcnp_like_signal, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCENPOS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSCENPOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCENPOS AS STRING) 
 END as nucleus_cen_f_like_positive, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(SSCENSIG AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN '0' -- categorize numeric values
WHEN SSCENSIG IS NULL THEN NULL 
ELSE SAFE_CAST(SSCENSIG AS STRING) 
 END as nucleus_cec_f_like_signal, 

CASE
    WHEN SSCYHOMP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYHOMP AS FLOAT64) 
 END as cytoplasm_homogeneous_positive, 

CASE
    WHEN SSCYHOMS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYHOMS AS FLOAT64) 
 END as cytoplasm_homogeneous_signal, 

CASE
    WHEN SSCYSPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYSPS AS FLOAT64) 
 END as cytoplasm_speckled_positive, 

CASE
    WHEN SSCYTSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYTSG AS FLOAT64) 
 END as cytoplasm_speckled_signal, 

CASE
    WHEN SSCYMIP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYMIP AS FLOAT64) 
 END as cytoplasm_mitochondria_like_positive, 

CASE
    WHEN SSCYMIS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYMIS AS FLOAT64) 
 END as cytoplasm_mitochondria_like_signal, 

CASE
    WHEN SSCYGOP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGOP AS FLOAT64) 
 END as cytoplasm_golgi_complex_positive, 

CASE
    WHEN SSCYGOS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGOS AS FLOAT64) 
 END as cytoplasm_golgi_complex_signal, 

CASE
    WHEN SSCYGWP IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGWP AS FLOAT64) 
 END as cytoplasm_gw_body_positive, 

CASE
    WHEN SSCYGWS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYGWS AS FLOAT64) 
 END as cytoplasm_gw_body_signal, 

CASE
    WHEN SSCYFLPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYFLPS AS FLOAT64) 
 END as cytoplasm_cytofilament_positive, 

CASE
    WHEN SSCYFLSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYFLSG AS FLOAT64) 
 END as cytoplasm_cytofilament_signal, 

CASE
    WHEN SSCYRRPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYRRPS AS FLOAT64) 
 END as cytoplasm_rods_rings_positive, 

CASE
    WHEN SSCYRRSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSCYRRSG AS FLOAT64) 
 END as cytoplasm_rods_rings_signal, 

CASE
    WHEN SSMTCNPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTCNPS AS FLOAT64) 
 END as mitotic_centrosome_positive, 

CASE
    WHEN SSMTCNSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTCNSG AS FLOAT64) 
 END as mitotic_centrosome_signal, 

CASE
    WHEN SSMISFPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISFPS AS FLOAT64) 
 END as mitotic_spindle_fibers_positive, 

CASE
    WHEN SSMISFSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSMISFSG AS FLOAT64) 
 END as mitotic_spindle_fibers_signal, 

CASE
    WHEN SSMTNMPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTNMPS AS FLOAT64) 
 END as mitotic_numa_positive, 

CASE
    WHEN SSMTNMSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTNMSG AS FLOAT64) 
 END as mitotic_numa_signal, 

CASE
    WHEN SSMTBRPS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTBRPS AS FLOAT64) 
 END as mitotic_intracellular_bridge_positive, 

CASE
    WHEN SSMTBRSG IS NULL THEN NULL 
ELSE SAFE_CAST(SSMTBRSG AS FLOAT64) 
 END as mitotic_intracellular_bridge_signal, 

CASE
    WHEN SSMICHP IS NULL THEN NULL 
ELSE SAFE_CAST(SSMICHP AS FLOAT64) 
 END as mitotic_chromosomes_positive, 

CASE
    WHEN SSMICHS IS NULL THEN NULL 
ELSE SAFE_CAST(SSMICHS AS FLOAT64) 
 END as mitotic_chromosomes_signal, 

CASE
    WHEN WTANA6YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTANA6YR AS FLOAT64) 
 END as six_year_ssana_subsample_weights, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_autoantibodies_immunofluorescence_analyses_surplus_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SSANA2_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/SSANA2_A.htm
*/
