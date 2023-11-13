SELECT
        SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
            WHEN RFXSEAR = '1' THEN 'Right Ear' -- categorize string values 
WHEN RFXSEAR = '2' THEN 'Left Ear' -- categorize string values 
WHEN RFXSEAR IS NULL THEN NULL 
ELSE RFXSEAR 
 END as ear_tested, 

CASE
            WHEN RFXLEVEL = '1' THEN '85 dB and 1 kHz' -- categorize string values 
WHEN RFXLEVEL = '5' THEN '95 dB and 1 kHz' -- categorize string values 
WHEN RFXLEVEL = '9' THEN '105 dB and 1 kHz' -- categorize string values 
WHEN RFXLEVEL = '10' THEN '85 dB and 2 kHz' -- categorize string values 
WHEN RFXLEVEL = '14' THEN '95 dB and 2 kHz' -- categorize string values 
WHEN RFXLEVEL = '18' THEN '105 dB and 2 kHz' -- categorize string values 
WHEN RFXLEVEL IS NULL THEN NULL 
ELSE RFXLEVEL 
 END as sound_stimulus_level, 

CASE
            WHEN RFXRFXDC = '0' THEN 'False' -- categorize string values 
WHEN RFXRFXDC = '1' THEN 'True' -- categorize string values 
WHEN RFXRFXDC IS NULL THEN NULL 
ELSE RFXRFXDC 
 END as reflex_detected, 

