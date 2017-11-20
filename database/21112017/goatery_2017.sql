-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2017 at 09:16 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goatery_2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cast` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_change_agents`
--

CREATE TABLE IF NOT EXISTS `tbl_change_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userType` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(225) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `emailverificationcode` varchar(255) NOT NULL,
  `reg_status` int(11) NOT NULL,
  `register_dt` datetime NOT NULL,
  `updated_dt` datetime NOT NULL,
  `token_expiry` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_change_agents`
--

INSERT INTO `tbl_change_agents` (`id`, `userType`, `password`, `token`, `fname`, `emailId`, `contactno`, `emailverificationcode`, `reg_status`, `register_dt`, `updated_dt`, `token_expiry`) VALUES
(1, 'changeagent', '123456', '44b03c7f0c2fbf059d1c', 'sqyard', 'goatery@gmail.com', 9833983399, '', 1, '2017-05-11 17:05:55', '2017-10-27 12:20:35', '2017-11-03 12:20:35'),
(2, 'Admin', '123456', 'd20569f9921c381b83453351905d7bbb', 'sqAdmin', 'goatery1@gmail.com', 1236547890, '', 1, '2017-05-11 17:05:55', '2017-10-27 12:24:36', '2017-11-03 12:24:36'),
(3, 'changeagent', '123456', 'fe2bb0be144ed6375207f9054b56558a', 'Abc Test', 'test@test.com', 1234567890, '', 1, '2017-10-19 18:04:55', '2017-10-27 12:26:17', '2017-11-03 12:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education_level`
--

CREATE TABLE IF NOT EXISTS `tbl_education_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `educational_level` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_education_level`
--

