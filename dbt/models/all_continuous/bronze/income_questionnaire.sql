SELECT
SEQN as respondent_sequence_number, -- could not identify transformation logic 

CASE
WHEN INDFMMPI IS NULL THEN NULL 
ELSE SAFE_CAST(INDFMMPI AS FLOAT64) 
 END as family_monthly_poverty_level_index, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INDFMMPC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Monthly poverty level index =1.30' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INDFMMPC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '1.30 < Monthly poverty level index = 1.85' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INDFMMPC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN 'Monthly poverty level index >1.85' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INDFMMPC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INDFMMPC AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INDFMMPC IS NULL THEN NULL 
ELSE SAFE_CAST(INDFMMPC AS STRING) 
 END as family_monthly_poverty_level_category, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ020 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ020 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ020 AS STRING) 
 END as income_from_wages_salaries, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ012 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ012 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ012 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ012 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ012 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ012 AS STRING) 
 END as income_from_self_employment, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ030 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ030 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ030 AS STRING) 
 END as income_from_social_security_or_rr, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ060 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ060 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ060 AS STRING) 
 END as income_from_other_disability_pension, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ080 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ080 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ080 AS STRING) 
 END as income_from_retirement_survivor_pension, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ090 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ090 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ090 AS STRING) 
 END as income_from_supplemental_security_income, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ132 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ132 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ132 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ132 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ132 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ132 AS STRING) 
 END as income_from_state_county_cash_assistance, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ140 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ140 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ140 AS STRING) 
 END as income_from_interest_dividends_or_rental, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ150 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ150 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ150 AS STRING) 
 END as income_from_other_sources, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN '$0 - $399' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '$400 - $799' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '$800 - $1,249' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '$1,250 - $1,649' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '$1,650 - $2,099' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '$2,100 - $2,899' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN '$2,900 - $3,749' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(8 AS FLOAT64),0) AS INT64) THEN '$3,750 - $4,599' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN '$4,600 - $5,399' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(10 AS FLOAT64),0) AS INT64) THEN '$5,400 - $6,249' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(11 AS FLOAT64),0) AS INT64) THEN '$6,250 - $8,399' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(12 AS FLOAT64),0) AS INT64) THEN '$8,400 and over' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND235 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN IND235 IS NULL THEN NULL 
ELSE SAFE_CAST(IND235 AS STRING) 
 END as monthly_family_income, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ300 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'Yes' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ300 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'No' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ300 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ300 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Dont know' -- categorize string values 
WHEN INQ300 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ300 AS STRING) 
 END as family_has_savings_more_than_20_000, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN '$0 - $3,000' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN '$3,001 - $5,000' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN '$5,001 - $10,000' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN '$10,001 - $15,000' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN '$15,001 - $20,000' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(IND310 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN IND310 IS NULL THEN NULL 
ELSE SAFE_CAST(IND310 AS STRING) 
 END as total_savings_cash_assets_for_the_family, 

CASE
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '1' THEN 'In my car' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '2' THEN 'In a car that belongs to someone I live with' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '3' THEN 'In a car that belongs to someone who lives elsewhere' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '4' THEN 'Walk' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '5' THEN 'Ride bicycle' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '6' THEN 'Bus, subway or other public transit' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '7' THEN 'Taxi or other paid driver' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '8' THEN 'Someone else delivers groceries' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '9' THEN 'Other' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '66' THEN 'No usual mode of traveling to store' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '77' THEN 'Refused' -- categorize string values 
WHEN SAFE_CAST(SAFE_CAST(ROUND(SAFE_CAST(INQ320 AS FLOAT64),0) AS INT64) AS STRING) = '99' THEN 'Dont know' -- categorize string values 
WHEN INQ320 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ320 AS STRING) 
 END as how_do_you_get_to_the_grocery_store, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ244 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Yes' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ244 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN 'No' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ244 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(7 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(INQ244 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(9 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN INQ244 IS NULL THEN NULL 
ELSE SAFE_CAST(INQ244 AS STRING) 
 END as family_has_savings_more_than_5000, 

CASE
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(1 AS FLOAT64),0) AS INT64) THEN 'Less than $500' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(2 AS FLOAT64),0) AS INT64) THEN '$501- $1000' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(3 AS FLOAT64),0) AS INT64) THEN '$1001-$2000' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(4 AS FLOAT64),0) AS INT64) THEN '$2001-$3000' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(5 AS FLOAT64),0) AS INT64) THEN '$3001-$4000' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(6 AS FLOAT64),0) AS INT64) THEN '$4001-$5000' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(77 AS FLOAT64),0) AS INT64) THEN 'Refused' -- categorize numeric values
WHEN SAFE_CAST(ROUND(SAFE_CAST(IND247 AS FLOAT64),0) AS INT64) = SAFE_CAST(ROUND(SAFE_CAST(99 AS FLOAT64),0) AS INT64) THEN 'Dont know' -- categorize numeric values
WHEN IND247 IS NULL THEN NULL 
ELSE SAFE_CAST(IND247 AS STRING) 
 END as total_savings_cash_assets_for_the_family_IND247, 

start_year,
end_year,
last_updated,
published_date,
parquet_filename,
data_file_url,
doc_file_url,
dataset,
 FROM {{ ref('stg_income_questionnaire') }}

/* 
Docs utilized to generate this SQL can be found at:
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_INQ.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/INQ_J.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/INQ_I.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/INQ_H.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/INQ_G.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/INQ_F.htm
https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/INQ_E.htm
*/
