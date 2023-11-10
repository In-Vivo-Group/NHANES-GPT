SELECT
SEQN as respondent_sequence_number,
WHEN WTDRD1 IS NOT NULL THEN WTDRD1WHEN WTDRD1 IS NULL THEN NULL 
ELSE NULL 
 END as dietary_day_one_sample_weight,
WHEN WTDR2D IS NOT NULL THEN WTDR2DWHEN WTDR2D IS NULL THEN NULL 
ELSE NULL 
 END as dietary_two_day_sample_weight,
CASE
        WHEN DR1DRSTZ = 1 THEN 'Reliable and met the minimum criteria' 
WHEN DR1DRSTZ = 2 THEN 'Not reliable or not met the minimum criteria' 
WHEN DR1DRSTZ = 4 THEN 'Reported consuming breast-milk' 
WHEN DR1DRSTZ = 5 THEN 'Not done' 
WHEN DR1DRSTZ IS NULL THEN NULL 
ELSE NULL 
 END as dietary_recall_status,
WHEN DR1EXMER IS NOT NULL THEN DR1EXMERWHEN DR1EXMER IS NULL THEN NULL 
ELSE NULL 
 END as interviewer_id_code,
CASE
        WHEN DRABF = 1 THEN 'Yes' 
WHEN DRABF = 2 THEN 'No' 
WHEN DRABF IS NULL THEN NULL 
ELSE NULL 
 END as breast_fed_infant_either_day,
CASE
        WHEN DRDINT = 1 THEN 'Day 1 only' 
WHEN DRDINT = 2 THEN 'Day 1 and day 2' 
WHEN DRDINT IS NULL THEN NULL 
ELSE NULL 
 END as number_of_days_of_intake,
WHEN DR1DBIH IS NOT NULL THEN SAFE_CAST(DR1DBIH AS FLOAT64)WHEN DR1DBIH IS NULL THEN NULL 
ELSE NULL 
 END as of_days_b_w_intake_and_hh_interview,
CASE
        WHEN DR1DAY = 1 THEN 'Sunday' 
WHEN DR1DAY = 2 THEN 'Monday' 
WHEN DR1DAY = 3 THEN 'Tuesday' 
WHEN DR1DAY = 4 THEN 'Wednesday' 
WHEN DR1DAY = 5 THEN 'Thursday' 
WHEN DR1DAY = 6 THEN 'Friday' 
WHEN DR1DAY = 7 THEN 'Saturday' 
WHEN DR1DAY IS NULL THEN NULL 
ELSE NULL 
 END as intake_day_of_the_week,
CASE
        WHEN DR1LANG = 1 THEN 'English' 
WHEN DR1LANG = 2 THEN 'Spanish' 
WHEN DR1LANG = 3 THEN 'English and Spanish' 
WHEN DR1LANG = 4 THEN 'Other' 
WHEN DR1LANG = 5 THEN 'Asian Languages' 
WHEN DR1LANG = 6 THEN 'Asian Languages and English' 
WHEN DR1LANG IS NULL THEN NULL 
ELSE NULL 
 END as language_respondent_used_mostly,
CASE
        WHEN DR1MRESP = '1' THEN 'SP' 
WHEN DR1MRESP = '2' THEN 'Mother of SP' 
WHEN DR1MRESP = '3' THEN 'Father of SP' 
WHEN DR1MRESP = '5' THEN 'Spouse of SP' 
WHEN DR1MRESP = '6' THEN 'Child of SP' 
WHEN DR1MRESP = '7' THEN 'Grandparent of SP' 
WHEN DR1MRESP = '8' THEN 'Friend, Partner, Non Relative' 
WHEN DR1MRESP = '9' THEN 'Translator, not a HH member' 
WHEN DR1MRESP = '10' THEN 'Child care provider, Caretaker' 
WHEN DR1MRESP = '11' THEN 'Other Relative' 
WHEN DR1MRESP = '77' THEN 'Refused' 
WHEN DR1MRESP = '99' THEN 'Don\'t know' 
WHEN DR1MRESP IS NULL THEN NULL 
ELSE NULL 
 END as main_respondent_for_this_interview,
CASE
        WHEN DR1HELP = '1' THEN 'SP' 
WHEN DR1HELP = '4' THEN 'Parent of SP' 
WHEN DR1HELP = '5' THEN 'Spouse of SP' 
WHEN DR1HELP = '6' THEN 'Child of SP' 
WHEN DR1HELP = '7' THEN 'Grandparent of SP' 
WHEN DR1HELP = '8' THEN 'Friend, Partner, Non Relative' 
WHEN DR1HELP = '9' THEN 'Translator, not a HH member' 
WHEN DR1HELP = '10' THEN 'Child care provider, Caretaker' 
WHEN DR1HELP = '11' THEN 'Other Relative' 
WHEN DR1HELP = '12' THEN 'No One' 
WHEN DR1HELP = '77' THEN 'Refused' 
WHEN DR1HELP = '99' THEN 'Don\'t know' 
WHEN DR1HELP IS NULL THEN NULL 
ELSE NULL 
 END as helped_in_responding_for_this_interview,
