SELECT
SEQN as respondent_sequence_number,
CASE
        WHEN DUQ200 = 1 THEN 'Yes' 
WHEN DUQ200 = 2 THEN 'No' 
WHEN DUQ200 = 7 THEN 'Refused' 
WHEN DUQ200 = 9 THEN 'Don\'t know' 
WHEN DUQ200 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_marijuana_or_hashish,
WHEN DUQ210 IS NOT NULL THEN DUQ210WHEN DUQ210 IS NULL THEN NULL 
ELSE NULL 
 END as age_when_first_tried_marijuana,
CASE
        WHEN DUQ211 = '1' THEN 'Yes' 
WHEN DUQ211 = '2' THEN 'No' 
WHEN DUQ211 = '7' THEN 'Refused' 
WHEN DUQ211 = '9' THEN 'Don\'t know' 
WHEN DUQ211 IS NULL THEN NULL 
ELSE NULL 
 END as used_marijuana_every_month_for_a_year,
WHEN DUQ213 IS NOT NULL THEN SAFE_CAST(DUQ213 AS FLOAT64)WHEN DUQ213 IS NULL THEN NULL 
ELSE NULL 
 END as age_started_regularly_using_marijuana,
WHEN DUQ215Q IS NOT NULL THEN SAFE_CAST(DUQ215Q AS FLOAT64)WHEN DUQ215Q IS NULL THEN NULL 
ELSE NULL 
 END as time_since_last_used_marijuana_regularly,
CASE
        WHEN DUQ215U = '1' THEN 'Days' 
WHEN DUQ215U = '2' THEN 'Weeks' 
WHEN DUQ215U = '3' THEN 'Months' 
WHEN DUQ215U = '4' THEN 'Years' 
WHEN DUQ215U = '7' THEN 'Refused' 
WHEN DUQ215U = '9' THEN 'Don\'t know' 
WHEN DUQ215U IS NULL THEN NULL 
ELSE NULL 
 END as time_since_used_marijuana_regularly_unit,
CASE
        WHEN DUQ217 = '1' THEN 'Once per month' 
WHEN DUQ217 = '2' THEN '2-3 times per month' 
WHEN DUQ217 = '3' THEN '4-8 times per month (about 1-2 times per 
  week)' 
WHEN DUQ217 = '4' THEN '9-24 times per month (about 3-6 times per 
  week)' 
WHEN DUQ217 = '5' THEN '25-30 times per month (one or more times 
  per day)' 
WHEN DUQ217 = '7' THEN 'Refused' 
WHEN DUQ217 = '9' THEN 'Don\'t know' 
WHEN DUQ217 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_would_you_use_marijuana,
CASE
        WHEN DUQ219 = '1' THEN '1 per day' 
WHEN DUQ219 = '2' THEN '2 per day' 
WHEN DUQ219 = '3' THEN '3-5 per day' 
WHEN DUQ219 = '4' THEN 'Six or more per day' 
WHEN DUQ219 = '7' THEN 'Refused' 
WHEN DUQ219 = '9' THEN 'Don\'t know' 
WHEN DUQ219 IS NULL THEN NULL 
ELSE NULL 
 END as how_many_joints_or_pipes_smoke_in_a_day,
WHEN DUQ220Q IS NOT NULL THEN DUQ220QWHEN DUQ220Q IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_marijuana_or_hashish,
CASE
        WHEN DUQ220U = 1 THEN 'Days' 
WHEN DUQ220U = 2 THEN 'Weeks' 
WHEN DUQ220U = 3 THEN 'Months' 
WHEN DUQ220U = 4 THEN 'Years' 
WHEN DUQ220U = 7 THEN 'Refused' 
WHEN DUQ220U = 9 THEN 'Don\'t know' 
WHEN DUQ220U IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_marijuana_or_hashish_unit,
WHEN DUQ230 IS NOT NULL THEN DUQ230WHEN DUQ230 IS NULL THEN NULL 
ELSE NULL 
 END as days_used_marijuana_or_hashish_month,
CASE
        WHEN DUQ240 = 1 THEN 'Yes' 
WHEN DUQ240 = 2 THEN 'No' 
WHEN DUQ240 = 7 THEN 'Refused' 
WHEN DUQ240 = 9 THEN 'Don\'t know' 
WHEN DUQ240 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_cocaine_heroin_methamphetamine,
CASE
        WHEN DUQ250 = 1 THEN 'Yes' 
