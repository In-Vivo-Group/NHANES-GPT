SELECT
SEQN as sequence_number, -- could not identify transformation logic 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDLSPST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine scan completed, all vertebra are valid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDLSPST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine scan completed, but one or more vertebrae are invalid' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDLSPST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, pregnancy' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDLSPST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, weight > 450 lbs' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXDLSPST AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'IVA Lateral Spine not scanned, other reason' -- categorize numeric values
WHEN DXDLSPST IS NULL THEN NULL 
ELSE SAFE_CAST(DXDLSPST AS STRING) 
 END as iva_lateral_spine_scan_status, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(0 AS FLOAT64),0) AS INT64) THEN 'Valid data' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Removable or non-removable objects' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Excessive x-ray noise due to morbid obesity' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN 'Insufficient scan area' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN 'Movement' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXT6CC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN 'Other (degenerative diseases, spinal fusion, fractures)' -- categorize numeric values
WHEN DXXT6CC IS NULL THEN NULL 
ELSE SAFE_CAST(DXXT6CC AS STRING) 
 END as t6_fracture_invalidity_code, 

CASE
    WHEN DXXINITX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXINITX AS FLOAT64) 
 END as x_coordinate_used_as_center_point, 

CASE
    WHEN DXXINITY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXINITY AS FLOAT64) 
 END as y_coordinate_used_as_center_point, 

CASE
    WHEN SAFE_CAST(ROUND(SAFE_CAST(DXXANIDX AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '2' -- categorize numeric values
WHEN DXXANIDX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANIDX AS STRING) 
 END as number_of_vertebra, 

CASE
    WHEN REPLACE(DXXLABEL,'.0','') = 'T6' THEN 'T6' -- categorize string values 
WHEN DXXLABEL IS NULL THEN NULL 
ELSE SAFE_CAST(DXXLABEL AS STRING) 
 END as label_of_the_vertebra_t4_to_l4, 

CASE
    WHEN DXXSQSCR IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSQSCR AS FLOAT64) 
 END as genant_sq_score, 

CASE
    WHEN DXXPOSTH IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPOSTH AS FLOAT64) 
 END as posterior_height_of_the_vertebra, 

CASE
    WHEN DXXANTEH IS NULL THEN NULL 
ELSE SAFE_CAST(DXXANTEH AS FLOAT64) 
 END as anterior_height_of_the_vertebra, 

CASE
    WHEN DXXMIDH IS NULL THEN NULL 
ELSE SAFE_CAST(DXXMIDH AS FLOAT64) 
 END as middle_height_of_the_vertebra, 

CASE
    WHEN DXXWDGRT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXWDGRT AS FLOAT64) 
 END as amount_of_wedge, 

CASE
    WHEN DXXBICRT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXBICRT AS FLOAT64) 
 END as amount_of_biconcave, 

CASE
    WHEN DXXCRURT IS NULL THEN NULL 
ELSE SAFE_CAST(DXXCRURT AS FLOAT64) 
 END as amount_of_ucsf_crush, 

CASE
    WHEN DXXWDGDE IS NULL THEN NULL 
ELSE SAFE_CAST(DXXWDGDE AS FLOAT64) 
 END as percentage_of_wedge_deformity, 

CASE
    WHEN DXXBICDE IS NULL THEN NULL 
ELSE SAFE_CAST(DXXBICDE AS FLOAT64) 
 END as percentage_of_biconcave_deformity, 

CASE
    WHEN DXXCRUDE IS NULL THEN NULL 
ELSE SAFE_CAST(DXXCRUDE AS FLOAT64) 
 END as percentage_of_ucsf_crush_deformity, 

CASE
    WHEN DXXSPX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSPX AS FLOAT64) 
 END as x_coordinate_of_superior_posterior_point, 

CASE
    WHEN DXXSPY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSPY AS FLOAT64) 
 END as y_coordinate_of_superior_posterior_point, 

CASE
    WHEN DXXSMX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSMX AS FLOAT64) 
 END as x_coordinate_of_superior_mid_point, 

