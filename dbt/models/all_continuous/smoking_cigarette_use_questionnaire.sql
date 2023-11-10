SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN SMQ020 = 1 THEN 'Yes' 
WHEN SMQ020 = 2 THEN 'No' 
WHEN SMQ020 = 7 THEN 'Refused' 
WHEN SMQ020 = 9 THEN 'Don\'t know' 
WHEN SMQ020 IS NULL THEN NULL 
ELSE NULL 
 END as smoked_at_least_100_cigarettes_in_life,
WHEN SMD030 IS NOT NULL THEN SMD030WHEN SMD030 IS NULL THEN NULL 
ELSE NULL 
 END as age_started_smoking_cigarettes_regularly,
CASE
        WHEN SMQ040 = 1 THEN 'Every day' 
WHEN SMQ040 = 2 THEN 'Some days' 
WHEN SMQ040 = 3 THEN 'Not at all' 
WHEN SMQ040 = 7 THEN 'Refused' 
WHEN SMQ040 = 9 THEN 'Don\'t know' 
WHEN SMQ040 IS NULL THEN NULL 
ELSE NULL 
 END as do_you_now_smoke_cigarettes,
WHEN SMQ050Q IS NOT NULL THEN SMQ050QWHEN SMQ050Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_since_quit_smoking_cigarettes,
CASE
        WHEN SMQ050U = 1 THEN 'Days' 
WHEN SMQ050U = 2 THEN 'Weeks' 
WHEN SMQ050U = 3 THEN 'Months' 
WHEN SMQ050U = 4 THEN 'Years' 
WHEN SMQ050U = 7 THEN 'Refused' 
WHEN SMQ050U = 9 THEN 'Don\'t know' 
WHEN SMQ050U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_day_week_month_year,
WHEN SMD057 IS NOT NULL THEN SMD057WHEN SMD057 IS NULL THEN NULL 
ELSE NULL 
 END as cigarettes_smoked_per_day_when_quit,
CASE
        WHEN SMQ078 = '1' THEN 'Within 5 minutes' 
WHEN SMQ078 = '2' THEN 'From 6 to 30 minutes' 
WHEN SMQ078 = '3' THEN 'From more than 30 minutes to one hour' 
WHEN SMQ078 = '4' THEN 'From more than 1 hour to 2 hours' 
WHEN SMQ078 = '5' THEN 'From more than 2 hours to 3 hours' 
WHEN SMQ078 = '6' THEN 'From more than 3 hours to 4 hours' 
WHEN SMQ078 = '7' THEN 'More than 4 hours' 
WHEN SMQ078 = '77' THEN 'Refused' 
WHEN SMQ078 = '99' THEN 'Don\'t know' 
WHEN SMQ078 IS NULL THEN NULL 
ELSE NULL 
 END as how_soon_after_waking_do_you_smoke,
WHEN SMD641 IS NOT NULL THEN SMD641WHEN SMD641 IS NULL THEN NULL 
ELSE NULL 
 END as days_smoked_cigs_during_past_30_days,
WHEN SMD650 IS NOT NULL THEN SMD650WHEN SMD650 IS NULL THEN NULL 
ELSE NULL 
 END as avg_cigarettes_day_during_past_30_days,
CASE
        WHEN SMD093 = 1 THEN 'Yes' 
WHEN SMD093 = 2 THEN 'No' 
WHEN SMD093 = 3 THEN 'No usual brand' 
WHEN SMD093 = 4 THEN 'Rolls own' 
WHEN SMD093 = 7 THEN 'Refused' 
WHEN SMD093 = 9 THEN 'Don\'t know' 
WHEN SMD093 IS NULL THEN NULL 
ELSE NULL 
 END as may_i_please_see_the_pack_of_cigarettes,
CASE
        WHEN SMDUPCA = 'Cig 12-digit Universal Product Code-UPC' THEN 'Value was recorded' 
WHEN SMDUPCA = '* NO MATCH *' THEN 'No match' 
WHEN SMDUPCA IS NULL THEN NULL 
ELSE NULL 
 END as cig_12_digit_universal_product_code_upc,
CASE
        WHEN SMD100BR = '305'S' THEN '305\'S' 