CASE
            WHEN RFXT001 IS NOT NULL THEN SAFE_CAST(RFXT001 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT001 IS NULL THEN NULL 
ELSE RFXT001 
 END as reflex_time_array_data_point_001, 

CASE
            WHEN RFXT002 IS NOT NULL THEN SAFE_CAST(RFXT002 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT002 IS NULL THEN NULL 
ELSE RFXT002 
 END as reflex_time_array_data_point_002, 

CASE
            WHEN RFXT003 IS NOT NULL THEN SAFE_CAST(RFXT003 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT003 IS NULL THEN NULL 
ELSE RFXT003 
 END as reflex_time_array_data_point_003, 

CASE
            WHEN RFXT004 IS NOT NULL THEN SAFE_CAST(RFXT004 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT004 IS NULL THEN NULL 
ELSE RFXT004 
 END as reflex_time_array_data_point_004, 

CASE
            WHEN RFXT005 IS NOT NULL THEN SAFE_CAST(RFXT005 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT005 IS NULL THEN NULL 
ELSE RFXT005 
 END as reflex_time_array_data_point_005, 

CASE
            WHEN RFXT006 IS NOT NULL THEN SAFE_CAST(RFXT006 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT006 IS NULL THEN NULL 
ELSE RFXT006 
 END as reflex_time_array_data_point_006, 

CASE
            WHEN RFXT007 IS NOT NULL THEN SAFE_CAST(RFXT007 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT007 IS NULL THEN NULL 
ELSE RFXT007 
 END as reflex_time_array_data_point_007, 

CASE
            WHEN RFXT008 IS NOT NULL THEN SAFE_CAST(RFXT008 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT008 IS NULL THEN NULL 
ELSE RFXT008 
 END as reflex_time_array_data_point_008, 

CASE
            WHEN RFXT009 IS NOT NULL THEN SAFE_CAST(RFXT009 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT009 IS NULL THEN NULL 
ELSE RFXT009 
 END as reflex_time_array_data_point_009, 

CASE
            WHEN RFXT010 IS NOT NULL THEN SAFE_CAST(RFXT010 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT010 IS NULL THEN NULL 
ELSE RFXT010 
 END as reflex_time_array_data_point_010, 

CASE
            WHEN RFXT011 IS NOT NULL THEN SAFE_CAST(RFXT011 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT011 IS NULL THEN NULL 
ELSE RFXT011 
 END as reflex_time_array_data_point_011, 

CASE
            WHEN RFXT012 IS NOT NULL THEN SAFE_CAST(RFXT012 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT012 IS NULL THEN NULL 
ELSE RFXT012 
 END as reflex_time_array_data_point_012, 

CASE
            WHEN RFXT013 IS NOT NULL THEN SAFE_CAST(RFXT013 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT013 IS NULL THEN NULL 
ELSE RFXT013 
 END as reflex_time_array_data_point_013, 

CASE
            WHEN RFXT014 IS NOT NULL THEN SAFE_CAST(RFXT014 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT014 IS NULL THEN NULL 
ELSE RFXT014 
 END as reflex_time_array_data_point_014, 

CASE
            WHEN RFXT015 IS NOT NULL THEN SAFE_CAST(RFXT015 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT015 IS NULL THEN NULL 
ELSE RFXT015 
 END as reflex_time_array_data_point_015, 

CASE
            WHEN RFXT016 IS NOT NULL THEN SAFE_CAST(RFXT016 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT016 IS NULL THEN NULL 
ELSE RFXT016 
 END as reflex_time_array_data_point_016, 

CASE
            WHEN RFXT017 IS NOT NULL THEN SAFE_CAST(RFXT017 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT017 IS NULL THEN NULL 
ELSE RFXT017 
 END as reflex_time_array_data_point_017, 

CASE
            WHEN RFXT018 IS NOT NULL THEN SAFE_CAST(RFXT018 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT018 IS NULL THEN NULL 
ELSE RFXT018 
 END as reflex_time_array_data_point_018, 

CASE
            WHEN RFXT019 IS NOT NULL THEN SAFE_CAST(RFXT019 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT019 IS NULL THEN NULL 
ELSE RFXT019 
 END as reflex_time_array_data_point_019, 

CASE
            WHEN RFXT020 IS NOT NULL THEN SAFE_CAST(RFXT020 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT020 IS NULL THEN NULL 
ELSE RFXT020 
 END as reflex_time_array_data_point_020, 

CASE
            WHEN RFXT021 IS NOT NULL THEN SAFE_CAST(RFXT021 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT021 IS NULL THEN NULL 
ELSE RFXT021 
 END as reflex_time_array_data_point_021, 

CASE
            WHEN RFXT022 IS NOT NULL THEN SAFE_CAST(RFXT022 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT022 IS NULL THEN NULL 
ELSE RFXT022 
 END as reflex_time_array_data_point_022, 

CASE
            WHEN RFXT023 IS NOT NULL THEN SAFE_CAST(RFXT023 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT023 IS NULL THEN NULL 
ELSE RFXT023 
 END as reflex_time_array_data_point_023, 

CASE
            WHEN RFXT024 IS NOT NULL THEN SAFE_CAST(RFXT024 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT024 IS NULL THEN NULL 
ELSE RFXT024 
 END as reflex_time_array_data_point_024, 

CASE
            WHEN RFXT025 IS NOT NULL THEN SAFE_CAST(RFXT025 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT025 IS NULL THEN NULL 
ELSE RFXT025 
 END as reflex_time_array_data_point_025, 

CASE
            WHEN RFXT026 IS NOT NULL THEN SAFE_CAST(RFXT026 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT026 IS NULL THEN NULL 
ELSE RFXT026 
 END as reflex_time_array_data_point_026, 

CASE
            WHEN RFXT027 IS NOT NULL THEN SAFE_CAST(RFXT027 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT027 IS NULL THEN NULL 
ELSE RFXT027 
 END as reflex_time_array_data_point_027, 

CASE
            WHEN RFXT028 IS NOT NULL THEN SAFE_CAST(RFXT028 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT028 IS NULL THEN NULL 
ELSE RFXT028 
 END as reflex_time_array_data_point_028, 

CASE
            WHEN RFXT029 IS NOT NULL THEN SAFE_CAST(RFXT029 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT029 IS NULL THEN NULL 
ELSE RFXT029 
 END as reflex_time_array_data_point_029, 

CASE
            WHEN RFXT030 IS NOT NULL THEN SAFE_CAST(RFXT030 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT030 IS NULL THEN NULL 
ELSE RFXT030 
 END as reflex_time_array_data_point_030, 

CASE
            WHEN RFXT031 IS NOT NULL THEN SAFE_CAST(RFXT031 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT031 IS NULL THEN NULL 
ELSE RFXT031 
 END as reflex_time_array_data_point_031, 

CASE
            WHEN RFXT032 IS NOT NULL THEN SAFE_CAST(RFXT032 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT032 IS NULL THEN NULL 
ELSE RFXT032 
 END as reflex_time_array_data_point_032, 

CASE
            WHEN RFXT033 IS NOT NULL THEN SAFE_CAST(RFXT033 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT033 IS NULL THEN NULL 
ELSE RFXT033 
 END as reflex_time_array_data_point_033, 

CASE
            WHEN RFXT034 IS NOT NULL THEN SAFE_CAST(RFXT034 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT034 IS NULL THEN NULL 
ELSE RFXT034 
 END as reflex_time_array_data_point_034, 

CASE
            WHEN RFXT035 IS NOT NULL THEN SAFE_CAST(RFXT035 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT035 IS NULL THEN NULL 
ELSE RFXT035 
 END as reflex_time_array_data_point_035, 

CASE
            WHEN RFXT036 IS NOT NULL THEN SAFE_CAST(RFXT036 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT036 IS NULL THEN NULL 
ELSE RFXT036 
 END as reflex_time_array_data_point_036, 

CASE
            WHEN RFXT037 IS NOT NULL THEN SAFE_CAST(RFXT037 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT037 IS NULL THEN NULL 
ELSE RFXT037 
 END as reflex_time_array_data_point_037, 

CASE
            WHEN RFXT038 IS NOT NULL THEN SAFE_CAST(RFXT038 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT038 IS NULL THEN NULL 
ELSE RFXT038 
 END as reflex_time_array_data_point_038, 

CASE
            WHEN RFXT039 IS NOT NULL THEN SAFE_CAST(RFXT039 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT039 IS NULL THEN NULL 
ELSE RFXT039 
 END as reflex_time_array_data_point_039, 

CASE
            WHEN RFXT040 IS NOT NULL THEN SAFE_CAST(RFXT040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT040 IS NULL THEN NULL 
ELSE RFXT040 
 END as reflex_time_array_data_point_040, 

CASE
            WHEN RFXT041 IS NOT NULL THEN SAFE_CAST(RFXT041 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT041 IS NULL THEN NULL 
ELSE RFXT041 
 END as reflex_time_array_data_point_041, 

CASE
            WHEN RFXT042 IS NOT NULL THEN SAFE_CAST(RFXT042 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT042 IS NULL THEN NULL 
ELSE RFXT042 
 END as reflex_time_array_data_point_042, 

CASE
            WHEN RFXT043 IS NOT NULL THEN SAFE_CAST(RFXT043 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT043 IS NULL THEN NULL 
ELSE RFXT043 
 END as reflex_time_array_data_point_043, 

CASE
            WHEN RFXT044 IS NOT NULL THEN SAFE_CAST(RFXT044 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT044 IS NULL THEN NULL 
ELSE RFXT044 
 END as reflex_time_array_data_point_044, 

CASE
            WHEN RFXT045 IS NOT NULL THEN SAFE_CAST(RFXT045 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT045 IS NULL THEN NULL 
ELSE RFXT045 
 END as reflex_time_array_data_point_045, 

CASE
            WHEN RFXT046 IS NOT NULL THEN SAFE_CAST(RFXT046 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT046 IS NULL THEN NULL 
ELSE RFXT046 
 END as reflex_time_array_data_point_046, 

CASE
            WHEN RFXT047 IS NOT NULL THEN SAFE_CAST(RFXT047 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT047 IS NULL THEN NULL 
ELSE RFXT047 
 END as reflex_time_array_data_point_047, 

CASE
            WHEN RFXT048 IS NOT NULL THEN SAFE_CAST(RFXT048 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT048 IS NULL THEN NULL 
ELSE RFXT048 
 END as reflex_time_array_data_point_048, 

CASE
            WHEN RFXT049 IS NOT NULL THEN SAFE_CAST(RFXT049 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT049 IS NULL THEN NULL 
ELSE RFXT049 
 END as reflex_time_array_data_point_049, 

CASE
            WHEN RFXT050 IS NOT NULL THEN SAFE_CAST(RFXT050 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT050 IS NULL THEN NULL 
ELSE RFXT050 
 END as reflex_time_array_data_point_050, 

CASE
            WHEN RFXT051 IS NOT NULL THEN SAFE_CAST(RFXT051 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT051 IS NULL THEN NULL 
ELSE RFXT051 
 END as reflex_time_array_data_point_051, 

CASE
            WHEN RFXT052 IS NOT NULL THEN SAFE_CAST(RFXT052 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT052 IS NULL THEN NULL 
ELSE RFXT052 
 END as reflex_time_array_data_point_052, 

CASE
            WHEN RFXT053 IS NOT NULL THEN SAFE_CAST(RFXT053 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT053 IS NULL THEN NULL 
ELSE RFXT053 
 END as reflex_time_array_data_point_053, 

CASE
            WHEN RFXT054 IS NOT NULL THEN SAFE_CAST(RFXT054 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT054 IS NULL THEN NULL 
ELSE RFXT054 
 END as reflex_time_array_data_point_054, 

CASE
            WHEN RFXT055 IS NOT NULL THEN SAFE_CAST(RFXT055 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT055 IS NULL THEN NULL 
ELSE RFXT055 
 END as reflex_time_array_data_point_055, 

CASE
            WHEN RFXT056 IS NOT NULL THEN SAFE_CAST(RFXT056 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT056 IS NULL THEN NULL 
ELSE RFXT056 
 END as reflex_time_array_data_point_056, 

CASE
            WHEN RFXT057 IS NOT NULL THEN SAFE_CAST(RFXT057 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT057 IS NULL THEN NULL 
ELSE RFXT057 
 END as reflex_time_array_data_point_057, 

CASE
            WHEN RFXT058 IS NOT NULL THEN SAFE_CAST(RFXT058 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT058 IS NULL THEN NULL 
ELSE RFXT058 
 END as reflex_time_array_data_point_058, 

CASE
            WHEN RFXT059 IS NOT NULL THEN SAFE_CAST(RFXT059 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT059 IS NULL THEN NULL 
ELSE RFXT059 
 END as reflex_time_array_data_point_059, 

CASE
            WHEN RFXT060 IS NOT NULL THEN SAFE_CAST(RFXT060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT060 IS NULL THEN NULL 
ELSE RFXT060 
 END as reflex_time_array_data_point_060, 

CASE
            WHEN RFXT061 IS NOT NULL THEN SAFE_CAST(RFXT061 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT061 IS NULL THEN NULL 
ELSE RFXT061 
 END as reflex_time_array_data_point_061, 

CASE
            WHEN RFXT062 IS NOT NULL THEN SAFE_CAST(RFXT062 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT062 IS NULL THEN NULL 
ELSE RFXT062 
 END as reflex_time_array_data_point_062, 

CASE
            WHEN RFXT063 IS NOT NULL THEN SAFE_CAST(RFXT063 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT063 IS NULL THEN NULL 
ELSE RFXT063 
 END as reflex_time_array_data_point_063, 

CASE
            WHEN RFXT064 IS NOT NULL THEN SAFE_CAST(RFXT064 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT064 IS NULL THEN NULL 
ELSE RFXT064 
 END as reflex_time_array_data_point_064, 

CASE
            WHEN RFXT065 IS NOT NULL THEN SAFE_CAST(RFXT065 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT065 IS NULL THEN NULL 
ELSE RFXT065 
 END as reflex_time_array_data_point_065, 

CASE
            WHEN RFXT066 IS NOT NULL THEN SAFE_CAST(RFXT066 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT066 IS NULL THEN NULL 
ELSE RFXT066 
 END as reflex_time_array_data_point_066, 

CASE
            WHEN RFXT067 IS NOT NULL THEN SAFE_CAST(RFXT067 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT067 IS NULL THEN NULL 
ELSE RFXT067 
 END as reflex_time_array_data_point_067, 

CASE
            WHEN RFXT068 IS NOT NULL THEN SAFE_CAST(RFXT068 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT068 IS NULL THEN NULL 
ELSE RFXT068 
 END as reflex_time_array_data_point_068, 

CASE
            WHEN RFXT069 IS NOT NULL THEN SAFE_CAST(RFXT069 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT069 IS NULL THEN NULL 
ELSE RFXT069 
 END as reflex_time_array_data_point_069, 

CASE
            WHEN RFXT070 IS NOT NULL THEN SAFE_CAST(RFXT070 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT070 IS NULL THEN NULL 
ELSE RFXT070 
 END as reflex_time_array_data_point_070, 

CASE
            WHEN RFXT071 IS NOT NULL THEN SAFE_CAST(RFXT071 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT071 IS NULL THEN NULL 
ELSE RFXT071 
 END as reflex_time_array_data_point_071, 

CASE
            WHEN RFXT072 IS NOT NULL THEN SAFE_CAST(RFXT072 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT072 IS NULL THEN NULL 
ELSE RFXT072 
 END as reflex_time_array_data_point_072, 

CASE
            WHEN RFXT073 IS NOT NULL THEN SAFE_CAST(RFXT073 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT073 IS NULL THEN NULL 
ELSE RFXT073 
 END as reflex_time_array_data_point_073, 

CASE
            WHEN RFXT074 IS NOT NULL THEN SAFE_CAST(RFXT074 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT074 IS NULL THEN NULL 
ELSE RFXT074 
 END as reflex_time_array_data_point_074, 

CASE
            WHEN RFXT075 IS NOT NULL THEN SAFE_CAST(RFXT075 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT075 IS NULL THEN NULL 
ELSE RFXT075 
 END as reflex_time_array_data_point_075, 

CASE
            WHEN RFXT076 IS NOT NULL THEN SAFE_CAST(RFXT076 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT076 IS NULL THEN NULL 
ELSE RFXT076 
 END as reflex_time_array_data_point_076, 

CASE
            WHEN RFXT077 IS NOT NULL THEN SAFE_CAST(RFXT077 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT077 IS NULL THEN NULL 
ELSE RFXT077 
 END as reflex_time_array_data_point_077, 

CASE
            WHEN RFXT078 IS NOT NULL THEN SAFE_CAST(RFXT078 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT078 IS NULL THEN NULL 
ELSE RFXT078 
 END as reflex_time_array_data_point_078, 

CASE
            WHEN RFXT079 IS NOT NULL THEN SAFE_CAST(RFXT079 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT079 IS NULL THEN NULL 
ELSE RFXT079 
 END as reflex_time_array_data_point_079, 

CASE
            WHEN RFXT080 IS NOT NULL THEN SAFE_CAST(RFXT080 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT080 IS NULL THEN NULL 
ELSE RFXT080 
 END as reflex_time_array_data_point_080, 

CASE
            WHEN RFXT081 IS NOT NULL THEN SAFE_CAST(RFXT081 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT081 IS NULL THEN NULL 
ELSE RFXT081 
 END as reflex_time_array_data_point_081, 

CASE
            WHEN RFXT082 IS NOT NULL THEN SAFE_CAST(RFXT082 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT082 IS NULL THEN NULL 
ELSE RFXT082 
 END as reflex_time_array_data_point_082, 

CASE
            WHEN RFXT083 IS NOT NULL THEN SAFE_CAST(RFXT083 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT083 IS NULL THEN NULL 
ELSE RFXT083 
 END as reflex_time_array_data_point_083, 

CASE
            WHEN RFXT084 IS NOT NULL THEN SAFE_CAST(RFXT084 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT084 IS NULL THEN NULL 
ELSE RFXT084 
 END as reflex_time_array_data_point_084, 

CASE
            WHEN RFXT085 IS NOT NULL THEN SAFE_CAST(RFXT085 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT085 IS NULL THEN NULL 
ELSE RFXT085 
 END as reflex_time_array_data_point_085, 

CASE
            WHEN RFXT086 IS NOT NULL THEN SAFE_CAST(RFXT086 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT086 IS NULL THEN NULL 
ELSE RFXT086 
 END as reflex_time_array_data_point_086, 

CASE
            WHEN RFXT087 IS NOT NULL THEN SAFE_CAST(RFXT087 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT087 IS NULL THEN NULL 
ELSE RFXT087 
 END as reflex_time_array_data_point_087, 

CASE
            WHEN RFXT088 IS NOT NULL THEN SAFE_CAST(RFXT088 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT088 IS NULL THEN NULL 
ELSE RFXT088 
 END as reflex_time_array_data_point_088, 

CASE
            WHEN RFXT089 IS NOT NULL THEN SAFE_CAST(RFXT089 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT089 IS NULL THEN NULL 
ELSE RFXT089 
 END as reflex_time_array_data_point_089, 

CASE
            WHEN RFXT090 IS NOT NULL THEN SAFE_CAST(RFXT090 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT090 IS NULL THEN NULL 
ELSE RFXT090 
 END as reflex_time_array_data_point_090, 

CASE
            WHEN RFXT091 IS NOT NULL THEN SAFE_CAST(RFXT091 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT091 IS NULL THEN NULL 
ELSE RFXT091 
 END as reflex_time_array_data_point_091, 

CASE
            WHEN RFXT092 IS NOT NULL THEN SAFE_CAST(RFXT092 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT092 IS NULL THEN NULL 
ELSE RFXT092 
 END as reflex_time_array_data_point_092, 

CASE
            WHEN RFXT093 IS NOT NULL THEN SAFE_CAST(RFXT093 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT093 IS NULL THEN NULL 
ELSE RFXT093 
 END as reflex_time_array_data_point_093, 

CASE
            WHEN RFXT094 IS NOT NULL THEN SAFE_CAST(RFXT094 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT094 IS NULL THEN NULL 
ELSE RFXT094 
 END as reflex_time_array_data_point_094, 

CASE
            WHEN RFXT095 IS NOT NULL THEN SAFE_CAST(RFXT095 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT095 IS NULL THEN NULL 
ELSE RFXT095 
 END as reflex_time_array_data_point_095, 

CASE
            WHEN RFXT096 IS NOT NULL THEN SAFE_CAST(RFXT096 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT096 IS NULL THEN NULL 
ELSE RFXT096 
 END as reflex_time_array_data_point_096, 

CASE
            WHEN RFXT097 IS NOT NULL THEN SAFE_CAST(RFXT097 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT097 IS NULL THEN NULL 
ELSE RFXT097 
 END as reflex_time_array_data_point_097, 

CASE
            WHEN RFXT098 IS NOT NULL THEN SAFE_CAST(RFXT098 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT098 IS NULL THEN NULL 
ELSE RFXT098 
 END as reflex_time_array_data_point_098, 

CASE
            WHEN RFXT099 IS NOT NULL THEN SAFE_CAST(RFXT099 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT099 IS NULL THEN NULL 
ELSE RFXT099 
 END as reflex_time_array_data_point_099, 

CASE
            WHEN RFXT100 IS NOT NULL THEN SAFE_CAST(RFXT100 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT100 IS NULL THEN NULL 
ELSE RFXT100 
 END as reflex_time_array_data_point_100, 

CASE
            WHEN RFXT101 IS NOT NULL THEN SAFE_CAST(RFXT101 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT101 IS NULL THEN NULL 
ELSE RFXT101 
 END as reflex_time_array_data_point_101, 

CASE
            WHEN RFXT102 IS NOT NULL THEN SAFE_CAST(RFXT102 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT102 IS NULL THEN NULL 
ELSE RFXT102 
 END as reflex_time_array_data_point_102, 

CASE
            WHEN RFXT103 IS NOT NULL THEN SAFE_CAST(RFXT103 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT103 IS NULL THEN NULL 
ELSE RFXT103 
 END as reflex_time_array_data_point_103, 

CASE
            WHEN RFXT104 IS NOT NULL THEN SAFE_CAST(RFXT104 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT104 IS NULL THEN NULL 
ELSE RFXT104 
 END as reflex_time_array_data_point_104, 

CASE
            WHEN RFXT105 IS NOT NULL THEN SAFE_CAST(RFXT105 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT105 IS NULL THEN NULL 
ELSE RFXT105 
 END as reflex_time_array_data_point_105, 

CASE
            WHEN RFXT106 IS NOT NULL THEN SAFE_CAST(RFXT106 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT106 IS NULL THEN NULL 
ELSE RFXT106 
 END as reflex_time_array_data_point_106, 

CASE
            WHEN RFXT107 IS NOT NULL THEN SAFE_CAST(RFXT107 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT107 IS NULL THEN NULL 
ELSE RFXT107 
 END as reflex_time_array_data_point_107, 

CASE
            WHEN RFXT108 IS NOT NULL THEN SAFE_CAST(RFXT108 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT108 IS NULL THEN NULL 
ELSE RFXT108 
 END as reflex_time_array_data_point_108, 

CASE
            WHEN RFXT109 IS NOT NULL THEN SAFE_CAST(RFXT109 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT109 IS NULL THEN NULL 
ELSE RFXT109 
 END as reflex_time_array_data_point_109, 

CASE
            WHEN RFXT110 IS NOT NULL THEN SAFE_CAST(RFXT110 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT110 IS NULL THEN NULL 
ELSE RFXT110 
 END as reflex_time_array_data_point_110, 

CASE
            WHEN RFXT111 IS NOT NULL THEN SAFE_CAST(RFXT111 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT111 IS NULL THEN NULL 
ELSE RFXT111 
 END as reflex_time_array_data_point_111, 

CASE
            WHEN RFXT112 IS NOT NULL THEN SAFE_CAST(RFXT112 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT112 IS NULL THEN NULL 
ELSE RFXT112 
 END as reflex_time_array_data_point_112, 

CASE
            WHEN RFXT113 IS NOT NULL THEN SAFE_CAST(RFXT113 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT113 IS NULL THEN NULL 
ELSE RFXT113 
 END as reflex_time_array_data_point_113, 

CASE
            WHEN RFXT114 IS NOT NULL THEN SAFE_CAST(RFXT114 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT114 IS NULL THEN NULL 
ELSE RFXT114 
 END as reflex_time_array_data_point_114, 

CASE
            WHEN RFXT115 IS NOT NULL THEN SAFE_CAST(RFXT115 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT115 IS NULL THEN NULL 
ELSE RFXT115 
 END as reflex_time_array_data_point_115, 

CASE
            WHEN RFXT116 IS NOT NULL THEN SAFE_CAST(RFXT116 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT116 IS NULL THEN NULL 
ELSE RFXT116 
 END as reflex_time_array_data_point_116, 

CASE
            WHEN RFXT117 IS NOT NULL THEN SAFE_CAST(RFXT117 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT117 IS NULL THEN NULL 
ELSE RFXT117 
 END as reflex_time_array_data_point_117, 

CASE
            WHEN RFXT118 IS NOT NULL THEN SAFE_CAST(RFXT118 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT118 IS NULL THEN NULL 
ELSE RFXT118 
 END as reflex_time_array_data_point_118, 

CASE
            WHEN RFXT119 IS NOT NULL THEN SAFE_CAST(RFXT119 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT119 IS NULL THEN NULL 
ELSE RFXT119 
 END as reflex_time_array_data_point_119, 

CASE
            WHEN RFXT120 IS NOT NULL THEN SAFE_CAST(RFXT120 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT120 IS NULL THEN NULL 
ELSE RFXT120 
 END as reflex_time_array_data_point_120, 

CASE
            WHEN RFXT121 IS NOT NULL THEN SAFE_CAST(RFXT121 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT121 IS NULL THEN NULL 
ELSE RFXT121 
 END as reflex_time_array_data_point_121, 

CASE
            WHEN RFXT122 IS NOT NULL THEN SAFE_CAST(RFXT122 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT122 IS NULL THEN NULL 
ELSE RFXT122 
 END as reflex_time_array_data_point_122, 

CASE
            WHEN RFXT123 IS NOT NULL THEN SAFE_CAST(RFXT123 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT123 IS NULL THEN NULL 
ELSE RFXT123 
 END as reflex_time_array_data_point_123, 

CASE
            WHEN RFXT124 IS NOT NULL THEN SAFE_CAST(RFXT124 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT124 IS NULL THEN NULL 
ELSE RFXT124 
 END as reflex_time_array_data_point_124, 

CASE
            WHEN RFXT125 IS NOT NULL THEN SAFE_CAST(RFXT125 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT125 IS NULL THEN NULL 
ELSE RFXT125 
 END as reflex_time_array_data_point_125, 

CASE
            WHEN RFXT126 IS NOT NULL THEN SAFE_CAST(RFXT126 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT126 IS NULL THEN NULL 
ELSE RFXT126 
 END as reflex_time_array_data_point_126, 

CASE
            WHEN RFXT127 IS NOT NULL THEN SAFE_CAST(RFXT127 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT127 IS NULL THEN NULL 
ELSE RFXT127 
 END as reflex_time_array_data_point_127, 

CASE
            WHEN RFXT128 IS NOT NULL THEN SAFE_CAST(RFXT128 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT128 IS NULL THEN NULL 
ELSE RFXT128 
 END as reflex_time_array_data_point_128, 

CASE
            WHEN RFXT129 IS NOT NULL THEN SAFE_CAST(RFXT129 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT129 IS NULL THEN NULL 
ELSE RFXT129 
 END as reflex_time_array_data_point_129, 

CASE
            WHEN RFXT130 IS NOT NULL THEN SAFE_CAST(RFXT130 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT130 IS NULL THEN NULL 
ELSE RFXT130 
 END as reflex_time_array_data_point_130, 

CASE
            WHEN RFXT131 IS NOT NULL THEN SAFE_CAST(RFXT131 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT131 IS NULL THEN NULL 
ELSE RFXT131 
 END as reflex_time_array_data_point_131, 

CASE
            WHEN RFXT132 IS NOT NULL THEN SAFE_CAST(RFXT132 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT132 IS NULL THEN NULL 
ELSE RFXT132 
 END as reflex_time_array_data_point_132, 

CASE
            WHEN RFXT133 IS NOT NULL THEN SAFE_CAST(RFXT133 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT133 IS NULL THEN NULL 
ELSE RFXT133 
 END as reflex_time_array_data_point_133, 

CASE
            WHEN RFXT134 IS NOT NULL THEN SAFE_CAST(RFXT134 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT134 IS NULL THEN NULL 
ELSE RFXT134 
 END as reflex_time_array_data_point_134, 

CASE
            WHEN RFXT135 IS NOT NULL THEN SAFE_CAST(RFXT135 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT135 IS NULL THEN NULL 
ELSE RFXT135 
 END as reflex_time_array_data_point_135, 

CASE
            WHEN RFXT136 IS NOT NULL THEN SAFE_CAST(RFXT136 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT136 IS NULL THEN NULL 
ELSE RFXT136 
 END as reflex_time_array_data_point_136, 

CASE
            WHEN RFXT137 IS NOT NULL THEN SAFE_CAST(RFXT137 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT137 IS NULL THEN NULL 
ELSE RFXT137 
 END as reflex_time_array_data_point_137, 

CASE
            WHEN RFXT138 IS NOT NULL THEN SAFE_CAST(RFXT138 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT138 IS NULL THEN NULL 
ELSE RFXT138 
 END as reflex_time_array_data_point_138, 

CASE
            WHEN RFXT139 IS NOT NULL THEN SAFE_CAST(RFXT139 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT139 IS NULL THEN NULL 
ELSE RFXT139 
 END as reflex_time_array_data_point_139, 

CASE
            WHEN RFXT140 IS NOT NULL THEN SAFE_CAST(RFXT140 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT140 IS NULL THEN NULL 
ELSE RFXT140 
 END as reflex_time_array_data_point_140, 

CASE
            WHEN RFXT141 IS NOT NULL THEN SAFE_CAST(RFXT141 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT141 IS NULL THEN NULL 
ELSE RFXT141 
 END as reflex_time_array_data_point_141, 

CASE
            WHEN RFXT142 IS NOT NULL THEN SAFE_CAST(RFXT142 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT142 IS NULL THEN NULL 
ELSE RFXT142 
 END as reflex_time_array_data_point_142, 

CASE
            WHEN RFXT143 IS NOT NULL THEN SAFE_CAST(RFXT143 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT143 IS NULL THEN NULL 
ELSE RFXT143 
 END as reflex_time_array_data_point_143, 

CASE
            WHEN RFXT144 IS NOT NULL THEN SAFE_CAST(RFXT144 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT144 IS NULL THEN NULL 
ELSE RFXT144 
 END as reflex_time_array_data_point_144, 

CASE
            WHEN RFXT145 IS NOT NULL THEN SAFE_CAST(RFXT145 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT145 IS NULL THEN NULL 
ELSE RFXT145 
 END as reflex_time_array_data_point_145, 

CASE
            WHEN RFXT146 IS NOT NULL THEN SAFE_CAST(RFXT146 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT146 IS NULL THEN NULL 
ELSE RFXT146 
 END as reflex_time_array_data_point_146, 

CASE
            WHEN RFXT147 IS NOT NULL THEN SAFE_CAST(RFXT147 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT147 IS NULL THEN NULL 
ELSE RFXT147 
 END as reflex_time_array_data_point_147, 

CASE
            WHEN RFXT148 IS NOT NULL THEN SAFE_CAST(RFXT148 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT148 IS NULL THEN NULL 
ELSE RFXT148 
 END as reflex_time_array_data_point_148, 

CASE
            WHEN RFXT149 IS NOT NULL THEN SAFE_CAST(RFXT149 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT149 IS NULL THEN NULL 
ELSE RFXT149 
 END as reflex_time_array_data_point_149, 

CASE
            WHEN RFXT150 IS NOT NULL THEN SAFE_CAST(RFXT150 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT150 IS NULL THEN NULL 
ELSE RFXT150 
 END as reflex_time_array_data_point_150, 

CASE
            WHEN RFXT151 IS NOT NULL THEN SAFE_CAST(RFXT151 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT151 IS NULL THEN NULL 
ELSE RFXT151 
 END as reflex_time_array_data_point_151, 

CASE
            WHEN RFXT152 IS NOT NULL THEN SAFE_CAST(RFXT152 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT152 IS NULL THEN NULL 
ELSE RFXT152 
 END as reflex_time_array_data_point_152, 

CASE
            WHEN RFXT153 IS NOT NULL THEN SAFE_CAST(RFXT153 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT153 IS NULL THEN NULL 
ELSE RFXT153 
 END as reflex_time_array_data_point_153, 

CASE
            WHEN RFXT154 IS NOT NULL THEN SAFE_CAST(RFXT154 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT154 IS NULL THEN NULL 
ELSE RFXT154 
 END as reflex_time_array_data_point_154, 

CASE
            WHEN RFXT155 IS NOT NULL THEN SAFE_CAST(RFXT155 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT155 IS NULL THEN NULL 
ELSE RFXT155 
 END as reflex_time_array_data_point_155, 

CASE
            WHEN RFXT156 IS NOT NULL THEN SAFE_CAST(RFXT156 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT156 IS NULL THEN NULL 
ELSE RFXT156 
 END as reflex_time_array_data_point_156, 

CASE
            WHEN RFXT157 IS NOT NULL THEN SAFE_CAST(RFXT157 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT157 IS NULL THEN NULL 
ELSE RFXT157 
 END as reflex_time_array_data_point_157, 

CASE
            WHEN RFXT158 IS NOT NULL THEN SAFE_CAST(RFXT158 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT158 IS NULL THEN NULL 
ELSE RFXT158 
 END as reflex_time_array_data_point_158, 

CASE
            WHEN RFXT159 IS NOT NULL THEN SAFE_CAST(RFXT159 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT159 IS NULL THEN NULL 
ELSE RFXT159 
 END as reflex_time_array_data_point_159, 

CASE
            WHEN RFXT160 IS NOT NULL THEN SAFE_CAST(RFXT160 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT160 IS NULL THEN NULL 
ELSE RFXT160 
 END as reflex_time_array_data_point_160, 

CASE
            WHEN RFXT161 IS NOT NULL THEN SAFE_CAST(RFXT161 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT161 IS NULL THEN NULL 
ELSE RFXT161 
 END as reflex_time_array_data_point_161, 

CASE
            WHEN RFXT162 IS NOT NULL THEN SAFE_CAST(RFXT162 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT162 IS NULL THEN NULL 
ELSE RFXT162 
 END as reflex_time_array_data_point_162, 

CASE
            WHEN RFXT163 IS NOT NULL THEN SAFE_CAST(RFXT163 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT163 IS NULL THEN NULL 
ELSE RFXT163 
 END as reflex_time_array_data_point_163, 

CASE
            WHEN RFXT164 IS NOT NULL THEN SAFE_CAST(RFXT164 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT164 IS NULL THEN NULL 
ELSE RFXT164 
 END as reflex_time_array_data_point_164, 

CASE
            WHEN RFXT165 IS NOT NULL THEN SAFE_CAST(RFXT165 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT165 IS NULL THEN NULL 
ELSE RFXT165 
 END as reflex_time_array_data_point_165, 

CASE
            WHEN RFXT166 IS NOT NULL THEN SAFE_CAST(RFXT166 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT166 IS NULL THEN NULL 
ELSE RFXT166 
 END as reflex_time_array_data_point_166, 

CASE
            WHEN RFXT167 IS NOT NULL THEN SAFE_CAST(RFXT167 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT167 IS NULL THEN NULL 
ELSE RFXT167 
 END as reflex_time_array_data_point_167, 

CASE
            WHEN RFXT168 IS NOT NULL THEN SAFE_CAST(RFXT168 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT168 IS NULL THEN NULL 
ELSE RFXT168 
 END as reflex_time_array_data_point_168, 

CASE
            WHEN RFXT169 IS NOT NULL THEN SAFE_CAST(RFXT169 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT169 IS NULL THEN NULL 
ELSE RFXT169 
 END as reflex_time_array_data_point_169, 

CASE
            WHEN RFXT170 IS NOT NULL THEN SAFE_CAST(RFXT170 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXT170 IS NULL THEN NULL 
ELSE RFXT170 
 END as reflex_time_array_data_point_170, 

CASE
            WHEN RFXC001 IS NOT NULL THEN SAFE_CAST(RFXC001 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC001 IS NULL THEN NULL 
ELSE RFXC001 
 END as reflex_compliance_array_data_point_001, 

CASE
            WHEN RFXC002 IS NOT NULL THEN SAFE_CAST(RFXC002 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC002 IS NULL THEN NULL 
ELSE RFXC002 
 END as reflex_compliance_array_data_point_002, 

CASE
            WHEN RFXC003 IS NOT NULL THEN SAFE_CAST(RFXC003 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC003 IS NULL THEN NULL 
ELSE RFXC003 
 END as reflex_compliance_array_data_point_003, 

CASE
            WHEN RFXC004 IS NOT NULL THEN SAFE_CAST(RFXC004 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC004 IS NULL THEN NULL 
ELSE RFXC004 
 END as reflex_compliance_array_data_point_004, 

CASE
            WHEN RFXC005 IS NOT NULL THEN SAFE_CAST(RFXC005 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC005 IS NULL THEN NULL 
ELSE RFXC005 
 END as reflex_compliance_array_data_point_005, 

CASE
            WHEN RFXC006 IS NOT NULL THEN SAFE_CAST(RFXC006 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC006 IS NULL THEN NULL 
ELSE RFXC006 
 END as reflex_compliance_array_data_point_006, 

CASE
            WHEN RFXC007 IS NOT NULL THEN SAFE_CAST(RFXC007 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC007 IS NULL THEN NULL 
ELSE RFXC007 
 END as reflex_compliance_array_data_point_007, 

CASE
            WHEN RFXC008 IS NOT NULL THEN SAFE_CAST(RFXC008 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC008 IS NULL THEN NULL 
ELSE RFXC008 
 END as reflex_compliance_array_data_point_008, 

CASE
            WHEN RFXC009 IS NOT NULL THEN SAFE_CAST(RFXC009 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC009 IS NULL THEN NULL 
ELSE RFXC009 
 END as reflex_compliance_array_data_point_009, 

CASE
            WHEN RFXC010 IS NOT NULL THEN SAFE_CAST(RFXC010 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC010 IS NULL THEN NULL 
ELSE RFXC010 
 END as reflex_compliance_array_data_point_010, 

CASE
            WHEN RFXC011 IS NOT NULL THEN SAFE_CAST(RFXC011 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC011 IS NULL THEN NULL 
ELSE RFXC011 
 END as reflex_compliance_array_data_point_011, 

CASE
            WHEN RFXC012 IS NOT NULL THEN SAFE_CAST(RFXC012 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC012 IS NULL THEN NULL 
ELSE RFXC012 
 END as reflex_compliance_array_data_point_012, 

CASE
            WHEN RFXC013 IS NOT NULL THEN SAFE_CAST(RFXC013 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC013 IS NULL THEN NULL 
ELSE RFXC013 
 END as reflex_compliance_array_data_point_013, 

CASE
            WHEN RFXC014 IS NOT NULL THEN SAFE_CAST(RFXC014 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC014 IS NULL THEN NULL 
ELSE RFXC014 
 END as reflex_compliance_array_data_point_014, 

CASE
            WHEN RFXC015 IS NOT NULL THEN SAFE_CAST(RFXC015 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC015 IS NULL THEN NULL 
ELSE RFXC015 
 END as reflex_compliance_array_data_point_015, 

CASE
            WHEN RFXC016 IS NOT NULL THEN SAFE_CAST(RFXC016 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC016 IS NULL THEN NULL 
ELSE RFXC016 
 END as reflex_compliance_array_data_point_016, 

CASE
            WHEN RFXC017 IS NOT NULL THEN SAFE_CAST(RFXC017 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC017 IS NULL THEN NULL 
ELSE RFXC017 
 END as reflex_compliance_array_data_point_017, 

CASE
            WHEN RFXC018 IS NOT NULL THEN SAFE_CAST(RFXC018 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC018 IS NULL THEN NULL 
ELSE RFXC018 
 END as reflex_compliance_array_data_point_018, 

CASE
            WHEN RFXC019 IS NOT NULL THEN SAFE_CAST(RFXC019 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC019 IS NULL THEN NULL 
ELSE RFXC019 
 END as reflex_compliance_array_data_point_019, 

CASE
            WHEN RFXC020 IS NOT NULL THEN SAFE_CAST(RFXC020 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC020 IS NULL THEN NULL 
ELSE RFXC020 
 END as reflex_compliance_array_data_point_020, 

CASE
            WHEN RFXC021 IS NOT NULL THEN SAFE_CAST(RFXC021 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC021 IS NULL THEN NULL 
ELSE RFXC021 
 END as reflex_compliance_array_data_point_021, 

CASE
            WHEN RFXC022 IS NOT NULL THEN SAFE_CAST(RFXC022 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC022 IS NULL THEN NULL 
ELSE RFXC022 
 END as reflex_compliance_array_data_point_022, 

CASE
            WHEN RFXC023 IS NOT NULL THEN SAFE_CAST(RFXC023 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC023 IS NULL THEN NULL 
ELSE RFXC023 
 END as reflex_compliance_array_data_point_023, 

CASE
            WHEN RFXC024 IS NOT NULL THEN SAFE_CAST(RFXC024 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC024 IS NULL THEN NULL 
ELSE RFXC024 
 END as reflex_compliance_array_data_point_024, 

CASE
            WHEN RFXC025 IS NOT NULL THEN SAFE_CAST(RFXC025 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC025 IS NULL THEN NULL 
ELSE RFXC025 
 END as reflex_compliance_array_data_point_025, 

CASE
            WHEN RFXC026 IS NOT NULL THEN SAFE_CAST(RFXC026 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC026 IS NULL THEN NULL 
ELSE RFXC026 
 END as reflex_compliance_array_data_point_026, 

CASE
            WHEN RFXC027 IS NOT NULL THEN SAFE_CAST(RFXC027 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC027 IS NULL THEN NULL 
ELSE RFXC027 
 END as reflex_compliance_array_data_point_027, 

CASE
            WHEN RFXC028 IS NOT NULL THEN SAFE_CAST(RFXC028 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC028 IS NULL THEN NULL 
ELSE RFXC028 
 END as reflex_compliance_array_data_point_028, 

CASE
            WHEN RFXC029 IS NOT NULL THEN SAFE_CAST(RFXC029 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC029 IS NULL THEN NULL 
ELSE RFXC029 
 END as reflex_compliance_array_data_point_029, 

CASE
            WHEN RFXC030 IS NOT NULL THEN SAFE_CAST(RFXC030 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC030 IS NULL THEN NULL 
ELSE RFXC030 
 END as reflex_compliance_array_data_point_030, 

CASE
            WHEN RFXC031 IS NOT NULL THEN SAFE_CAST(RFXC031 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC031 IS NULL THEN NULL 
ELSE RFXC031 
 END as reflex_compliance_array_data_point_031, 

CASE
            WHEN RFXC032 IS NOT NULL THEN SAFE_CAST(RFXC032 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC032 IS NULL THEN NULL 
ELSE RFXC032 
 END as reflex_compliance_array_data_point_032, 

CASE
            WHEN RFXC033 IS NOT NULL THEN SAFE_CAST(RFXC033 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC033 IS NULL THEN NULL 
ELSE RFXC033 
 END as reflex_compliance_array_data_point_033, 

CASE
            WHEN RFXC034 IS NOT NULL THEN SAFE_CAST(RFXC034 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC034 IS NULL THEN NULL 
ELSE RFXC034 
 END as reflex_compliance_array_data_point_034, 

CASE
            WHEN RFXC035 IS NOT NULL THEN SAFE_CAST(RFXC035 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC035 IS NULL THEN NULL 
ELSE RFXC035 
 END as reflex_compliance_array_data_point_035, 

CASE
            WHEN RFXC036 IS NOT NULL THEN SAFE_CAST(RFXC036 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC036 IS NULL THEN NULL 
ELSE RFXC036 
 END as reflex_compliance_array_data_point_036, 

CASE
            WHEN RFXC037 IS NOT NULL THEN SAFE_CAST(RFXC037 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC037 IS NULL THEN NULL 
ELSE RFXC037 
 END as reflex_compliance_array_data_point_037, 

CASE
            WHEN RFXC038 IS NOT NULL THEN SAFE_CAST(RFXC038 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC038 IS NULL THEN NULL 
ELSE RFXC038 
 END as reflex_compliance_array_data_point_038, 

CASE
            WHEN RFXC039 IS NOT NULL THEN SAFE_CAST(RFXC039 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC039 IS NULL THEN NULL 
ELSE RFXC039 
 END as reflex_compliance_array_data_point_039, 

CASE
            WHEN RFXC040 IS NOT NULL THEN SAFE_CAST(RFXC040 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC040 IS NULL THEN NULL 
ELSE RFXC040 
 END as reflex_compliance_array_data_point_040, 

CASE
            WHEN RFXC041 IS NOT NULL THEN SAFE_CAST(RFXC041 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC041 IS NULL THEN NULL 
ELSE RFXC041 
 END as reflex_compliance_array_data_point_041, 

CASE
            WHEN RFXC042 IS NOT NULL THEN SAFE_CAST(RFXC042 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC042 IS NULL THEN NULL 
ELSE RFXC042 
 END as reflex_compliance_array_data_point_042, 

CASE
            WHEN RFXC043 IS NOT NULL THEN SAFE_CAST(RFXC043 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC043 IS NULL THEN NULL 
ELSE RFXC043 
 END as reflex_compliance_array_data_point_043, 

CASE
            WHEN RFXC044 IS NOT NULL THEN SAFE_CAST(RFXC044 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC044 IS NULL THEN NULL 
ELSE RFXC044 
 END as reflex_compliance_array_data_point_044, 

CASE
            WHEN RFXC045 IS NOT NULL THEN SAFE_CAST(RFXC045 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC045 IS NULL THEN NULL 
ELSE RFXC045 
 END as reflex_compliance_array_data_point_045, 

CASE
            WHEN RFXC046 IS NOT NULL THEN SAFE_CAST(RFXC046 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC046 IS NULL THEN NULL 
ELSE RFXC046 
 END as reflex_compliance_array_data_point_046, 

CASE
            WHEN RFXC047 IS NOT NULL THEN SAFE_CAST(RFXC047 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC047 IS NULL THEN NULL 
ELSE RFXC047 
 END as reflex_compliance_array_data_point_047, 

CASE
            WHEN RFXC048 IS NOT NULL THEN SAFE_CAST(RFXC048 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC048 IS NULL THEN NULL 
ELSE RFXC048 
 END as reflex_compliance_array_data_point_048, 

CASE
            WHEN RFXC049 IS NOT NULL THEN SAFE_CAST(RFXC049 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC049 IS NULL THEN NULL 
ELSE RFXC049 
 END as reflex_compliance_array_data_point_049, 

CASE
            WHEN RFXC050 IS NOT NULL THEN SAFE_CAST(RFXC050 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC050 IS NULL THEN NULL 
ELSE RFXC050 
 END as reflex_compliance_array_data_point_050, 

CASE
            WHEN RFXC051 IS NOT NULL THEN SAFE_CAST(RFXC051 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC051 IS NULL THEN NULL 
ELSE RFXC051 
 END as reflex_compliance_array_data_point_051, 

CASE
            WHEN RFXC052 IS NOT NULL THEN SAFE_CAST(RFXC052 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC052 IS NULL THEN NULL 
ELSE RFXC052 
 END as reflex_compliance_array_data_point_052, 

CASE
            WHEN RFXC053 IS NOT NULL THEN SAFE_CAST(RFXC053 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC053 IS NULL THEN NULL 
ELSE RFXC053 
 END as reflex_compliance_array_data_point_053, 

CASE
            WHEN RFXC054 IS NOT NULL THEN SAFE_CAST(RFXC054 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC054 IS NULL THEN NULL 
ELSE RFXC054 
 END as reflex_compliance_array_data_point_054, 

CASE
            WHEN RFXC055 IS NOT NULL THEN SAFE_CAST(RFXC055 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC055 IS NULL THEN NULL 
ELSE RFXC055 
 END as reflex_compliance_array_data_point_055, 

CASE
            WHEN RFXC056 IS NOT NULL THEN SAFE_CAST(RFXC056 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC056 IS NULL THEN NULL 
ELSE RFXC056 
 END as reflex_compliance_array_data_point_056, 

CASE
            WHEN RFXC057 IS NOT NULL THEN SAFE_CAST(RFXC057 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC057 IS NULL THEN NULL 
ELSE RFXC057 
 END as reflex_compliance_array_data_point_057, 

CASE
            WHEN RFXC058 IS NOT NULL THEN SAFE_CAST(RFXC058 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC058 IS NULL THEN NULL 
ELSE RFXC058 
 END as reflex_compliance_array_data_point_058, 

CASE
            WHEN RFXC059 IS NOT NULL THEN SAFE_CAST(RFXC059 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC059 IS NULL THEN NULL 
ELSE RFXC059 
 END as reflex_compliance_array_data_point_059, 

CASE
            WHEN RFXC060 IS NOT NULL THEN SAFE_CAST(RFXC060 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC060 IS NULL THEN NULL 
ELSE RFXC060 
 END as reflex_compliance_array_data_point_060, 

CASE
            WHEN RFXC061 IS NOT NULL THEN SAFE_CAST(RFXC061 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC061 IS NULL THEN NULL 
ELSE RFXC061 
 END as reflex_compliance_array_data_point_061, 

CASE
            WHEN RFXC062 IS NOT NULL THEN SAFE_CAST(RFXC062 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC062 IS NULL THEN NULL 
ELSE RFXC062 
 END as reflex_compliance_array_data_point_062, 

CASE
            WHEN RFXC063 IS NOT NULL THEN SAFE_CAST(RFXC063 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC063 IS NULL THEN NULL 
ELSE RFXC063 
 END as reflex_compliance_array_data_point_063, 

CASE
            WHEN RFXC064 IS NOT NULL THEN SAFE_CAST(RFXC064 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC064 IS NULL THEN NULL 
ELSE RFXC064 
 END as reflex_compliance_array_data_point_064, 

CASE
            WHEN RFXC065 IS NOT NULL THEN SAFE_CAST(RFXC065 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC065 IS NULL THEN NULL 
ELSE RFXC065 
 END as reflex_compliance_array_data_point_065, 

CASE
            WHEN RFXC066 IS NOT NULL THEN SAFE_CAST(RFXC066 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC066 IS NULL THEN NULL 
ELSE RFXC066 
 END as reflex_compliance_array_data_point_066, 

CASE
            WHEN RFXC067 IS NOT NULL THEN SAFE_CAST(RFXC067 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC067 IS NULL THEN NULL 
ELSE RFXC067 
 END as reflex_compliance_array_data_point_067, 

CASE
            WHEN RFXC068 IS NOT NULL THEN SAFE_CAST(RFXC068 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC068 IS NULL THEN NULL 
ELSE RFXC068 
 END as reflex_compliance_array_data_point_068, 

CASE
            WHEN RFXC069 IS NOT NULL THEN SAFE_CAST(RFXC069 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC069 IS NULL THEN NULL 
ELSE RFXC069 
 END as reflex_compliance_array_data_point_069, 

CASE
            WHEN RFXC070 IS NOT NULL THEN SAFE_CAST(RFXC070 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC070 IS NULL THEN NULL 
ELSE RFXC070 
 END as reflex_compliance_array_data_point_070, 

CASE
            WHEN RFXC071 IS NOT NULL THEN SAFE_CAST(RFXC071 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC071 IS NULL THEN NULL 
ELSE RFXC071 
 END as reflex_compliance_array_data_point_071, 

CASE
            WHEN RFXC072 IS NOT NULL THEN SAFE_CAST(RFXC072 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC072 IS NULL THEN NULL 
ELSE RFXC072 
 END as reflex_compliance_array_data_point_072, 

CASE
            WHEN RFXC073 IS NOT NULL THEN SAFE_CAST(RFXC073 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC073 IS NULL THEN NULL 
ELSE RFXC073 
 END as reflex_compliance_array_data_point_073, 

CASE
            WHEN RFXC074 IS NOT NULL THEN SAFE_CAST(RFXC074 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC074 IS NULL THEN NULL 
ELSE RFXC074 
 END as reflex_compliance_array_data_point_074, 

CASE
            WHEN RFXC075 IS NOT NULL THEN SAFE_CAST(RFXC075 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC075 IS NULL THEN NULL 
ELSE RFXC075 
 END as reflex_compliance_array_data_point_075, 

CASE
            WHEN RFXC076 IS NOT NULL THEN SAFE_CAST(RFXC076 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC076 IS NULL THEN NULL 
ELSE RFXC076 
 END as reflex_compliance_array_data_point_076, 

CASE
            WHEN RFXC077 IS NOT NULL THEN SAFE_CAST(RFXC077 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC077 IS NULL THEN NULL 
ELSE RFXC077 
 END as reflex_compliance_array_data_point_077, 

CASE
            WHEN RFXC078 IS NOT NULL THEN SAFE_CAST(RFXC078 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC078 IS NULL THEN NULL 
ELSE RFXC078 
 END as reflex_compliance_array_data_point_078, 

CASE
            WHEN RFXC079 IS NOT NULL THEN SAFE_CAST(RFXC079 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC079 IS NULL THEN NULL 
ELSE RFXC079 
 END as reflex_compliance_array_data_point_079, 

CASE
            WHEN RFXC080 IS NOT NULL THEN SAFE_CAST(RFXC080 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC080 IS NULL THEN NULL 
ELSE RFXC080 
 END as reflex_compliance_array_data_point_080, 

CASE
            WHEN RFXC081 IS NOT NULL THEN SAFE_CAST(RFXC081 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC081 IS NULL THEN NULL 
ELSE RFXC081 
 END as reflex_compliance_array_data_point_081, 

CASE
            WHEN RFXC082 IS NOT NULL THEN SAFE_CAST(RFXC082 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC082 IS NULL THEN NULL 
ELSE RFXC082 
 END as reflex_compliance_array_data_point_082, 

CASE
            WHEN RFXC083 IS NOT NULL THEN SAFE_CAST(RFXC083 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC083 IS NULL THEN NULL 
ELSE RFXC083 
 END as reflex_compliance_array_data_point_083, 

CASE
            WHEN RFXC084 IS NOT NULL THEN SAFE_CAST(RFXC084 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC084 IS NULL THEN NULL 
ELSE RFXC084 
 END as reflex_compliance_array_data_point_084, 

CASE
            WHEN RFXC085 IS NOT NULL THEN SAFE_CAST(RFXC085 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC085 IS NULL THEN NULL 
ELSE RFXC085 
 END as reflex_compliance_array_data_point_085, 

CASE
            WHEN RFXC086 IS NOT NULL THEN SAFE_CAST(RFXC086 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC086 IS NULL THEN NULL 
ELSE RFXC086 
 END as reflex_compliance_array_data_point_086, 

CASE
            WHEN RFXC087 IS NOT NULL THEN SAFE_CAST(RFXC087 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC087 IS NULL THEN NULL 
ELSE RFXC087 
 END as reflex_compliance_array_data_point_087, 

CASE
            WHEN RFXC088 IS NOT NULL THEN SAFE_CAST(RFXC088 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC088 IS NULL THEN NULL 
ELSE RFXC088 
 END as reflex_compliance_array_data_point_088, 

CASE
            WHEN RFXC089 IS NOT NULL THEN SAFE_CAST(RFXC089 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC089 IS NULL THEN NULL 
ELSE RFXC089 
 END as reflex_compliance_array_data_point_089, 

CASE
            WHEN RFXC090 IS NOT NULL THEN SAFE_CAST(RFXC090 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC090 IS NULL THEN NULL 
ELSE RFXC090 
 END as reflex_compliance_array_data_point_090, 

CASE
            WHEN RFXC091 IS NOT NULL THEN SAFE_CAST(RFXC091 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC091 IS NULL THEN NULL 
ELSE RFXC091 
 END as reflex_compliance_array_data_point_091, 

CASE
            WHEN RFXC092 IS NOT NULL THEN SAFE_CAST(RFXC092 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC092 IS NULL THEN NULL 
ELSE RFXC092 
 END as reflex_compliance_array_data_point_092, 

CASE
            WHEN RFXC093 IS NOT NULL THEN SAFE_CAST(RFXC093 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC093 IS NULL THEN NULL 
ELSE RFXC093 
 END as reflex_compliance_array_data_point_093, 

CASE
            WHEN RFXC094 IS NOT NULL THEN SAFE_CAST(RFXC094 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC094 IS NULL THEN NULL 
ELSE RFXC094 
 END as reflex_compliance_array_data_point_094, 

CASE
            WHEN RFXC095 IS NOT NULL THEN SAFE_CAST(RFXC095 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC095 IS NULL THEN NULL 
ELSE RFXC095 
 END as reflex_compliance_array_data_point_095, 

CASE
            WHEN RFXC096 IS NOT NULL THEN SAFE_CAST(RFXC096 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC096 IS NULL THEN NULL 
ELSE RFXC096 
 END as reflex_compliance_array_data_point_096, 

CASE
            WHEN RFXC097 IS NOT NULL THEN SAFE_CAST(RFXC097 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC097 IS NULL THEN NULL 
ELSE RFXC097 
 END as reflex_compliance_array_data_point_097, 

CASE
            WHEN RFXC098 IS NOT NULL THEN SAFE_CAST(RFXC098 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC098 IS NULL THEN NULL 
ELSE RFXC098 
 END as reflex_compliance_array_data_point_098, 

CASE
            WHEN RFXC099 IS NOT NULL THEN SAFE_CAST(RFXC099 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC099 IS NULL THEN NULL 
ELSE RFXC099 
 END as reflex_compliance_array_data_point_099, 

CASE
            WHEN RFXC100 IS NOT NULL THEN SAFE_CAST(RFXC100 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC100 IS NULL THEN NULL 
ELSE RFXC100 
 END as reflex_compliance_array_data_point_100, 

CASE
            WHEN RFXC101 IS NOT NULL THEN SAFE_CAST(RFXC101 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC101 IS NULL THEN NULL 
ELSE RFXC101 
 END as reflex_compliance_array_data_point_101, 

CASE
            WHEN RFXC102 IS NOT NULL THEN SAFE_CAST(RFXC102 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC102 IS NULL THEN NULL 
ELSE RFXC102 
 END as reflex_compliance_array_data_point_102, 

CASE
            WHEN RFXC103 IS NOT NULL THEN SAFE_CAST(RFXC103 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC103 IS NULL THEN NULL 
ELSE RFXC103 
 END as reflex_compliance_array_data_point_103, 

CASE
            WHEN RFXC104 IS NOT NULL THEN SAFE_CAST(RFXC104 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC104 IS NULL THEN NULL 
ELSE RFXC104 
 END as reflex_compliance_array_data_point_104, 

CASE
            WHEN RFXC105 IS NOT NULL THEN SAFE_CAST(RFXC105 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC105 IS NULL THEN NULL 
ELSE RFXC105 
 END as reflex_compliance_array_data_point_105, 

CASE
            WHEN RFXC106 IS NOT NULL THEN SAFE_CAST(RFXC106 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC106 IS NULL THEN NULL 
ELSE RFXC106 
 END as reflex_compliance_array_data_point_106, 

CASE
            WHEN RFXC107 IS NOT NULL THEN SAFE_CAST(RFXC107 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC107 IS NULL THEN NULL 
ELSE RFXC107 
 END as reflex_compliance_array_data_point_107, 

CASE
            WHEN RFXC108 IS NOT NULL THEN SAFE_CAST(RFXC108 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC108 IS NULL THEN NULL 
ELSE RFXC108 
 END as reflex_compliance_array_data_point_108, 

CASE
            WHEN RFXC109 IS NOT NULL THEN SAFE_CAST(RFXC109 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC109 IS NULL THEN NULL 
ELSE RFXC109 
 END as reflex_compliance_array_data_point_109, 

CASE
            WHEN RFXC110 IS NOT NULL THEN SAFE_CAST(RFXC110 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC110 IS NULL THEN NULL 
ELSE RFXC110 
 END as reflex_compliance_array_data_point_110, 

CASE
            WHEN RFXC111 IS NOT NULL THEN SAFE_CAST(RFXC111 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC111 IS NULL THEN NULL 
ELSE RFXC111 
 END as reflex_compliance_array_data_point_111, 

CASE
            WHEN RFXC112 IS NOT NULL THEN SAFE_CAST(RFXC112 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC112 IS NULL THEN NULL 
ELSE RFXC112 
 END as reflex_compliance_array_data_point_112, 

CASE
            WHEN RFXC113 IS NOT NULL THEN SAFE_CAST(RFXC113 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC113 IS NULL THEN NULL 
ELSE RFXC113 
 END as reflex_compliance_array_data_point_113, 

CASE
            WHEN RFXC114 IS NOT NULL THEN SAFE_CAST(RFXC114 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC114 IS NULL THEN NULL 
ELSE RFXC114 
 END as reflex_compliance_array_data_point_114, 

CASE
            WHEN RFXC115 IS NOT NULL THEN SAFE_CAST(RFXC115 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC115 IS NULL THEN NULL 
ELSE RFXC115 
 END as reflex_compliance_array_data_point_115, 

CASE
            WHEN RFXC116 IS NOT NULL THEN SAFE_CAST(RFXC116 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC116 IS NULL THEN NULL 
ELSE RFXC116 
 END as reflex_compliance_array_data_point_116, 

CASE
            WHEN RFXC117 IS NOT NULL THEN SAFE_CAST(RFXC117 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC117 IS NULL THEN NULL 
ELSE RFXC117 
 END as reflex_compliance_array_data_point_117, 

CASE
            WHEN RFXC118 IS NOT NULL THEN SAFE_CAST(RFXC118 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC118 IS NULL THEN NULL 
ELSE RFXC118 
 END as reflex_compliance_array_data_point_118, 

CASE
            WHEN RFXC119 IS NOT NULL THEN SAFE_CAST(RFXC119 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC119 IS NULL THEN NULL 
ELSE RFXC119 
 END as reflex_compliance_array_data_point_119, 

CASE
            WHEN RFXC120 IS NOT NULL THEN SAFE_CAST(RFXC120 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC120 IS NULL THEN NULL 
ELSE RFXC120 
 END as reflex_compliance_array_data_point_120, 

CASE
            WHEN RFXC121 IS NOT NULL THEN SAFE_CAST(RFXC121 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC121 IS NULL THEN NULL 
ELSE RFXC121 
 END as reflex_compliance_array_data_point_121, 

CASE
            WHEN RFXC122 IS NOT NULL THEN SAFE_CAST(RFXC122 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC122 IS NULL THEN NULL 
ELSE RFXC122 
 END as reflex_compliance_array_data_point_122, 

CASE
            WHEN RFXC123 IS NOT NULL THEN SAFE_CAST(RFXC123 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC123 IS NULL THEN NULL 
ELSE RFXC123 
 END as reflex_compliance_array_data_point_123, 

CASE
            WHEN RFXC124 IS NOT NULL THEN SAFE_CAST(RFXC124 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC124 IS NULL THEN NULL 
ELSE RFXC124 
 END as reflex_compliance_array_data_point_124, 

CASE
            WHEN RFXC125 IS NOT NULL THEN SAFE_CAST(RFXC125 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC125 IS NULL THEN NULL 
ELSE RFXC125 
 END as reflex_compliance_array_data_point_125, 

CASE
            WHEN RFXC126 IS NOT NULL THEN SAFE_CAST(RFXC126 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC126 IS NULL THEN NULL 
ELSE RFXC126 
 END as reflex_compliance_array_data_point_126, 

CASE
            WHEN RFXC127 IS NOT NULL THEN SAFE_CAST(RFXC127 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC127 IS NULL THEN NULL 
ELSE RFXC127 
 END as reflex_compliance_array_data_point_127, 

CASE
            WHEN RFXC128 IS NOT NULL THEN SAFE_CAST(RFXC128 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC128 IS NULL THEN NULL 
ELSE RFXC128 
 END as reflex_compliance_array_data_point_128, 

CASE
            WHEN RFXC129 IS NOT NULL THEN SAFE_CAST(RFXC129 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC129 IS NULL THEN NULL 
ELSE RFXC129 
 END as reflex_compliance_array_data_point_129, 

CASE
            WHEN RFXC130 IS NOT NULL THEN SAFE_CAST(RFXC130 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC130 IS NULL THEN NULL 
ELSE RFXC130 
 END as reflex_compliance_array_data_point_130, 

CASE
            WHEN RFXC131 IS NOT NULL THEN SAFE_CAST(RFXC131 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC131 IS NULL THEN NULL 
ELSE RFXC131 
 END as reflex_compliance_array_data_point_131, 

CASE
            WHEN RFXC132 IS NOT NULL THEN SAFE_CAST(RFXC132 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC132 IS NULL THEN NULL 
ELSE RFXC132 
 END as reflex_compliance_array_data_point_132, 

CASE
            WHEN RFXC133 IS NOT NULL THEN SAFE_CAST(RFXC133 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC133 IS NULL THEN NULL 
ELSE RFXC133 
 END as reflex_compliance_array_data_point_133, 

CASE
            WHEN RFXC134 IS NOT NULL THEN SAFE_CAST(RFXC134 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC134 IS NULL THEN NULL 
ELSE RFXC134 
 END as reflex_compliance_array_data_point_134, 

CASE
            WHEN RFXC135 IS NOT NULL THEN SAFE_CAST(RFXC135 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC135 IS NULL THEN NULL 
ELSE RFXC135 
 END as reflex_compliance_array_data_point_135, 

CASE
            WHEN RFXC136 IS NOT NULL THEN SAFE_CAST(RFXC136 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC136 IS NULL THEN NULL 
ELSE RFXC136 
 END as reflex_compliance_array_data_point_136, 

CASE
            WHEN RFXC137 IS NOT NULL THEN SAFE_CAST(RFXC137 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC137 IS NULL THEN NULL 
ELSE RFXC137 
 END as reflex_compliance_array_data_point_137, 

CASE
            WHEN RFXC138 IS NOT NULL THEN SAFE_CAST(RFXC138 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC138 IS NULL THEN NULL 
ELSE RFXC138 
 END as reflex_compliance_array_data_point_138, 

CASE
            WHEN RFXC139 IS NOT NULL THEN SAFE_CAST(RFXC139 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC139 IS NULL THEN NULL 
ELSE RFXC139 
 END as reflex_compliance_array_data_point_139, 

CASE
            WHEN RFXC140 IS NOT NULL THEN SAFE_CAST(RFXC140 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC140 IS NULL THEN NULL 
ELSE RFXC140 
 END as reflex_compliance_array_data_point_140, 

CASE
            WHEN RFXC141 IS NOT NULL THEN SAFE_CAST(RFXC141 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC141 IS NULL THEN NULL 
ELSE RFXC141 
 END as reflex_compliance_array_data_point_141, 

CASE
            WHEN RFXC142 IS NOT NULL THEN SAFE_CAST(RFXC142 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC142 IS NULL THEN NULL 
ELSE RFXC142 
 END as reflex_compliance_array_data_point_142, 

CASE
            WHEN RFXC143 IS NOT NULL THEN SAFE_CAST(RFXC143 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC143 IS NULL THEN NULL 
ELSE RFXC143 
 END as reflex_compliance_array_data_point_143, 

CASE
            WHEN RFXC144 IS NOT NULL THEN SAFE_CAST(RFXC144 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC144 IS NULL THEN NULL 
ELSE RFXC144 
 END as reflex_compliance_array_data_point_144, 

CASE
            WHEN RFXC145 IS NOT NULL THEN SAFE_CAST(RFXC145 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC145 IS NULL THEN NULL 
ELSE RFXC145 
 END as reflex_compliance_array_data_point_145, 

CASE
            WHEN RFXC146 IS NOT NULL THEN SAFE_CAST(RFXC146 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC146 IS NULL THEN NULL 
ELSE RFXC146 
 END as reflex_compliance_array_data_point_146, 

CASE
            WHEN RFXC147 IS NOT NULL THEN SAFE_CAST(RFXC147 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC147 IS NULL THEN NULL 
ELSE RFXC147 
 END as reflex_compliance_array_data_point_147, 

CASE
            WHEN RFXC148 IS NOT NULL THEN SAFE_CAST(RFXC148 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC148 IS NULL THEN NULL 
ELSE RFXC148 
 END as reflex_compliance_array_data_point_148, 

CASE
            WHEN RFXC149 IS NOT NULL THEN SAFE_CAST(RFXC149 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC149 IS NULL THEN NULL 
ELSE RFXC149 
 END as reflex_compliance_array_data_point_149, 

CASE
            WHEN RFXC150 IS NOT NULL THEN SAFE_CAST(RFXC150 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC150 IS NULL THEN NULL 
ELSE RFXC150 
 END as reflex_compliance_array_data_point_150, 

CASE
            WHEN RFXC151 IS NOT NULL THEN SAFE_CAST(RFXC151 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC151 IS NULL THEN NULL 
ELSE RFXC151 
 END as reflex_compliance_array_data_point_151, 

CASE
            WHEN RFXC152 IS NOT NULL THEN SAFE_CAST(RFXC152 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC152 IS NULL THEN NULL 
ELSE RFXC152 
 END as reflex_compliance_array_data_point_152, 

CASE
            WHEN RFXC153 IS NOT NULL THEN SAFE_CAST(RFXC153 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC153 IS NULL THEN NULL 
ELSE RFXC153 
 END as reflex_compliance_array_data_point_153, 

CASE
            WHEN RFXC154 IS NOT NULL THEN SAFE_CAST(RFXC154 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC154 IS NULL THEN NULL 
ELSE RFXC154 
 END as reflex_compliance_array_data_point_154, 

CASE
            WHEN RFXC155 IS NOT NULL THEN SAFE_CAST(RFXC155 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC155 IS NULL THEN NULL 
ELSE RFXC155 
 END as reflex_compliance_array_data_point_155, 

CASE
            WHEN RFXC156 IS NOT NULL THEN SAFE_CAST(RFXC156 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC156 IS NULL THEN NULL 
ELSE RFXC156 
 END as reflex_compliance_array_data_point_156, 

CASE
            WHEN RFXC157 IS NOT NULL THEN SAFE_CAST(RFXC157 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC157 IS NULL THEN NULL 
ELSE RFXC157 
 END as reflex_compliance_array_data_point_157, 

CASE
            WHEN RFXC158 IS NOT NULL THEN SAFE_CAST(RFXC158 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC158 IS NULL THEN NULL 
ELSE RFXC158 
 END as reflex_compliance_array_data_point_158, 

CASE
            WHEN RFXC159 IS NOT NULL THEN SAFE_CAST(RFXC159 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC159 IS NULL THEN NULL 
ELSE RFXC159 
 END as reflex_compliance_array_data_point_159, 

CASE
            WHEN RFXC160 IS NOT NULL THEN SAFE_CAST(RFXC160 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC160 IS NULL THEN NULL 
ELSE RFXC160 
 END as reflex_compliance_array_data_point_160, 

CASE
            WHEN RFXC161 IS NOT NULL THEN SAFE_CAST(RFXC161 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC161 IS NULL THEN NULL 
ELSE RFXC161 
 END as reflex_compliance_array_data_point_161, 

CASE
            WHEN RFXC162 IS NOT NULL THEN SAFE_CAST(RFXC162 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC162 IS NULL THEN NULL 
ELSE RFXC162 
 END as reflex_compliance_array_data_point_162, 

CASE
            WHEN RFXC163 IS NOT NULL THEN SAFE_CAST(RFXC163 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC163 IS NULL THEN NULL 
ELSE RFXC163 
 END as reflex_compliance_array_data_point_163, 

CASE
            WHEN RFXC164 IS NOT NULL THEN SAFE_CAST(RFXC164 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC164 IS NULL THEN NULL 
ELSE RFXC164 
 END as reflex_compliance_array_data_point_164, 

CASE
            WHEN RFXC165 IS NOT NULL THEN SAFE_CAST(RFXC165 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC165 IS NULL THEN NULL 
ELSE RFXC165 
 END as reflex_compliance_array_data_point_165, 

CASE
            WHEN RFXC166 IS NOT NULL THEN SAFE_CAST(RFXC166 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC166 IS NULL THEN NULL 
ELSE RFXC166 
 END as reflex_compliance_array_data_point_166, 

CASE
            WHEN RFXC167 IS NOT NULL THEN SAFE_CAST(RFXC167 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC167 IS NULL THEN NULL 
ELSE RFXC167 
 END as reflex_compliance_array_data_point_167, 

CASE
            WHEN RFXC168 IS NOT NULL THEN SAFE_CAST(RFXC168 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC168 IS NULL THEN NULL 
ELSE RFXC168 
 END as reflex_compliance_array_data_point_168, 

CASE
            WHEN RFXC169 IS NOT NULL THEN SAFE_CAST(RFXC169 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC169 IS NULL THEN NULL 
ELSE RFXC169 
 END as reflex_compliance_array_data_point_169, 

CASE
            WHEN RFXC170 IS NOT NULL THEN SAFE_CAST(RFXC170 AS FLOAT64) -- correct wrong data types for numerical data 
WHEN RFXC170 IS NULL THEN NULL 
ELSE RFXC170 
 END as reflex_compliance_array_data_point_170, 

 FROM {{ ref('stg_audiometry_acoustic_reflex_examination') }}

        -- Docs utilized to generate this SQL can be found at https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/AUXAR_J.htm
        