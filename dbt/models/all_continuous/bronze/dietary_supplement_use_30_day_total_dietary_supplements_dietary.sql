SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN DSDCOUNT IS NULL THEN NULL 
ELSE SAFE_CAST(DSDCOUNT AS FLOAT64) 
 END as total_of_dietary_supplements_taken, 

CASE
    WHEN DSDANCNT IS NULL THEN NULL 
ELSE SAFE_CAST(DSDANCNT AS FLOAT64) 
 END as total_of_antacids_taken, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSD010 IS NULL THEN NULL 
ELSE SAFE_CAST(DSD010 AS STRING) 
 END as any_dietary_supplements_taken, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DSD010AN AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN DSD010AN IS NULL THEN NULL 
ELSE SAFE_CAST(DSD010AN AS STRING) 
 END as any_antacids_taken, 

CASE
    WHEN DSQTKCAL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTKCAL AS FLOAT64) 
 END as energy_kcal, 

CASE
    WHEN DSQTPROT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTPROT AS FLOAT64) 
 END as protein_gm, 

CASE
    WHEN DSQTCARB IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCARB AS FLOAT64) 
 END as carbohydrate_gm, 

CASE
    WHEN DSQTSUGR IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTSUGR AS FLOAT64) 
 END as total_sugars_gm, 

CASE
    WHEN DSQTFIBE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTFIBE AS FLOAT64) 
 END as dietary_fiber_gm, 

CASE
    WHEN DSQTTFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTTFAT AS FLOAT64) 
 END as total_fat_gm, 

CASE
    WHEN DSQTSFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTSFAT AS FLOAT64) 
 END as total_saturated_fatty_acids_gm, 

CASE
    WHEN DSQTMFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTMFAT AS FLOAT64) 
 END as total_monounsaturated_fatty_acids_gm, 

CASE
    WHEN DSQTPFAT IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTPFAT AS FLOAT64) 
 END as total_polyunsaturated_fatty_acids_gm, 

CASE
    WHEN DSQTCHOL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCHOL AS FLOAT64) 
 END as cholesterol_mg, 

CASE
    WHEN DSQTLYCO IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTLYCO AS FLOAT64) 
 END as lycopene_mcg, 

CASE
    WHEN DSQTLZ IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTLZ AS FLOAT64) 
 END as lutein_zeaxanthin_mcg, 

CASE
    WHEN DSQTVB1 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVB1 AS FLOAT64) 
 END as thiamin_vitamin_b1_mg, 

CASE
    WHEN DSQTVB2 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVB2 AS FLOAT64) 
 END as riboflavin_vitamin_b2_mg, 

CASE
    WHEN DSQTNIAC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTNIAC AS FLOAT64) 
 END as niacin_mg, 

CASE
    WHEN DSQTVB6 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVB6 AS FLOAT64) 
 END as vitamin_b6_mg, 

CASE
    WHEN DSQTFA IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTFA AS FLOAT64) 
 END as folic_acid_mcg, 

CASE
    WHEN DSQTFDFE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTFDFE AS FLOAT64) 
 END as folate_dfe_mcg, 

CASE
    WHEN DSQTCHL IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCHL AS FLOAT64) 
 END as total_choline_mg, 

CASE
    WHEN DSQTVB12 IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVB12 AS FLOAT64) 
 END as vitamin_b12_mcg, 

CASE
    WHEN DSQTVC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVC AS FLOAT64) 
 END as vitamin_c_mg, 

CASE
    WHEN DSQTVK IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVK AS FLOAT64) 
 END as vitamin_k_mcg, 

CASE
    WHEN DSQTVD IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTVD AS FLOAT64) 
 END as vitamin_d_d2_d3_mcg, 

CASE
    WHEN DSQTCALC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCALC AS FLOAT64) 
 END as calcium_mg, 

CASE
    WHEN DSQTPHOS IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTPHOS AS FLOAT64) 
 END as phosphorus_mg, 

CASE
    WHEN DSQTMAGN IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTMAGN AS FLOAT64) 
 END as magnesium_mg, 

CASE
    WHEN DSQTIRON IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTIRON AS FLOAT64) 
 END as iron_mg, 

CASE
    WHEN DSQTZINC IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTZINC AS FLOAT64) 
 END as zinc_mg, 

CASE
    WHEN DSQTCOPP IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCOPP AS FLOAT64) 
 END as copper_mg, 

CASE
    WHEN DSQTSODI IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTSODI AS FLOAT64) 
 END as sodium_mg, 

CASE
    WHEN DSQTPOTA IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTPOTA AS FLOAT64) 
 END as potassium_mg, 

CASE
    WHEN DSQTSELE IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTSELE AS FLOAT64) 
 END as selenium_mcg, 

CASE
    WHEN DSQTCAFF IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTCAFF AS FLOAT64) 
 END as caffeine_mg, 

CASE
    WHEN DSQTIODI IS NOT NULL THEN SAFE_CAST(DSQTIODI AS FLOAT64) -- correct wrong data types for numerical data 
WHEN DSQTIODI IS NULL THEN NULL 
ELSE SAFE_CAST(DSQTIODI AS FLOAT64) 
 END as iodine_mcg, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dietary_supplement_use_30_day_total_dietary_supplements_dietary') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DSQTOT.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DSQTOT_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DSQTOT_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DSQTOT_E.htm
*/
