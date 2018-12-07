/*
create & load assessment data mart 
*/

/**********************************************************/

CREATE TABLE litpro_analytic_amy.`race_dim` (
  `source_race_id` int(10) unsigned NOT NULL,
  `race_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_system` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_deleted_date` timestamp NULL DEFAULT NULL,
  `load_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`source_race_id`)
) ;

/*
run export/import from source to target followed by update statement
*/

UPDATE `litpro_analytic_amy`.`race_dim`
SET
`source_system` = 'CommunityPro'

SELECT * FROM litpro_analytic_amy.race_dim;

/**********************************************************/

CREATE TABLE litpro_analytic_amy.`customer_dim`(
  `source_customer_id` int(10) unsigned NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_names_akas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more_than_one_race` tinyint(1) DEFAULT NULL,
  `hispanic_or_latino_ethnicity` tinyint(1) DEFAULT NULL,
  `drivers_license_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drivers_license_state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enrolled_in_aztec` tinyint(1) DEFAULT NULL,
  `native_language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_cps_language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `english_language_learner` tinyint(1) DEFAULT NULL,
  `social_security_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_social_security_number` tinyint(1) DEFAULT NULL,
  `has_highschool_diploma` tinyint(1) DEFAULT NULL,
  `needs_highschool_transcript` tinyint(1) DEFAULT NULL,
  `has_taken_ged` tinyint(1) DEFAULT NULL,
  `date_of_ged` datetime DEFAULT NULL,
  `has_ged` tinyint(1) DEFAULT NULL,
  `needs_ged_transcript` tinyint(1) DEFAULT NULL,
  `has_bachelor_degree` tinyint(1) DEFAULT NULL,
  `has_master_degree_or_higher` tinyint(1) DEFAULT NULL,
  `certifications` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licenses` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level_non_us_school_completed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_level_non_us_school_completed_at_entry` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_degree_or_level_of_school_completed_us_school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_degree_or_level_of_school_completed_us_school_at_entry` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_training` tinyint(1) DEFAULT NULL,
  `type_of_recognized_credential` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_in_program_to_post_secondary_to_cred_employment` datetime DEFAULT NULL,
  `date_in_post_secondary_program_to_cred_employment` datetime DEFAULT NULL,
  `school_attendance` tinyint(1) DEFAULT NULL,
  `last_school_attended_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_school_grade_completed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education_level_completed_on_entry` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education_level_completed_on_entry_location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adult_basic_education_date_entered` datetime DEFAULT NULL,
  `adult_basic_education_date_exited` datetime DEFAULT NULL,
  `adult_secondary_education_date_entered` datetime DEFAULT NULL,
  `adult_secondary_education_date_exited` datetime DEFAULT NULL,
  `adult_basic_secondary_education_date_entered` datetime DEFAULT NULL,
  `adult_basic_secondary_education_date_exited` datetime DEFAULT NULL,
  `english_as_a_second_language_date_entered` datetime DEFAULT NULL,
  `english_as_a_second_language_date_exited` datetime DEFAULT NULL,
  `enrolled_in_secondary_education_program` tinyint(1) DEFAULT NULL,
  `date_attained_degree_or_certificate_or_credential` datetime DEFAULT NULL,
  `adults_training_for_child_school_success_date_entered` datetime DEFAULT NULL,
  `adults_training_for_child_school_success_date_exited` datetime DEFAULT NULL,
  `programs_for_adults_with_disabilities_date_entered` datetime DEFAULT NULL,
  `programs_for_adults_with_disabilities_date_exited` datetime DEFAULT NULL,
  `career_and_technical_education_date_entered` datetime DEFAULT NULL,
  `career_and_technical_education_date_exited` datetime DEFAULT NULL,
  `course_completion_contact_time_hours` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_completion_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_sector` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_industry` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longterm_unemployed` tinyint(1) DEFAULT NULL,
  `employed_in_first_quarter` tinyint(1) DEFAULT NULL,
  `employed_in_second_quarter` tinyint(1) DEFAULT NULL,
  `employed_in_third_quarter` tinyint(1) DEFAULT NULL,
  `employed_in_fourth_quarter` tinyint(1) DEFAULT NULL,
  `wages_in_first_quarter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wages_in_second_quarter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wages_in_third_quarter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wages_in_fourth_quarter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longterm_unemployed_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longterm_unemployed_date_on_entry` datetime DEFAULT NULL,
  `unemployed_number_of_months` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workforce_entry_date_entered` datetime DEFAULT NULL,
  `workforce_entry_date_exited` datetime DEFAULT NULL,
  `date_of_most_recent_career_service` datetime DEFAULT NULL,
  `retention_with_same_employer_second_fourth_quarter` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_amount_last_6_months` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `looking_for_work` tinyint(1) DEFAULT NULL,
  `disabilities` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `learning_disability` tinyint(1) DEFAULT NULL,
  `learning_disability_receiving_ssi` tinyint(1) DEFAULT NULL,
  `learning_disability_receiving_ssdi` tinyint(1) DEFAULT NULL,
  `physical_disability` tinyint(1) DEFAULT NULL,
  `physical_disability_difficulty_hearing` tinyint(1) DEFAULT NULL,
  `physical_disability_difficulty_seeing` tinyint(1) DEFAULT NULL,
  `physical_disability_difficulty_walking_climbing_stairs` tinyint(1) DEFAULT NULL,
  `disability_doing_errands_alone` tinyint(1) DEFAULT NULL,
  `ex_offender` tinyint(1) DEFAULT NULL,
  `foster_care_youth` tinyint(1) DEFAULT NULL,
  `foster_care_adult` tinyint(1) DEFAULT NULL,
  `displaced_homemaker` tinyint(1) DEFAULT NULL,
  `low_income` tinyint(1) DEFAULT NULL,
  `homeless` tinyint(1) DEFAULT NULL,
  `migrant` tinyint(1) DEFAULT NULL,
  `low_levels_of_literacy` tinyint(1) DEFAULT NULL,
  `single_parent` tinyint(1) DEFAULT NULL,
  `basic_skills_deficient` tinyint(1) DEFAULT NULL,
  `single_parent_status_on_entry` tinyint(1) DEFAULT NULL,
  `single_parent_date_on_entry` datetime DEFAULT NULL,
  `learning_disability_entry_status` tinyint(1) DEFAULT NULL,
  `learning_disability_date_on_entry` datetime DEFAULT NULL,
  `physical_disability_entry_status` tinyint(1) DEFAULT NULL,
  `physical_disability_date_on_entry` datetime DEFAULT NULL,
  `displaced_homemaker_entry_status` tinyint(1) DEFAULT NULL,
  `english_language_learner_entry_status` tinyint(1) DEFAULT NULL,
  `english_language_learner_date_on_entry` datetime DEFAULT NULL,
  `low_levels_of_literacy_entry_status` tinyint(1) DEFAULT NULL,
  `low_levels_of_literacy_date_on_entry` datetime DEFAULT NULL,
  `ex_offender_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ex_offender_date_on_entry` datetime DEFAULT NULL,
  `homeless_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeless_date_on_entry` datetime DEFAULT NULL,
  `low_income_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `low_income_date_on_entry` datetime DEFAULT NULL,
  `migrant_farmworker` tinyint(1) DEFAULT NULL,
  `migrant_farmworker_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migrant_farmworker_date_on_entry` datetime DEFAULT NULL,
  `seasonal_farmworker` tinyint(1) DEFAULT NULL,
  `seasonal_farmworker_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seasonal_farmworker_date_on_entry` datetime DEFAULT NULL,
  `foster_care_adult_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foster_care_adult_date_on_entry` datetime DEFAULT NULL,
  `displaced_worker` tinyint(1) DEFAULT NULL,
  `refugee` tinyint(1) DEFAULT NULL,
  `cultural_barriers` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veteran_status_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veteran_status_date_on_entry` datetime DEFAULT NULL,
  `selective_service_registration` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiving_unemployment_insurance` tinyint(1) DEFAULT NULL,
  `food_stamps_calfresh` tinyint(1) DEFAULT NULL,
  `pell` tinyint(1) DEFAULT NULL,
  `student_loan` tinyint(1) DEFAULT NULL,
  `ssi_ssa_ssdi` tinyint(1) DEFAULT NULL,
  `payments_tanf_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payments_tanf_date_on_entry` datetime DEFAULT NULL,
  `payments_tanf` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payments_exhausting_tanf_within_2_years_entry_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payments_exhausting_tanf_within_2_years_date_on_entry` datetime DEFAULT NULL,
  `exhausting_tanf_within_2_years` tinyint(1) DEFAULT NULL,
  `date_of_most_recent_skill_gains_ed_achievement` datetime DEFAULT NULL,
  `date_of_most_recent_skill_gains_skills_progression` datetime DEFAULT NULL,
  `el_civics_date_entered` datetime DEFAULT NULL,
  `el_civics_date_exited` datetime DEFAULT NULL,
  `pre_apprenticeship_date_entered` datetime DEFAULT NULL,
  `pre_apprenticeship_date_exited` datetime DEFAULT NULL,
  `location_intake_date` datetime DEFAULT NULL,
  `ward` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_k12_student_number` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_dependent_number` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_type_8a` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_type_8a_not_applicable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calworks` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calworks_termination_within_2_years` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobcorps` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wioa` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_type_8b` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_type_8b_not_applicable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foster_care_support` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_student_id_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_file_fullpath` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conformed_source_filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_associate_degree` tinyint(1) DEFAULT NULL,
  `english_language_learner_notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_email` tinyint(1) DEFAULT '0',
  `notify_sms` tinyint(1) DEFAULT '0',
  `notify_how_many_days_before` int(10) unsigned NOT NULL DEFAULT '2',
  `unsubscribe_token` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_highschool_diploma_notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `needs_highschool_transcript_notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ged_notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `needs_ged_transcript_notes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cultural_barriers_date_on_entry` datetime DEFAULT NULL,
  `cultural_barriers_entry_status` tinyint(1) DEFAULT NULL,
  `cultural_barriers_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displaced_homemaker_date_on_entry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_status_other` tinyint(1) DEFAULT NULL,
  `needs_employment_services` tinyint(1) DEFAULT NULL,
  `laces_id` int(11) DEFAULT NULL,
  `school_status` tinyint(1) DEFAULT NULL,
  `current_school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_us_citizen` tinyint(1) DEFAULT NULL,
  `receive_benefits_other` tinyint(1) DEFAULT NULL,
  `learning_disability_documented` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_education` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_education_age` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `needs_special_accomodations` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `needs_special_accomodations_describe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disability_insurance_coverage` tinyint(1) DEFAULT NULL,
  `employment_barriers_other` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `previous_enrollment_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lds_manual_score` int(11) DEFAULT NULL,
  `lds_required_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_permanent_resident` tinyint(1) DEFAULT NULL,
  `residency_proof_provided` tinyint(1) DEFAULT NULL,
  `preferred_communication` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_food_stamps_medicare_assistance` tinyint(1) DEFAULT NULL,
  `wellness_screening_needed` tinyint(1) DEFAULT NULL,
  `non_binary_gender` tinyint(1) NOT NULL DEFAULT '0',
  `most_school_years_outside_us` tinyint(1) DEFAULT NULL,
  `wyoming_at_work_registration` date DEFAULT NULL,
  `highschool_diploma_date` date DEFAULT NULL,
  `highschool_graduation_date` date DEFAULT NULL,
  `grade_level` int(11) DEFAULT NULL,
  `source_system` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_deleted_date` timestamp NULL DEFAULT NULL,
  `load_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`source_customer_id`)
  );


