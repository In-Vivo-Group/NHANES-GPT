SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
    WHEN WTSVOC2Y IS NULL THEN NULL 
ELSE SAFE_CAST(WTSVOC2Y AS FLOAT64) 
 END as voc_subsample_weight, 

CASE
    WHEN LBXVBF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBF AS FLOAT64) 
 END as blood_bromoform_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBFLC AS STRING) 
 END as blood_bromoform_comment_code, 

CASE
    WHEN LBXVBM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVBM AS FLOAT64) 
 END as blood_bromodichloromethane_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVBMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVBMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVBMLC AS STRING) 
 END as blood_bromodichloromethane_comment_code, 

CASE
    WHEN LBXVCF IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCF AS FLOAT64) 
 END as blood_chloroform_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCFLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCFLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCFLC AS STRING) 
 END as blood_chloroform_comment_code, 

CASE
    WHEN LBXVCM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVCM AS FLOAT64) 
 END as blood_dibromochloromethane_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVCMLC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVCMLC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVCMLC AS STRING) 
 END as blood_dibromochloromethane_comment_code, 

CASE
    WHEN LBXVME IS NULL THEN NULL 
ELSE SAFE_CAST(LBXVME AS FLOAT64) 
 END as blood_mtbe_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'detectable result' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'below detectable limit' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(LBDVMELC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'detectable result and exceeds the calibrated range of assay' -- categorize numeric values
WHEN LBDVMELC IS NULL THEN NULL 
ELSE SAFE_CAST(LBDVMELC AS STRING) 
 END as blood_mtbe_comment_code, 

CASE
    WHEN LBXNM IS NULL THEN NULL 
ELSE SAFE_CAST(LBXNM AS FLOAT64) 
 END as blood_nitromethane_pg_ml, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ210 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ210 IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ210 AS STRING) 
 END as attached_garage, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ220 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ220 IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ220 AS STRING) 
 END as private_well, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ200A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ200A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ200A AS STRING) 
 END as store_paints_or_fuels_inside_home, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ230A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ230A AS STRING) 
 END as toilet_bowl_deodorizers, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ230B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ230B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ230B AS STRING) 
 END as moth_balls_or_crystals, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ240A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ240A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ240A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ240A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ240A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ240A AS STRING) 
 END as pump_gas_into_a_car_or_motor_vehicle, 

CASE
    WHEN VTQ240B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ240B AS FLOAT64) 
 END as how_long_ago_did_you_pump_gas, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ250A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ250A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ250A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ250A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ250A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ250A AS STRING) 
 END as spend_time_at_swimming_pool, 

CASE
    WHEN VTQ250B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ250B AS FLOAT64) 
 END as how_long_ago_at_swimming_pool, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ260A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ260A AS STRING) 
 END as visit_a_dry_cleaning_shop, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ260B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ260B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ260B AS STRING) 
 END as spend_10_minutes_near_cigarette_smoke, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ270A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ270A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ270A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ270A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ270A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ270A AS STRING) 
 END as take_a_hot_shower, 

CASE
    WHEN VTQ270B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ270B AS FLOAT64) 
 END as how_long_since_hot_shower, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280A AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280A IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280A AS STRING) 
 END as breathe_fumes_from_paints, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280B AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280B IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280B AS STRING) 
 END as breathe_fumes_from_degreasing_cleaners, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280C AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280C IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280C AS STRING) 
 END as breathe_fumes_from_diesel_fuel, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280D AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280D IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280D AS STRING) 
 END as breathe_fumes_from_paint_thinner, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280E AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280E IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280E AS STRING) 
 END as breathe_fumes_from_drycleaning_fluid, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280F AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280F IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280F AS STRING) 
 END as breathe_fumes_from_fingernail_polish, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280G AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280G IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280G AS STRING) 
 END as breathe_fumes_from_glue, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(VTQ280H AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN VTQ280H IS NULL THEN NULL 
ELSE SAFE_CAST(VTQ280H AS STRING) 
 END as breathe_fumes_from_varnish, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_volatile_organic_compounds_trihalomethanes_mtbe_nitromethane_blood_laboratory') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/VOCMWB_E.htm
*/