WHEN SMD100BR = '305'S BLUE' THEN '305\'S BLUE' 
WHEN SMD100BR = '305'S GOLD' THEN '305\'S GOLD' 
WHEN SMD100BR = 'BASIC' THEN 'BASIC' 
WHEN SMD100BR = 'BENSON & HEDGES' THEN 'BENSON & HEDGES' 
WHEN SMD100BR = 'BENSON & HEDGES GOLD' THEN 'BENSON & HEDGES GOLD' 
WHEN SMD100BR = 'BRONSON' THEN 'BRONSON' 
WHEN SMD100BR = 'CAMEL' THEN 'CAMEL' 
WHEN SMD100BR = 'CAMEL 99'S' THEN 'CAMEL 99\'S' 
WHEN SMD100BR = 'CAMEL 99'S GOLD' THEN 'CAMEL 99\'S GOLD' 
WHEN SMD100BR = 'CAMEL BLUE' THEN 'CAMEL BLUE' 
WHEN SMD100BR = 'CAMEL CRUSH' THEN 'CAMEL CRUSH' 
WHEN SMD100BR = 'CAMEL CRUSH FRESH' THEN 'CAMEL CRUSH FRESH' 
WHEN SMD100BR = 'CAMEL CRUSH SILVER' THEN 'CAMEL CRUSH SILVER' 
WHEN SMD100BR = 'CAMEL PLATINUM' THEN 'CAMEL PLATINUM' 
WHEN SMD100BR = 'CAMEL TURKISH ROYAL' THEN 'CAMEL TURKISH ROYAL' 
WHEN SMD100BR = 'CAPRI INDIGO' THEN 'CAPRI INDIGO' 
WHEN SMD100BR = 'CAPRI MAGENTA' THEN 'CAPRI MAGENTA' 
WHEN SMD100BR = 'CARNIVAL GREEN' THEN 'CARNIVAL GREEN' 
WHEN SMD100BR = 'CLASSIC' THEN 'CLASSIC' 
WHEN SMD100BR = 'CLASSIC RED' THEN 'CLASSIC RED' 
WHEN SMD100BR = 'COMMONWEALTH' THEN 'COMMONWEALTH' 
WHEN SMD100BR = 'CRAVEN A' THEN 'CRAVEN A' 
WHEN SMD100BR = 'DECADE' THEN 'DECADE' 
WHEN SMD100BR = 'DECADE GOLD' THEN 'DECADE GOLD' 
WHEN SMD100BR = 'DORAL' THEN 'DORAL' 
WHEN SMD100BR = 'DORAL GOLD' THEN 'DORAL GOLD' 
WHEN SMD100BR = 'DORAL RED' THEN 'DORAL RED' 
WHEN SMD100BR = 'EAGLE 20'S' THEN 'EAGLE 20\'S' 
WHEN SMD100BR = 'EAGLE 20'S GOLD' THEN 'EAGLE 20\'S GOLD' 
WHEN SMD100BR = 'EAGLE 20'S RED' THEN 'EAGLE 20\'S RED' 
WHEN SMD100BR = 'EDGEFIELD' THEN 'EDGEFIELD' 
WHEN SMD100BR = 'EIGHT' THEN 'EIGHT' 
WHEN SMD100BR = 'FLAVOR DELUXE' THEN 'FLAVOR DELUXE' 
WHEN SMD100BR = 'GOLDEN BAY RED' THEN 'GOLDEN BAY RED' 
WHEN SMD100BR = 'HERON' THEN 'HERON' 
WHEN SMD100BR = 'KING MOUNTAIN GOLD' THEN 'KING MOUNTAIN GOLD' 
WHEN SMD100BR = 'KOOL' THEN 'KOOL' 
WHEN SMD100BR = 'KOOL SUPER LONGS' THEN 'KOOL SUPER LONGS' 
WHEN SMD100BR = 'L & M' THEN 'L & M' 
WHEN SMD100BR = 'L & M BLUE' THEN 'L & M BLUE' 
WHEN SMD100BR = 'L & M RED' THEN 'L & M RED' 
WHEN SMD100BR = 'LIGGETT SELECT SILVER' THEN 'LIGGETT SELECT SILVER' 
WHEN SMD100BR = 'MARLBORO' THEN 'MARLBORO' 
WHEN SMD100BR = 'MARLBORO 100'S' THEN 'MARLBORO 100\'S' 
WHEN SMD100BR = 'MARLBORO 25'S' THEN 'MARLBORO 25\'S' 
WHEN SMD100BR = 'MARLBORO BLACK' THEN 'MARLBORO BLACK' 
WHEN SMD100BR = 'MARLBORO BLEND NO. 27' THEN 'MARLBORO BLEND NO. 27' 
WHEN SMD100BR = 'MARLBORO BLUE' THEN 'MARLBORO BLUE' 
WHEN SMD100BR = 'MARLBORO EDGE' THEN 'MARLBORO EDGE' 
WHEN SMD100BR = 'MARLBORO EDGE BLACK' THEN 'MARLBORO EDGE BLACK' 
WHEN SMD100BR = 'MARLBORO EIGHTY-THREES' THEN 'MARLBORO EIGHTY-THREES' 
WHEN SMD100BR = 'MARLBORO GOLD' THEN 'MARLBORO GOLD' 
WHEN SMD100BR = 'MARLBORO GREEN' THEN 'MARLBORO GREEN' 
WHEN SMD100BR = 'MARLBORO MIDNIGHT BLACK' THEN 'MARLBORO MIDNIGHT BLACK' 
WHEN SMD100BR = 'MARLBORO NXT BLACK' THEN 'MARLBORO NXT BLACK' 
WHEN SMD100BR = 'MARLBORO NXT GREEN' THEN 'MARLBORO NXT GREEN' 
WHEN SMD100BR = 'MARLBORO RED' THEN 'MARLBORO RED' 
WHEN SMD100BR = 'MARLBORO SILVER' THEN 'MARLBORO SILVER' 
WHEN SMD100BR = 'MARLBORO SKYLINE' THEN 'MARLBORO SKYLINE' 
WHEN SMD100BR = 'MAVERICK' THEN 'MAVERICK' 
WHEN SMD100BR = 'MAVERICK GOLD' THEN 'MAVERICK GOLD' 
WHEN SMD100BR = 'MAVERICK RED' THEN 'MAVERICK RED' 
WHEN SMD100BR = 'MERIT BLUE' THEN 'MERIT BLUE' 
WHEN SMD100BR = 'MISTY GREEN' THEN 'MISTY GREEN' 
WHEN SMD100BR = 'MONTEGO' THEN 'MONTEGO' 
WHEN SMD100BR = 'NAT SHERMAN NATURALS' THEN 'NAT SHERMAN NATURALS' 
WHEN SMD100BR = 'NATURAL AMERICAN SPIRIT' THEN 'NATURAL AMERICAN SPIRIT' 
WHEN SMD100BR = 'NATURAL BLEND' THEN 'NATURAL BLEND' 
WHEN SMD100BR = 'NEWPORT' THEN 'NEWPORT' 
WHEN SMD100BR = 'NEWPORT BLUE' THEN 'NEWPORT BLUE' 
WHEN SMD100BR = 'NEWPORT GOLD' THEN 'NEWPORT GOLD' 
WHEN SMD100BR = 'OPAL' THEN 'OPAL' 
WHEN SMD100BR = 'PALL MALL' THEN 'PALL MALL' 
WHEN SMD100BR = 'PALL MALL BLUE' THEN 'PALL MALL BLUE' 
WHEN SMD100BR = 'PALL MALL ORANGE' THEN 'PALL MALL ORANGE' 
WHEN SMD100BR = 'PALL MALL RED' THEN 'PALL MALL RED' 
WHEN SMD100BR = 'PALL MALL WHITE' THEN 'PALL MALL WHITE' 
WHEN SMD100BR = 'PARLIAMENT' THEN 'PARLIAMENT' 
WHEN SMD100BR = 'PLAYERS CANADIAN' THEN 'PLAYERS CANADIAN' 
WHEN SMD100BR = 'PYRAMID GOLD' THEN 'PYRAMID GOLD' 
WHEN SMD100BR = 'PYRAMID RED' THEN 'PYRAMID RED' 
WHEN SMD100BR = 'QUALITY DELUXE' THEN 'QUALITY DELUXE' 
WHEN SMD100BR = 'SALEM' THEN 'SALEM' 
WHEN SMD100BR = 'SALEM BLACK' THEN 'SALEM BLACK' 
WHEN SMD100BR = 'SALEM GOLD' THEN 'SALEM GOLD' 
WHEN SMD100BR = 'SANDIA' THEN 'SANDIA' 
WHEN SMD100BR = 'SENECA' THEN 'SENECA' 
WHEN SMD100BR = 'SENECA BLUE' THEN 'SENECA BLUE' 
WHEN SMD100BR = 'SHERIFF' THEN 'SHERIFF' 
WHEN SMD100BR = 'SHERIFF BLUE' THEN 'SHERIFF BLUE' 
WHEN SMD100BR = 'SHERMAN'S MCD' THEN 'SHERMAN\'S MCD' 
WHEN SMD100BR = 'SHIELD SILVER' THEN 'SHIELD SILVER' 
WHEN SMD100BR = 'SILVER CLOUD RED' THEN 'SILVER CLOUD RED' 
WHEN SMD100BR = 'SMOKE 1' THEN 'SMOKE 1' 
WHEN SMD100BR = 'SMOKIN JOES PURPLE' THEN 'SMOKIN JOES PURPLE' 
WHEN SMD100BR = 'SONOMA' THEN 'SONOMA' 
WHEN SMD100BR = 'SPORT RED' THEN 'SPORT RED' 
WHEN SMD100BR = 'TIMELESS TIME' THEN 'TIMELESS TIME' 
WHEN SMD100BR = 'TIMELESS TIME RED' THEN 'TIMELESS TIME RED' 
WHEN SMD100BR = 'TRAFFIC' THEN 'TRAFFIC' 
WHEN SMD100BR = 'USA' THEN 'USA' 
WHEN SMD100BR = 'USA BLUE' THEN 'USA BLUE' 
WHEN SMD100BR = 'USA GOLD' THEN 'USA GOLD' 
WHEN SMD100BR = 'USA GOLD RED' THEN 'USA GOLD RED' 
WHEN SMD100BR = 'VIRGINIA SLIMS' THEN 'VIRGINIA SLIMS' 
WHEN SMD100BR = 'VIRGINIA SLIMS GOLD' THEN 'VIRGINIA SLIMS GOLD' 
WHEN SMD100BR = 'VIRGINIA SLIMS SUPERSLIMS' THEN 'VIRGINIA SLIMS SUPERSLIMS' 
WHEN SMD100BR = 'WAVE' THEN 'WAVE' 
WHEN SMD100BR = 'WAVE GREEN' THEN 'WAVE GREEN' 
WHEN SMD100BR = 'WILD HORSE GOLD' THEN 'WILD HORSE GOLD' 
WHEN SMD100BR = 'WINGS' THEN 'WINGS' 
WHEN SMD100BR = 'WINGS GOLD' THEN 'WINGS GOLD' 
WHEN SMD100BR = 'WINGS RED' THEN 'WINGS RED' 
WHEN SMD100BR = 'WINSTON' THEN 'WINSTON' 
WHEN SMD100BR = 'WINSTON RED' THEN 'WINSTON RED' 
WHEN SMD100BR = 'XIONGSHI' THEN 'XIONGSHI' 
WHEN SMD100BR = '* OTHER BRAND *' THEN 'OTHER BRAND' 
WHEN SMD100BR IS NULL THEN NULL 
ELSE NULL 
 END as cigarette_brand_sub_brand,