CASE
    WHEN DXXSMY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSMY AS FLOAT64) 
 END as y_coordinate_of_superior_mid_point, 

CASE
    WHEN DXXSAX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSAX AS FLOAT64) 
 END as x_coordinate_of_superior_anterior_point, 

CASE
    WHEN DXXSAY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXSAY AS FLOAT64) 
 END as y_coordinate_of_superior_anterior_point, 

CASE
    WHEN DXXIAX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIAX AS FLOAT64) 
 END as x_coordinate_of_inferior_anterior_point, 

CASE
    WHEN DXXIAY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIAY AS FLOAT64) 
 END as y_coordinate_of_inferior_anterior_point, 

CASE
    WHEN DXXIMX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIMX AS FLOAT64) 
 END as x_coordinate_of_inferior_mid_point, 

CASE
    WHEN DXXIMY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIMY AS FLOAT64) 
 END as y_coordinate_of_inferior_mid_point, 

CASE
    WHEN DXXIPX IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIPX AS FLOAT64) 
 END as x_coordinate_of_inferior_posterior_point, 

CASE
    WHEN DXXIPY IS NULL THEN NULL 
ELSE SAFE_CAST(DXXIPY AS FLOAT64) 
 END as y_coordinate_of_inferior_posterior_point, 

CASE
    WHEN DXXPT0X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT0X AS FLOAT64) 
 END as x_coordinate_of_first_outline_point, 

CASE
    WHEN DXXPT0Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT0Y AS FLOAT64) 
 END as y_coordinate_of_first_outline_point, 

CASE
    WHEN DXXPT1X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT1X AS FLOAT64) 
 END as x_coordinates_of_outline_points_2, 

CASE
    WHEN DXXPT1Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT1Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_2, 

CASE
    WHEN DXXPT2X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT2X AS FLOAT64) 
 END as x_coordinates_of_outline_points_3, 

CASE
    WHEN DXXPT2Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT2Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_3, 

CASE
    WHEN DXXPT3X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT3X AS FLOAT64) 
 END as x_coordinates_of_outline_points_4, 

CASE
    WHEN DXXPT3Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT3Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_4, 

CASE
    WHEN DXXPT4X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT4X AS FLOAT64) 
 END as x_coordinates_of_outline_points_5, 

CASE
    WHEN DXXPT4Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT4Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_5, 

CASE
    WHEN DXXPT5X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT5X AS FLOAT64) 
 END as x_coordinates_of_outline_points_6, 

CASE
    WHEN DXXPT5Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT5Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_6, 

CASE
    WHEN DXXPT6X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT6X AS FLOAT64) 
 END as x_coordinates_of_outline_points_7, 

CASE
    WHEN DXXPT6Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT6Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_7, 

CASE
    WHEN DXXPT7X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT7X AS FLOAT64) 
 END as x_coordinates_of_outline_points_8, 

CASE
    WHEN DXXPT7Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT7Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_8, 

CASE
    WHEN DXXPT8X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT8X AS FLOAT64) 
 END as x_coordinates_of_outline_points_9, 

CASE
    WHEN DXXPT8Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT8Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_9, 

CASE
    WHEN DXXPT9X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT9X AS FLOAT64) 
 END as x_coordinates_of_outline_points_10, 

CASE
    WHEN DXXPT9Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT9Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_10, 

CASE
    WHEN DXXPT10X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT10X AS FLOAT64) 
 END as x_coordinates_of_outline_points_11, 

CASE
    WHEN DXXPT10Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT10Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_11, 

CASE
    WHEN DXXPT11X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT11X AS FLOAT64) 
 END as x_coordinates_of_outline_points_12, 

CASE
    WHEN DXXPT11Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT11Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_12, 

CASE
    WHEN DXXPT12X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT12X AS FLOAT64) 
 END as x_coordinates_of_outline_points_13, 

CASE
    WHEN DXXPT12Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT12Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_13, 

CASE
    WHEN DXXPT13X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT13X AS FLOAT64) 
 END as x_coordinates_of_outline_points_14, 

