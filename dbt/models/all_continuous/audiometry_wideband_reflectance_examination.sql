SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN WBXFEAR = 1 THEN 'Right Ear' 
WHEN WBXFEAR = 2 THEN 'Left Ear' 
WHEN WBXFEAR IS NULL THEN NULL 
ELSE NULL 
 END as ear_tested,
WHEN WBXF001 IS NOT NULL THEN WBXF001WHEN WBXF001 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_001,
WHEN WBXF002 IS NOT NULL THEN WBXF002WHEN WBXF002 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_002,
WHEN WBXF003 IS NOT NULL THEN WBXF003WHEN WBXF003 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_003,
WHEN WBXF004 IS NOT NULL THEN WBXF004WHEN WBXF004 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_004,
WHEN WBXF005 IS NOT NULL THEN WBXF005WHEN WBXF005 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_005,
WHEN WBXF006 IS NOT NULL THEN WBXF006WHEN WBXF006 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_006,
WHEN WBXF007 IS NOT NULL THEN WBXF007WHEN WBXF007 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_007,
WHEN WBXF008 IS NOT NULL THEN WBXF008WHEN WBXF008 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_008,
WHEN WBXF009 IS NOT NULL THEN WBXF009WHEN WBXF009 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_009,
WHEN WBXF010 IS NOT NULL THEN WBXF010WHEN WBXF010 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_010,
WHEN WBXF011 IS NOT NULL THEN WBXF011WHEN WBXF011 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_011,
WHEN WBXF012 IS NOT NULL THEN WBXF012WHEN WBXF012 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_012,
WHEN WBXF013 IS NOT NULL THEN WBXF013WHEN WBXF013 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_013,
WHEN WBXF014 IS NOT NULL THEN WBXF014WHEN WBXF014 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_014,
WHEN WBXF015 IS NOT NULL THEN WBXF015WHEN WBXF015 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_015,
WHEN WBXF016 IS NOT NULL THEN WBXF016WHEN WBXF016 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_016,
WHEN WBXF017 IS NOT NULL THEN WBXF017WHEN WBXF017 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_017,
WHEN WBXF018 IS NOT NULL THEN WBXF018WHEN WBXF018 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_018,
WHEN WBXF019 IS NOT NULL THEN WBXF019WHEN WBXF019 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_019,
WHEN WBXF020 IS NOT NULL THEN WBXF020WHEN WBXF020 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_020,
WHEN WBXF021 IS NOT NULL THEN WBXF021WHEN WBXF021 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_021,
WHEN WBXF022 IS NOT NULL THEN WBXF022WHEN WBXF022 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_022,
WHEN WBXF023 IS NOT NULL THEN WBXF023WHEN WBXF023 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_023,
WHEN WBXF024 IS NOT NULL THEN WBXF024WHEN WBXF024 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_024,
WHEN WBXF025 IS NOT NULL THEN WBXF025WHEN WBXF025 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_025,
WHEN WBXF026 IS NOT NULL THEN WBXF026WHEN WBXF026 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_026,
WHEN WBXF027 IS NOT NULL THEN WBXF027WHEN WBXF027 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_027,
WHEN WBXF028 IS NOT NULL THEN WBXF028WHEN WBXF028 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_028,
WHEN WBXF029 IS NOT NULL THEN WBXF029WHEN WBXF029 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_029,
WHEN WBXF030 IS NOT NULL THEN WBXF030WHEN WBXF030 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_030,
WHEN WBXF031 IS NOT NULL THEN WBXF031WHEN WBXF031 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_031,
WHEN WBXF032 IS NOT NULL THEN WBXF032WHEN WBXF032 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_032,
WHEN WBXF033 IS NOT NULL THEN WBXF033WHEN WBXF033 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_033,
WHEN WBXF034 IS NOT NULL THEN WBXF034WHEN WBXF034 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_034,
WHEN WBXF035 IS NOT NULL THEN WBXF035WHEN WBXF035 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_035,
WHEN WBXF036 IS NOT NULL THEN WBXF036WHEN WBXF036 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_036,
WHEN WBXF037 IS NOT NULL THEN WBXF037WHEN WBXF037 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_037,
WHEN WBXF038 IS NOT NULL THEN WBXF038WHEN WBXF038 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_038,
WHEN WBXF039 IS NOT NULL THEN WBXF039WHEN WBXF039 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_039,
WHEN WBXF040 IS NOT NULL THEN WBXF040WHEN WBXF040 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_040,
WHEN WBXF041 IS NOT NULL THEN WBXF041WHEN WBXF041 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_041,
WHEN WBXF042 IS NOT NULL THEN WBXF042WHEN WBXF042 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_042,
WHEN WBXF043 IS NOT NULL THEN WBXF043WHEN WBXF043 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_043,
WHEN WBXF044 IS NOT NULL THEN WBXF044WHEN WBXF044 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_044,
WHEN WBXF045 IS NOT NULL THEN WBXF045WHEN WBXF045 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_045,
WHEN WBXF046 IS NOT NULL THEN WBXF046WHEN WBXF046 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_046,
WHEN WBXF047 IS NOT NULL THEN WBXF047WHEN WBXF047 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_047,
WHEN WBXF048 IS NOT NULL THEN WBXF048WHEN WBXF048 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_048,
WHEN WBXF049 IS NOT NULL THEN WBXF049WHEN WBXF049 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_049,
WHEN WBXF050 IS NOT NULL THEN WBXF050WHEN WBXF050 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_050,
WHEN WBXF051 IS NOT NULL THEN WBXF051WHEN WBXF051 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_051,
WHEN WBXF052 IS NOT NULL THEN WBXF052WHEN WBXF052 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_052,
WHEN WBXF053 IS NOT NULL THEN WBXF053WHEN WBXF053 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_053,
WHEN WBXF054 IS NOT NULL THEN WBXF054WHEN WBXF054 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_054,
WHEN WBXF055 IS NOT NULL THEN WBXF055WHEN WBXF055 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_055,
WHEN WBXF056 IS NOT NULL THEN WBXF056WHEN WBXF056 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_056,
WHEN WBXF057 IS NOT NULL THEN WBXF057WHEN WBXF057 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_057,
WHEN WBXF058 IS NOT NULL THEN WBXF058WHEN WBXF058 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_058,
WHEN WBXF059 IS NOT NULL THEN WBXF059WHEN WBXF059 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_059,
WHEN WBXF060 IS NOT NULL THEN WBXF060WHEN WBXF060 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_060,
WHEN WBXF061 IS NOT NULL THEN WBXF061WHEN WBXF061 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_061,
WHEN WBXF062 IS NOT NULL THEN WBXF062WHEN WBXF062 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_062,
WHEN WBXF063 IS NOT NULL THEN WBXF063WHEN WBXF063 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_063,
WHEN WBXF064 IS NOT NULL THEN WBXF064WHEN WBXF064 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_064,
WHEN WBXF065 IS NOT NULL THEN WBXF065WHEN WBXF065 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_065,
WHEN WBXF066 IS NOT NULL THEN WBXF066WHEN WBXF066 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_066,
WHEN WBXF067 IS NOT NULL THEN WBXF067WHEN WBXF067 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_067,
WHEN WBXF068 IS NOT NULL THEN WBXF068WHEN WBXF068 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_068,
WHEN WBXF069 IS NOT NULL THEN WBXF069WHEN WBXF069 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_069,
WHEN WBXF070 IS NOT NULL THEN WBXF070WHEN WBXF070 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_070,
WHEN WBXF071 IS NOT NULL THEN WBXF071WHEN WBXF071 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_071,
WHEN WBXF072 IS NOT NULL THEN WBXF072WHEN WBXF072 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_072,
WHEN WBXF073 IS NOT NULL THEN WBXF073WHEN WBXF073 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_073,
WHEN WBXF074 IS NOT NULL THEN WBXF074WHEN WBXF074 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_074,
WHEN WBXF075 IS NOT NULL THEN WBXF075WHEN WBXF075 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_075,
WHEN WBXF076 IS NOT NULL THEN WBXF076WHEN WBXF076 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_076,
WHEN WBXF077 IS NOT NULL THEN WBXF077WHEN WBXF077 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_077,
WHEN WBXF078 IS NOT NULL THEN WBXF078WHEN WBXF078 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_078,
WHEN WBXF079 IS NOT NULL THEN WBXF079WHEN WBXF079 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_079,
WHEN WBXF080 IS NOT NULL THEN WBXF080WHEN WBXF080 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_080,
WHEN WBXF081 IS NOT NULL THEN WBXF081WHEN WBXF081 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_081,
WHEN WBXF082 IS NOT NULL THEN WBXF082WHEN WBXF082 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_082,
WHEN WBXF083 IS NOT NULL THEN WBXF083WHEN WBXF083 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_083,
WHEN WBXF084 IS NOT NULL THEN WBXF084WHEN WBXF084 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_084,
WHEN WBXF085 IS NOT NULL THEN WBXF085WHEN WBXF085 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_085,
WHEN WBXF086 IS NOT NULL THEN WBXF086WHEN WBXF086 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_086,
WHEN WBXF087 IS NOT NULL THEN WBXF087WHEN WBXF087 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_087,
WHEN WBXF088 IS NOT NULL THEN WBXF088WHEN WBXF088 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_088,
WHEN WBXF089 IS NOT NULL THEN WBXF089WHEN WBXF089 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_089,
WHEN WBXF090 IS NOT NULL THEN WBXF090WHEN WBXF090 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_090,
WHEN WBXF091 IS NOT NULL THEN WBXF091WHEN WBXF091 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_091,
WHEN WBXF092 IS NOT NULL THEN WBXF092WHEN WBXF092 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_092,
WHEN WBXF093 IS NOT NULL THEN WBXF093WHEN WBXF093 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_093,
WHEN WBXF094 IS NOT NULL THEN WBXF094WHEN WBXF094 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_094,
WHEN WBXF095 IS NOT NULL THEN WBXF095WHEN WBXF095 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_095,
WHEN WBXF096 IS NOT NULL THEN WBXF096WHEN WBXF096 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_096,
WHEN WBXF097 IS NOT NULL THEN WBXF097WHEN WBXF097 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_097,
WHEN WBXF098 IS NOT NULL THEN WBXF098WHEN WBXF098 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_098,
WHEN WBXF099 IS NOT NULL THEN WBXF099WHEN WBXF099 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_099,
WHEN WBXF100 IS NOT NULL THEN WBXF100WHEN WBXF100 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_100,
WHEN WBXF101 IS NOT NULL THEN WBXF101WHEN WBXF101 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_101,
WHEN WBXF102 IS NOT NULL THEN WBXF102WHEN WBXF102 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_102,
WHEN WBXF103 IS NOT NULL THEN WBXF103WHEN WBXF103 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_103,
WHEN WBXF104 IS NOT NULL THEN WBXF104WHEN WBXF104 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_104,
WHEN WBXF105 IS NOT NULL THEN WBXF105WHEN WBXF105 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_105,
WHEN WBXF106 IS NOT NULL THEN WBXF106WHEN WBXF106 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_106,
WHEN WBXF107 IS NOT NULL THEN WBXF107WHEN WBXF107 IS NULL THEN NULL 
ELSE NULL 
 END as frequency_array_data_point_107,