INSERT INTO `tbl_education_level` (`id`, `educational_level`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 'illiterate', 1, '2017-11-21 00:00:00', 1, NULL, NULL),
(2, 'tenth or under', 1, '2017-11-21 00:00:00', 1, NULL, NULL),
(3, '12th std', 1, '2017-11-21 00:00:00', 1, NULL, NULL),
(4, 'graduation', 1, '2017-11-21 00:00:00', 1, NULL, NULL),
(5, 'post graduation', 1, '2017-11-21 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f1_occupation`
--

CREATE TABLE IF NOT EXISTS `tbl_f1_occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f2_occupation`
--

CREATE TABLE IF NOT EXISTS `tbl_f2_occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f6_infection_type`
--

CREATE TABLE IF NOT EXISTS `tbl_f6_infection_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `infection_type_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f6_vaccination_type`
--

CREATE TABLE IF NOT EXISTS `tbl_f6_vaccination_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `vaccination_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f7_goat_breed_information`
--

CREATE TABLE IF NOT EXISTS `tbl_f7_goat_breed_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `breed_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_f7_water_source`
--

CREATE TABLE IF NOT EXISTS `tbl_f7_water_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `water_source_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_family_details`
--

CREATE TABLE IF NOT EXISTS `tbl_family_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f2_husband_name` varchar(50) DEFAULT NULL,
  `f2_contact_number` varchar(50) DEFAULT NULL,
  `f2_education_id` int(11) DEFAULT NULL,
  `f2_num_of_days_labor_work` int(11) DEFAULT NULL,
  `f2_labor_work_rate` int(11) DEFAULT NULL,
  `f2_husband_annual_income` int(11) DEFAULT NULL,
  `f2_num_of_earning_members` int(11) DEFAULT NULL,
  `f2_annual_income_of_family` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farming_eqipment`
--

CREATE TABLE IF NOT EXISTS `tbl_farming_eqipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f6_Borewell` varchar(50) DEFAULT NULL,
  `f6_Well` varchar(50) DEFAULT NULL,
  `f6_Water_Tank` varchar(50) DEFAULT NULL,
  `f6_Water_Pump` varchar(50) DEFAULT NULL,
  `f6_Diesel_Pump` varchar(50) DEFAULT NULL,
  `f6_Drip_Irrigation` varchar(50) DEFAULT NULL,
  `f6_Tractor` varchar(50) DEFAULT NULL,
  `f6_Tractor_Trolley` varchar(50) DEFAULT NULL,
  `f6_Bullock_Cart` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_farming_information`
--

CREATE TABLE IF NOT EXISTS `tbl_farming_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f5_own_land` varchar(50) DEFAULT NULL,
  `f5_leased_in_land` varchar(50) DEFAULT NULL,
  `f5_leased_out_land` varchar(50) DEFAULT NULL,
  `f5_barren_land` varchar(50) DEFAULT NULL,
  `f5_cultivable_land` varchar(50) DEFAULT NULL,
  `f5_irrigated_land` varchar(50) DEFAULT NULL,
  `f5_acreage_irrigated_land` varchar(50) DEFAULT NULL,
  `f5_unirrigated_land` varchar(50) DEFAULT NULL,
  `f5_acreage_unirrigated_land` varchar(50) DEFAULT NULL,
  `f5_annual_income_of_farming` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_financial_occupation`
--

CREATE TABLE IF NOT EXISTS `tbl_financial_occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f1_have_bank_account` varchar(50) DEFAULT NULL,
  `f1_financial_status_id` int(11) DEFAULT NULL,
  `f1_woman_anuual_income` int(11) DEFAULT NULL,
  `f1_num_of_days_labor_work` int(11) DEFAULT NULL,
  `f1_labor_work_rate` int(11) DEFAULT NULL,
  `f1_income_from_labor` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_financial_status`
--

CREATE TABLE IF NOT EXISTS `tbl_financial_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `financial_status` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_financial_status`
--

INSERT INTO `tbl_financial_status` (`id`, `financial_status`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 'BPL', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(2, 'APL', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(3, 'Anthodaya', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(4, 'White Ration Card', 1, '2017-11-20 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goat_breeds`
--

CREATE TABLE IF NOT EXISTS `tbl_goat_breeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goat_breed` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goat_details`
--

CREATE TABLE IF NOT EXISTS `tbl_goat_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f7_number_of_goats` int(11) DEFAULT NULL,
  `f7_female_goat` int(11) DEFAULT NULL,
  `f7_number_of_buck` int(11) DEFAULT NULL,
  `f7_number_of_shegoat` int(11) DEFAULT NULL,
  `f7_from_where_you_buy_goat` varchar(50) DEFAULT NULL,
  `f7_type_of_goat_shed` varchar(50) DEFAULT NULL,
  `f7_source_of_fodder` varchar(50) DEFAULT NULL,
  `f7_own_fodder_lasts_in_num_of_days` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goat_helth_and_medical`
--

CREATE TABLE IF NOT EXISTS `tbl_goat_helth_and_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f8_maintain_medical_records` varchar(50) DEFAULT NULL,
  `f8_is_vaccinated` varchar(50) DEFAULT NULL,
  `f8_vacconation_type` varchar(50) DEFAULT NULL,
  `f8_vaccination_frequency` varchar(50) DEFAULT NULL,
  `f8_vaccination_place` varchar(50) DEFAULT NULL,
  `f8_number_of_vaccinated_goats` int(11) DEFAULT NULL,
  `f8_infected_goats` int(11) DEFAULT NULL,
  `f8_any_remedy_for_infection` varchar(50) DEFAULT NULL,
  `f8_num_of_died_in_last_one_year` int(11) DEFAULT NULL,
  `f8_reason_for_death` text,
  `f8_num_of_goats_insured` int(11) DEFAULT NULL,
  `f8_num_of_calving_cycles_for_past_two_years` int(11) DEFAULT NULL,
  `f8_num_of_births_in_prev_year` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goat_income_and_expenditure`
--

CREATE TABLE IF NOT EXISTS `tbl_goat_income_and_expenditure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f9_expenses_goats_purchasing` int(11) DEFAULT NULL,
  `f9_expenses_goats_shed` int(11) DEFAULT NULL,
  `f9_is_funcded` varchar(50) DEFAULT NULL,
  `f9_funding_from` varchar(50) DEFAULT NULL,
  `f9_expenses_buying_fodders` int(11) DEFAULT NULL,
  `f9_total_annual_medical_expenses` int(11) DEFAULT NULL,
  `f9_other_expenses` int(11) DEFAULT NULL,
  `f9_total_annual_expenses` int(11) DEFAULT NULL,
  `f9_num_of_liters_of_milk_produce_last_year` int(11) DEFAULT NULL,
  `f9_num_of_liters_of_milk_sold_last_year` int(11) DEFAULT NULL,
  `f9_income_from_sold_milk` int(11) DEFAULT NULL,
  `f9_num_of_goats_sold_last_year` int(11) DEFAULT NULL,
  `f9_avg_price_of_goat` int(11) DEFAULT NULL,
  `f9_selling_problems` varchar(50) DEFAULT NULL,
  `f9_income_on_selling_goats` int(11) DEFAULT NULL,
  `f9_income_from_goat_excreta` int(11) DEFAULT NULL,
  `f9_total_income_from_goat_breeding` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_details`
--

CREATE TABLE IF NOT EXISTS `tbl_home_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f3_house_type` varchar(50) DEFAULT NULL,
  `f3_is_electricity` varchar(50) DEFAULT NULL,
  `f3_is_gas_connection` varchar(50) DEFAULT NULL,
  `f3_is_tv` varchar(50) DEFAULT NULL,
  `f3_is_radio` varchar(50) DEFAULT NULL,
  `f3_is_fan` varchar(50) DEFAULT NULL,
  `f3_is_mobile` varchar(50) DEFAULT NULL,
  `f3_is_mixer` varchar(50) DEFAULT NULL,
  `f3_is_cooker` varchar(50) DEFAULT NULL,
  `f3_is_bed` varchar(50) DEFAULT NULL,
  `f3_num_of_chairs` int(11) DEFAULT NULL,
  `f3_num_of_cycle` int(11) DEFAULT NULL,
  `f3_num_of_motorcycle` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_infection_types`
--

CREATE TABLE IF NOT EXISTS `tbl_infection_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infection_type` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance`
--

CREATE TABLE IF NOT EXISTS `tbl_insurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f11_are_your_gost_insured` varchar(50) DEFAULT NULL,
  `f11_which_breed_is_insured` varchar(50) DEFAULT NULL,
  `f11_insuring_agency` varchar(50) DEFAULT NULL,
  `f11_premium_amount_to_pay` varchar(50) DEFAULT NULL,
  `f11_duration_of_premium` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_and_liabilities`
--

CREATE TABLE IF NOT EXISTS `tbl_loan_and_liabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f10_taken_any_loan` varchar(50) DEFAULT NULL,
  `f10_loan_purpose` varchar(50) DEFAULT NULL,
  `f10_loan_use` varchar(50) DEFAULT NULL,
  `f10_loan_taken_from_where` varchar(50) DEFAULT NULL,
  `f10_interest_rate` varchar(50) DEFAULT NULL,
  `f10_problems_during_loan_process` varchar(50) DEFAULT NULL,
  `f10_loan_duration` varchar(50) DEFAULT NULL,
  `f10_loan_status` varchar(50) DEFAULT NULL,
  `f10_how_much_yet_to_be_paid` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration_information`
--

CREATE TABLE IF NOT EXISTS `tbl_migration_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f4_do_you_migrate` varchar(50) DEFAULT NULL,
  `f4_migrate_reason` text,
  `f4_number_of_days_of_migrate` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_occupation`
--

CREATE TABLE IF NOT EXISTS `tbl_occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occupation` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_occupation`
--

INSERT INTO `tbl_occupation` (`id`, `occupation`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 'Farming', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(2, 'Dairy', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(3, 'Goatery', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(4, 'Poultry', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(5, 'Service', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(6, 'Business', 1, '2017-11-20 00:00:00', 1, NULL, NULL),
(7, 'Labor', 1, '2017-11-20 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_producer_company_information`
--

CREATE TABLE IF NOT EXISTS `tbl_producer_company_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f13_is_shg_member` varchar(50) DEFAULT NULL,
  `f13_is_part_of_this_project` varchar(50) DEFAULT NULL,
  `f13_member_of_fpc` varchar(50) DEFAULT NULL,
  `f13_which_fpc_member_you_are` varchar(50) DEFAULT NULL,
  `f13_wish_to_be_part_of_this_fpc` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_religion`
--

CREATE TABLE IF NOT EXISTS `tbl_religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religion` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_total_income`
--

CREATE TABLE IF NOT EXISTS `tbl_total_income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `f12_agriculture_income` int(11) DEFAULT NULL,
  `f12_animal_husbandry_income` int(11) DEFAULT NULL,
  `f12_job_income` int(11) DEFAULT NULL,
  `f12_labor_income` int(11) DEFAULT NULL,
  `f12_any_other_source_of_income` int(11) DEFAULT NULL,
  `f12_total_income` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_dob` varchar(50) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  `user_education_id` int(11) DEFAULT NULL,
  `user_religion_id` int(11) DEFAULT NULL,
  `user_cast_id` int(11) DEFAULT NULL,
  `user_num_of_family_member` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vaccination_type`
--

CREATE TABLE IF NOT EXISTS `tbl_vaccination_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vaccination_type` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_water_source`
--

CREATE TABLE IF NOT EXISTS `tbl_water_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `water_source` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