CASE
        WHEN DBQ095Z = 1 THEN 'Ordinary salt [includes regular iodized salt, sea salt and seasoning salts made with regular salt]' 
WHEN DBQ095Z = 2 THEN 'Lite salt' 
WHEN DBQ095Z = 3 THEN 'Salt substitute' 
WHEN DBQ095Z = 4 THEN 'Doesn\'t use or add salt products at the table' 
WHEN DBQ095Z = 91 THEN 'Other' 
WHEN DBQ095Z = 99 THEN 'Don\'t know' 
WHEN DBQ095Z IS NULL THEN NULL 
ELSE NULL 
 END as type_of_table_salt_used,
CASE
        WHEN DBD100 = 1 THEN 'Rarely' 
WHEN DBD100 = 2 THEN 'Occasionally' 
WHEN DBD100 = 3 THEN 'Very often' 
WHEN DBD100 = 7 THEN 'Refused' 
WHEN DBD100 = 9 THEN 'Don\'t know' 
WHEN DBD100 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_add_salt_to_food_at_table,
CASE
        WHEN DRQSPREP = 1 THEN 'Never' 
WHEN DRQSPREP = 2 THEN 'Rarely' 
WHEN DRQSPREP = 3 THEN 'Occasionally' 
WHEN DRQSPREP = 4 THEN 'Very Often' 
WHEN DRQSPREP = 9 THEN 'Don\'t know' 
WHEN DRQSPREP IS NULL THEN NULL 
ELSE NULL 
 END as salt_used_in_preparation,
CASE
        WHEN DR1STY = '1' THEN 'Yes' 
WHEN DR1STY = '2' THEN 'No' 
WHEN DR1STY = '9' THEN 'Don\'t know' 
WHEN DR1STY IS NULL THEN NULL 
ELSE NULL 
 END as salt_used_at_table_yesterday,
CASE
        WHEN DR1SKY = '1' THEN 'Ordinary, sea, seasoned, or other flavored salt' 
WHEN DR1SKY = '2' THEN 'Lite salt' 
WHEN DR1SKY = '3' THEN 'Salt substitute' 
WHEN DR1SKY = '91' THEN 'Other' 
WHEN DR1SKY = '99' THEN 'Don\'t know' 
WHEN DR1SKY IS NULL THEN NULL 
ELSE NULL 
 END as type_of_salt_used_yesterday,
CASE
        WHEN DRQSDIET = 1 THEN 'Yes' 
WHEN DRQSDIET = 2 THEN 'No' 
WHEN DRQSDIET = 9 THEN 'Don\'t know' 
WHEN DRQSDIET IS NULL THEN NULL 
ELSE NULL 
 END as on_special_diet,
CASE
        WHEN DRQSDT1 = 1 THEN 'Weight loss or low calorie diets' 
WHEN DRQSDT1 IS NULL THEN NULL 
ELSE NULL 
 END as weight_loss_low_calorie_diet,
CASE
        WHEN DRQSDT2 = 2 THEN 'Low fat or low cholesterol diet' 
WHEN DRQSDT2 IS NULL THEN NULL 
ELSE NULL 
 END as low_fat_low_cholesterol_diet,
CASE
        WHEN DRQSDT3 = 3 THEN 'Low salt or low sodium diet (including diet to lower blood pressure or hypertension)' 
WHEN DRQSDT3 IS NULL THEN NULL 
ELSE NULL 
 END as low_salt_low_sodium_diet,
CASE
        WHEN DRQSDT4 = 4 THEN 'Sugar free or low sugar diet' 
WHEN DRQSDT4 IS NULL THEN NULL 
ELSE NULL 
 END as sugar_free_low_sugar_diet,
CASE
        WHEN DRQSDT5 = 5 THEN 'Low fiber or low residue diet' 
WHEN DRQSDT5 IS NULL THEN NULL 
ELSE NULL 
 END as low_fiber_diet,
CASE
        WHEN DRQSDT6 = 6 THEN 'High fiber or high residue diet' 
WHEN DRQSDT6 IS NULL THEN NULL 
ELSE NULL 
 END as high_fiber_diet,
CASE
        WHEN DRQSDT7 = 7 THEN 'Diabetic diet (including gestational diabetic diets)' 
WHEN DRQSDT7 IS NULL THEN NULL 
ELSE NULL 
 END as diabetic_diet,
