SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTAL2YR IS NULL THEN NULL 
ELSE SAFE_CAST(WTAL2YR AS FLOAT64) 
 END as dust_allergen_subsample_2_year_weight, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AADEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Complete' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Partial' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADEXSTS AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Not done' -- categorize numeric values
WHEN AADEXSTS IS NULL THEN NULL 
ELSE SAFE_CAST(AADEXSTS AS STRING) 
 END as status_of_dust_allergen_data, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Collected' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Not collected' -- categorize numeric values
WHEN AAXBDST IS NULL THEN NULL 
ELSE SAFE_CAST(AAXBDST AS STRING) 
 END as bed_sample_status, 

CASE
    WHEN AADBDSP IS NULL THEN NULL 
ELSE SAFE_CAST(AADBDSP AS FLOAT64) 
 END as bed_space_vacuumed_square_inches, 

CASE
    WHEN AADBDTIM IS NULL THEN NULL 
ELSE SAFE_CAST(AADBDTIM AS FLOAT64) 
 END as bed_vacuum_time_seconds, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Mattress bed or sleeper sofa' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Crib' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Sofa or cot' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Floor' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Bunk bed' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADBDTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AADBDTYP IS NULL THEN NULL 
ELSE SAFE_CAST(AADBDTYP AS STRING) 
 END as type_of_bed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDSUR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Sheet' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDSUR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Mattress pad or cover' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDSUR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Bare mattress' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDSUR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Blanket, bedspread, or comforter' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDSUR AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AAXBDSUR IS NULL THEN NULL 
ELSE SAFE_CAST(AAXBDSUR AS STRING) 
 END as bed_surface_vacuumed, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDMAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDMAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDMAT AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AAXBDMAT IS NULL THEN NULL 
ELSE SAFE_CAST(AAXBDMAT AS STRING) 
 END as impermeable_mattress_cover, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDPLW AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDPLW AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDPLW AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Pillow not present on bed' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXBDPLW AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AAXBDPLW IS NULL THEN NULL 
ELSE SAFE_CAST(AAXBDPLW AS STRING) 
 END as impermeable_pillow_cover, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Collected' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Not collected' -- categorize numeric values
WHEN AAXFLST IS NULL THEN NULL 
ELSE SAFE_CAST(AAXFLST AS STRING) 
 END as floor_sample_status, 

CASE
    WHEN AADFLSP IS NULL THEN NULL 
ELSE SAFE_CAST(AADFLSP AS FLOAT64) 
 END as floor_space_vacuumed_square_inches, 

CASE
    WHEN AADFLTIM IS NULL THEN NULL 
ELSE SAFE_CAST(AADFLTIM AS FLOAT64) 
 END as floor_vacuum_time_seconds, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Low pile carpet or rug' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Medium to high pile carpet or rug' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Smooth surface' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Combination of carpet and smooth surface' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXFLTYP AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AAXFLTYP IS NULL THEN NULL 
ELSE SAFE_CAST(AAXFLTYP AS STRING) 
 END as type_of_floor_covering, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXRMDES AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Bedroom with a doorway' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXRMDES AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'Bedroom without a doorway' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXRMDES AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Shared area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AAXRMDES AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN AAXRMDES IS NULL THEN NULL 
ELSE SAFE_CAST(AAXRMDES AS STRING) 
 END as room_description, 

CASE
    WHEN AAXRMTMP IS NULL THEN NULL 
ELSE SAFE_CAST(AAXRMTMP AS FLOAT64) 
 END as room_temperature_f, 

CASE
    WHEN AAXRMHUM IS NULL THEN NULL 
ELSE SAFE_CAST(AAXRMHUM AS FLOAT64) 
 END as room_humidity, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(AADMOVE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(AADMOVE AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN AADMOVE IS NULL THEN NULL 
ELSE SAFE_CAST(AADMOVE AS STRING) 
 END as have_you_moved_since_interview, 

CASE
    WHEN LBXDWT IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDWT AS FLOAT64) 
 END as total_dust_weight_mg, 

CASE
    WHEN LBXDWS IS NULL THEN NULL 
ELSE SAFE_CAST(LBXDWS AS FLOAT64) 
 END as sieved_dust_weight_mg, 

CASE
    WHEN DSXAA1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXAA1 AS FLOAT64) 
 END as alt_a_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDAA1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDAA1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDAA1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDAA1LC AS STRING) 
 END as alt_a_1_comment_code, 