CASE
        WHEN SMD100FL = 0 THEN 'Non-filter' 
WHEN SMD100FL = 1 THEN 'Filter' 
WHEN SMD100FL IS NULL THEN NULL 
ELSE NULL 
 END as cigarette_filter_type,
CASE
        WHEN SMD100MN = 0 THEN 'Non-menthol' 
WHEN SMD100MN = 1 THEN 'Menthol' 
WHEN SMD100MN IS NULL THEN NULL 
ELSE NULL 
 END as cigarette_menthol_indicator,
CASE
        WHEN SMD100LN = 1 THEN 'Regular (68-72 mm)' 
WHEN SMD100LN = 2 THEN 'King (79-88 mm)' 
WHEN SMD100LN = 3 THEN 'Long (94-101 mm)' 
WHEN SMD100LN = 4 THEN 'Ultra long (110-121 mm)' 
WHEN SMD100LN IS NULL THEN NULL 
ELSE NULL 
 END as cigarette_length,
WHEN SMD100TR IS NOT NULL THEN SMD100TRWHEN SMD100TR IS NULL THEN NULL 
ELSE NULL 
 END as ftc_tar_content,
WHEN SMD100NI IS NOT NULL THEN SMD100NIWHEN SMD100NI IS NULL THEN NULL 
ELSE NULL 
 END as ftc_nicotine_content,