WHEN WBXA001 IS NOT NULL THEN WBXA001WHEN WBXA001 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_001,
WHEN WBXA002 IS NOT NULL THEN WBXA002WHEN WBXA002 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_002,
WHEN WBXA003 IS NOT NULL THEN WBXA003WHEN WBXA003 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_003,
WHEN WBXA004 IS NOT NULL THEN WBXA004WHEN WBXA004 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_004,
WHEN WBXA005 IS NOT NULL THEN WBXA005WHEN WBXA005 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_005,
WHEN WBXA006 IS NOT NULL THEN WBXA006WHEN WBXA006 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_006,
WHEN WBXA007 IS NOT NULL THEN WBXA007WHEN WBXA007 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_007,
WHEN WBXA008 IS NOT NULL THEN WBXA008WHEN WBXA008 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_008,
WHEN WBXA009 IS NOT NULL THEN WBXA009WHEN WBXA009 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_009,
WHEN WBXA010 IS NOT NULL THEN WBXA010WHEN WBXA010 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_010,
WHEN WBXA011 IS NOT NULL THEN WBXA011WHEN WBXA011 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_011,
WHEN WBXA012 IS NOT NULL THEN WBXA012WHEN WBXA012 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_012,
WHEN WBXA013 IS NOT NULL THEN WBXA013WHEN WBXA013 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_013,
WHEN WBXA014 IS NOT NULL THEN WBXA014WHEN WBXA014 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_014,
WHEN WBXA015 IS NOT NULL THEN WBXA015WHEN WBXA015 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_015,
WHEN WBXA016 IS NOT NULL THEN WBXA016WHEN WBXA016 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_016,
WHEN WBXA017 IS NOT NULL THEN WBXA017WHEN WBXA017 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_017,
WHEN WBXA018 IS NOT NULL THEN WBXA018WHEN WBXA018 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_018,
WHEN WBXA019 IS NOT NULL THEN WBXA019WHEN WBXA019 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_019,
WHEN WBXA020 IS NOT NULL THEN WBXA020WHEN WBXA020 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_020,
WHEN WBXA021 IS NOT NULL THEN WBXA021WHEN WBXA021 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_021,
WHEN WBXA022 IS NOT NULL THEN WBXA022WHEN WBXA022 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_022,
WHEN WBXA023 IS NOT NULL THEN WBXA023WHEN WBXA023 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_023,
WHEN WBXA024 IS NOT NULL THEN WBXA024WHEN WBXA024 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_024,
WHEN WBXA025 IS NOT NULL THEN WBXA025WHEN WBXA025 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_025,
WHEN WBXA026 IS NOT NULL THEN WBXA026WHEN WBXA026 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_026,
WHEN WBXA027 IS NOT NULL THEN WBXA027WHEN WBXA027 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_027,
WHEN WBXA028 IS NOT NULL THEN WBXA028WHEN WBXA028 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_028,
WHEN WBXA029 IS NOT NULL THEN WBXA029WHEN WBXA029 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_029,
WHEN WBXA030 IS NOT NULL THEN WBXA030WHEN WBXA030 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_030,
WHEN WBXA031 IS NOT NULL THEN WBXA031WHEN WBXA031 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_031,
WHEN WBXA032 IS NOT NULL THEN WBXA032WHEN WBXA032 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_032,
WHEN WBXA033 IS NOT NULL THEN WBXA033WHEN WBXA033 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_033,
WHEN WBXA034 IS NOT NULL THEN WBXA034WHEN WBXA034 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_034,
WHEN WBXA035 IS NOT NULL THEN WBXA035WHEN WBXA035 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_035,
WHEN WBXA036 IS NOT NULL THEN WBXA036WHEN WBXA036 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_036,
WHEN WBXA037 IS NOT NULL THEN WBXA037WHEN WBXA037 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_037,
WHEN WBXA038 IS NOT NULL THEN WBXA038WHEN WBXA038 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_038,
WHEN WBXA039 IS NOT NULL THEN WBXA039WHEN WBXA039 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_039,
WHEN WBXA040 IS NOT NULL THEN WBXA040WHEN WBXA040 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_040,
WHEN WBXA041 IS NOT NULL THEN WBXA041WHEN WBXA041 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_041,
WHEN WBXA042 IS NOT NULL THEN WBXA042WHEN WBXA042 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_042,
WHEN WBXA043 IS NOT NULL THEN WBXA043WHEN WBXA043 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_043,
WHEN WBXA044 IS NOT NULL THEN WBXA044WHEN WBXA044 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_044,
WHEN WBXA045 IS NOT NULL THEN WBXA045WHEN WBXA045 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_045,
WHEN WBXA046 IS NOT NULL THEN WBXA046WHEN WBXA046 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_046,
WHEN WBXA047 IS NOT NULL THEN WBXA047WHEN WBXA047 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_047,
WHEN WBXA048 IS NOT NULL THEN WBXA048WHEN WBXA048 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_048,
WHEN WBXA049 IS NOT NULL THEN WBXA049WHEN WBXA049 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_049,
WHEN WBXA050 IS NOT NULL THEN WBXA050WHEN WBXA050 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_050,
WHEN WBXA051 IS NOT NULL THEN WBXA051WHEN WBXA051 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_051,
WHEN WBXA052 IS NOT NULL THEN WBXA052WHEN WBXA052 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_052,
WHEN WBXA053 IS NOT NULL THEN WBXA053WHEN WBXA053 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_053,
WHEN WBXA054 IS NOT NULL THEN WBXA054WHEN WBXA054 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_054,
WHEN WBXA055 IS NOT NULL THEN WBXA055WHEN WBXA055 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_055,
WHEN WBXA056 IS NOT NULL THEN WBXA056WHEN WBXA056 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_056,
WHEN WBXA057 IS NOT NULL THEN WBXA057WHEN WBXA057 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_057,
WHEN WBXA058 IS NOT NULL THEN WBXA058WHEN WBXA058 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_058,
WHEN WBXA059 IS NOT NULL THEN WBXA059WHEN WBXA059 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_059,
WHEN WBXA060 IS NOT NULL THEN WBXA060WHEN WBXA060 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_060,
WHEN WBXA061 IS NOT NULL THEN WBXA061WHEN WBXA061 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_061,
WHEN WBXA062 IS NOT NULL THEN WBXA062WHEN WBXA062 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_062,
WHEN WBXA063 IS NOT NULL THEN WBXA063WHEN WBXA063 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_063,
WHEN WBXA064 IS NOT NULL THEN WBXA064WHEN WBXA064 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_064,
WHEN WBXA065 IS NOT NULL THEN WBXA065WHEN WBXA065 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_065,
WHEN WBXA066 IS NOT NULL THEN WBXA066WHEN WBXA066 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_066,
WHEN WBXA067 IS NOT NULL THEN WBXA067WHEN WBXA067 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_067,
WHEN WBXA068 IS NOT NULL THEN WBXA068WHEN WBXA068 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_068,
WHEN WBXA069 IS NOT NULL THEN WBXA069WHEN WBXA069 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_069,
WHEN WBXA070 IS NOT NULL THEN WBXA070WHEN WBXA070 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_070,
WHEN WBXA071 IS NOT NULL THEN WBXA071WHEN WBXA071 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_071,
WHEN WBXA072 IS NOT NULL THEN WBXA072WHEN WBXA072 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_072,
WHEN WBXA073 IS NOT NULL THEN WBXA073WHEN WBXA073 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_073,
WHEN WBXA074 IS NOT NULL THEN WBXA074WHEN WBXA074 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_074,
WHEN WBXA075 IS NOT NULL THEN WBXA075WHEN WBXA075 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_075,
WHEN WBXA076 IS NOT NULL THEN WBXA076WHEN WBXA076 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_076,
WHEN WBXA077 IS NOT NULL THEN WBXA077WHEN WBXA077 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_077,
WHEN WBXA078 IS NOT NULL THEN WBXA078WHEN WBXA078 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_078,
WHEN WBXA079 IS NOT NULL THEN WBXA079WHEN WBXA079 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_079,
WHEN WBXA080 IS NOT NULL THEN WBXA080WHEN WBXA080 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_080,
WHEN WBXA081 IS NOT NULL THEN WBXA081WHEN WBXA081 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_081,
WHEN WBXA082 IS NOT NULL THEN WBXA082WHEN WBXA082 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_082,
WHEN WBXA083 IS NOT NULL THEN WBXA083WHEN WBXA083 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_083,
WHEN WBXA084 IS NOT NULL THEN WBXA084WHEN WBXA084 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_084,
WHEN WBXA085 IS NOT NULL THEN WBXA085WHEN WBXA085 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_085,
WHEN WBXA086 IS NOT NULL THEN WBXA086WHEN WBXA086 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_086,
WHEN WBXA087 IS NOT NULL THEN WBXA087WHEN WBXA087 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_087,
WHEN WBXA088 IS NOT NULL THEN WBXA088WHEN WBXA088 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_088,
WHEN WBXA089 IS NOT NULL THEN WBXA089WHEN WBXA089 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_089,
WHEN WBXA090 IS NOT NULL THEN WBXA090WHEN WBXA090 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_090,
WHEN WBXA091 IS NOT NULL THEN WBXA091WHEN WBXA091 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_091,
WHEN WBXA092 IS NOT NULL THEN WBXA092WHEN WBXA092 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_092,
WHEN WBXA093 IS NOT NULL THEN WBXA093WHEN WBXA093 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_093,
WHEN WBXA094 IS NOT NULL THEN WBXA094WHEN WBXA094 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_094,
WHEN WBXA095 IS NOT NULL THEN WBXA095WHEN WBXA095 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_095,
WHEN WBXA096 IS NOT NULL THEN WBXA096WHEN WBXA096 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_096,
WHEN WBXA097 IS NOT NULL THEN WBXA097WHEN WBXA097 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_097,
WHEN WBXA098 IS NOT NULL THEN WBXA098WHEN WBXA098 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_098,
WHEN WBXA099 IS NOT NULL THEN WBXA099WHEN WBXA099 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_099,
WHEN WBXA100 IS NOT NULL THEN WBXA100WHEN WBXA100 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_100,
WHEN WBXA101 IS NOT NULL THEN WBXA101WHEN WBXA101 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_101,
WHEN WBXA102 IS NOT NULL THEN WBXA102WHEN WBXA102 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_102,
WHEN WBXA103 IS NOT NULL THEN WBXA103WHEN WBXA103 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_103,
WHEN WBXA104 IS NOT NULL THEN WBXA104WHEN WBXA104 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_104,
WHEN WBXA105 IS NOT NULL THEN WBXA105WHEN WBXA105 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_105,
WHEN WBXA106 IS NOT NULL THEN WBXA106WHEN WBXA106 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_106,
WHEN WBXA107 IS NOT NULL THEN WBXA107WHEN WBXA107 IS NULL THEN NULL 
ELSE NULL 
 END as absorbance_array_data_point_107,