CASE
    WHEN DSXAA1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXAA1LD AS FLOAT64) 
 END as alt_a_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXAF1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXAF1 AS FLOAT64) 
 END as aspergillus_fumigatus_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDAF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDAF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDAF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDAF1LC AS STRING) 
 END as aspergillus_fumigatus_comment_code, 

CASE
    WHEN DSXAF1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXAF1LD AS FLOAT64) 
 END as aspergillus_fumigatus_lod_ng_ml, 

CASE
    WHEN DSXBG1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXBG1 AS FLOAT64) 
 END as bla_g_1_result_u_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBG1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBG1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDBG1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBG1LC AS STRING) 
 END as bla_g_1_comment_code, 

CASE
    WHEN DSXBG1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXBG1LD AS FLOAT64) 
 END as bla_g_1_limit_of_detection_u_ml, 

CASE
    WHEN DSXBG2 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXBG2 AS FLOAT64) 
 END as bla_g_2_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBG2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDBG2LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDBG2LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDBG2LC AS STRING) 
 END as bla_g_2_comment_code, 

CASE
    WHEN DSXBG2LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXBG2LD AS FLOAT64) 
 END as bla_g_2_limit_of_detection_ng_ml, 

CASE
    WHEN DSXCF1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXCF1 AS FLOAT64) 
 END as can_f_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDCF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDCF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDCF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDCF1LC AS STRING) 
 END as can_f_1_comment_code, 

CASE
    WHEN DSXCF1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXCF1LD AS FLOAT64) 
 END as can_f_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXDF1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXDF1 AS FLOAT64) 
 END as der_f_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDF1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDDF1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDDF1LC AS STRING) 
 END as der_f_1_comment_code, 

CASE
    WHEN DSXDF1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXDF1LD AS FLOAT64) 
 END as der_f_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXDP1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXDP1 AS FLOAT64) 
 END as der_p_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDDP1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDDP1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDDP1LC AS STRING) 
 END as der_p_1_comment_code, 

CASE
    WHEN DSXDP1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXDP1LD AS FLOAT64) 
 END as der_p_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXFD1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXFD1 AS FLOAT64) 
 END as fel_d_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDFD1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDFD1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDFD1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDFD1LC AS STRING) 
 END as fel_d_1_comment_code, 

CASE
    WHEN DSXFD1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXFD1LD AS FLOAT64) 
 END as fel_d_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXMM1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXMM1 AS FLOAT64) 
 END as mus_m_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMM1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDMM1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDMM1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDMM1LC AS STRING) 
 END as mus_m_1_comment_code, 

CASE
    WHEN DSXMM1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXMM1LD AS FLOAT64) 
 END as mus_m_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXRN1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSXRN1 AS FLOAT64) 
 END as rat_n_1_result_ng_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDRN1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDRN1LC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDRN1LC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDRN1LC AS STRING) 
 END as rat_n_1_comment_code, 

CASE
    WHEN DSXRN1LD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXRN1LD AS FLOAT64) 
 END as rat_n_1_limit_of_detection_ng_ml, 

CASE
    WHEN DSXENX IS NULL THEN NULL 
ELSE SAFE_CAST(DSXENX AS FLOAT64) 
 END as endotoxin_result_eu_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDENXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'At or above the detection limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSDENXLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Below lower detection limit' -- categorize numeric values
WHEN DSDENXLC IS NULL THEN NULL 
ELSE SAFE_CAST(DSDENXLC AS STRING) 
 END as endotoxin_comment_code, 

CASE
    WHEN DSXENXLD IS NULL THEN NULL 
ELSE SAFE_CAST(DSXENXLD AS FLOAT64) 
 END as endotoxin_limit_of_detection_eu_ml, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_allergens_household_dust_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/ALDUST_D.htm
*/