CASE
        WHEN DRQSDT8 = 8 THEN 'Weight gain/Muscle building diet' 
WHEN DRQSDT8 IS NULL THEN NULL 
ELSE NULL 
 END as weight_gain_muscle_building_diet,
CASE
        WHEN DRQSDT9 = '9' THEN 'Low carbohydrate diet' 
WHEN DRQSDT9 IS NULL THEN NULL 
ELSE NULL 
 END as low_carbohydrate_diet,
CASE
        WHEN DRQSDT10 = '10' THEN 'High protein diet' 
WHEN DRQSDT10 IS NULL THEN NULL 
ELSE NULL 
 END as high_protein_diet,
CASE
        WHEN DRQSDT11 = '11' THEN 'Gluten-free/Celiac diet' 
WHEN DRQSDT11 IS NULL THEN NULL 
ELSE NULL 
 END as gluten_free_celiac_diet,
CASE
        WHEN DRQSDT12 = '12' THEN 'Renal/Kidney diet' 
WHEN DRQSDT12 IS NULL THEN NULL 
ELSE NULL 
 END as renal_kidney_diet,
CASE
        WHEN DRQSDT91 = 91 THEN 'Other special diet' 
WHEN DRQSDT91 IS NULL THEN NULL 
ELSE NULL 
 END as other_special_diet,
WHEN DR1TNUMF IS NOT NULL THEN DR1TNUMFWHEN DR1TNUMF IS NULL THEN NULL 
ELSE NULL 
 END as number_of_foods_beverages_reported,
WHEN DR1TKCAL IS NOT NULL THEN DR1TKCALWHEN DR1TKCAL IS NULL THEN NULL 
ELSE NULL 
 END as energy_kcal,
WHEN DR1TPROT IS NOT NULL THEN DR1TPROTWHEN DR1TPROT IS NULL THEN NULL 
ELSE NULL 
 END as protein_gm,
WHEN DR1TCARB IS NOT NULL THEN DR1TCARBWHEN DR1TCARB IS NULL THEN NULL 
ELSE NULL 
 END as carbohydrate_gm,
WHEN DR1TSUGR IS NOT NULL THEN DR1TSUGRWHEN DR1TSUGR IS NULL THEN NULL 
ELSE NULL 
 END as total_sugars_gm,
WHEN DR1TFIBE IS NOT NULL THEN DR1TFIBEWHEN DR1TFIBE IS NULL THEN NULL 
ELSE NULL 
 END as dietary_fiber_gm,
WHEN DR1TTFAT IS NOT NULL THEN DR1TTFATWHEN DR1TTFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_fat_gm,
WHEN DR1TSFAT IS NOT NULL THEN DR1TSFATWHEN DR1TSFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_saturated_fatty_acids_gm,
WHEN DR1TMFAT IS NOT NULL THEN DR1TMFATWHEN DR1TMFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_monounsaturated_fatty_acids_gm,
WHEN DR1TPFAT IS NOT NULL THEN DR1TPFATWHEN DR1TPFAT IS NULL THEN NULL 
ELSE NULL 
 END as total_polyunsaturated_fatty_acids_gm,
WHEN DR1TCHOL IS NOT NULL THEN DR1TCHOLWHEN DR1TCHOL IS NULL THEN NULL 
ELSE NULL 
 END as cholesterol_mg,
WHEN DR1TATOC IS NOT NULL THEN DR1TATOCWHEN DR1TATOC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_e_as_alpha_tocopherol_mg,
WHEN DR1TATOA IS NOT NULL THEN DR1TATOAWHEN DR1TATOA IS NULL THEN NULL 
ELSE NULL 
 END as added_alpha_tocopherol_vitamin_e_mg,
WHEN DR1TRET IS NOT NULL THEN DR1TRETWHEN DR1TRET IS NULL THEN NULL 
ELSE NULL 
 END as retinol_mcg,
WHEN DR1TVARA IS NOT NULL THEN DR1TVARAWHEN DR1TVARA IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_a_rae_mcg,
WHEN DR1TACAR IS NOT NULL THEN DR1TACARWHEN DR1TACAR IS NULL THEN NULL 
ELSE NULL 
 END as alpha_carotene_mcg,
WHEN DR1TBCAR IS NOT NULL THEN DR1TBCARWHEN DR1TBCAR IS NULL THEN NULL 
ELSE NULL 
 END as beta_carotene_mcg,
WHEN DR1TCRYP IS NOT NULL THEN DR1TCRYPWHEN DR1TCRYP IS NULL THEN NULL 
ELSE NULL 
 END as beta_cryptoxanthin_mcg,