WHEN WBXP001 IS NOT NULL THEN WBXP001WHEN WBXP001 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_001,
WHEN WBXP002 IS NOT NULL THEN WBXP002WHEN WBXP002 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_002,
WHEN WBXP003 IS NOT NULL THEN WBXP003WHEN WBXP003 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_003,
WHEN WBXP004 IS NOT NULL THEN WBXP004WHEN WBXP004 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_004,
WHEN WBXP005 IS NOT NULL THEN WBXP005WHEN WBXP005 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_005,
WHEN WBXP006 IS NOT NULL THEN WBXP006WHEN WBXP006 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_006,
WHEN WBXP007 IS NOT NULL THEN WBXP007WHEN WBXP007 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_007,
WHEN WBXP008 IS NOT NULL THEN WBXP008WHEN WBXP008 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_008,
WHEN WBXP009 IS NOT NULL THEN WBXP009WHEN WBXP009 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_009,
WHEN WBXP010 IS NOT NULL THEN WBXP010WHEN WBXP010 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_010,
WHEN WBXP011 IS NOT NULL THEN WBXP011WHEN WBXP011 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_011,
WHEN WBXP012 IS NOT NULL THEN WBXP012WHEN WBXP012 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_012,
WHEN WBXP013 IS NOT NULL THEN WBXP013WHEN WBXP013 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_013,
WHEN WBXP014 IS NOT NULL THEN WBXP014WHEN WBXP014 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_014,
WHEN WBXP015 IS NOT NULL THEN WBXP015WHEN WBXP015 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_015,
WHEN WBXP016 IS NOT NULL THEN WBXP016WHEN WBXP016 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_016,
WHEN WBXP017 IS NOT NULL THEN WBXP017WHEN WBXP017 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_017,
WHEN WBXP018 IS NOT NULL THEN WBXP018WHEN WBXP018 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_018,
WHEN WBXP019 IS NOT NULL THEN WBXP019WHEN WBXP019 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_019,
WHEN WBXP020 IS NOT NULL THEN WBXP020WHEN WBXP020 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_020,
WHEN WBXP021 IS NOT NULL THEN WBXP021WHEN WBXP021 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_021,
WHEN WBXP022 IS NOT NULL THEN WBXP022WHEN WBXP022 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_022,
WHEN WBXP023 IS NOT NULL THEN WBXP023WHEN WBXP023 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_023,
WHEN WBXP024 IS NOT NULL THEN WBXP024WHEN WBXP024 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_024,
WHEN WBXP025 IS NOT NULL THEN WBXP025WHEN WBXP025 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_025,
WHEN WBXP026 IS NOT NULL THEN WBXP026WHEN WBXP026 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_026,
WHEN WBXP027 IS NOT NULL THEN WBXP027WHEN WBXP027 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_027,
WHEN WBXP028 IS NOT NULL THEN WBXP028WHEN WBXP028 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_028,
WHEN WBXP029 IS NOT NULL THEN WBXP029WHEN WBXP029 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_029,
WHEN WBXP030 IS NOT NULL THEN WBXP030WHEN WBXP030 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_030,
WHEN WBXP031 IS NOT NULL THEN WBXP031WHEN WBXP031 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_031,
WHEN WBXP032 IS NOT NULL THEN WBXP032WHEN WBXP032 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_032,
WHEN WBXP033 IS NOT NULL THEN WBXP033WHEN WBXP033 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_033,
WHEN WBXP034 IS NOT NULL THEN WBXP034WHEN WBXP034 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_034,
WHEN WBXP035 IS NOT NULL THEN WBXP035WHEN WBXP035 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_035,
WHEN WBXP036 IS NOT NULL THEN WBXP036WHEN WBXP036 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_036,
WHEN WBXP037 IS NOT NULL THEN WBXP037WHEN WBXP037 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_037,
WHEN WBXP038 IS NOT NULL THEN WBXP038WHEN WBXP038 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_038,
WHEN WBXP039 IS NOT NULL THEN WBXP039WHEN WBXP039 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_039,
WHEN WBXP040 IS NOT NULL THEN WBXP040WHEN WBXP040 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_040,
WHEN WBXP041 IS NOT NULL THEN WBXP041WHEN WBXP041 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_041,
WHEN WBXP042 IS NOT NULL THEN WBXP042WHEN WBXP042 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_042,
WHEN WBXP043 IS NOT NULL THEN WBXP043WHEN WBXP043 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_043,
WHEN WBXP044 IS NOT NULL THEN WBXP044WHEN WBXP044 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_044,
WHEN WBXP045 IS NOT NULL THEN WBXP045WHEN WBXP045 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_045,
WHEN WBXP046 IS NOT NULL THEN WBXP046WHEN WBXP046 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_046,
WHEN WBXP047 IS NOT NULL THEN WBXP047WHEN WBXP047 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_047,
WHEN WBXP048 IS NOT NULL THEN WBXP048WHEN WBXP048 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_048,
WHEN WBXP049 IS NOT NULL THEN WBXP049WHEN WBXP049 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_049,
WHEN WBXP050 IS NOT NULL THEN WBXP050WHEN WBXP050 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_050,
WHEN WBXP051 IS NOT NULL THEN WBXP051WHEN WBXP051 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_051,
WHEN WBXP052 IS NOT NULL THEN WBXP052WHEN WBXP052 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_052,
WHEN WBXP053 IS NOT NULL THEN WBXP053WHEN WBXP053 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_053,
WHEN WBXP054 IS NOT NULL THEN WBXP054WHEN WBXP054 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_054,
WHEN WBXP055 IS NOT NULL THEN WBXP055WHEN WBXP055 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_055,
WHEN WBXP056 IS NOT NULL THEN WBXP056WHEN WBXP056 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_056,
WHEN WBXP057 IS NOT NULL THEN WBXP057WHEN WBXP057 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_057,
WHEN WBXP058 IS NOT NULL THEN WBXP058WHEN WBXP058 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_058,
WHEN WBXP059 IS NOT NULL THEN WBXP059WHEN WBXP059 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_059,
WHEN WBXP060 IS NOT NULL THEN WBXP060WHEN WBXP060 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_060,
WHEN WBXP061 IS NOT NULL THEN WBXP061WHEN WBXP061 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_061,
WHEN WBXP062 IS NOT NULL THEN WBXP062WHEN WBXP062 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_062,
WHEN WBXP063 IS NOT NULL THEN WBXP063WHEN WBXP063 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_063,
WHEN WBXP064 IS NOT NULL THEN WBXP064WHEN WBXP064 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_064,
WHEN WBXP065 IS NOT NULL THEN WBXP065WHEN WBXP065 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_065,
WHEN WBXP066 IS NOT NULL THEN WBXP066WHEN WBXP066 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_066,
WHEN WBXP067 IS NOT NULL THEN WBXP067WHEN WBXP067 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_067,
WHEN WBXP068 IS NOT NULL THEN WBXP068WHEN WBXP068 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_068,
WHEN WBXP069 IS NOT NULL THEN WBXP069WHEN WBXP069 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_069,
WHEN WBXP070 IS NOT NULL THEN WBXP070WHEN WBXP070 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_070,
WHEN WBXP071 IS NOT NULL THEN WBXP071WHEN WBXP071 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_071,
WHEN WBXP072 IS NOT NULL THEN WBXP072WHEN WBXP072 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_072,
WHEN WBXP073 IS NOT NULL THEN WBXP073WHEN WBXP073 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_073,
WHEN WBXP074 IS NOT NULL THEN WBXP074WHEN WBXP074 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_074,
WHEN WBXP075 IS NOT NULL THEN WBXP075WHEN WBXP075 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_075,
WHEN WBXP076 IS NOT NULL THEN WBXP076WHEN WBXP076 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_076,
WHEN WBXP077 IS NOT NULL THEN WBXP077WHEN WBXP077 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_077,
WHEN WBXP078 IS NOT NULL THEN WBXP078WHEN WBXP078 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_078,
WHEN WBXP079 IS NOT NULL THEN WBXP079WHEN WBXP079 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_079,
WHEN WBXP080 IS NOT NULL THEN WBXP080WHEN WBXP080 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_080,
WHEN WBXP081 IS NOT NULL THEN WBXP081WHEN WBXP081 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_081,
WHEN WBXP082 IS NOT NULL THEN WBXP082WHEN WBXP082 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_082,
WHEN WBXP083 IS NOT NULL THEN WBXP083WHEN WBXP083 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_083,
WHEN WBXP084 IS NOT NULL THEN WBXP084WHEN WBXP084 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_084,
WHEN WBXP085 IS NOT NULL THEN WBXP085WHEN WBXP085 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_085,
WHEN WBXP086 IS NOT NULL THEN WBXP086WHEN WBXP086 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_086,
WHEN WBXP087 IS NOT NULL THEN WBXP087WHEN WBXP087 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_087,
WHEN WBXP088 IS NOT NULL THEN WBXP088WHEN WBXP088 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_088,
WHEN WBXP089 IS NOT NULL THEN WBXP089WHEN WBXP089 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_089,
WHEN WBXP090 IS NOT NULL THEN WBXP090WHEN WBXP090 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_090,
WHEN WBXP091 IS NOT NULL THEN WBXP091WHEN WBXP091 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_091,
WHEN WBXP092 IS NOT NULL THEN WBXP092WHEN WBXP092 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_092,
WHEN WBXP093 IS NOT NULL THEN WBXP093WHEN WBXP093 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_093,
WHEN WBXP094 IS NOT NULL THEN WBXP094WHEN WBXP094 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_094,
WHEN WBXP095 IS NOT NULL THEN WBXP095WHEN WBXP095 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_095,
WHEN WBXP096 IS NOT NULL THEN WBXP096WHEN WBXP096 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_096,
WHEN WBXP097 IS NOT NULL THEN WBXP097WHEN WBXP097 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_097,
WHEN WBXP098 IS NOT NULL THEN WBXP098WHEN WBXP098 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_098,
WHEN WBXP099 IS NOT NULL THEN WBXP099WHEN WBXP099 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_099,
WHEN WBXP100 IS NOT NULL THEN WBXP100WHEN WBXP100 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_100,
WHEN WBXP101 IS NOT NULL THEN WBXP101WHEN WBXP101 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_101,
WHEN WBXP102 IS NOT NULL THEN WBXP102WHEN WBXP102 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_102,
WHEN WBXP103 IS NOT NULL THEN WBXP103WHEN WBXP103 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_103,
WHEN WBXP104 IS NOT NULL THEN WBXP104WHEN WBXP104 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_104,
WHEN WBXP105 IS NOT NULL THEN WBXP105WHEN WBXP105 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_105,
WHEN WBXP106 IS NOT NULL THEN WBXP106WHEN WBXP106 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_106,
WHEN WBXP107 IS NOT NULL THEN WBXP107WHEN WBXP107 IS NULL THEN NULL 
ELSE NULL 
 END as phase_array_data_point_107,
 FROM {{ ref('stg_audiometry_wideband_reflectance_examination') }}