CASE
    WHEN DXXPT13Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT13Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_14, 

CASE
    WHEN DXXPT14X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT14X AS FLOAT64) 
 END as x_coordinates_of_outline_points_15, 

CASE
    WHEN DXXPT14Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT14Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_15, 

CASE
    WHEN DXXPT15X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT15X AS FLOAT64) 
 END as x_coordinates_of_outline_points_16, 

CASE
    WHEN DXXPT15Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT15Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_16, 

CASE
    WHEN DXXPT16X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT16X AS FLOAT64) 
 END as x_coordinates_of_outline_points_17, 

CASE
    WHEN DXXPT16Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT16Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_17, 

CASE
    WHEN DXXPT17X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT17X AS FLOAT64) 
 END as x_coordinates_of_outline_points_18, 

CASE
    WHEN DXXPT17Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT17Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_18, 

CASE
    WHEN DXXPT18X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT18X AS FLOAT64) 
 END as x_coordinates_of_outline_points_19, 

CASE
    WHEN DXXPT18Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT18Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_19, 

CASE
    WHEN DXXPT19X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT19X AS FLOAT64) 
 END as x_coordinates_of_outline_points_20, 

CASE
    WHEN DXXPT19Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT19Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_20, 

CASE
    WHEN DXXPT20X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT20X AS FLOAT64) 
 END as x_coordinates_of_outline_points_21, 

CASE
    WHEN DXXPT20Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT20Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_21, 

CASE
    WHEN DXXPT21X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT21X AS FLOAT64) 
 END as x_coordinates_of_outline_points_22, 

CASE
    WHEN DXXPT21Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT21Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_22, 

CASE
    WHEN DXXPT22X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT22X AS FLOAT64) 
 END as x_coordinates_of_outline_points_23, 

CASE
    WHEN DXXPT22Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT22Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_23, 

CASE
    WHEN DXXPT23X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT23X AS FLOAT64) 
 END as x_coordinates_of_outline_points_24, 

CASE
    WHEN DXXPT23Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT23Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_24, 

CASE
    WHEN DXXPT24X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT24X AS FLOAT64) 
 END as x_coordinates_of_outline_points_25, 

CASE
    WHEN DXXPT24Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT24Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_25, 

CASE
    WHEN DXXPT25X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT25X AS FLOAT64) 
 END as x_coordinates_of_outline_points_26, 

CASE
    WHEN DXXPT25Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT25Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_26, 

CASE
    WHEN DXXPT26X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT26X AS FLOAT64) 
 END as x_coordinates_of_outline_points_27, 

CASE
    WHEN DXXPT26Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT26Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_27, 

CASE
    WHEN DXXPT27X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT27X AS FLOAT64) 
 END as x_coordinates_of_outline_points_28, 

CASE
    WHEN DXXPT27Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT27Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_28, 

CASE
    WHEN DXXPT28X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT28X AS FLOAT64) 
 END as x_coordinates_of_outline_points_29, 

CASE
    WHEN DXXPT28Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT28Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_29, 

CASE
    WHEN DXXPT29X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT29X AS FLOAT64) 
 END as x_coordinates_of_outline_points_30, 

CASE
    WHEN DXXPT29Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT29Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_30, 

CASE
    WHEN DXXPT30X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT30X AS FLOAT64) 
 END as x_coordinates_of_outline_points_31, 

CASE
    WHEN DXXPT30Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT30Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_31, 

CASE
    WHEN DXXPT31X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT31X AS FLOAT64) 
 END as x_coordinates_of_outline_points_32, 

CASE
    WHEN DXXPT31Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT31Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_32, 

CASE
    WHEN DXXPT32X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT32X AS FLOAT64) 
 END as x_coordinates_of_outline_points_33, 

CASE
    WHEN DXXPT32Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT32Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_33, 

CASE
    WHEN DXXPT33X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT33X AS FLOAT64) 
 END as x_coordinates_of_outline_points_34, 

CASE
    WHEN DXXPT33Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT33Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_34, 