WHEN DR1TLYCO IS NOT NULL THEN DR1TLYCOWHEN DR1TLYCO IS NULL THEN NULL 
ELSE NULL 
 END as lycopene_mcg,
WHEN DR1TLZ IS NOT NULL THEN DR1TLZWHEN DR1TLZ IS NULL THEN NULL 
ELSE NULL 
 END as lutein_zeaxanthin_mcg,
WHEN DR1TVB1 IS NOT NULL THEN DR1TVB1WHEN DR1TVB1 IS NULL THEN NULL 
ELSE NULL 
 END as thiamin_vitamin_b1_mg,
WHEN DR1TVB2 IS NOT NULL THEN DR1TVB2WHEN DR1TVB2 IS NULL THEN NULL 
ELSE NULL 
 END as riboflavin_vitamin_b2_mg,
WHEN DR1TNIAC IS NOT NULL THEN DR1TNIACWHEN DR1TNIAC IS NULL THEN NULL 
ELSE NULL 
 END as niacin_mg,
WHEN DR1TVB6 IS NOT NULL THEN DR1TVB6WHEN DR1TVB6 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b6_mg,
WHEN DR1TFOLA IS NOT NULL THEN DR1TFOLAWHEN DR1TFOLA IS NULL THEN NULL 
ELSE NULL 
 END as total_folate_mcg,
WHEN DR1TFA IS NOT NULL THEN DR1TFAWHEN DR1TFA IS NULL THEN NULL 
ELSE NULL 
 END as folic_acid_mcg,
WHEN DR1TFF IS NOT NULL THEN DR1TFFWHEN DR1TFF IS NULL THEN NULL 
ELSE NULL 
 END as food_folate_mcg,
WHEN DR1TFDFE IS NOT NULL THEN DR1TFDFEWHEN DR1TFDFE IS NULL THEN NULL 
ELSE NULL 
 END as folate_dfe_mcg,
WHEN DR1TCHL IS NOT NULL THEN DR1TCHLWHEN DR1TCHL IS NULL THEN NULL 
ELSE NULL 
 END as total_choline_mg,
WHEN DR1TVB12 IS NOT NULL THEN DR1TVB12WHEN DR1TVB12 IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_b12_mcg,
WHEN DR1TB12A IS NOT NULL THEN DR1TB12AWHEN DR1TB12A IS NULL THEN NULL 
ELSE NULL 
 END as added_vitamin_b12_mcg,
WHEN DR1TVC IS NOT NULL THEN DR1TVCWHEN DR1TVC IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_c_mg,
WHEN DR1TVD IS NOT NULL THEN SAFE_CAST(DR1TVD AS FLOAT64)WHEN DR1TVD IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_d_d2_d3_mcg,
WHEN DR1TVK IS NOT NULL THEN DR1TVKWHEN DR1TVK IS NULL THEN NULL 
ELSE NULL 
 END as vitamin_k_mcg,
WHEN DR1TCALC IS NOT NULL THEN DR1TCALCWHEN DR1TCALC IS NULL THEN NULL 
ELSE NULL 
 END as calcium_mg,
WHEN DR1TPHOS IS NOT NULL THEN DR1TPHOSWHEN DR1TPHOS IS NULL THEN NULL 
ELSE NULL 
 END as phosphorus_mg,
WHEN DR1TMAGN IS NOT NULL THEN DR1TMAGNWHEN DR1TMAGN IS NULL THEN NULL 
ELSE NULL 
 END as magnesium_mg,
WHEN DR1TIRON IS NOT NULL THEN DR1TIRONWHEN DR1TIRON IS NULL THEN NULL 
ELSE NULL 
 END as iron_mg,
WHEN DR1TZINC IS NOT NULL THEN DR1TZINCWHEN DR1TZINC IS NULL THEN NULL 
ELSE NULL 
 END as zinc_mg,
WHEN DR1TCOPP IS NOT NULL THEN DR1TCOPPWHEN DR1TCOPP IS NULL THEN NULL 
ELSE NULL 
 END as copper_mg,
WHEN DR1TSODI IS NOT NULL THEN DR1TSODIWHEN DR1TSODI IS NULL THEN NULL 
ELSE NULL 
 END as sodium_mg,
WHEN DR1TPOTA IS NOT NULL THEN DR1TPOTAWHEN DR1TPOTA IS NULL THEN NULL 
ELSE NULL 
 END as potassium_mg,
WHEN DR1TSELE IS NOT NULL THEN DR1TSELEWHEN DR1TSELE IS NULL THEN NULL 
ELSE NULL 
 END as selenium_mcg,
WHEN DR1TCAFF IS NOT NULL THEN DR1TCAFFWHEN DR1TCAFF IS NULL THEN NULL 
ELSE NULL 
 END as caffeine_mg,