WHEN DUQ250 = 2 THEN 'No' 
WHEN DUQ250 = 7 THEN 'Refused' 
WHEN DUQ250 = 9 THEN 'Don\'t know' 
WHEN DUQ250 IS NULL THEN NULL 
ELSE NULL 
 END as ever_use_any_form_of_cocaine,
WHEN DUQ260 IS NOT NULL THEN DUQ260WHEN DUQ260 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_used_cocaine,
WHEN DUQ270Q IS NOT NULL THEN DUQ270QWHEN DUQ270Q IS NULL THEN NULL 
ELSE NULL 
 END as last_time_you_used_cocaine_in_any_form,
CASE
        WHEN DUQ270U = 1 THEN 'Days' 
WHEN DUQ270U = 2 THEN 'Weeks' 
WHEN DUQ270U = 3 THEN 'Months' 
WHEN DUQ270U = 4 THEN 'Years' 
WHEN DUQ270U = 7 THEN 'Refused' 
WHEN DUQ270U = 9 THEN 'Don\'t know' 
WHEN DUQ270U IS NULL THEN NULL 
ELSE NULL 
 END as last_time_you_used_cocaine_unit,
CASE
        WHEN DUQ272 = 1 THEN 'Once' 
WHEN DUQ272 = 2 THEN '2-5 times' 
WHEN DUQ272 = 3 THEN '6-19 times' 
WHEN DUQ272 = 4 THEN '20-49 times' 
WHEN DUQ272 = 5 THEN '50-99 times' 
WHEN DUQ272 = 6 THEN '100 times or more' 
WHEN DUQ272 = 77 THEN 'Refused' 
WHEN DUQ272 = 99 THEN 'Don\'t know' 
WHEN DUQ272 IS NULL THEN NULL 
ELSE NULL 
 END as of_time_you_used_cocaine,
WHEN DUQ280 IS NOT NULL THEN DUQ280WHEN DUQ280 IS NULL THEN NULL 
ELSE NULL 
 END as of_days_used_cocaine_month,
CASE
        WHEN DUQ290 = 1 THEN 'Yes' 
WHEN DUQ290 = 2 THEN 'No' 
WHEN DUQ290 = 7 THEN 'Refused' 
WHEN DUQ290 = 9 THEN 'Don\'t know' 
WHEN DUQ290 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_heroin,
WHEN DUQ300 IS NOT NULL THEN DUQ300WHEN DUQ300 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_used_heroin,
WHEN DUQ310Q IS NOT NULL THEN DUQ310QWHEN DUQ310Q IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_heroin,
CASE
        WHEN DUQ310U = 1 THEN 'Days' 
WHEN DUQ310U = 2 THEN 'Weeks' 
WHEN DUQ310U = 3 THEN 'Months' 
WHEN DUQ310U = 4 THEN 'Years' 
WHEN DUQ310U = 7 THEN 'Refused' 
WHEN DUQ310U = 9 THEN 'Don\'t know' 
WHEN DUQ310U IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_heroin_unit,
WHEN DUQ320 IS NOT NULL THEN SAFE_CAST(DUQ320 AS FLOAT64)WHEN DUQ320 IS NULL THEN NULL 
ELSE NULL 
 END as of_days_used_heroin_month,
CASE
        WHEN DUQ330 = 1 THEN 'Yes' 
WHEN DUQ330 = 2 THEN 'No' 
WHEN DUQ330 = 7 THEN 'Refused' 
WHEN DUQ330 = 9 THEN 'Don\'t know' 
WHEN DUQ330 IS NULL THEN NULL 
ELSE NULL 
 END as ever_used_methamphetamine,
WHEN DUQ340 IS NOT NULL THEN DUQ340WHEN DUQ340 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_used_methamphetamine,
WHEN DUQ350Q IS NOT NULL THEN DUQ350QWHEN DUQ350Q IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_methamphetamine,
CASE
        WHEN DUQ350U = 1 THEN 'Days' 
WHEN DUQ350U = 2 THEN 'Weeks' 
WHEN DUQ350U = 3 THEN 'Months' 
WHEN DUQ350U = 4 THEN 'Years' 
WHEN DUQ350U = 7 THEN 'Refused' 
WHEN DUQ350U = 9 THEN 'Don\'t know' 
WHEN DUQ350U IS NULL THEN NULL 
ELSE NULL 
 END as last_time_used_methamphetamine_unit,
CASE
        WHEN DUQ352 = 1 THEN 'Once' 