CASE
    WHEN DXXPT34X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT34X AS FLOAT64) 
 END as x_coordinates_of_outline_points_35, 

CASE
    WHEN DXXPT34Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT34Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_35, 

CASE
    WHEN DXXPT35X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT35X AS FLOAT64) 
 END as x_coordinates_of_outline_points_36, 

CASE
    WHEN DXXPT35Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT35Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_36, 

CASE
    WHEN DXXPT36X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT36X AS FLOAT64) 
 END as x_coordinates_of_outline_points_37, 

CASE
    WHEN DXXPT36Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT36Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_37, 

CASE
    WHEN DXXPT37X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT37X AS FLOAT64) 
 END as x_coordinates_of_outline_points_38, 

CASE
    WHEN DXXPT37Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT37Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_38, 

CASE
    WHEN DXXPT38X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT38X AS FLOAT64) 
 END as x_coordinates_of_outline_points_39, 

CASE
    WHEN DXXPT38Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT38Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_39, 

CASE
    WHEN DXXPT39X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT39X AS FLOAT64) 
 END as x_coordinates_of_outline_points_40, 

CASE
    WHEN DXXPT39Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT39Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_40, 

CASE
    WHEN DXXPT40X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT40X AS FLOAT64) 
 END as x_coordinates_of_outline_points_41, 

CASE
    WHEN DXXPT40Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT40Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_41, 

CASE
    WHEN DXXPT41X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT41X AS FLOAT64) 
 END as x_coordinates_of_outline_points_42, 

CASE
    WHEN DXXPT41Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT41Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_42, 

CASE
    WHEN DXXPT42X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT42X AS FLOAT64) 
 END as x_coordinates_of_outline_points_43, 

CASE
    WHEN DXXPT42Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT42Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_43, 

CASE
    WHEN DXXPT43X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT43X AS FLOAT64) 
 END as x_coordinates_of_outline_points_44, 

CASE
    WHEN DXXPT43Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT43Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_44, 

CASE
    WHEN DXXPT44X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT44X AS FLOAT64) 
 END as x_coordinates_of_outline_points_45, 

CASE
    WHEN DXXPT44Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT44Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_45, 

CASE
    WHEN DXXPT45X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT45X AS FLOAT64) 
 END as x_coordinates_of_outline_points_46, 

CASE
    WHEN DXXPT45Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT45Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_46, 

CASE
    WHEN DXXPT46X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT46X AS FLOAT64) 
 END as x_coordinates_of_outline_points_47, 

CASE
    WHEN DXXPT46Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT46Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_47, 

CASE
    WHEN DXXPT47X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT47X AS FLOAT64) 
 END as x_coordinates_of_outline_points_48, 

CASE
    WHEN DXXPT47Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT47Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_48, 

CASE
    WHEN DXXPT48X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT48X AS FLOAT64) 
 END as x_coordinates_of_outline_points_49, 

CASE
    WHEN DXXPT48Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT48Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_49, 

CASE
    WHEN DXXPT49X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT49X AS FLOAT64) 
 END as x_coordinates_of_outline_points_50, 

CASE
    WHEN DXXPT49Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT49Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_50, 

CASE
    WHEN DXXPT50X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT50X AS FLOAT64) 
 END as x_coordinates_of_outline_points_51, 

CASE
    WHEN DXXPT50Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT50Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_51, 

CASE
    WHEN DXXPT51X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT51X AS FLOAT64) 
 END as x_coordinates_of_outline_points_52, 

CASE
    WHEN DXXPT51Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT51Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_52, 

CASE
    WHEN DXXPT52X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT52X AS FLOAT64) 
 END as x_coordinates_of_outline_points_53, 

CASE
    WHEN DXXPT52Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT52Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_53, 

CASE
    WHEN DXXPT53X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT53X AS FLOAT64) 
 END as x_coordinates_of_outline_points_54, 

CASE
    WHEN DXXPT53Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT53Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_54, 

CASE
    WHEN DXXPT54X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT54X AS FLOAT64) 
 END as x_coordinates_of_outline_points_55, 

CASE
    WHEN DXXPT54Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT54Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_55, 