WHEN DR1TTHEO IS NOT NULL THEN DR1TTHEOWHEN DR1TTHEO IS NULL THEN NULL 
ELSE NULL 
 END as theobromine_mg,
WHEN DR1TALCO IS NOT NULL THEN DR1TALCOWHEN DR1TALCO IS NULL THEN NULL 
ELSE NULL 
 END as alcohol_gm,
WHEN DR1TMOIS IS NOT NULL THEN DR1TMOISWHEN DR1TMOIS IS NULL THEN NULL 
ELSE NULL 
 END as moisture_gm,
WHEN DR1TS040 IS NOT NULL THEN DR1TS040WHEN DR1TS040 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_4_0_butanoic_gm,
WHEN DR1TS060 IS NOT NULL THEN DR1TS060WHEN DR1TS060 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_6_0_hexanoic_gm,
WHEN DR1TS080 IS NOT NULL THEN DR1TS080WHEN DR1TS080 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_8_0_octanoic_gm,
WHEN DR1TS100 IS NOT NULL THEN DR1TS100WHEN DR1TS100 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_10_0_decanoic_gm,
WHEN DR1TS120 IS NOT NULL THEN DR1TS120WHEN DR1TS120 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_12_0_dodecanoic_gm,
WHEN DR1TS140 IS NOT NULL THEN DR1TS140WHEN DR1TS140 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_14_0_tetradecanoic_gm,
WHEN DR1TS160 IS NOT NULL THEN DR1TS160WHEN DR1TS160 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_16_0_hexadecanoic_gm,
WHEN DR1TS180 IS NOT NULL THEN DR1TS180WHEN DR1TS180 IS NULL THEN NULL 
ELSE NULL 
 END as sfa_18_0_octadecanoic_gm,
WHEN DR1TM161 IS NOT NULL THEN DR1TM161WHEN DR1TM161 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_16_1_hexadecenoic_gm,
WHEN DR1TM181 IS NOT NULL THEN DR1TM181WHEN DR1TM181 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_18_1_octadecenoic_gm,
WHEN DR1TM201 IS NOT NULL THEN DR1TM201WHEN DR1TM201 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_20_1_eicosenoic_gm,
WHEN DR1TM221 IS NOT NULL THEN DR1TM221WHEN DR1TM221 IS NULL THEN NULL 
ELSE NULL 
 END as mfa_22_1_docosenoic_gm,
WHEN DR1TP182 IS NOT NULL THEN DR1TP182WHEN DR1TP182 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_2_octadecadienoic_gm,
WHEN DR1TP183 IS NOT NULL THEN DR1TP183WHEN DR1TP183 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_3_octadecatrienoic_gm,
WHEN DR1TP184 IS NOT NULL THEN DR1TP184WHEN DR1TP184 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_18_4_octadecatetraenoic_gm,
WHEN DR1TP204 IS NOT NULL THEN DR1TP204WHEN DR1TP204 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_20_4_eicosatetraenoic_gm,
WHEN DR1TP205 IS NOT NULL THEN DR1TP205WHEN DR1TP205 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_20_5_eicosapentaenoic_gm,
WHEN DR1TP225 IS NOT NULL THEN DR1TP225WHEN DR1TP225 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_22_5_docosapentaenoic_gm,
WHEN DR1TP226 IS NOT NULL THEN DR1TP226WHEN DR1TP226 IS NULL THEN NULL 
ELSE NULL 
 END as pfa_22_6_docosahexaenoic_gm,
CASE
        WHEN DR1_300 = 1 THEN 'Much more than usual' 
WHEN DR1_300 = 2 THEN 'Usual' 
WHEN DR1_300 = 3 THEN 'Much less than usual' 
WHEN DR1_300 = 7 THEN 'Refused' 
WHEN DR1_300 = 9 THEN 'Don\'t know' 
WHEN DR1_300 IS NULL THEN NULL 
ELSE NULL 
 END as compare_food_consumed_yesterday_to_usual,
WHEN DR1_320Z IS NOT NULL THEN DR1_320ZWHEN DR1_320Z IS NULL THEN NULL 
ELSE NULL 
 END as total_plain_water_drank_yesterday_gm,
WHEN DR1_330Z IS NOT NULL THEN DR1_330ZWHEN DR1_330Z IS NULL THEN NULL 
ELSE NULL 
 END as total_tap_water_drank_yesterday_gm,
WHEN DR1BWATZ IS NOT NULL THEN DR1BWATZWHEN DR1BWATZ IS NULL THEN NULL 
ELSE NULL 
 END as total_bottled_water_drank_yesterday_gm,
CASE
        WHEN DR1TWSZ = '1' THEN 'Community supply' 