WHEN DUQ352 = 2 THEN '2-5 times' 
WHEN DUQ352 = 3 THEN '6-19 times' 
WHEN DUQ352 = 4 THEN '20-49 times' 
WHEN DUQ352 = 5 THEN '50-99 times' 
WHEN DUQ352 = 6 THEN '100 times or more' 
WHEN DUQ352 = 77 THEN 'Refused' 
WHEN DUQ352 = 99 THEN 'Don\'t know' 
WHEN DUQ352 IS NULL THEN NULL 
ELSE NULL 
 END as times_used_methamphetamine,
WHEN DUQ360 IS NOT NULL THEN DUQ360WHEN DUQ360 IS NULL THEN NULL 
ELSE NULL 
 END as days_used_methamphetamine_month,
CASE
        WHEN DUQ370 = 1 THEN 'Yes' 
WHEN DUQ370 = 2 THEN 'No' 
WHEN DUQ370 = 7 THEN 'Refused' 
WHEN DUQ370 = 9 THEN 'Don\'t know' 
WHEN DUQ370 IS NULL THEN NULL 
ELSE NULL 
 END as ever_use_a_needle_to_inject_illegal_drug,
CASE
        WHEN DUQ380A = 1 THEN 'Cocaine' 
WHEN DUQ380A = 7 THEN 'Refused' 
WHEN DUQ380A = 9 THEN 'Don\'t know' 
WHEN DUQ380A IS NULL THEN NULL 
ELSE NULL 
 END as drugs_injected_cocaine,
CASE
        WHEN DUQ380B = 2 THEN 'Heroin' 
WHEN DUQ380B IS NULL THEN NULL 
ELSE NULL 
 END as drugs_injected_heroin,
CASE
        WHEN DUQ380C = 3 THEN 'Methamphetamine' 
WHEN DUQ380C IS NULL THEN NULL 
ELSE NULL 
 END as drugs_injected_methamphetamine,
CASE
        WHEN DUD380F = '6' THEN 'Steroids or any other drugs' 
WHEN DUD380F IS NULL THEN NULL 
ELSE NULL 
 END as drugs_injected_steroids_or_other_drugs,
WHEN DUQ390 IS NOT NULL THEN DUQ390WHEN DUQ390 IS NULL THEN NULL 
ELSE NULL 
 END as age_first_injected_drugs,
WHEN DUQ400Q IS NOT NULL THEN DUQ400QWHEN DUQ400Q IS NULL THEN NULL 
ELSE NULL 
 END as last_time_injected_drugs,
CASE
        WHEN DUQ400U = 1 THEN 'Days' 
WHEN DUQ400U = 2 THEN 'Weeks' 
WHEN DUQ400U = 3 THEN 'Months' 
WHEN DUQ400U = 4 THEN 'Years' 
WHEN DUQ400U = 7 THEN 'Refused' 
WHEN DUQ400U = 9 THEN 'Don\'t know' 
WHEN DUQ400U IS NULL THEN NULL 
ELSE NULL 
 END as last_time_injected_drugs_unit,
CASE
        WHEN DUQ410 = 1 THEN 'Once' 
WHEN DUQ410 = 2 THEN '2-5 times' 
WHEN DUQ410 = 3 THEN '6-19 times' 
WHEN DUQ410 = 4 THEN '20-49 times' 
WHEN DUQ410 = 5 THEN '50-99 times' 
WHEN DUQ410 = 6 THEN '100 times or more' 
WHEN DUQ410 = 77 THEN 'Refused' 
WHEN DUQ410 = 99 THEN 'Don\'t know' 
WHEN DUQ410 IS NULL THEN NULL 
ELSE NULL 
 END as times_injected_drugs_lifetime,
CASE
        WHEN DUQ420 = 1 THEN 'More than once a day,' 
WHEN DUQ420 = 2 THEN 'About once a day,' 
WHEN DUQ420 = 3 THEN 'At least once a week but not every day,' 
WHEN DUQ420 = 4 THEN 'At least once a month but not every week,' 
WHEN DUQ420 = 5 THEN 'Less than once a month' 
WHEN DUQ420 = 7 THEN 'Refused' 
WHEN DUQ420 = 9 THEN 'Don\'t know' 
WHEN DUQ420 IS NULL THEN NULL 
ELSE NULL 
 END as how_often_did_you_inject_drugs,
CASE
        WHEN DUQ430 = 1 THEN 'Yes' 
WHEN DUQ430 = 2 THEN 'No' 
WHEN DUQ430 = 7 THEN 'Refused' 
WHEN DUQ430 = 9 THEN 'Don\'t know' 
WHEN DUQ430 IS NULL THEN NULL 
ELSE NULL 
 END as ever_been_in_rehabilitation_program,
 FROM {{ ref('stg_drug_use_questionnaire') }}