WHEN SMD100CO IS NOT NULL THEN SMD100COWHEN SMD100CO IS NULL THEN NULL 
ELSE NULL 
 END as ftc_carbon_monoxide_content,
CASE
        WHEN SMQ621 = '1' THEN 'I have never smoked, not even a puff' 
WHEN SMQ621 = '2' THEN '1 or more puffs but never a whole cigarette' 
WHEN SMQ621 = '3' THEN '1 cigarette' 
WHEN SMQ621 = '4' THEN '2 to 5 cigarettes' 
WHEN SMQ621 = '5' THEN '6 to 15 cigarettes' 
WHEN SMQ621 = '6' THEN '16 to 25 cigarettes' 
WHEN SMQ621 = '7' THEN '26 to 99 cigarettes' 
WHEN SMQ621 = '8' THEN '100 or more cigarettes' 
WHEN SMQ621 = '77' THEN 'Refused' 
WHEN SMQ621 = '99' THEN 'Don\'t know' 
WHEN SMQ621 IS NULL THEN NULL 
ELSE NULL 
 END as cigarettes_smoked_in_entire_life,
WHEN SMD630 IS NOT NULL THEN SMD630WHEN SMD630 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_smoked_whole_cigarette,
CASE
        WHEN SMQ661 = '1' THEN 'Marlboro' 