CASE
    WHEN DXXPT55X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT55X AS FLOAT64) 
 END as x_coordinates_of_outline_points_56, 

CASE
    WHEN DXXPT55Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT55Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_56, 

CASE
    WHEN DXXPT56X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT56X AS FLOAT64) 
 END as x_coordinates_of_outline_points_57, 

CASE
    WHEN DXXPT56Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT56Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_57, 

CASE
    WHEN DXXPT57X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT57X AS FLOAT64) 
 END as x_coordinates_of_outline_points_58, 

CASE
    WHEN DXXPT57Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT57Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_58, 

CASE
    WHEN DXXPT58X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT58X AS FLOAT64) 
 END as x_coordinates_of_outline_points_59, 

CASE
    WHEN DXXPT58Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT58Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_59, 

CASE
    WHEN DXXPT59X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT59X AS FLOAT64) 
 END as x_coordinates_of_outline_points_60, 

CASE
    WHEN DXXPT59Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT59Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_60, 

CASE
    WHEN DXXPT60X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT60X AS FLOAT64) 
 END as x_coordinates_of_outline_points_61, 

CASE
    WHEN DXXPT60Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT60Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_61, 

CASE
    WHEN DXXPT61X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT61X AS FLOAT64) 
 END as x_coordinates_of_outline_points_62, 

CASE
    WHEN DXXPT61Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT61Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_62, 

CASE
    WHEN DXXPT62X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT62X AS FLOAT64) 
 END as x_coordinates_of_outline_points_63, 

CASE
    WHEN DXXPT62Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT62Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_63, 

CASE
    WHEN DXXPT63X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT63X AS FLOAT64) 
 END as x_coordinates_of_outline_points_64, 

CASE
    WHEN DXXPT63Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT63Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_64, 

CASE
    WHEN DXXPT64X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT64X AS FLOAT64) 
 END as x_coordinates_of_outline_points_65, 

CASE
    WHEN DXXPT64Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT64Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_65, 

CASE
    WHEN DXXPT65X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT65X AS FLOAT64) 
 END as x_coordinates_of_outline_points_66, 

CASE
    WHEN DXXPT65Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT65Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_66, 

CASE
    WHEN DXXPT66X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT66X AS FLOAT64) 
 END as x_coordinates_of_outline_points_67, 

CASE
    WHEN DXXPT66Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT66Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_67, 

CASE
    WHEN DXXPT67X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT67X AS FLOAT64) 
 END as x_coordinates_of_outline_points_68, 

CASE
    WHEN DXXPT67Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT67Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_68, 

CASE
    WHEN DXXPT68X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT68X AS FLOAT64) 
 END as x_coordinates_of_outline_points_69, 

CASE
    WHEN DXXPT68Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT68Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_69, 

CASE
    WHEN DXXPT69X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT69X AS FLOAT64) 
 END as x_coordinates_of_outline_points_70, 

CASE
    WHEN DXXPT69Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT69Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_70, 

CASE
    WHEN DXXPT70X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT70X AS FLOAT64) 
 END as x_coordinates_of_outline_points_71, 

CASE
    WHEN DXXPT70Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT70Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_71, 

CASE
    WHEN DXXPT71X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT71X AS FLOAT64) 
 END as x_coordinates_of_outline_points_72, 

CASE
    WHEN DXXPT71Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT71Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_72, 

CASE
    WHEN DXXPT72X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT72X AS FLOAT64) 
 END as x_coordinates_of_outline_points_73, 

CASE
    WHEN DXXPT72Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT72Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_73, 

CASE
    WHEN DXXPT73X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT73X AS FLOAT64) 
 END as x_coordinates_of_outline_points_74, 

CASE
    WHEN DXXPT73Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT73Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_74, 

CASE
    WHEN DXXPT74X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT74X AS FLOAT64) 
 END as x_coordinates_of_outline_points_75, 

CASE
    WHEN DXXPT74Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT74Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_75, 

CASE
    WHEN DXXPT75X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT75X AS FLOAT64) 
 END as x_coordinates_of_outline_points_76, 