select * from litpro_analytic_amy.`customer_dim`

/**********************************************************/

CREATE TABLE litpro_analytic_amy.`assessment_dim` (
  `source_assessment_id` int(10) unsigned NOT NULL ,
  `source_customer_id` int(10) unsigned NOT NULL,
  `assessment_type_id` int(10) unsigned DEFAULT NULL,
  `laces_agency_id` int(10) unsigned DEFAULT NULL,
  `laces_id` int(10) unsigned DEFAULT NULL,
  `laces_person_id` int(10) unsigned DEFAULT NULL,
  `assessment_appointment_id` int(10) unsigned DEFAULT NULL,
  `referral_id` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `is_pre_test` tinyint(1) DEFAULT NULL,
  `is_post_test` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `assessment_date` datetime DEFAULT NULL,
  `fiscal_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scaled_score_gain` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spl` int(10) unsigned DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_file_fullpath` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conformed_source_filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_system` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL,
  `source_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `source_deleted_date` timestamp NULL,
  `load_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`source_assessment_id`),
  KEY `assessments_assessment_type_id_index` (`assessment_type_id`),
  KEY `assessments_hash_index` (`hash`),
  KEY `assessments_customer_id_foreign` (`source_customer_id`),
  KEY `assessments_assessment_appointments_fk` (`assessment_appointment_id`),
  KEY `assessments_referral_fk` (`referral_id`),
  KEY `assessments_location_id_foreign` (`location_id`)
) ;

/**********************************************************/

CREATE TABLE litpro_analytic_amy.`assessment_fact` (
  `source_assessment_id` int(10) unsigned NOT NULL ,
  `source_customer_id` int(10) unsigned NOT NULL,
  `source_assessment_date_id` datetime DEFAULT NULL,  /* FK to date_dim */
  `source_race_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `load_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`source_assessment_id`),
  KEY `assessments_customer_id` (`source_customer_id`),
  KEY `assessments_date_id` (`source_assessment_date_id`),
  KEY `assessments_race_id` (`source_race_id`)
) ;



SELECT count(*) FROM litpro_analytic_amy.`assessment_fact`



/**********************************************************/



CREATE TABLE	litpro_analytic_amy.`date_dim`
	(	`date_id` int(10) unsigned NOT NULL AUTO_INCREMENT, 
		`Date` DATETIME,
		`FullDateUK` CHAR(10), /* Date in dd-MM-yyyy format*/
		`FullDateUSA` CHAR(10),/* Date in MM-dd-yyyy format*/
		`DayOfMonth` VARCHAR(2), /* Field will hold day number of Month*/
		`DaySuffix` VARCHAR(4), /* Apply suffix as 1st, 2nd ,3rd etc */
		`DayName` VARCHAR(9), /* Contains name of the day, Sunday, Monday */
		`DayOfWeekUSA` CHAR(1),/* First Day Sunday=1 and Saturday=7*/
		`DayOfWeekUK` CHAR(1),/* First Day Monday=1 and Sunday=7*/
		`DayOfWeekInMonth` VARCHAR(2), /*1st Monday or 2nd Monday in Month*/
		`DayOfWeekInYear` VARCHAR(2),
		`DayOfQuarter` VARCHAR(3),
		`DayOfYear` VARCHAR(3),
		`WeekOfMonth` VARCHAR(1),/* Week Number of Month */
		`WeekOfQuarter` VARCHAR(2), /*Week Number of the Quarter*/
		`WeekOfYear` VARCHAR(2),/*Week Number of the Year*/
		`Month` VARCHAR(2), /*Number of the Month 1 to 12*/
		`MonthName` VARCHAR(9),/*January, February etc*/
		`MonthOfQuarter` VARCHAR(2),/* Month Number belongs to Quarter*/
		`Quarter` CHAR(1),
		`QuarterName` VARCHAR(9),/*First,Second..*/
		`Year` CHAR(4),/* Year value of Date stored in Row*/
		`YearName` CHAR(7), /*CY 2012,CY 2013*/
		`MonthYear` CHAR(10), /*Jan-2013,Feb-2013*/
		`MMYYYY` CHAR(6),
		`FirstDayOfMonth` DATE,
		`LastDayOfMonth` DATE,
		`FirstDayOfQuarter` DATE,
		`LastDayOfQuarter` DATE,
		`FirstDayOfYear` DATE,
		`LastDayOfYear` DATE,
		`IsHolidayUSA` BIT,/* Flag 1=National Holiday, 0-No National Holiday*/
		`IsWeekday` BIT,/* 0=Week End ,1=Week Day*/
		`HolidayUSA` VARCHAR(50),/*Name of Holiday in US*/
		`IsHolidayUK` BIT Null,/* Flag 1=National Holiday, 0-No National Holiday*/
		`HolidayUK` VARCHAR(50) Null ,/*Name of Holiday in UK*/
         PRIMARY KEY (`date_id`)
	) ENGINE=InnoDB AUTO_INCREMENT=18 ;
    
    
    
    DECLARE @StartDate DATETIME = '01/01/2013' 
DECLARE @EndDate DATETIME = '12/31/2020' 

/*  temporary variables to store values during processing   */
DECLARE
	@DayOfWeekInMonth INT,
	@DayOfWeekInYear INT,
	@DayOfQuarter INT,
	@WeekOfMonth INT,
	@CurrentYear INT,
	@CurrentMonth INT,
	@CurrentQuarter INT

/*for storing the day of week count for the month & year  */
DECLARE @DayOfWeek TABLE (DOW INT, MonthCount INT, QuarterCount INT, YearCount INT)

INSERT INTO @DayOfWeek VALUES (1, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (2, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (3, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (4, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (5, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (6, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (7, 0, 0, 0)

/* extract various date parts from current date to variable  */

DECLARE @CurrentDate AS DATETIME = @StartDate
SET @CurrentMonth = DATEPART(MM, @CurrentDate)
SET @CurrentYear = DATEPART(YY, @CurrentDate)
SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)

/********************************************************************************************/


WHILE @CurrentDate < @EndDate
BEGIN
 
/*Begin day of week logic*/

         /*Check for Change in Month of the Current date if Month changed then 
          Change variable value*/
	IF @CurrentMonth != DATEPART(MM, @CurrentDate) 
	BEGIN
		UPDATE @DayOfWeek
		SET MonthCount = 0
		SET @CurrentMonth = DATEPART(MM, @CurrentDate)
	END

        /* Check for Change in Quarter of the Current date if Quarter changed then change 
         Variable value*/

	IF @CurrentQuarter != DATEPART(QQ, @CurrentDate)
	BEGIN
		UPDATE @DayOfWeek
		SET QuarterCount = 0
		SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)
	END
       
        /* Check for Change in Year of the Current date if Year changed then change 
         Variable value*/
	

	IF @CurrentYear != DATEPART(YY, @CurrentDate)
	BEGIN
		UPDATE @DayOfWeek
		SET YearCount = 0
		SET @CurrentYear = DATEPART(YY, @CurrentDate)
	END
	
        /* Set values in table data type created above from variables */

	UPDATE @DayOfWeek
	SET 
		MonthCount = MonthCount + 1,
		QuarterCount = QuarterCount + 1,
		YearCount = YearCount + 1
	WHERE DOW = DATEPART(DW, @CurrentDate)

	SELECT
		@DayOfWeekInMonth = MonthCount,
		@DayOfQuarter = QuarterCount,
		@DayOfWeekInYear = YearCount
	FROM @DayOfWeek
	WHERE DOW = DATEPART(DW, @CurrentDate)
	
/*End day of week logic*/


/* Populate Your Dimension Table with values*/
	
	INSERT INTO litpro_analytic_amy.`date_dim`
	SELECT
		
		CONVERT (char(8),@CurrentDate,112) as DateKey,
		@CurrentDate AS Date,
		CONVERT (char(10),@CurrentDate,103) as FullDateUK,
		CONVERT (char(10),@CurrentDate,101) as FullDateUSA,
		DATEPART(DD, @CurrentDate) AS DayOfMonth,
		/*Apply Suffix values like 1st, 2nd 3rd etc..*/
		CASE 
			WHEN DATEPART(DD,@CurrentDate) IN (11,12,13) _
			THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'th'
			WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 1 _
			THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'st'
			WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 2 _
			THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'nd'
			WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 3 _
			THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'rd'
			ELSE CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'th' 
			END AS DaySuffix,
		
		DATENAME(DW, @CurrentDate) AS DayName,
		DATEPART(DW, @CurrentDate) AS DayOfWeekUSA,

		/* check for day of week  */
		CASE DATEPART(DW, @CurrentDate)
			WHEN 1 THEN 7
			WHEN 2 THEN 1
			WHEN 3 THEN 2
			WHEN 4 THEN 3
			WHEN 5 THEN 4
			WHEN 6 THEN 5
			WHEN 7 THEN 6
			END 
			AS DayOfWeekUK,
		
		@DayOfWeekInMonth AS DayOfWeekInMonth,
		@DayOfWeekInYear AS DayOfWeekInYear,
		@DayOfQuarter AS DayOfQuarter,
		DATEPART(DY, @CurrentDate) AS DayOfYear,
		DATEPART(WW, @CurrentDate) + 1 - DATEPART(WW, CONVERT(VARCHAR, _
		DATEPART(MM, @CurrentDate)) + '/1/' + CONVERT(VARCHAR, _
		DATEPART(YY, @CurrentDate))) AS WeekOfMonth,
		(DATEDIFF(DD, DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0), _
		@CurrentDate) / 7) + 1 AS WeekOfQuarter,
		DATEPART(WW, @CurrentDate) AS WeekOfYear,
		DATEPART(MM, @CurrentDate) AS Month,
		DATENAME(MM, @CurrentDate) AS MonthName,
		CASE
			WHEN DATEPART(MM, @CurrentDate) IN (1, 4, 7, 10) THEN 1
			WHEN DATEPART(MM, @CurrentDate) IN (2, 5, 8, 11) THEN 2
			WHEN DATEPART(MM, @CurrentDate) IN (3, 6, 9, 12) THEN 3
			END AS MonthOfQuarter,
		DATEPART(QQ, @CurrentDate) AS Quarter,
		CASE DATEPART(QQ, @CurrentDate)
			WHEN 1 THEN 'First'
			WHEN 2 THEN 'Second'
			WHEN 3 THEN 'Third'
			WHEN 4 THEN 'Fourth'
			END AS QuarterName,
		DATEPART(YEAR, @CurrentDate) AS Year,
		'CY ' + CONVERT(VARCHAR, DATEPART(YEAR, @CurrentDate)) AS YearName,
		LEFT(DATENAME(MM, @CurrentDate), 3) + '-' + CONVERT(VARCHAR, _
		DATEPART(YY, @CurrentDate)) AS MonthYear,
		RIGHT('0' + CONVERT(VARCHAR, DATEPART(MM, @CurrentDate)),2) + _
		CONVERT(VARCHAR, DATEPART(YY, @CurrentDate)) AS MMYYYY,
		CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD, _
		@CurrentDate) - 1), @CurrentDate))) AS FirstDayOfMonth,
		CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD, _
		(DATEADD(MM, 1, @CurrentDate)))), DATEADD(MM, 1, _
		@CurrentDate)))) AS LastDayOfMonth,
		DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0) AS FirstDayOfQuarter,
		DATEADD(QQ, DATEDIFF(QQ, -1, @CurrentDate), -1) AS LastDayOfQuarter,
		CONVERT(DATETIME, '01/01/' + CONVERT(VARCHAR, DATEPART(YY, _
		@CurrentDate))) AS FirstDayOfYear,
		CONVERT(DATETIME, '12/31/' + CONVERT(VARCHAR, DATEPART(YY, _
		@CurrentDate))) AS LastDayOfYear,
		NULL AS IsHolidayUSA,
		CASE DATEPART(DW, @CurrentDate)
			WHEN 1 THEN 0
			WHEN 2 THEN 1
			WHEN 3 THEN 1
			WHEN 4 THEN 1
			WHEN 5 THEN 1
			WHEN 6 THEN 1
			WHEN 7 THEN 0
			END AS IsWeekday,
		NULL AS HolidayUSA, Null, Null

	SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END

/********************************************************************************************/
 

/*update US & UK holiday fields*/
	
/* Good Friday  April 18 */
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Good Friday'
	WHERE `Month` = 4 AND `DayOfMonth`  = 18

/* Easter Monday  April 21 */
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Easter Monday'
	WHERE `Month` = 4 AND `DayOfMonth`  = 21

/* Early May Bank Holiday   May 5 */
   UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Early May Bank Holiday'
	WHERE `Month` = 5 AND `DayOfMonth`  = 5

/* Spring Bank Holiday  May 26 */
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Spring Bank Holiday'
	WHERE `Month` = 5 AND `DayOfMonth`  = 26

/* Summer Bank Holiday  August 25 */
    UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Summer Bank Holiday'
	WHERE `Month` = 8 AND `DayOfMonth`  = 25

/* Boxing Day  December 26  	*/
    UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Boxing Day'
	WHERE `Month` = 12 AND `DayOfMonth`  = 26	

/*CHRISTMAS */
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK = 'Christmas Day'
	WHERE `Month` = 12 AND `DayOfMonth`  = 25

/*New Years Day */
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUK  = 'New Year''s Day'
	WHERE `Month` = 1 AND `DayOfMonth` = 1

	
	UPDATE litpro_analytic_amy.`date_dim`
		SET IsHolidayUK  = CASE WHEN HolidayUK   IS NULL _
		THEN 0 WHEN HolidayUK   IS NOT NULL THEN 1 END
		
 	/*THANKSGIVING - Fourth THURSDAY in November*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Thanksgiving Day'
	WHERE
		`Month` = 11 
		AND `DayOfWeekUSA` = 'Thursday' 
		AND DayOfWeekInMonth = 4

	/*CHRISTMAS*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Christmas Day'
		
	WHERE `Month` = 12 AND `DayOfMonth`  = 25

	/*4th of July*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Independance Day'
	WHERE `Month` = 7 AND `DayOfMonth` = 4

	/*New Years Day*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'New Year''s Day'
	WHERE `Month` = 1 AND `DayOfMonth` = 1

	/*Memorial Day - Last Monday in May*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Memorial Day'
	FROM litpro_analytic_amy.`date_dim`
	WHERE DateKey IN 
		(
		SELECT
			MAX(DateKey)
		FROM litpro_analytic_amy.`date_dim`
		WHERE
			`MonthName` = 'May'
			AND `DayOfWeekUSA`  = 'Monday'
		GROUP BY
			`Year`,
			`Month`
		)

	/*Labor Day - First Monday in September*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Labor Day'
	FROM litpro_analytic_amy.`date_dim`
	WHERE DateKey IN 
		(
		SELECT
			MIN(DateKey)
		FROM litpro_analytic_amy.`date_dim`
		WHERE
			`MonthName` = 'September'
			AND `DayOfWeekUSA` = 'Monday'
		GROUP BY
			`Year`,
			`Month`
		)

	/*Valentine's Day*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Valentine''s Day'
	WHERE
		`Month` = 2 
		AND `DayOfMonth` = 14

	/*Saint Patrick's Day*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Saint Patrick''s Day'
	WHERE
		`Month` = 3
		AND `DayOfMonth` = 17

	/*Martin Luthor King Day - Third Monday in January starting in 1983*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Martin Luthor King Jr Day'
	WHERE
		`Month` = 1
		AND `DayOfWeekUSA`  = 'Monday'
		AND `Year` >= 1983
		AND DayOfWeekInMonth = 3

	/*President's Day - Third Monday in February*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'President''s Day'
	WHERE
		`Month` = 2
		AND `DayOfWeekUSA` = 'Monday'
		AND DayOfWeekInMonth = 3

	/*Mother's Day - Second Sunday of May*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Mother''s Day'
	WHERE
		`Month` = 5
		AND `DayOfWeekUSA` = 'Sunday'
		AND DayOfWeekInMonth = 2

	/*Father's Day - Third Sunday of June*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Father''s Day'
	WHERE
		`Month` = 6
		AND `DayOfWeekUSA` = 'Sunday'
		AND DayOfWeekInMonth = 3

	/*Halloween 10/31*/
	UPDATE litpro_analytic_amy.`date_dim`
		SET HolidayUSA = 'Halloween'
	WHERE
		`Month` = 10
		AND `DayOfMonth` = 31

	/*Election Day - The first Tuesday after the first Monday in November*/
	BEGIN
	DECLARE @Holidays TABLE (ID INT IDENTITY(1,1), _
	DateID int, Week TINYINT, YEAR CHAR(4), DAY CHAR(2))

		INSERT INTO @Holidays(DateID, `Year`,`Day`)
		SELECT
			DateKey,
			`Year`,
			`DayOfMonth` 
		FROM litpro_analytic_amy.`date_dim`
		WHERE
			`Month` = 11
			AND `DayOfWeekUSA` = 'Monday'
		ORDER BY
			YEAR,
			DayOfMonth 

		DECLARE @CNTR INT, @POS INT, @STARTYEAR INT, @ENDYEAR INT, @MINDAY INT

		SELECT
			@CURRENTYEAR = MIN(`Year`)
			, @STARTYEAR = MIN(`Year`)
			, @ENDYEAR = MAX(`Year`)
		FROM @Holidays

		WHILE @CURRENTYEAR <= @ENDYEAR
		BEGIN
			SELECT @CNTR = COUNT(`Year`)
			FROM @Holidays
			WHERE `Year` = @CURRENTYEAR

			SET @POS = 1

			WHILE @POS <= @CNTR
			BEGIN
				SELECT @MINDAY = MIN(DAY)
				FROM @Holidays
				WHERE
					`Year` = @CURRENTYEAR
					AND `Week` IS NULL

				UPDATE @Holidays
					SET `Week` = @POS
				WHERE
					`Year` = @CURRENTYEAR
					AND `Day` = @MINDAY

				SELECT @POS = @POS + 1
			END

			SELECT @CURRENTYEAR = @CURRENTYEAR + 1
		END

		UPDATE litpro_analytic_amy.`date_dim`
			SET HolidayUSA  = 'Election Day'				
		FROM litpro_analytic_amy.`date_dim` DT
			JOIN @Holidays HL ON (HL.DateID + 1) = DT.DateKey
		WHERE
			`Week` = 1
	END
	/*set flag for USA holidays in Dimension*/
	UPDATE litpro_analytic_amy.`date_dim`
SET IsHolidayUSA = CASE WHEN HolidayUSA  IS NULL THEN 0 WHEN HolidayUSA  IS NOT NULL THEN 1 END

/* see sql\date dimension sql.sql for fiscal calendar code */