WHEN SMQ661 = '2' THEN 'Camel' 
WHEN SMQ661 = '3' THEN 'Newport' 
WHEN SMQ661 = '8' THEN 'Other brand' 
WHEN SMQ661 = '9' THEN 'No usual brand' 
WHEN SMQ661 = '10' THEN 'Hand-rolled cigarettes' 
WHEN SMQ661 = '77' THEN 'Refused' 
WHEN SMQ661 = '99' THEN 'Don\'t know' 
WHEN SMQ661 IS NULL THEN NULL 
ELSE NULL 
 END as brand_of_cigarettes_smoked_past_30_days,
CASE
        WHEN SMQ665A = '1' THEN 'MARLBORO RED' 
WHEN SMQ665A = '2' THEN 'MARLBORO RED 83S' 
WHEN SMQ665A = '3' THEN 'MARLBORO GOLD' 
WHEN SMQ665A = '4' THEN 'MARLBORO GOLD MENTHOL' 
WHEN SMQ665A = '5' THEN 'MARLBORO SILVER' 
WHEN SMQ665A = '6' THEN 'MARLBORO BLACK' 
WHEN SMQ665A = '7' THEN 'MARLBORO MENTHOL' 
WHEN SMQ665A = '8' THEN 'OTHER MARLBORO' 
WHEN SMQ665A = '77' THEN 'Refused' 
WHEN SMQ665A = '99' THEN 'Don\'t know' 
WHEN SMQ665A IS NULL THEN NULL 
ELSE NULL 
 END as marlboro_variety,
CASE
        WHEN SMQ665B = '1' THEN 'CAMEL' 
WHEN SMQ665B = '2' THEN 'CAMEL BLUE' 
WHEN SMQ665B = '3' THEN 'CAMEL CRUSH' 
WHEN SMQ665B = '4' THEN 'CAMEL CRUSH BOLD' 
WHEN SMQ665B = '5' THEN 'CAMEL MENTHOL' 
WHEN SMQ665B = '6' THEN 'CAMEL MENTHOL SILVER' 
WHEN SMQ665B = '7' THEN 'OTHER CAMEL' 
WHEN SMQ665B = '77' THEN 'Refused' 
WHEN SMQ665B = '99' THEN 'Don\'t know' 
WHEN SMQ665B IS NULL THEN NULL 
ELSE NULL 
 END as camel_variety,
CASE
        WHEN SMQ665C = '1' THEN 'NEWPORT' 
WHEN SMQ665C = '2' THEN 'NEWPORT MENTHOL GOLD' 
WHEN SMQ665C = '3' THEN 'OTHER NEWPORT' 
WHEN SMQ665C = '77' THEN 'Refused' 
WHEN SMQ665C = '99' THEN 'Don\'t know' 
WHEN SMQ665C IS NULL THEN NULL 
ELSE NULL 
 END as newport_variety,