WHEN DR1TWSZ = '4' THEN 'Don\'t drink tap water' 
WHEN DR1TWSZ = '91' THEN 'Other' 
WHEN DR1TWSZ = '99' THEN 'Don\'t know' 
WHEN DR1TWSZ IS NULL THEN NULL 
ELSE NULL 
 END as tap_water_source,
CASE
        WHEN DRD340 = 1 THEN 'Yes' 
WHEN DRD340 = 2 THEN 'No' 
WHEN DRD340 = 7 THEN 'Refused' 
WHEN DRD340 = 9 THEN 'Don\'t know' 
WHEN DRD340 IS NULL THEN NULL 
ELSE NULL 
 END as shellfish_eaten_during_past_30_days,
CASE
        WHEN DRD350A = 1 THEN 'Yes' 
WHEN DRD350A = 2 THEN 'No' 
WHEN DRD350A IS NULL THEN NULL 
ELSE NULL 
 END as clams_eaten_during_past_30_days,
WHEN DRD350AQ IS NOT NULL THEN DRD350AQWHEN DRD350AQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_clams_eaten_in_past_30_days,
CASE
        WHEN DRD350B = 1 THEN 'Yes' 
WHEN DRD350B = 2 THEN 'No' 
WHEN DRD350B IS NULL THEN NULL 
ELSE NULL 
 END as crabs_eaten_during_past_30_days,
WHEN DRD350BQ IS NOT NULL THEN DRD350BQWHEN DRD350BQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_crabs_eaten_in_past_30_days,
CASE
        WHEN DRD350C = 1 THEN 'Yes' 
WHEN DRD350C = 2 THEN 'No' 
WHEN DRD350C IS NULL THEN NULL 
ELSE NULL 
 END as crayfish_eaten_during_past_30_days,
WHEN DRD350CQ IS NOT NULL THEN DRD350CQWHEN DRD350CQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_crayfish_eaten_past_30_days,
CASE
        WHEN DRD350D = 1 THEN 'Yes' 
WHEN DRD350D = 2 THEN 'No' 
WHEN DRD350D IS NULL THEN NULL 
ELSE NULL 
 END as lobsters_eaten_during_past_30_days,
WHEN DRD350DQ IS NOT NULL THEN DRD350DQWHEN DRD350DQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_lobsters_eaten_past_30_days,
CASE
        WHEN DRD350E = 1 THEN 'Yes' 
WHEN DRD350E = 2 THEN 'No' 
WHEN DRD350E IS NULL THEN NULL 
ELSE NULL 
 END as mussels_eaten_during_past_30_days,
WHEN DRD350EQ IS NOT NULL THEN DRD350EQWHEN DRD350EQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_mussels_eaten_in_past_30_days,
CASE
        WHEN DRD350F = 1 THEN 'Yes' 
WHEN DRD350F = 2 THEN 'No' 
WHEN DRD350F IS NULL THEN NULL 
ELSE NULL 
 END as oysters_eaten_during_past_30_days,
WHEN DRD350FQ IS NOT NULL THEN DRD350FQWHEN DRD350FQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_oysters_eaten_in_past_30_days,
CASE
        WHEN DRD350G = 1 THEN 'Yes' 
WHEN DRD350G = 2 THEN 'No' 
WHEN DRD350G IS NULL THEN NULL 
ELSE NULL 
 END as scallops_eaten_during_past_30_days,
WHEN DRD350GQ IS NOT NULL THEN DRD350GQWHEN DRD350GQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_scallops_eaten_past_30_days,
CASE
        WHEN DRD350H = 1 THEN 'Yes' 
WHEN DRD350H = 2 THEN 'No' 
WHEN DRD350H IS NULL THEN NULL 
ELSE NULL 
 END as shrimp_eaten_during_past_30_days,
WHEN DRD350HQ IS NOT NULL THEN DRD350HQWHEN DRD350HQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_shrimp_eaten_in_past_30_days,
CASE
        WHEN DRD350I = 1 THEN 'Yes' 
WHEN DRD350I = 2 THEN 'No' 
WHEN DRD350I IS NULL THEN NULL 
ELSE NULL 
 END as other_shellfish_eaten_past_30_days,
WHEN DRD350IQ IS NOT NULL THEN DRD350IQWHEN DRD350IQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_other_shellfish_eaten,
CASE
        WHEN DRD350J = 1 THEN 'Yes' 
WHEN DRD350J = 2 THEN 'No' 
WHEN DRD350J IS NULL THEN NULL 
ELSE NULL 
 END as other_unknown_shellfish_eaten_past_30_d,
WHEN DRD350JQ IS NOT NULL THEN DRD350JQWHEN DRD350JQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_other_unknown_shellfish_eaten,
CASE
        WHEN DRD350K = 1 THEN 'Yes' 