CASE
    WHEN DXXPT75Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT75Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_76, 

CASE
    WHEN DXXPT76X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT76X AS FLOAT64) 
 END as x_coordinates_of_outline_points_77, 

CASE
    WHEN DXXPT76Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT76Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_77, 

CASE
    WHEN DXXPT77X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT77X AS FLOAT64) 
 END as x_coordinates_of_outline_points_78, 

CASE
    WHEN DXXPT77Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT77Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_78, 

CASE
    WHEN DXXPT78X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT78X AS FLOAT64) 
 END as x_coordinates_of_outline_points_79, 

CASE
    WHEN DXXPT78Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT78Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_79, 

CASE
    WHEN DXXPT79X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT79X AS FLOAT64) 
 END as x_coordinates_of_outline_points_80, 

CASE
    WHEN DXXPT79Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT79Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_80, 

CASE
    WHEN DXXPT80X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT80X AS FLOAT64) 
 END as x_coordinates_of_outline_points_81, 

CASE
    WHEN DXXPT80Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT80Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_81, 

CASE
    WHEN DXXPT81X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT81X AS FLOAT64) 
 END as x_coordinates_of_outline_points_82, 

CASE
    WHEN DXXPT81Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT81Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_82, 

CASE
    WHEN DXXPT82X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT82X AS FLOAT64) 
 END as x_coordinates_of_outline_points_83, 

CASE
    WHEN DXXPT82Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT82Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_83, 

CASE
    WHEN DXXPT83X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT83X AS FLOAT64) 
 END as x_coordinates_of_outline_points_84, 

CASE
    WHEN DXXPT83Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT83Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_84, 

CASE
    WHEN DXXPT84X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT84X AS FLOAT64) 
 END as x_coordinates_of_outline_points_85, 

CASE
    WHEN DXXPT84Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT84Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_85, 

CASE
    WHEN DXXPT85X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT85X AS FLOAT64) 
 END as x_coordinates_of_outline_points_86, 

CASE
    WHEN DXXPT85Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT85Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_86, 

CASE
    WHEN DXXPT86X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT86X AS FLOAT64) 
 END as x_coordinates_of_outline_points_87, 

CASE
    WHEN DXXPT86Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT86Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_87, 

CASE
    WHEN DXXPT87X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT87X AS FLOAT64) 
 END as x_coordinates_of_outline_points_88, 

CASE
    WHEN DXXPT87Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT87Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_88, 

CASE
    WHEN DXXPT88X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT88X AS FLOAT64) 
 END as x_coordinates_of_outline_points_89, 

CASE
    WHEN DXXPT88Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT88Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_89, 

CASE
    WHEN DXXPT89X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT89X AS FLOAT64) 
 END as x_coordinates_of_outline_points_90, 

CASE
    WHEN DXXPT89Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT89Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_90, 

CASE
    WHEN DXXPT90X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT90X AS FLOAT64) 
 END as x_coordinates_of_outline_points_91, 

CASE
    WHEN DXXPT90Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT90Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_91, 

CASE
    WHEN DXXPT91X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT91X AS FLOAT64) 
 END as x_coordinates_of_outline_points_92, 

CASE
    WHEN DXXPT91Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT91Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_92, 

CASE
    WHEN DXXPT92X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT92X AS FLOAT64) 
 END as x_coordinates_of_outline_points_93, 

CASE
    WHEN DXXPT92Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT92Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_93, 

CASE
    WHEN DXXPT93X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT93X AS FLOAT64) 
 END as x_coordinates_of_outline_points_94, 

CASE
    WHEN DXXPT93Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT93Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_94, 

CASE
    WHEN DXXPT94X IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT94X AS FLOAT64) 
 END as x_coordinates_of_outline_points_95, 

CASE
    WHEN DXXPT94Y IS NULL THEN NULL 
ELSE SAFE_CAST(DXXPT94Y AS FLOAT64) 
 END as y_coordinates_of_outline_points_95, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_dual_energy_x_ray_absorptiometry_t6_vertebrae_morphology_examination') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DXXT6_H.htm
*/