CASE
        WHEN SMQ665D = '1' THEN 'BASIC' 
WHEN SMQ665D = '2' THEN 'DORAL RED 100S' 
WHEN SMQ665D = '3' THEN 'DORAL MENTHOL GOLD BOX 100S' 
WHEN SMQ665D = '4' THEN 'GPC' 
WHEN SMQ665D = '5' THEN 'GPC MENTHOL' 
WHEN SMQ665D = '6' THEN 'KOOL BLUE MENTHOL 100S' 
WHEN SMQ665D = '7' THEN 'KOOL TRUE MENTHOL' 
WHEN SMQ665D = '8' THEN 'VIRGINIA SLIMS' 
WHEN SMQ665D = '9' THEN 'OTHER BRAND' 
WHEN SMQ665D = '77' THEN 'Refused' 
WHEN SMQ665D = '99' THEN 'Don\'t know' 
WHEN SMQ665D IS NULL THEN NULL 
ELSE NULL 
 END as other_brand,
CASE
        WHEN SMQ670 = 1 THEN 'Yes' 
WHEN SMQ670 = 2 THEN 'No' 
WHEN SMQ670 = 7 THEN 'Refused' 
WHEN SMQ670 = 9 THEN 'Don\'t know' 
WHEN SMQ670 IS NULL THEN NULL 
ELSE NULL 
 END as tried_to_quit_smoking,
WHEN SMQ848 IS NOT NULL THEN SAFE_CAST(SMQ848 AS FLOAT64)WHEN SMQ848 IS NULL THEN NULL 
ELSE NULL 
 END as times_stopped_smoking_cigarettes,
WHEN SMQ852Q IS NOT NULL THEN SAFE_CAST(SMQ852Q AS FLOAT64)WHEN SMQ852Q IS NULL THEN NULL 
ELSE NULL 
 END as how_long_were_you_able_to_stop_smoking,
CASE
        WHEN SMQ852U = '1' THEN 'Days' 
WHEN SMQ852U = '2' THEN 'Weeks' 
WHEN SMQ852U = '3' THEN 'Months' 
WHEN SMQ852U = '7' THEN 'Refused' 
WHEN SMQ852U = '9' THEN 'Don\'t know' 
WHEN SMQ852U IS NULL THEN NULL 
ELSE NULL 
 END as unit_of_measure_day_week_month_year,
CASE
        WHEN SMQ890 = '1' THEN 'Yes' 
WHEN SMQ890 = '2' THEN 'No' 
WHEN SMQ890 = '7' THEN 'Refused' 
WHEN SMQ890 = '9' THEN 'Don\'t know' 
WHEN SMQ890 IS NULL THEN NULL 
ELSE NULL 
 END as ever_smoked_a_cigar_even_1_time,
WHEN SMQ895 IS NOT NULL THEN SAFE_CAST(SMQ895 AS FLOAT64)WHEN SMQ895 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_days_smoked_a_cigar,
CASE
        WHEN SMQ900 = '1' THEN 'Yes' 
WHEN SMQ900 = '2' THEN 'No' 
WHEN SMQ900 = '7' THEN 'Refused' 
WHEN SMQ900 = '9' THEN 'Don\'t know' 
WHEN SMQ900 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_an_e_cigarette,
WHEN SMQ905 IS NOT NULL THEN SAFE_CAST(SMQ905 AS FLOAT64)WHEN SMQ905 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_days_used_an_e_cigarette,
CASE
        WHEN SMQ910 = '1' THEN 'Yes' 
WHEN SMQ910 = '2' THEN 'No' 
WHEN SMQ910 = '7' THEN 'Refused' 
WHEN SMQ910 = '9' THEN 'Don\'t know' 
WHEN SMQ910 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_smokeless_tobacco,
WHEN SMQ915 IS NOT NULL THEN SAFE_CAST(SMQ915 AS FLOAT64)WHEN SMQ915 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_days_used_smokeless_tobacco,
CASE
        WHEN SMAQUEX2 = 1 THEN 'Home Interview (18+ Yrs)' 
WHEN SMAQUEX2 = 2 THEN 'ACASI (12 - 17 Yrs)' 
WHEN SMAQUEX2 IS NULL THEN NULL 
ELSE NULL 
 END as questionnaire_mode_flag,
 FROM {{ ref('stg_smoking_cigarette_use_questionnaire') }}