WHEN DRD350K = 2 THEN 'No' 
WHEN DRD350K IS NULL THEN NULL 
ELSE NULL 
 END as refused_on_shellfish_eaten_past_30_days,
CASE
        WHEN DRD360 = 1 THEN 'Yes' 
WHEN DRD360 = 2 THEN 'No' 
WHEN DRD360 = 7 THEN 'Refused' 
WHEN DRD360 = 9 THEN 'Don\'t know' 
WHEN DRD360 IS NULL THEN NULL 
ELSE NULL 
 END as fish_eaten_during_past_30_days,
CASE
        WHEN DRD370A = 1 THEN 'Yes' 
WHEN DRD370A = 2 THEN 'No' 
WHEN DRD370A IS NULL THEN NULL 
ELSE NULL 
 END as breaded_fish_products_eaten_past_30_days,
WHEN DRD370AQ IS NOT NULL THEN DRD370AQWHEN DRD370AQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_breaded_fish_products_eaten,
CASE
        WHEN DRD370B = 1 THEN 'Yes' 
WHEN DRD370B = 2 THEN 'No' 
WHEN DRD370B IS NULL THEN NULL 
ELSE NULL 
 END as tuna_eaten_during_past_30_days,
WHEN DRD370BQ IS NOT NULL THEN DRD370BQWHEN DRD370BQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_tuna_eaten_in_past_30_days,
CASE
        WHEN DRD370C = 1 THEN 'Yes' 
WHEN DRD370C = 2 THEN 'No' 
WHEN DRD370C IS NULL THEN NULL 
ELSE NULL 
 END as bass_eaten_during_past_30_days,
WHEN DRD370CQ IS NOT NULL THEN DRD370CQWHEN DRD370CQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_bass_eaten_in_past_30_days,
CASE
        WHEN DRD370D = 1 THEN 'Yes' 
WHEN DRD370D = 2 THEN 'No' 
WHEN DRD370D IS NULL THEN NULL 
ELSE NULL 
 END as catfish_eaten_during_past_30_days,
WHEN DRD370DQ IS NOT NULL THEN DRD370DQWHEN DRD370DQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_catfish_eaten_in_past_30_days,
CASE
        WHEN DRD370E = 1 THEN 'Yes' 
WHEN DRD370E = 2 THEN 'No' 
WHEN DRD370E IS NULL THEN NULL 
ELSE NULL 
 END as cod_eaten_during_past_30_days,
WHEN DRD370EQ IS NOT NULL THEN DRD370EQWHEN DRD370EQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_cod_eaten_in_past_30_days,
CASE
        WHEN DRD370F = 1 THEN 'Yes' 
WHEN DRD370F = 2 THEN 'No' 
WHEN DRD370F IS NULL THEN NULL 
ELSE NULL 
 END as flatfish_eaten_during_past_30_days,
WHEN DRD370FQ IS NOT NULL THEN DRD370FQWHEN DRD370FQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_flatfish_eaten_past_30_days,
CASE
        WHEN DRD370G = 1 THEN 'Yes' 
WHEN DRD370G = 2 THEN 'No' 
WHEN DRD370G IS NULL THEN NULL 
ELSE NULL 
 END as haddock_eaten_during_past_30_days,
WHEN DRD370GQ IS NOT NULL THEN DRD370GQWHEN DRD370GQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_haddock_eaten_in_past_30_days,
CASE
        WHEN DRD370H = 1 THEN 'Yes' 
WHEN DRD370H = 2 THEN 'No' 
WHEN DRD370H IS NULL THEN NULL 
ELSE NULL 
 END as mackerel_eaten_during_past_30_days,
WHEN DRD370HQ IS NOT NULL THEN DRD370HQWHEN DRD370HQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_mackerel_eaten_past_30_days,
CASE
        WHEN DRD370I = 1 THEN 'Yes' 
WHEN DRD370I = 2 THEN 'No' 
WHEN DRD370I IS NULL THEN NULL 
ELSE NULL 
 END as perch_eaten_during_past_30_days,
WHEN DRD370IQ IS NOT NULL THEN DRD370IQWHEN DRD370IQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_perch_eaten_in_past_30_days,
CASE
        WHEN DRD370J = 1 THEN 'Yes' 
WHEN DRD370J = 2 THEN 'No' 
WHEN DRD370J IS NULL THEN NULL 
ELSE NULL 
 END as pike_eaten_during_past_30_days,
WHEN DRD370JQ IS NOT NULL THEN DRD370JQWHEN DRD370JQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_pike_eaten_in_past_30_days,
CASE
        WHEN DRD370K = 1 THEN 'Yes' 
WHEN DRD370K = 2 THEN 'No' 
WHEN DRD370K IS NULL THEN NULL 
ELSE NULL 
 END as pollock_eaten_during_past_30_days,
WHEN DRD370KQ IS NOT NULL THEN DRD370KQWHEN DRD370KQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_pollock_eaten_in_past_30_days,
CASE
        WHEN DRD370L = 1 THEN 'Yes' 
WHEN DRD370L = 2 THEN 'No' 
WHEN DRD370L IS NULL THEN NULL 
ELSE NULL 
 END as porgy_eaten_during_past_30_days,
WHEN DRD370LQ IS NOT NULL THEN DRD370LQWHEN DRD370LQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_porgy_eaten_in_past_30_days,
CASE
        WHEN DRD370M = 1 THEN 'Yes' 
WHEN DRD370M = 2 THEN 'No' 
WHEN DRD370M IS NULL THEN NULL 
ELSE NULL 
 END as salmon_eaten_during_past_30_days,
WHEN DRD370MQ IS NOT NULL THEN DRD370MQWHEN DRD370MQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_salmon_eaten_in_past_30_days,
CASE
        WHEN DRD370N = 1 THEN 'Yes' 
WHEN DRD370N = 2 THEN 'No' 
WHEN DRD370N IS NULL THEN NULL 
ELSE NULL 
 END as sardines_eaten_during_past_30_days,
WHEN DRD370NQ IS NOT NULL THEN DRD370NQWHEN DRD370NQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_sardines_eaten_past_30_days,
CASE
        WHEN DRD370O = 1 THEN 'Yes' 
WHEN DRD370O = 2 THEN 'No' 
WHEN DRD370O IS NULL THEN NULL 
ELSE NULL 
 END as sea_bass_eaten_during_past_30_days,
WHEN DRD370OQ IS NOT NULL THEN DRD370OQWHEN DRD370OQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_sea_bass_eaten_past_30_days,
CASE
        WHEN DRD370P = 1 THEN 'Yes' 
WHEN DRD370P = 2 THEN 'No' 
WHEN DRD370P IS NULL THEN NULL 
ELSE NULL 
 END as shark_eaten_during_past_30_days,
WHEN DRD370PQ IS NOT NULL THEN DRD370PQWHEN DRD370PQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_shark_eaten_in_past_30_days,
CASE
        WHEN DRD370Q = 1 THEN 'Yes' 
WHEN DRD370Q = 2 THEN 'No' 
WHEN DRD370Q IS NULL THEN NULL 
ELSE NULL 
 END as swordfish_eaten_during_past_30_days,
WHEN DRD370QQ IS NOT NULL THEN DRD370QQWHEN DRD370QQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_swordfish_eaten_past_30_days,
CASE
        WHEN DRD370R = 1 THEN 'Yes' 
WHEN DRD370R = 2 THEN 'No' 
WHEN DRD370R IS NULL THEN NULL 
ELSE NULL 
 END as trout_eaten_during_past_30_days,
WHEN DRD370RQ IS NOT NULL THEN DRD370RQWHEN DRD370RQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_trout_eaten_in_past_30_days,
CASE
        WHEN DRD370S = 1 THEN 'Yes' 
WHEN DRD370S = 2 THEN 'No' 
WHEN DRD370S IS NULL THEN NULL 
ELSE NULL 
 END as walleye_eaten_during_past_30_days,
WHEN DRD370SQ IS NOT NULL THEN DRD370SQWHEN DRD370SQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_walleye_eaten_in_past_30_days,
CASE
        WHEN DRD370T = 1 THEN 'Yes' 
WHEN DRD370T = 2 THEN 'No' 
WHEN DRD370T IS NULL THEN NULL 
ELSE NULL 
 END as other_fish_eaten_during_past_30_days,
WHEN DRD370TQ IS NOT NULL THEN DRD370TQWHEN DRD370TQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_other_fish_eaten_past_30_days,
CASE
        WHEN DRD370U = 1 THEN 'Yes' 
WHEN DRD370U = 2 THEN 'No' 
WHEN DRD370U IS NULL THEN NULL 
ELSE NULL 
 END as other_unknown_fish_eaten_in_past_30_days,
WHEN DRD370UQ IS NOT NULL THEN DRD370UQWHEN DRD370UQ IS NULL THEN NULL 
ELSE NULL 
 END as of_times_other_unknown_fish_eaten,
CASE
        WHEN DRD370V = 1 THEN 'Yes' 
WHEN DRD370V = 2 THEN 'No' 
WHEN DRD370V IS NULL THEN NULL 
ELSE NULL 
 END as refused_on_fish_eaten_past_30_days,
 FROM {{ ref('stg_dietary_interview_total_nutrient_intakes_first_day_dietary') }}