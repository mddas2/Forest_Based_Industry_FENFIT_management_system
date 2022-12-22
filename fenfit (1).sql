-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 09:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fenfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser`
--

CREATE TABLE `account_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` smallint(5) UNSIGNED DEFAULT NULL CHECK (`role` >= 0),
  `permanent_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `district_name` varchar(55) DEFAULT NULL,
  `state_name` varchar(55) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `is_applyForVerified` tinyint(1) NOT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `company_name` varchar(205) DEFAULT NULL,
  `union_name` varchar(205) DEFAULT NULL,
  `union_type` varchar(205) DEFAULT NULL,
  `approved_company_name` varchar(205) DEFAULT NULL,
  `approved_email` varchar(205) DEFAULT NULL,
  `approved_name` varchar(205) DEFAULT NULL,
  `approved_signature` varchar(100) DEFAULT NULL,
  `member_admin` varchar(205) DEFAULT NULL,
  `apply_role_type` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `division_forest_email` varchar(205) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_customuser`
--

INSERT INTO `account_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `role`, `permanent_address`, `phone`, `image`, `district_name`, `state_name`, `is_verified`, `created_at`, `updated_at`, `is_applyForVerified`, `signature`, `company_name`, `union_name`, `union_type`, `approved_company_name`, `approved_email`, `approved_name`, `approved_signature`, `member_admin`, `apply_role_type`, `sex`, `division_forest_email`) VALUES
(18, 'pbkdf2_sha256$390000$T4dKw5aGrCHDLBTgZnogQT$yqE32RSM4d+n4d4pzmOopA74oT/77H+vWjVwEL6AXlo=', '2022-12-20 11:34:34.832699', 0, 'central', 'central', '', 'central@gmail.com', 0, 1, '2022-11-18 13:46:02.268238', 1, NULL, '9808059156', 'user/profile/karna_CIyvn0n.jpg', 'Siraha', 'Madhesh Province', 1, '2022-11-18 13:46:02.959130', '2022-12-20 06:57:26.854024', 1, 'user/documents/signature_eLOwzGt.jpeg', NULL, NULL, NULL, NULL, 'admin@gmail.com', 'admin', '', NULL, NULL, NULL, NULL),
(38, 'pbkdf2_sha256$390000$ZCB7dnlD28wtVrcMWqC4j5$BFBbySHetYU8aTYzIg8fG1aaxuzgDewcXrt/HXoa7cQ=', '2022-12-20 19:43:23.948756', 0, 'user', 'admin', '', 'admin@gmail.com', 0, 1, '2022-11-29 04:58:38.907268', 1, NULL, '9809809809', '', 'Morang', 'Province No. 1', 0, '2022-11-29 04:58:39.197530', '2022-12-20 06:58:32.685540', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(39, 'pbkdf2_sha256$390000$IUKTvMb2qAxnjD1RzGYw08$jhjEjA89U9onSn639OAHcQNv1xK0iJLwrwMtSh3aH98=', '2022-12-20 10:48:50.368815', 0, 'ceo', 'acountant', '', 'accountant@gmail.com', 0, 1, '2022-11-29 05:01:18.970824', 1, NULL, '98098098', '', 'Solukhumbu', 'Province No. 1', 0, '2022-11-29 05:01:19.307923', '2022-12-20 06:53:29.189607', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(40, 'pbkdf2_sha256$390000$MUIB8FwHiRDV6Phpz2UsCA$utHSfT/1pqI47SdblTUanKF+KhLFtCOwuLd7kwbrKWA=', '2022-12-13 11:09:50.344689', 0, 'user', 'private user', '', 'manojdas.py@gmail.com', 0, 1, '2022-11-29 05:50:16.469786', 4, NULL, '9808098', 'user/profile/my_photo.JPG', 'Dhanusha', 'Madhesh Province', 0, '2022-11-29 05:50:16.940528', '2022-12-13 11:08:34.794004', 1, 'user/documents/signature_ceo.jpeg', 'gfg', 'central@gmail.com', 'district', 'md company', 'manojdas.py@gmail.com', NULL, '', 'admin', 2, NULL, NULL),
(43, 'pbkdf2_sha256$390000$N7ybMyN8rPjN2PAqbTyebZ$6bP1q2HSE9ne7oSQXLmesj8afNFthAjpKLKBz94DVm8=', '2022-12-20 07:14:55.307293', 0, 'a', 'मनोज दास', '', 'a@gmail.com', 0, 1, '2022-12-04 10:24:09.463723', 5, NULL, '98080', '', 'Ilam', 'Province No. 1', 1, '2022-12-04 10:24:09.750044', '2022-12-13 11:09:09.607972', 1, '', 'asd', 'manojdas.py@gmail.com', 'private', 'gfg', 'manojdas.py@gmail.com', 'private user', 'user/documents/signature_ceo.jpeg', 'member', 5, 'male', NULL),
(44, 'pbkdf2_sha256$390000$MEE9VzD8Q2vxM12oGfXe3V$GkNJ0GhdEN/n0qjk5ErSnKXf+yaCYa7kOSd7D8s/N14=', '2022-12-14 15:31:04.034497', 0, 'b', 'b', '', 'b@user.com', 0, 1, '2022-12-14 15:31:02.549882', 3, NULL, '980098', 'user/profile/my_photo_1.JPG', 'Ilam', 'Province No. 1', 0, '2022-12-14 15:31:03.183563', '2022-12-18 15:28:32.674179', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'male', 'sangam@gmail.com'),
(45, 'pbkdf2_sha256$390000$FSlPn6tEB4owBWNL4ld8vo$7XjaO5YKNEAQj8Lnq3wMwqsyYaXkBV0r8Oy6/3zdkrc=', '2022-12-20 07:16:03.304656', 0, 'ilamdistrict', 'ilamdistrict', '', 'ilam@gmail.com', 0, 1, '2022-12-20 06:49:34.252946', 3, NULL, '98', '', 'Ilam', 'Province No. 1', 0, '2022-12-20 06:49:34.735771', '2022-12-20 07:00:50.517140', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'male', 'mddasgudiya@gmail.com'),
(46, 'pbkdf2_sha256$390000$vmPHBHsDOyAKYPQqpEQYua$q9896BulorVZp2V9g/hUk1Mh/PUVkeh8SUolUIGt9sY=', '2022-12-20 07:16:25.802151', 0, 'provience1', 'provience1', '', 'state1@gmail.com', 0, 1, '2022-12-20 06:50:18.253062', 2, NULL, '98098', '', 'Dhankuta', 'Province No. 1', 0, '2022-12-20 06:50:18.586170', '2022-12-20 06:53:17.876513', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'male', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_groups`
--

CREATE TABLE `account_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_customuser_groups`
--

INSERT INTO `account_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(22, 18, 13),
(23, 38, 8),
(21, 39, 9);

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_user_permissions`
--

CREATE TABLE `account_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_teammember`
--

CREATE TABLE `account_teammember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `post` varchar(2000) DEFAULT NULL,
  `email` varchar(2000) DEFAULT NULL,
  `phone` varchar(2000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_teammember`
--

INSERT INTO `account_teammember` (`id`, `name`, `post`, `email`, `phone`, `image`, `admin_id`) VALUES
(1, 'central', 'asd', 'central@gmail.com', '9808059156', '', NULL),
(2, 'central', 'asd', 'central@gmail.com', '9808059156', '', NULL),
(3, 'central', 'asd', 'central@gmail.com', '9808059156', 'user/teams/fenfit_logo.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_applicationform`
--

CREATE TABLE `admin_applicationform` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `dsc` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `get_user_application_detail_id` bigint(20) DEFAULT NULL,
  `central_status` tinyint(1) NOT NULL,
  `district_status` tinyint(1) NOT NULL,
  `private_status` tinyint(1) NOT NULL,
  `state_status` tinyint(1) NOT NULL,
  `approved_pending_cancelled` varchar(10) DEFAULT NULL,
  `in_central_approved_by_id` bigint(20) DEFAULT NULL,
  `in_district_approved_by_id` bigint(20) DEFAULT NULL,
  `in_state_approved_by_id` bigint(20) DEFAULT NULL,
  `is_payment` tinyint(1) DEFAULT NULL,
  `bill_number` varchar(205) NOT NULL,
  `payment_get` varchar(205) NOT NULL,
  `type_application_id` varchar(205) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_applicationform`
--

INSERT INTO `admin_applicationform` (`id`, `created_at`, `updated_at`, `dsc`, `user_id`, `get_user_application_detail_id`, `central_status`, `district_status`, `private_status`, `state_status`, `approved_pending_cancelled`, `in_central_approved_by_id`, `in_district_approved_by_id`, `in_state_approved_by_id`, `is_payment`, `bill_number`, `payment_get`, `type_application_id`) VALUES
(23, '2022-11-29 05:55:29.878938', '2022-12-20 10:51:02.632781', 'central_admin', 40, 23, 0, 0, 0, 0, '0', 38, NULL, NULL, 0, '234234', '234234', '2'),
(24, '2022-12-04 10:24:54.158928', '2022-12-20 10:32:57.702162', 'central_admin', 43, 24, 0, 0, 0, 0, NULL, 18, 45, 46, 1, '234', '3234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_applicationformapproveddetail`
--

CREATE TABLE `admin_applicationformapproveddetail` (
  `id` bigint(20) NOT NULL,
  `whose_form` varchar(100) DEFAULT NULL,
  `approved_by_id` bigint(20) DEFAULT NULL,
  `approved_form_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_applicationformapproveddetail`
--

INSERT INTO `admin_applicationformapproveddetail` (`id`, `whose_form`, `approved_by_id`, `approved_form_id`) VALUES
(39, '40', 18, 23),
(40, '40', 18, 23),
(41, '40', 39, 23),
(42, '40', 39, 23),
(43, '40', 39, 23),
(44, '40', 39, 23),
(45, '40', 39, 23),
(46, '40', 38, 23),
(47, '40', 18, 23),
(48, '40', 38, 23),
(49, '40', 18, 23),
(50, '40', 38, 23),
(51, '40', 18, 23),
(52, '40', 18, 23),
(53, '40', 38, 23),
(54, '40', 18, 23),
(55, '40', 18, 23),
(56, '40', 18, 23),
(57, '40', 18, 23),
(58, '40', 18, 23),
(59, '40', 38, 23),
(60, '40', 18, 23),
(61, '40', 18, 23),
(62, '40', 18, 23),
(63, '40', 18, 23),
(64, '40', 39, 23),
(65, '40', 38, 23),
(66, '40', 18, 23),
(67, '40', 39, 23),
(68, '43', 39, 24),
(69, '43', 38, 24),
(70, '40', 38, 23),
(71, '43', 38, 24),
(72, '43', 38, 24),
(73, '43', 18, 24),
(74, '43', 45, 24),
(75, '43', 45, 24),
(76, '43', 46, 24),
(77, '43', 18, 24),
(78, '43', 18, 24);

-- --------------------------------------------------------

--
-- Table structure for table `admin_applicationformcancelleddetail`
--

CREATE TABLE `admin_applicationformcancelleddetail` (
  `id` bigint(20) NOT NULL,
  `whose_form` varchar(100) DEFAULT NULL,
  `cancelled_by_id` bigint(20) DEFAULT NULL,
  `cancelled_form_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_applicationformcancelleddetail`
--

INSERT INTO `admin_applicationformcancelleddetail` (`id`, `whose_form`, `cancelled_by_id`, `cancelled_form_id`) VALUES
(5, '40', 38, 23),
(6, '40', 18, 23),
(7, '43', 38, 24),
(8, '43', 18, 24),
(9, '43', 18, 24),
(10, '43', 18, 24),
(11, '43', 18, 24),
(12, '43', 18, 24),
(13, '43', 46, 24),
(14, '43', 18, 24);

-- --------------------------------------------------------

--
-- Table structure for table `admin_blog`
--

CREATE TABLE `admin_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `discription` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `banner_image` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_businesstype`
--

CREATE TABLE `admin_businesstype` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_contactus`
--

CREATE TABLE `admin_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `read_unread` tinyint(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_districts`
--

CREATE TABLE `admin_districts` (
  `id` bigint(20) NOT NULL,
  `district_name` varchar(100) DEFAULT NULL,
  `get_state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_globalsettings`
--

CREATE TABLE `admin_globalsettings` (
  `id` bigint(20) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_name_nepali` varchar(255) DEFAULT NULL,
  `site_email` varchar(254) NOT NULL,
  `site_contact` bigint(20) NOT NULL,
  `site_contact_nepali` bigint(20) DEFAULT NULL,
  `site_address` varchar(255) NOT NULL,
  `site_address_nepali` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `other_link` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keyword` varchar(200) DEFAULT NULL,
  `page_discription` longtext DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_homenavigation`
--

CREATE TABLE `admin_homenavigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_page_id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `short_description` varchar(3000) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `banner_image1` varchar(100) DEFAULT NULL,
  `banner_image2` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_homenavigation`
--

INSERT INTO `admin_homenavigation` (`id`, `name`, `parent_page_id`, `caption`, `status`, `page_type`, `title`, `short_description`, `long_contents`, `meta_title`, `keyword`, `position`, `banner_image1`, `banner_image2`, `icon_image`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'clients', 0, NULL, 1, 'group', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'pemplate', 0, NULL, 1, 'group', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_navigation`
--

CREATE TABLE `admin_navigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_page_id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `short_description` varchar(3000) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `banner_image1` varchar(100) DEFAULT NULL,
  `banner_image2` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_pagetype`
--

CREATE TABLE `admin_pagetype` (
  `id` bigint(20) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_pagetype`
--

INSERT INTO `admin_pagetype` (`id`, `page_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'group', 1, NULL, NULL),
(2, 'normal', 1, NULL, NULL),
(3, 'sale', 1, NULL, NULL),
(4, 'blog', 1, NULL, NULL),
(5, 'contact', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_recomendationpricecategory`
--

CREATE TABLE `admin_recomendationpricecategory` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_states`
--

CREATE TABLE `admin_states` (
  `id` bigint(20) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `state_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_states`
--

INSERT INTO `admin_states` (`id`, `state_name`, `state_code`) VALUES
(36, 'Province 1', 'province_1'),
(37, 'Madhesh Pradesh', 'province_2'),
(38, 'Bagmati Pradesh', 'province_3'),
(39, 'Gandaki Pradesh', 'province_4'),
(40, 'Lumbini Pradesh', 'province_5'),
(41, 'Karnali Pradesh', 'province_6'),
(42, 'Sudur Paschim Pradesh', 'province_7');

-- --------------------------------------------------------

--
-- Table structure for table `admin_team`
--

CREATE TABLE `admin_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_userapplicationdetail`
--

CREATE TABLE `admin_userapplicationdetail` (
  `id` bigint(20) NOT NULL,
  `owner_full_name` varchar(205) NOT NULL,
  `business_name` varchar(205) DEFAULT NULL,
  `municipality` varchar(205) DEFAULT NULL,
  `tole` varchar(205) DEFAULT NULL,
  `ward_number` varchar(205) DEFAULT NULL,
  `auditing` varchar(100) DEFAULT NULL,
  `certificate_citizenship` varchar(100) DEFAULT NULL,
  `certificate_company_registration` varchar(100) DEFAULT NULL,
  `provisional_account_number` varchar(100) DEFAULT NULL,
  `tax_paid_certificate` varchar(100) DEFAULT NULL,
  `bank_voucher` varchar(100) DEFAULT NULL,
  `income_certificate` varchar(100) DEFAULT NULL,
  `industry_registration` varchar(100) DEFAULT NULL,
  `member_approved_certificate` varchar(100) DEFAULT NULL,
  `self_declaration_not_on_the_black_list` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `business_price_category` varchar(205) DEFAULT NULL,
  `voucher_number` varchar(505) DEFAULT NULL,
  `authorized_capital_of_company` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `number_of_employees` varchar(205) DEFAULT NULL,
  `paid_up_capital_of_company` varchar(205) DEFAULT NULL,
  `tax_amount` varchar(205) DEFAULT NULL,
  `transaction_amount` varchar(205) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `company_name` varchar(205) DEFAULT NULL,
  `is_reniew` tinyint(1) DEFAULT NULL,
  `payment_rupees` int(11) DEFAULT NULL,
  `union_name` varchar(205) DEFAULT NULL,
  `union_type` varchar(205) DEFAULT NULL,
  `approved_company_name` varchar(205) DEFAULT NULL,
  `approved_email` varchar(205) DEFAULT NULL,
  `approved_name` varchar(205) DEFAULT NULL,
  `approved_signature` varchar(100) DEFAULT NULL,
  `industry_certificate_back_side` varchar(100) DEFAULT NULL,
  `application_certificate` varchar(100) DEFAULT NULL,
  `physical_year` varchar(205) DEFAULT NULL,
  `industry_certificate_front_side` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_userapplicationdetail`
--

INSERT INTO `admin_userapplicationdetail` (`id`, `owner_full_name`, `business_name`, `municipality`, `tole`, `ward_number`, `auditing`, `certificate_citizenship`, `certificate_company_registration`, `provisional_account_number`, `tax_paid_certificate`, `bank_voucher`, `income_certificate`, `industry_registration`, `member_approved_certificate`, `self_declaration_not_on_the_black_list`, `user_id`, `business_price_category`, `voucher_number`, `authorized_capital_of_company`, `created_at`, `number_of_employees`, `paid_up_capital_of_company`, `tax_amount`, `transaction_amount`, `updated_at`, `company_name`, `is_reniew`, `payment_rupees`, `union_name`, `union_type`, `approved_company_name`, `approved_email`, `approved_name`, `approved_signature`, `industry_certificate_back_side`, `application_certificate`, `physical_year`, `industry_certificate_front_side`) VALUES
(23, 'private user', 'plywood_industry', 'Mithila', 'topa', '2', '', 'user/documents/Doc1_srdTaWL.jpg', 'user/documents/Doc2_mG3bf1z.jpg', 'user/documents/Doc3_VPLgpYj.jpg', 'user/documents/Doc1_NohrdG2.jpg', 'user/documents/qr-new.jpg', '', '', '', '', 40, 'old_unregistered_non_payment', 'None', 98, '2022-11-29 05:55:29.785957', '98', '98', '987', '456', '2022-12-13 11:03:40.739930', 'gfg', 0, 20000, 'central@gmail.com', 'district', NULL, 'central@gmail.com', 'central', 'user/documents/signature_eLOwzGt.jpeg', 'user/documents/my_photo_hGyyNkP.JPG', 'user/documents/PDF_SIGNING_USING_DIGITAL_SIGNATURE_-_Google_Docs_4.pdf', '2078', 'user/documents/my_photo.JPG'),
(24, 'मनोज दास', 'plywood_industry', 'Mangsebung', '3', '8', '', '', '', '', '', '', '', '', '', '', 43, 'less_than_2_crode', 'None', 87, '2022-12-04 10:24:53.993304', '890', '87', '98', '8797', '2022-12-20 10:33:09.403593', 'asd', 0, 10000, 'manojdas.py@gmail.com', 'private', NULL, 'central@gmail.com', 'central', 'user/documents/signature_eLOwzGt.jpeg', '', '', '2079', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_userapplicationpayment`
--

CREATE TABLE `admin_userapplicationpayment` (
  `id` bigint(20) NOT NULL,
  `business_name` varchar(205) DEFAULT NULL,
  `business_price_category` varchar(205) DEFAULT NULL,
  `voucher_number` varchar(505) DEFAULT NULL,
  `is_payment` tinyint(1) DEFAULT NULL,
  `is_renew` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `get_user_application_detail_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_application_form_id` bigint(20) DEFAULT NULL,
  `company_name` varchar(205) DEFAULT NULL,
  `owner_full_name` varchar(205) DEFAULT NULL,
  `email` varchar(205) DEFAULT NULL,
  `mobile_number` varchar(205) DEFAULT NULL,
  `payment_rupees` int(11) DEFAULT NULL,
  `who_payment` varchar(205) DEFAULT NULL,
  `bill_number` varchar(205) DEFAULT NULL,
  `payment_get` varchar(205) NOT NULL,
  `ceo_approved_email` varchar(205) DEFAULT NULL,
  `ceo_approved_name` varchar(205) DEFAULT NULL,
  `ceo_approved_signature` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_userapplicationpayment`
--

INSERT INTO `admin_userapplicationpayment` (`id`, `business_name`, `business_price_category`, `voucher_number`, `is_payment`, `is_renew`, `created_at`, `updated_at`, `get_user_application_detail_id`, `user_id`, `user_application_form_id`, `company_name`, `owner_full_name`, `email`, `mobile_number`, `payment_rupees`, `who_payment`, `bill_number`, `payment_get`, `ceo_approved_email`, `ceo_approved_name`, `ceo_approved_signature`) VALUES
(22, 'plywood_industry', 'less_than_2_crode', 'None', 0, 1, '2022-11-29 10:11:46.568096', '2022-12-06 05:49:47.622154', 23, 40, 23, 'private company', 'private user', 'manojdas.py@gmail.com', '9808098', 10000, 'accountant@gmail.com', '234234', '234234', 'central@gmail.com', 'central', 'user/documents/signature_eLOwzGt.jpeg'),
(23, 'plywood_industry', 'less_than_2_crode', 'None', 1, 0, '2022-12-06 11:47:11.264590', '2022-12-06 11:47:11.264590', 24, 43, 24, 'asd', 'a', 'a@gmail.com', '98080', 10000, 'accountant@gmail.com', '234', '3234', 'central@gmail.com', 'central', 'user/documents/signature_eLOwzGt.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(9, 'accountant'),
(8, 'admin'),
(13, 'ceo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(122, 'kathmandu', 1, 'kathmndu'),
(123, 'Can add log entry', 1, 'add_logentry'),
(124, 'Can change log entry', 1, 'change_logentry'),
(125, 'Can delete log entry', 1, 'delete_logentry'),
(126, 'Can view log entry', 1, 'view_logentry'),
(127, 'Can add permission', 2, 'add_permission'),
(128, 'Can change permission', 2, 'change_permission'),
(129, 'Can delete permission', 2, 'delete_permission'),
(130, 'Can view permission', 2, 'view_permission'),
(131, 'Can add group', 3, 'add_group'),
(132, 'Can change group', 3, 'change_group'),
(133, 'Can delete group', 3, 'delete_group'),
(134, 'Can view group', 3, 'view_group'),
(135, 'Can add content type', 4, 'add_contenttype'),
(136, 'Can change content type', 4, 'change_contenttype'),
(137, 'Can delete content type', 4, 'delete_contenttype'),
(138, 'Can view content type', 4, 'view_contenttype'),
(139, 'Can add session', 5, 'add_session'),
(140, 'Can change session', 5, 'change_session'),
(141, 'Can delete session', 5, 'delete_session'),
(142, 'Can view session', 5, 'view_session'),
(143, 'Can add access attempt', 6, 'add_accessattempt'),
(144, 'Can change access attempt', 6, 'change_accessattempt'),
(145, 'Can delete access attempt', 6, 'delete_accessattempt'),
(146, 'Can view access attempt', 6, 'view_accessattempt'),
(147, 'Can add access log', 7, 'add_accesslog'),
(148, 'Can change access log', 7, 'change_accesslog'),
(149, 'Can delete access log', 7, 'delete_accesslog'),
(150, 'Can view access log', 7, 'view_accesslog'),
(151, 'Can add access failure', 8, 'add_accessfailurelog'),
(152, 'Can change access failure', 8, 'change_accessfailurelog'),
(153, 'Can delete access failure', 8, 'delete_accessfailurelog'),
(154, 'Can view access failure', 8, 'view_accessfailurelog'),
(155, 'Can add blog', 9, 'add_blog'),
(156, 'Can change blog', 9, 'change_blog'),
(157, 'Can delete blog', 9, 'delete_blog'),
(158, 'Can view blog', 9, 'view_blog'),
(159, 'Can add contact us', 10, 'add_contactus'),
(160, 'Can change contact us', 10, 'change_contactus'),
(161, 'Can delete contact us', 10, 'delete_contactus'),
(162, 'Can view contact us', 10, 'view_contactus'),
(163, 'Can add global settings', 12, 'add_globalsettings'),
(164, 'Can change global settings', 12, 'change_globalsettings'),
(165, 'Can delete global settings', 12, 'delete_globalsettings'),
(166, 'Can view global settings', 12, 'view_globalsettings'),
(167, 'Can add page type', 14, 'add_pagetype'),
(168, 'Can change page type', 14, 'change_pagetype'),
(169, 'Can delete page type', 14, 'delete_pagetype'),
(170, 'Can view page type', 14, 'view_pagetype'),
(171, 'Can add team', 17, 'add_team'),
(172, 'Can change team', 17, 'change_team'),
(173, 'Can delete team', 17, 'delete_team'),
(174, 'Can view team', 17, 'view_team'),
(175, 'Can add user application detail', 23, 'add_userapplicationdetail'),
(176, 'Can change user application detail', 23, 'change_userapplicationdetail'),
(177, 'Can delete user application detail', 23, 'delete_userapplicationdetail'),
(178, 'Can view user application detail', 23, 'view_userapplicationdetail'),
(179, 'Can add navigation', 13, 'add_navigation'),
(180, 'Can change navigation', 13, 'change_navigation'),
(181, 'Can delete navigation', 13, 'delete_navigation'),
(182, 'Can view navigation', 13, 'view_navigation'),
(183, 'Can add home navigation', 20, 'add_homenavigation'),
(184, 'Can change home navigation', 20, 'change_homenavigation'),
(185, 'Can delete home navigation', 20, 'delete_homenavigation'),
(186, 'Can view home navigation', 20, 'view_homenavigation'),
(187, 'Can add application form', 19, 'add_applicationform'),
(188, 'Can change application form', 19, 'change_applicationform'),
(189, 'Can delete application form', 19, 'delete_applicationform'),
(190, 'Can view application form', 19, 'view_applicationform'),
(191, 'Can add application form approved detail', 24, 'add_applicationformapproveddetail'),
(192, 'Can change application form approved detail', 24, 'change_applicationformapproveddetail'),
(193, 'Can delete application form approved detail', 24, 'delete_applicationformapproveddetail'),
(194, 'Can view application form approved detail', 24, 'view_applicationformapproveddetail'),
(195, 'Can add application form cancelled detail', 25, 'add_applicationformcancelleddetail'),
(196, 'Can change application form cancelled detail', 25, 'change_applicationformcancelleddetail'),
(197, 'Can delete application form cancelled detail', 25, 'delete_applicationformcancelleddetail'),
(198, 'Can view application form cancelled detail', 25, 'view_applicationformcancelleddetail'),
(199, 'Can add states', 27, 'add_states'),
(200, 'Can change states', 27, 'change_states'),
(201, 'Can delete states', 27, 'delete_states'),
(202, 'Can view states', 27, 'view_states'),
(203, 'Can add districts', 26, 'add_districts'),
(204, 'Can change districts', 26, 'change_districts'),
(205, 'Can delete districts', 26, 'delete_districts'),
(206, 'Can view districts', 26, 'view_districts'),
(207, 'Can add user', 21, 'add_customuser'),
(208, 'Can change user', 21, 'change_customuser'),
(209, 'Can delete user', 21, 'delete_customuser'),
(210, 'Can view user', 21, 'view_customuser'),
(211, 'saptary', 1, 'saptary'),
(212, 'janakpur', 1, 'janakpur'),
(213, 'Can add business type', 28, 'add_businesstype'),
(214, 'Can change business type', 28, 'change_businesstype'),
(215, 'Can delete business type', 28, 'delete_businesstype'),
(216, 'Can view business type', 28, 'view_businesstype'),
(217, 'Can add recomendation price category', 29, 'add_recomendationpricecategory'),
(218, 'Can change recomendation price category', 29, 'change_recomendationpricecategory'),
(219, 'Can delete recomendation price category', 29, 'delete_recomendationpricecategory'),
(220, 'Can view recomendation price category', 29, 'view_recomendationpricecategory'),
(221, 'Can add user application renew', 30, 'add_userapplicationrenew'),
(222, 'Can change user application renew', 30, 'change_userapplicationrenew'),
(223, 'Can delete user application renew', 30, 'delete_userapplicationrenew'),
(224, 'Can view user application renew', 30, 'view_userapplicationrenew'),
(225, 'Can add states', 31, 'add_states'),
(226, 'Can change states', 31, 'change_states'),
(227, 'Can delete states', 31, 'delete_states'),
(228, 'Can view states', 31, 'view_states'),
(229, 'Can add municipality', 32, 'add_municipality'),
(230, 'Can change municipality', 32, 'change_municipality'),
(231, 'Can delete municipality', 32, 'delete_municipality'),
(232, 'Can view municipality', 32, 'view_municipality'),
(233, 'Can add districts', 33, 'add_districts'),
(234, 'Can change districts', 33, 'change_districts'),
(235, 'Can delete districts', 33, 'delete_districts'),
(236, 'Can view districts', 33, 'view_districts'),
(237, 'Can add user application payment', 34, 'add_userapplicationpayment'),
(238, 'Can change user application payment', 34, 'change_userapplicationpayment'),
(239, 'Can delete user application payment', 34, 'delete_userapplicationpayment'),
(240, 'Can view user application payment', 34, 'view_userapplicationpayment'),
(241, 'Can add districts', 35, 'add_districts'),
(242, 'Can change districts', 35, 'change_districts'),
(243, 'Can delete districts', 35, 'delete_districts'),
(244, 'Can view districts', 35, 'view_districts'),
(245, 'Can add states', 36, 'add_states'),
(246, 'Can change states', 36, 'change_states'),
(247, 'Can delete states', 36, 'delete_states'),
(248, 'Can view states', 36, 'view_states'),
(249, 'Can add municipality', 37, 'add_municipality'),
(250, 'Can change municipality', 37, 'change_municipality'),
(251, 'Can delete municipality', 37, 'delete_municipality'),
(252, 'Can view municipality', 37, 'view_municipality'),
(253, 'Can add team member', 38, 'add_teammember'),
(254, 'Can change team member', 38, 'change_teammember'),
(255, 'Can delete team member', 38, 'delete_teammember'),
(256, 'Can view team member', 38, 'view_teammember');

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessattempt`
--

CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) UNSIGNED NOT NULL CHECK (`failures_since_start` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessfailurelog`
--

CREATE TABLE `axes_accessfailurelog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `locked_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accesslog`
--

CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `axes_accesslog`
--

INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-10-22 17:20:29.090006', '2022-11-29 08:26:24.964883'),
(2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 17:58:25.755575', '2022-11-29 08:26:24.964883'),
(3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 18:00:41.700878', '2022-11-29 08:26:24.964883'),
(4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 18:01:36.389882', '2022-11-29 08:26:24.964883'),
(5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 18:05:07.602426', '2022-10-22 18:59:33.033793'),
(6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 18:59:42.423240', '2022-10-23 07:05:34.813077'),
(7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-22 19:00:40.175590', '2022-10-23 07:04:48.834669'),
(8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:04:58.806898', '2022-10-23 07:05:11.066676'),
(9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:05:30.694323', '2022-10-23 07:05:34.813077'),
(10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:05:54.759325', '2022-10-23 07:12:39.988663'),
(11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:07:30.884580', '2022-10-23 07:12:39.988663'),
(12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:07:57.033279', '2022-10-23 07:12:39.988663'),
(13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:12:51.509551', '2022-10-23 07:26:28.946525'),
(14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:17:43.836537', '2022-10-23 07:26:28.946525'),
(15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:26:54.014244', '2022-10-23 07:41:52.127098'),
(16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:42:03.267962', '2022-10-23 07:42:20.446481'),
(17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:42:30.331668', '2022-10-23 07:43:36.231584'),
(18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:43:45.211283', '2022-10-23 07:45:33.644909'),
(19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-10-23 07:52:04.481810', '2022-11-02 06:08:34.489258'),
(20, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:08:51.117952', '2022-11-02 06:09:05.946541'),
(21, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:09:19.201132', '2022-11-02 06:52:37.414405'),
(22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:09:38.922459', '2022-11-02 06:52:37.414405'),
(23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:09:50.940787', '2022-11-02 06:11:21.965836'),
(24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:11:40.974872', '2022-11-02 06:52:37.414405'),
(25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:50:18.307431', '2022-11-02 06:52:37.414405'),
(26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-02 06:52:49.472516', '2022-11-03 05:54:51.437507'),
(27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 06:01:56.989540', '2022-11-03 06:02:33.998693'),
(28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 06:02:44.180663', '2022-11-04 06:35:34.394985'),
(29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 06:05:49.873233', '2022-11-03 08:50:46.510215'),
(30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 08:51:06.184077', '2022-11-04 06:35:34.394985'),
(31, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 09:06:12.837969', '2022-11-04 06:35:34.394985'),
(32, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-03 09:06:12.919756', '2022-11-04 06:35:34.394985'),
(33, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 06:37:24.032370', '2022-11-04 06:46:48.853940'),
(34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 06:46:58.422742', '2022-11-04 06:47:06.490448'),
(35, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 06:47:18.063008', '2022-11-04 09:27:21.017545'),
(36, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 09:27:30.526882', '2022-11-04 09:28:18.674122'),
(37, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 09:28:29.176891', '2022-11-04 10:18:31.795975'),
(38, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 10:18:51.150897', '2022-11-04 10:27:03.137028'),
(39, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 10:27:20.862739', '2022-11-04 16:39:12.985216'),
(40, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 11:34:05.911206', '2022-11-04 16:39:12.985216'),
(41, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-04 16:41:51.811190', '2022-11-05 03:48:59.453871'),
(42, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-05 04:01:57.294240', '2022-11-05 04:03:35.926417'),
(43, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-05 04:03:41.777005', '2022-11-06 06:00:10.726715'),
(44, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:00:20.215078', '2022-11-06 06:01:48.026938'),
(45, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:01:38.523263', '2022-11-06 06:01:48.026938'),
(46, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:01:58.364926', '2022-11-06 06:04:46.472800'),
(47, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:06:15.219955', '2022-11-06 06:08:03.568066'),
(48, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:10:08.164125', '2022-11-06 06:13:40.807287'),
(49, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:14:11.302106', '2022-11-06 06:14:33.907182'),
(50, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:14:45.049290', '2022-11-06 06:16:44.742041'),
(51, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:16:56.500470', '2022-11-06 06:17:59.631437'),
(52, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:18:08.823754', '2022-11-06 06:22:23.057143'),
(53, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'bishnu@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-06 06:23:27.064876', '2022-11-06 06:27:29.162055'),
(54, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'bishnu@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:23:48.085551', '2022-11-06 06:27:29.162055'),
(55, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:27:41.972973', '2022-11-06 06:41:03.132868'),
(56, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 06:41:12.792092', '2022-11-06 08:40:47.725331'),
(57, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'bishnu@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 08:40:55.235557', '2022-11-06 09:29:46.823582'),
(58, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:05:37.000081', '2022-11-06 10:05:42.166926'),
(59, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:05:50.611415', '2022-11-06 10:06:04.209539'),
(60, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:06:15.721543', '2022-11-06 10:06:26.928074'),
(61, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'bishnu@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:06:35.522143', '2022-11-06 10:10:08.393856'),
(62, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:10:25.162286', '2022-11-06 10:14:33.552400'),
(63, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-06 10:14:46.660762', '2022-11-07 06:21:34.162407'),
(64, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 06:22:10.284495', '2022-11-07 07:02:33.942720'),
(65, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 06:33:35.133819', '2022-11-07 07:02:33.942720'),
(66, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 06:34:18.751275', '2022-11-07 07:02:33.942720'),
(67, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-07 07:18:10.175490', '2022-11-07 08:00:15.890239'),
(68, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya4@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-07 08:04:35.373922', '2022-11-07 08:05:14.984617'),
(69, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 08:07:00.526935', '2022-11-07 08:37:09.253651'),
(70, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 08:37:21.484611', '2022-11-07 08:47:06.966485'),
(71, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 08:47:26.511036', '2022-11-07 09:00:58.705006'),
(72, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 09:01:06.424196', '2022-11-07 09:01:10.062097'),
(73, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 09:01:18.058419', '2022-11-07 09:24:55.111519'),
(74, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 09:25:04.986090', '2022-11-07 10:20:03.802597'),
(75, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 09:44:04.775478', '2022-11-07 10:20:03.802597'),
(76, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 10:20:12.835595', '2022-11-07 10:32:24.158938'),
(77, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 10:35:07.484884', '2022-11-07 10:35:10.638266'),
(78, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 10:35:38.041143', '2022-11-07 10:35:42.491513'),
(79, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 10:52:59.000113', '2022-11-09 17:06:25.498323'),
(80, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-07 11:17:14.053453', '2022-11-08 12:04:17.683789'),
(81, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiasyaas3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-08 12:04:53.323177', NULL),
(82, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasguasdadiasyaas3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-08 12:06:49.843608', '2022-11-09 05:45:03.413617'),
(83, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 05:45:08.878095', '2022-11-09 05:45:11.784612'),
(84, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 05:47:10.808934', '2022-11-09 05:47:14.357751'),
(85, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 06:07:30.373178', '2022-11-09 11:23:29.388019'),
(86, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 11:23:41.221952', '2022-11-09 17:06:25.498323'),
(87, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 17:06:38.313691', '2022-11-09 17:06:54.320854'),
(88, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 17:06:57.461632', '2022-11-09 17:11:35.851982'),
(89, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 17:16:27.623562', '2022-11-09 17:58:13.132794'),
(90, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 17:58:16.222836', '2022-11-09 17:58:24.992450'),
(91, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 17:58:37.173797', '2022-11-09 18:04:21.841063'),
(92, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 18:04:25.165298', '2022-11-09 18:04:43.718272'),
(93, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 18:04:56.205656', '2022-11-09 19:16:23.542123'),
(94, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 19:16:27.851671', '2022-11-09 19:39:23.384727'),
(95, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-09 19:39:32.277316', '2022-11-10 04:45:11.522482'),
(96, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 04:45:24.825615', '2022-11-10 04:45:54.187544'),
(97, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 04:46:07.830623', '2022-11-10 05:56:35.266297'),
(98, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 05:56:49.367993', '2022-11-10 06:13:11.862825'),
(99, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 06:12:56.270106', '2022-11-10 06:13:11.862825'),
(100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 06:13:22.688515', '2022-11-10 06:28:12.792327'),
(101, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 06:28:20.964279', '2022-11-10 06:52:25.224893'),
(102, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 06:52:38.129951', '2022-11-10 07:06:44.822406'),
(103, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 07:06:56.824433', '2022-11-10 09:13:51.560437'),
(104, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 09:14:00.660756', '2022-11-10 09:37:34.191949'),
(105, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 09:37:41.732064', '2022-11-10 16:59:15.118378'),
(106, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 09:38:49.007817', '2022-11-10 16:59:15.118378'),
(107, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 16:59:28.411363', '2022-11-10 17:02:51.839794'),
(108, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 17:03:04.757926', '2022-11-10 17:21:00.759712'),
(109, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-10 17:21:11.040791', '2022-11-11 07:01:06.958878'),
(110, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 07:01:17.284494', '2022-11-11 07:02:39.837860'),
(111, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 07:01:55.866253', '2022-11-11 07:02:39.837860'),
(112, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-11 07:03:18.506405', '2022-11-11 08:38:13.587470'),
(113, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 08:38:28.175243', '2022-11-11 08:39:37.204724'),
(114, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 08:39:44.449420', '2022-11-11 09:47:39.003661'),
(115, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 09:47:51.878007', '2022-11-11 09:52:17.735859'),
(116, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 09:52:35.884490', '2022-11-11 10:49:40.773500'),
(117, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'hari@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-11 10:50:56.496444', '2022-11-11 10:52:33.724033'),
(118, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 10:52:58.562851', '2022-11-11 10:53:14.515569'),
(119, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'hari@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 10:53:29.524939', '2022-11-11 10:53:44.948558'),
(120, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'ram@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-11 10:55:34.947987', '2022-11-11 10:59:20.859245'),
(121, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 10:59:37.917157', '2022-11-11 10:59:52.441875'),
(122, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'ram@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:00:05.053120', '2022-11-11 11:25:58.477501'),
(123, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:26:40.841468', '2022-11-11 11:28:43.757886'),
(124, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:29:02.360651', '2022-11-11 11:29:11.544093'),
(125, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:29:23.774128', '2022-11-11 11:29:34.425409'),
(126, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:29:47.948959', '2022-11-11 11:37:34.543822'),
(127, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:38:48.325122', '2022-11-11 11:39:05.162087'),
(128, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'ram@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-11 11:39:52.579408', '2022-11-12 10:11:41.933312'),
(129, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-12 10:11:53.358760', '2022-11-12 11:09:17.590518'),
(130, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'ram@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-12 11:09:33.197209', '2022-11-12 11:15:43.079977'),
(131, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-12 11:15:57.623017', '2022-11-14 06:52:46.773901'),
(132, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-12 16:32:47.168855', '2022-11-14 06:52:46.773901'),
(133, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-14 06:53:00.019101', '2022-11-14 06:59:00.080251'),
(134, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-14 06:59:09.395937', '2022-11-14 07:12:16.293714'),
(135, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-14 07:12:26.408198', '2022-11-14 10:25:58.405422');
INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(136, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-14 10:26:19.321414', '2022-11-15 08:14:18.390773'),
(137, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-15 08:14:33.125035', '2022-11-15 10:07:11.034711'),
(138, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-15 10:07:24.910068', '2022-11-15 15:16:32.513603'),
(139, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:17:13.515743', '2022-11-16 07:17:19.742608'),
(140, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:17:27.037106', '2022-11-16 07:17:57.634226'),
(141, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'district@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:18:06.287635', '2022-11-16 07:19:08.972359'),
(142, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'state@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:19:20.678697', '2022-11-16 07:19:46.527556'),
(143, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:19:55.691429', '2022-11-16 08:34:10.151324'),
(144, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 07:56:10.895663', '2022-11-16 08:34:10.151324'),
(145, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 08:34:20.648973', '2022-11-16 08:34:50.801974'),
(146, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 08:38:35.804796', '2022-11-16 09:15:51.957814'),
(147, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-16 08:41:27.490643', '2022-11-16 09:30:51.561118'),
(148, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 09:16:07.496423', '2022-11-16 09:16:44.765556'),
(149, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-16 09:17:09.891362', '2022-11-16 09:30:51.561118'),
(150, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 09:34:35.248852', '2022-11-16 10:58:31.385291'),
(151, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-16 10:58:43.168168', '2022-11-17 05:47:51.533064'),
(152, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 05:48:01.840798', '2022-11-17 05:55:54.754477'),
(153, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 05:56:08.004433', '2022-11-17 05:56:47.715452'),
(154, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 05:56:59.052106', '2022-11-17 06:57:23.992934'),
(155, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 06:57:37.701593', '2022-11-17 06:58:21.588090'),
(156, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-17 07:00:21.445789', '2022-11-17 07:09:57.616552'),
(157, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 07:10:10.862282', '2022-11-17 07:10:26.135756'),
(158, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 07:10:45.143399', '2022-11-17 17:46:32.451889'),
(159, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 10:47:09.088518', '2022-11-17 17:46:32.451889'),
(160, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 11:33:08.634059', '2022-11-17 17:46:32.451889'),
(161, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-17 19:06:05.287054', '2022-11-18 09:11:18.568211'),
(162, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 10:09:39.942252', '2022-11-18 13:44:52.258661'),
(163, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-18 13:46:03.362605', '2022-11-18 13:46:07.922587'),
(164, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:46:17.507243', '2022-11-18 13:48:26.811889'),
(165, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:47:21.400574', NULL),
(166, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:48:52.683950', '2022-11-18 13:49:20.325153'),
(167, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-18 13:50:22.851444', '2022-11-18 13:50:32.640385'),
(168, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:50:43.602062', '2022-11-18 13:50:50.092620'),
(169, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:51:30.845907', '2022-11-18 13:52:25.639080'),
(170, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:52:38.155532', '2022-11-18 13:59:25.827763'),
(171, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-18 13:59:40.443507', '2022-11-19 04:37:07.079640'),
(172, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-19 04:37:46.493788', '2022-11-19 04:37:52.648422'),
(173, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 04:38:09.321578', '2022-11-19 04:39:47.963320'),
(174, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 04:39:58.887846', '2022-11-19 04:44:28.812904'),
(175, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 04:45:19.784540', '2022-11-19 04:50:11.937239'),
(176, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'sunsari@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 04:50:26.279450', '2022-11-19 16:49:23.594677'),
(177, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 16:49:35.876982', '2022-11-19 16:49:50.377825'),
(178, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-19 16:50:27.036405', '2022-11-19 16:50:43.602356'),
(179, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-19 16:51:03.299929', '2022-11-19 16:51:37.273653'),
(180, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:40:15.525463', '2022-11-20 04:42:27.237819'),
(181, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsari2@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:42:50.513927', '2022-11-20 04:42:59.610752'),
(182, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'ktm@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-20 04:43:40.951789', '2022-11-20 04:43:48.751491'),
(183, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:44:07.227932', '2022-11-20 04:46:02.610255'),
(184, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'ktm@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:46:11.002180', '2022-11-20 04:46:19.444333'),
(185, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsari2@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:46:27.116369', '2022-11-20 04:46:39.637026'),
(186, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 04:46:53.893242', '2022-11-20 12:13:20.616169'),
(187, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsari2@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 12:13:29.809979', '2022-11-20 12:14:08.204816'),
(188, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 12:14:17.633357', '2022-11-20 16:19:33.627696'),
(189, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 16:20:04.151932', '2022-11-20 16:20:50.378322'),
(190, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsari2@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 16:20:59.844609', '2022-11-20 16:22:21.758005'),
(191, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 16:22:35.717331', '2022-11-20 16:24:58.833556'),
(192, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsari2@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 16:25:08.707233', '2022-11-20 16:25:20.418889'),
(193, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-20 16:25:36.929588', '2022-11-21 06:30:16.332987'),
(194, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 06:30:25.142126', '2022-11-21 06:30:42.921979'),
(195, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-21 06:31:41.500257', '2022-11-21 06:32:21.874926'),
(196, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 06:32:34.279682', '2022-11-21 06:33:15.105643'),
(197, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 06:33:35.379090', '2022-11-21 09:32:45.132519'),
(198, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 06:34:07.277331', '2022-11-21 09:32:45.132519'),
(199, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-21 09:33:38.018021', '2022-11-21 09:34:10.495276'),
(200, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 09:34:38.177587', '2022-11-21 09:35:03.839210'),
(201, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 09:35:10.812437', '2022-11-21 09:39:23.123367'),
(202, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 09:39:38.906645', '2022-11-21 09:40:10.840396'),
(203, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 09:40:19.861778', '2022-11-21 09:40:55.144127'),
(204, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 09:41:04.426865', '2022-11-21 10:30:00.985919'),
(205, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 10:30:12.672090', '2022-11-21 10:37:34.602390'),
(206, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 10:37:42.448402', '2022-11-21 10:38:07.467131'),
(207, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-21 10:38:17.701779', '2022-11-21 10:39:21.262721'),
(208, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 04:44:40.177364', '2022-11-22 05:09:59.904005'),
(209, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 05:10:11.063824', '2022-11-22 05:52:05.637470'),
(210, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 05:52:23.300398', '2022-11-22 06:01:05.305431'),
(211, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 06:01:16.449625', '2022-11-22 06:06:47.936471'),
(212, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 06:06:57.165728', '2022-11-22 06:07:18.867343'),
(213, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 06:07:32.207520', '2022-11-22 10:37:27.252011'),
(214, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 10:37:43.566743', '2022-11-22 10:41:16.357645'),
(215, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 10:41:34.940881', '2022-11-22 11:02:31.698746'),
(216, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 11:02:39.820001', '2022-11-22 19:54:10.464728'),
(217, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 11:03:10.231745', '2022-11-22 19:51:15.379048'),
(218, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 19:51:26.780614', '2022-11-22 19:54:10.464728'),
(219, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-22 19:54:23.426774', '2022-11-23 04:36:53.834841'),
(220, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 04:37:02.591063', '2022-11-23 05:26:05.229901'),
(221, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 05:26:14.671067', '2022-11-23 05:26:40.270625'),
(222, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 05:26:47.886485', '2022-11-23 05:27:03.393578'),
(223, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 05:27:18.724031', '2022-11-23 05:27:41.754133'),
(224, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 05:27:53.651051', '2022-11-23 06:33:21.573227'),
(225, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 06:33:29.482841', '2022-11-23 06:36:01.497409'),
(226, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 06:36:07.524474', '2022-11-23 08:14:23.045449'),
(227, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 08:14:32.058216', '2022-11-23 15:57:25.999423'),
(228, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 08:16:42.014355', '2022-11-23 15:57:25.999423'),
(229, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 08:16:54.812707', '2022-11-26 08:59:31.530103'),
(230, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 08:19:51.364526', '2022-11-23 15:57:25.999423'),
(231, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-23 15:57:48.157699', '2022-11-23 16:12:41.220674'),
(232, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 16:12:56.078893', '2022-11-23 16:14:30.139092'),
(233, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-23 16:14:38.972917', '2022-11-24 17:12:04.085823'),
(234, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-24 19:40:09.740864', '2022-11-24 19:40:13.084563'),
(235, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 04:59:47.240375', '2022-11-25 05:21:30.868892'),
(236, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 05:21:43.071985', '2022-11-25 05:39:31.243321'),
(237, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 05:42:48.816735', '2022-11-25 09:23:47.838279'),
(238, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:06:41.252407', '2022-11-25 11:17:04.904171'),
(239, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:17:56.861149', '2022-11-26 07:30:32.619742'),
(240, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:18:15.262510', '2022-11-26 07:30:32.619742'),
(241, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:23:14.643993', '2022-11-26 07:30:32.619742'),
(242, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:24:33.175363', '2022-11-26 07:39:07.603208'),
(243, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:25:16.312528', '2022-11-26 07:30:32.619742'),
(244, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:25:41.525328', '2022-11-26 07:30:32.619742'),
(245, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:26:21.768199', '2022-11-26 07:30:32.619742'),
(246, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-25 11:27:36.012094', '2022-11-26 07:30:32.619742'),
(247, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 07:38:38.842800', '2022-11-26 07:38:42.894179'),
(248, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 07:39:01.854147', '2022-11-26 07:39:07.603208'),
(249, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 08:55:24.452728', '2022-11-26 08:55:31.082517'),
(250, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 08:56:09.565505', '2022-11-26 08:56:16.385399'),
(251, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 08:57:41.887597', '2022-11-26 08:57:47.763170'),
(252, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'sunsariadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 08:58:23.767108', '2022-11-26 08:58:27.130160'),
(253, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'saptaryadmin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 08:59:26.322326', '2022-11-26 08:59:31.530103'),
(254, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 12:46:35.832365', '2022-11-26 12:46:40.347556'),
(255, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 12:48:22.906960', '2022-11-26 18:46:48.912503'),
(256, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 18:47:01.818869', '2022-11-26 18:47:20.073631'),
(257, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-26 18:47:29.683610', '2022-11-27 04:53:24.287133'),
(258, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 04:53:58.238267', '2022-11-27 05:18:29.246740'),
(259, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'centralaccount@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-27 05:19:51.589518', '2022-11-27 05:20:05.468852'),
(260, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 05:20:18.330254', '2022-11-27 05:20:41.648005'),
(261, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'centralaccount@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 05:20:58.288631', '2022-11-27 05:25:21.958458'),
(262, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 05:25:35.454645', '2022-11-27 05:29:35.010030'),
(263, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'centralaccount@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 05:29:44.654765', '2022-11-27 06:02:13.762706'),
(264, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:02:25.064467', '2022-11-27 06:04:34.215373'),
(265, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'centralaccount@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:06:11.194456', '2022-11-27 06:33:43.913107'),
(266, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:33:56.579081', '2022-11-27 06:38:17.434705'),
(267, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'centralaccount@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:38:29.016844', '2022-11-27 06:38:40.943133'),
(268, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:39:06.669924', '2022-11-27 06:41:59.875972'),
(269, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:42:04.088272', '2022-11-27 06:46:27.413323');
INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(270, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 06:46:38.780573', '2022-11-27 07:12:47.837095'),
(271, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 07:12:56.646285', '2022-11-27 07:47:14.220445'),
(272, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 07:47:41.812770', '2022-11-27 08:01:28.659820'),
(273, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'newuser@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-27 08:02:41.260307', '2022-11-27 08:05:54.724003'),
(274, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:06:04.522738', '2022-11-27 08:06:27.030094'),
(275, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'newuser@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:06:49.262531', '2022-11-27 08:14:10.556599'),
(276, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:14:23.394583', '2022-11-27 08:14:36.121687'),
(277, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'newuser@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:14:44.722807', '2022-11-27 08:24:08.696137'),
(278, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'newuser@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:24:37.847011', '2022-11-27 08:26:25.162540'),
(279, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 08:26:36.972950', '2022-11-27 11:04:45.715037'),
(280, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-27 11:05:15.974952', '2022-11-27 11:05:23.008937'),
(281, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 11:05:57.540037', '2022-11-27 11:06:17.824091'),
(282, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 11:06:26.591347', '2022-11-27 11:06:55.520150'),
(283, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 11:07:17.315163', '2022-11-27 11:11:58.273733'),
(284, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 11:37:15.321778', '2022-11-27 11:38:22.917936'),
(285, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-27 11:38:45.914399', '2022-11-27 15:08:34.583364'),
(286, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 15:09:02.939970', '2022-11-27 17:35:12.134959'),
(287, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 16:36:29.435019', '2022-11-27 17:35:12.134959'),
(288, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 17:35:31.474216', NULL),
(289, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 17:38:55.120984', '2022-11-27 18:32:40.466151'),
(290, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'mddasgudiya3@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 18:23:11.149583', NULL),
(291, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 18:24:13.979849', '2022-11-27 18:32:40.466151'),
(292, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-27 18:32:54.322255', '2022-11-28 04:08:15.947320'),
(293, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'private@gmaail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 04:09:05.592224', '2022-11-28 04:10:51.466313'),
(294, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:11:05.483369', '2022-11-28 04:16:53.574792'),
(295, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'private@gmaail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:17:11.156129', '2022-11-28 04:17:54.408908'),
(296, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:18:07.247838', '2022-11-28 04:18:54.296722'),
(297, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'private@gmaail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:19:23.887464', '2022-11-28 04:22:38.295144'),
(298, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:22:47.989653', '2022-11-28 04:33:07.676002'),
(299, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:33:29.882212', '2022-11-28 04:34:12.659961'),
(300, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 04:34:42.142514', '2022-11-28 04:34:50.761029'),
(301, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:35:45.778001', '2022-11-28 04:36:08.320243'),
(302, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'private@gmaail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:36:20.299016', '2022-11-28 04:36:23.384173'),
(303, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:36:31.490570', '2022-11-28 04:37:02.669939'),
(304, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'private@gmaail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:37:13.571039', '2022-11-28 04:39:12.295588'),
(305, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:39:45.096538', '2022-11-28 04:39:58.974557'),
(306, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 04:40:23.705457', '2022-11-28 04:40:30.505578'),
(307, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:40:42.417322', '2022-11-28 04:40:54.776370'),
(308, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:41:03.476487', '2022-11-28 04:41:46.571626'),
(309, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:41:55.383499', '2022-11-28 04:43:04.198203'),
(310, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'bhojpur@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:43:21.588918', '2022-11-28 04:47:02.494574'),
(311, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 04:47:11.219616', '2022-11-28 05:43:40.018113'),
(312, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 05:45:47.481257', '2022-11-28 05:46:40.236532'),
(313, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'siraha@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 05:50:09.817457', '2022-11-28 05:54:30.166755'),
(314, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'madheshpradesh@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 05:55:51.606976', '2022-11-28 05:59:21.460654'),
(315, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:00:15.719857', '2022-11-28 06:01:14.814386'),
(316, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 06:02:38.858220', '2022-11-28 06:06:22.026634'),
(317, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'siraha@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:13:33.195912', '2022-11-28 06:13:54.015401'),
(318, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:14:09.156823', '2022-11-28 06:19:55.247802'),
(319, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'siraha@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:20:25.268772', '2022-11-28 06:22:06.366937'),
(320, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:22:17.196692', '2022-11-28 06:22:49.439231'),
(321, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'madheshpradesh@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:23:17.204628', '2022-11-28 06:23:48.965726'),
(322, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:24:01.731603', '2022-11-28 06:24:21.527855'),
(323, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'account_fenfit@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 06:25:25.633463', '2022-11-28 06:25:35.232749'),
(324, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:25:46.085914', '2022-11-28 06:26:49.355371'),
(325, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'account_fenfit@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:27:10.750557', '2022-11-28 06:28:07.621417'),
(326, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:28:20.549084', '2022-11-28 06:34:01.182544'),
(327, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:36:46.679187', '2022-11-28 06:57:17.401218'),
(328, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'account_fenfit@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 06:57:46.742691', '2022-11-28 07:43:01.554179'),
(329, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'account_fenfit@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 07:45:08.686664', '2022-11-28 07:49:39.831256'),
(330, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 07:49:47.114622', '2022-11-28 07:51:34.977302'),
(331, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 07:51:44.869759', '2022-11-28 07:53:25.134553'),
(332, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'account_fenfit@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 07:53:35.101746', '2022-11-28 08:01:00.272977'),
(333, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 08:01:17.525950', '2022-11-28 08:18:05.175790'),
(334, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'basukalasangita@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 08:18:19.017736', '2022-11-28 08:22:10.212844'),
(335, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'nabinyaav@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-28 08:23:02.002933', '2022-11-28 10:54:43.568298'),
(336, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-28 10:55:32.489682', '2022-11-29 04:57:51.663567'),
(337, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-29 04:58:39.400693', '2022-11-29 04:59:15.302262'),
(338, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 04:59:24.636011', '2022-11-29 05:00:06.254321'),
(339, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'ceo@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-29 05:01:20.169821', '2022-11-29 05:01:30.275062'),
(340, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 05:02:20.667135', '2022-11-29 05:37:54.634405'),
(341, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-29 05:50:17.423238', '2022-11-29 05:56:51.067261'),
(342, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 05:50:48.159194', '2022-11-29 05:51:07.522924'),
(343, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 05:51:31.268531', '2022-11-29 05:56:51.067261'),
(344, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 05:56:58.255725', '2022-11-29 07:27:02.761262'),
(345, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 07:27:22.265552', '2022-11-29 08:25:13.800484'),
(346, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:25:24.430015', '2022-11-29 08:26:24.964883'),
(347, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:26:35.997549', '2022-11-29 08:38:24.838796'),
(348, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:39:15.463590', '2022-11-29 08:39:19.958302'),
(349, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:41:25.832588', '2022-11-29 08:41:58.373781'),
(350, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:42:18.438022', '2022-11-29 08:42:28.022498'),
(351, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 08:42:35.868331', '2022-11-29 10:24:08.104844'),
(352, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 10:24:21.040889', '2022-11-29 10:38:02.697672'),
(353, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 10:38:12.527677', '2022-11-29 10:39:11.923991'),
(354, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 10:39:17.305963', '2022-11-29 10:58:27.795324'),
(355, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 10:58:33.988406', '2022-11-29 10:58:47.241365'),
(356, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 10:58:58.566777', '2022-11-29 11:01:11.552491'),
(357, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 11:01:16.749218', '2022-11-29 11:06:33.555333'),
(358, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 11:06:42.117167', '2022-11-29 11:08:17.842314'),
(359, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 11:08:29.120776', '2022-11-29 17:41:18.083932'),
(360, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 17:41:27.232485', '2022-11-29 17:41:59.433143'),
(361, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 17:42:06.785815', '2022-11-29 17:42:12.620712'),
(362, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 17:42:26.389102', '2022-11-29 18:13:46.127769'),
(363, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 18:13:54.144831', '2022-11-29 18:23:42.225498'),
(364, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 18:23:49.752521', '2022-11-29 18:45:49.237759'),
(365, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 18:45:57.931009', '2022-11-29 18:46:49.423975'),
(366, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-29 18:46:58.279740', '2022-11-30 04:37:10.952114'),
(367, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 04:37:17.702792', '2022-11-30 04:59:17.282046'),
(368, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 04:59:23.922932', '2022-11-30 05:10:47.938935'),
(369, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:12:14.152315', '2022-11-30 05:23:21.755329'),
(370, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:23:29.215388', '2022-11-30 05:50:48.890893'),
(371, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:23:39.400997', '2022-11-30 05:48:11.075272'),
(372, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:24:30.652171', '2022-11-30 05:48:11.075272'),
(373, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:48:17.283289', '2022-11-30 05:50:48.890893'),
(374, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:50:55.715725', '2022-11-30 05:54:37.026919'),
(375, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:54:45.175261', '2022-11-30 05:57:54.509048'),
(376, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 05:57:59.387357', '2022-11-30 06:02:25.123771'),
(377, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 06:02:32.370268', '2022-11-30 06:11:24.509791'),
(378, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 06:11:33.637574', '2022-11-30 06:11:39.340170'),
(379, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 06:11:44.938129', '2022-11-30 06:12:01.022240'),
(380, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 06:12:06.953147', '2022-11-30 06:50:57.651685'),
(381, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 06:51:21.532375', '2022-11-30 07:37:09.994506'),
(382, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 07:37:18.081018', '2022-11-30 07:41:30.228367'),
(383, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 07:41:36.057696', '2022-11-30 07:59:11.388030'),
(384, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 10:10:03.216525', '2022-11-30 10:10:18.366283'),
(385, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 10:13:19.103284', '2022-11-30 10:13:57.852183'),
(386, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-11-30 10:22:12.022956', '2022-11-30 10:22:55.863262'),
(387, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-11-30 10:24:06.785070', '2022-12-01 08:00:26.671935'),
(388, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 08:00:36.522635', '2022-12-01 08:18:26.230748'),
(389, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 08:18:31.701653', '2022-12-01 08:18:34.843558'),
(390, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 08:18:41.217369', '2022-12-01 08:18:49.083846'),
(391, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 08:18:55.921745', '2022-12-01 09:47:25.547410'),
(392, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 09:47:33.407432', '2022-12-01 09:47:41.403656'),
(393, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 09:47:46.327938', '2022-12-01 10:25:47.292797'),
(394, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 10:26:01.445492', '2022-12-01 10:54:12.225197'),
(395, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 10:54:20.415871', '2022-12-01 10:56:16.103470'),
(396, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 10:56:28.176324', '2022-12-01 11:00:05.379416'),
(397, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 11:00:15.073424', '2022-12-01 11:02:07.217689'),
(398, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 11:02:15.044671', '2022-12-01 11:14:58.344232'),
(399, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 11:15:04.988449', '2022-12-01 11:15:40.077866'),
(400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 11:17:03.335244', '2022-12-01 18:40:34.219677'),
(401, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 18:41:16.244344', '2022-12-01 18:42:17.686218'),
(402, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-01 18:42:24.595376', '2022-12-02 03:07:05.115292'),
(403, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 03:07:10.211661', '2022-12-02 10:24:33.443198');
INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(404, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 10:25:27.753281', '2022-12-02 10:25:39.592662'),
(405, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 10:25:53.657715', '2022-12-02 10:48:50.794763'),
(406, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 10:49:54.405858', '2022-12-02 10:50:08.161390'),
(407, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 10:50:15.043852', '2022-12-02 11:05:57.165246'),
(408, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 11:06:03.741685', '2022-12-02 11:08:32.661452'),
(409, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 11:08:48.794251', '2022-12-02 11:18:53.686660'),
(410, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-02 11:19:18.102334', '2022-12-03 13:34:07.530300'),
(411, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-03 13:34:14.108416', '2022-12-03 15:07:47.346278'),
(412, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-03 14:56:04.428430', '2022-12-03 14:57:01.482183'),
(413, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-03 14:57:13.255250', '2022-12-03 15:07:47.346278'),
(414, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-03 15:07:54.959161', '2022-12-03 15:14:26.957520'),
(415, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-03 15:14:32.832703', '2022-12-04 03:11:05.957591'),
(416, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 03:11:12.812517', '2022-12-04 05:25:18.766199'),
(417, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 05:25:26.123944', '2022-12-04 05:51:58.747815'),
(418, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 05:52:09.773616', '2022-12-04 05:52:36.744057'),
(419, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 05:52:45.021054', '2022-12-04 06:21:54.917503'),
(420, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 06:22:05.576887', '2022-12-04 06:22:22.521509'),
(421, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 06:22:29.716367', '2022-12-04 06:24:21.688178'),
(422, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 06:24:35.065429', '2022-12-04 06:24:47.449547'),
(423, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 06:24:54.094220', '2022-12-04 06:25:20.631554'),
(424, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 06:25:25.763703', '2022-12-04 09:29:37.871199'),
(425, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 09:29:43.944071', '2022-12-04 10:04:46.813053'),
(426, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-04 10:04:55.832066', '2022-12-04 10:23:40.966647'),
(427, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-12-04 10:24:10.258318', '2022-12-05 02:47:36.933595'),
(428, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 02:47:54.435243', '2022-12-06 05:49:29.228053'),
(429, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 03:09:56.236166', '2022-12-11 10:13:17.546275'),
(430, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 05:11:51.629162', '2022-12-06 05:49:29.228053'),
(431, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 10:51:44.418611', '2022-12-06 05:49:29.228053'),
(432, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 11:02:40.593791', '2022-12-06 05:49:29.228053'),
(433, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 11:50:23.030179', '2022-12-06 05:49:29.228053'),
(434, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-05 14:03:41.520057', '2022-12-06 05:49:29.228053'),
(435, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 05:49:38.284745', '2022-12-06 05:50:20.731006'),
(436, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 05:50:27.000554', '2022-12-06 06:21:47.856556'),
(437, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 06:22:02.862286', '2022-12-06 06:22:43.173697'),
(438, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 06:22:48.630298', '2022-12-06 09:09:37.650606'),
(439, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 09:12:05.167868', '2022-12-06 09:12:12.664274'),
(440, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 09:12:37.908609', '2022-12-06 11:46:04.581503'),
(441, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 11:46:11.232735', '2022-12-06 11:46:29.366977'),
(442, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 11:46:34.902554', '2022-12-06 11:46:50.342498'),
(443, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 11:46:56.434819', '2022-12-06 11:46:59.596034'),
(444, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 11:47:05.772636', '2022-12-06 11:47:15.689385'),
(445, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 11:47:20.346663', '2022-12-06 12:00:02.050614'),
(446, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-06 12:00:15.604466', '2022-12-07 05:45:18.356021'),
(447, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 05:45:28.159595', '2022-12-07 06:32:03.914051'),
(448, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 06:32:13.217100', '2022-12-07 07:14:39.816445'),
(449, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 07:14:43.464020', '2022-12-07 08:29:40.538940'),
(450, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:29:46.759852', '2022-12-07 08:31:16.338338'),
(451, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:31:23.508436', '2022-12-07 08:31:37.729972'),
(452, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:31:43.982511', '2022-12-07 08:32:02.472001'),
(453, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:32:14.403512', '2022-12-07 08:32:34.162114'),
(454, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:32:40.894876', '2022-12-07 08:33:03.286928'),
(455, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 08:33:13.054658', '2022-12-07 11:47:14.847390'),
(456, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.62', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-07 11:47:22.855112', '2022-12-09 08:10:02.508957'),
(457, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.42', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-09 08:10:11.659661', '2022-12-09 08:35:06.800760'),
(458, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.42', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-09 08:35:25.566434', '2022-12-09 08:36:15.379320'),
(459, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.42', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-09 08:36:41.044700', '2022-12-09 08:37:05.372330'),
(460, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.42', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-09 13:27:36.701664', '2022-12-11 08:48:58.905370'),
(461, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 08:49:10.795590', '2022-12-11 08:50:59.098512'),
(462, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 08:51:06.955089', '2022-12-11 10:05:00.007170'),
(463, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 10:06:00.981341', '2022-12-11 10:06:04.535806'),
(464, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 10:06:13.148769', '2022-12-11 10:13:17.546275'),
(465, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 10:13:21.995318', '2022-12-11 10:16:19.943209'),
(466, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-11 10:16:26.399601', '2022-12-13 03:13:41.788155'),
(467, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 03:07:44.482188', '2022-12-13 03:13:41.788155'),
(468, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 03:13:48.005566', '2022-12-13 03:14:39.322344'),
(469, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 03:14:45.191935', '2022-12-13 03:15:01.777677'),
(470, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 03:15:21.244225', '2022-12-13 11:06:49.932436'),
(471, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 09:33:34.200691', '2022-12-13 11:06:49.932436'),
(472, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:07:07.873914', '2022-12-13 11:08:50.365787'),
(473, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:08:57.188815', '2022-12-13 11:09:19.458731'),
(474, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'manojdas.py@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:09:50.411511', '2022-12-13 11:10:14.132469'),
(475, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:10:24.688301', '2022-12-13 11:11:34.708973'),
(476, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:11:52.329449', '2022-12-13 11:12:10.957192'),
(477, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:12:18.788906', '2022-12-13 11:12:43.837731'),
(478, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:13:02.694444', '2022-12-13 11:14:59.175200'),
(479, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-13 11:15:05.189948', '2022-12-14 15:30:13.584880'),
(480, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'b@user.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-12-14 15:31:04.349496', NULL),
(481, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-16 07:01:34.521755', '2022-12-18 14:47:16.211150'),
(482, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-18 14:46:45.944622', '2022-12-18 14:47:16.211150'),
(483, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-18 14:47:42.589602', '2022-12-20 06:49:03.830773'),
(484, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'ilam@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-12-20 06:49:35.067409', '2022-12-20 06:49:41.090603'),
(485, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'state1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/signup', '2022-12-20 06:50:18.819463', '2022-12-20 06:50:22.723559'),
(486, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 06:50:32.553829', '2022-12-20 07:01:03.183139'),
(487, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:01:57.242388', '2022-12-20 07:02:28.619425'),
(488, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:02:43.601379', '2022-12-20 07:02:55.941905'),
(489, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:03:09.114099', '2022-12-20 07:03:19.157107'),
(490, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'ilam@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:03:37.269237', '2022-12-20 07:03:42.758833'),
(491, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:04:05.936329', '2022-12-20 07:06:13.030301'),
(492, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:06:27.609454', '2022-12-20 07:13:05.735791'),
(493, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'ilam@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:13:38.459014', '2022-12-20 07:13:45.864959'),
(494, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:13:52.021340', '2022-12-20 07:14:30.105636'),
(495, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'state1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:14:40.360123', '2022-12-20 07:14:48.114894'),
(496, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'a@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:14:55.374374', '2022-12-20 07:15:49.500356'),
(497, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'ilam@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:16:03.364619', '2022-12-20 07:16:13.495590'),
(498, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'state1@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:16:26.056518', '2022-12-20 07:16:50.581120'),
(499, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 07:16:57.536658', '2022-12-20 10:26:11.504323'),
(500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 10:26:17.949637', '2022-12-20 10:48:35.844481'),
(501, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'accountant@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 10:48:50.428656', '2022-12-20 11:32:08.829112'),
(502, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'central@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 11:34:35.102976', '2022-12-20 11:51:26.316527'),
(503, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 11:51:31.924489', NULL),
(504, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 11:52:57.308956', NULL),
(505, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9', '/login', '2022-12-20 19:43:24.007528', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(21, 'account', 'customuser'),
(38, 'account', 'teammember'),
(22, 'Admin', 'applicationdetail'),
(19, 'Admin', 'applicationform'),
(24, 'Admin', 'applicationformapproveddetail'),
(25, 'Admin', 'applicationformcancelleddetail'),
(9, 'Admin', 'blog'),
(28, 'Admin', 'businesstype'),
(10, 'Admin', 'contactus'),
(26, 'Admin', 'districts'),
(11, 'Admin', 'excelfileupload'),
(12, 'Admin', 'globalsettings'),
(20, 'Admin', 'homenavigation'),
(1, 'admin', 'logentry'),
(13, 'Admin', 'navigation'),
(14, 'Admin', 'pagetype'),
(15, 'Admin', 'products'),
(29, 'Admin', 'recomendationpricecategory'),
(16, 'Admin', 'shipping'),
(27, 'Admin', 'states'),
(17, 'Admin', 'team'),
(23, 'Admin', 'userapplicationdetail'),
(34, 'Admin', 'userapplicationpayment'),
(30, 'Admin', 'userapplicationrenew'),
(18, 'Admin', 'wishlist'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'axes', 'accessattempt'),
(8, 'axes', 'accessfailurelog'),
(7, 'axes', 'accesslog'),
(4, 'contenttypes', 'contenttype'),
(33, 'nepallocation', 'districts'),
(32, 'nepallocation', 'municipality'),
(31, 'nepallocation', 'states'),
(35, 'payment', 'districts'),
(37, 'payment', 'municipality'),
(36, 'payment', 'states'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-22 16:47:17.758813'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-10-22 16:47:18.710716'),
(3, 'auth', '0001_initial', '2022-10-22 16:47:24.214845'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-10-22 16:47:26.131896'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-10-22 16:47:26.235703'),
(6, 'auth', '0004_alter_user_username_opts', '2022-10-22 16:47:26.306510'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-10-22 16:47:26.345405'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-10-22 16:47:26.384303'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-10-22 16:47:26.447135'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-10-22 16:47:26.500988'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-10-22 16:47:26.541879'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-10-22 16:47:26.775632'),
(13, 'auth', '0011_update_proxy_permissions', '2022-10-22 16:47:26.845294'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-10-22 16:47:26.883227'),
(15, 'account', '0001_initial', '2022-10-22 16:47:32.775905'),
(16, 'Admin', '0001_initial', '2022-10-22 16:47:45.180417'),
(17, 'account', '0002_alter_customuser_email', '2022-10-22 16:47:45.473128'),
(18, 'account', '0003_alter_customuser_email', '2022-10-22 16:47:45.610465'),
(19, 'account', '0004_customuser_permanent_address_customuser_phone', '2022-10-22 16:47:46.558765'),
(20, 'account', '0005_customuser_image', '2022-10-22 16:47:47.012060'),
(21, 'account', '0006_alter_customuser_username', '2022-10-22 16:47:50.056483'),
(22, 'admin', '0001_initial', '2022-10-22 16:47:53.272128'),
(23, 'admin', '0002_logentry_remove_auto_add', '2022-10-22 16:47:53.427347'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-22 16:47:53.623622'),
(25, 'axes', '0001_initial', '2022-10-22 16:47:54.257378'),
(26, 'axes', '0002_auto_20151217_2044', '2022-10-22 16:47:57.929444'),
(27, 'axes', '0003_auto_20160322_0929', '2022-10-22 16:47:58.006268'),
(28, 'axes', '0004_auto_20181024_1538', '2022-10-22 16:47:58.086054'),
(29, 'axes', '0005_remove_accessattempt_trusted', '2022-10-22 16:47:58.700358'),
(30, 'axes', '0006_remove_accesslog_trusted', '2022-10-22 16:47:59.764119'),
(31, 'axes', '0007_alter_accessattempt_unique_together', '2022-10-22 16:48:00.255393'),
(32, 'axes', '0008_accessfailurelog', '2022-10-22 16:48:02.082720'),
(33, 'sessions', '0001_initial', '2022-10-22 16:48:02.999038'),
(34, 'Admin', '0002_applicationdetail_remove_order_get_shipping_address_and_more', '2022-10-22 19:02:35.670900'),
(35, 'account', '0007_alter_customuser_role', '2022-10-22 19:02:35.746105'),
(36, 'Admin', '0003_rename_order_applicationform', '2022-10-25 13:31:54.051996'),
(37, 'account', '0008_alter_customuser_role', '2022-10-25 13:31:54.112202'),
(38, 'Admin', '0004_userapplicationdetail_delete_excelfileupload_and_more', '2022-10-25 13:46:09.043318'),
(39, 'Admin', '0005_remove_userapplicationdetail_application_id_and_more', '2022-10-25 14:05:40.306228'),
(40, 'Admin', '0006_rename_name_userapplicationdetail_owner_full_name_and_more', '2022-11-01 06:18:06.617044'),
(41, 'Admin', '0007_userapplicationdetail_auditing_and_more', '2022-11-01 08:33:16.302961'),
(42, 'Admin', '0002_alter_userapplicationdetail_tole', '2022-11-01 08:58:48.282311'),
(43, 'Admin', '0003_applicationform_central_status_and_more', '2022-11-03 05:26:45.329894'),
(44, 'Admin', '0004_applicationform_approved_pending_cancelled_and_more', '2022-11-03 05:36:39.254038'),
(45, 'Admin', '0005_applicationformapproveddetail', '2022-11-04 05:26:18.880383'),
(46, 'Admin', '0006_applicationform_in_central_approved_by_and_more', '2022-11-04 05:26:23.740106'),
(47, 'Admin', '0007_alter_applicationformapproveddetail_whose_form', '2022-11-04 05:52:23.411324'),
(48, 'Admin', '0008_applicationformcancelleddetail', '2022-11-04 08:45:23.700958'),
(49, 'Admin', '0009_alter_applicationform_dsc', '2022-11-04 10:17:19.231480'),
(50, 'Admin', '0010_states_districts', '2022-11-05 08:52:48.793610'),
(51, 'Admin', '0011_states_state_code', '2022-11-06 08:39:51.054474'),
(52, 'Admin', '0012_alter_states_state_code', '2022-11-07 03:21:52.064501'),
(53, 'account', '0009_customuser_district_name_customuser_state_name', '2022-11-07 06:29:05.125911'),
(54, 'account', '0010_customuser_is_verified', '2022-11-07 06:39:41.091247'),
(55, 'Admin', '0013_userapplicationdetail_bank_voucher_and_more', '2022-11-07 10:50:32.426591'),
(56, 'Admin', '0014_businesstype_remove_userapplicationdetail_user_id_and_more', '2022-11-08 06:29:59.133186'),
(57, 'account', '0011_customuser_created_at_customuser_updated_at', '2022-11-09 06:13:36.764283'),
(58, 'account', '0012_customuser_is_applyforverified', '2022-11-09 11:44:35.946444'),
(59, 'Admin', '0015_recomendationpricecategory_and_more', '2022-11-11 08:34:25.740570'),
(60, 'Admin', '0016_userapplicationdetail_voucher_number', '2022-11-11 08:55:42.501659'),
(61, 'Admin', '0017_userapplicationdetail_is_payment', '2022-11-13 05:43:00.489877'),
(62, 'Admin', '0018_remove_userapplicationdetail_is_payment_and_more', '2022-11-13 07:17:56.606924'),
(63, 'Admin', '0019_userapplicationrenew_and_more', '2022-11-15 10:07:56.773997'),
(64, 'Admin', '0020_userapplicationdetail_renew', '2022-11-15 10:09:25.572120'),
(65, 'Admin', '0021_userapplicationdetail_company_name', '2022-11-15 10:15:18.580927'),
(66, 'nepallocation', '0001_initial', '2022-11-16 06:17:17.931977'),
(67, 'nepallocation', '0002_municipality_state_alter_districts_district_id_and_more', '2022-11-16 06:34:13.120864'),
(68, 'Admin', '0022_userapplicationdetail_signature', '2022-11-16 09:58:11.599966'),
(69, 'nepallocation', '0003_alter_municipality_alt_name', '2022-11-16 09:58:12.774739'),
(70, 'Admin', '0023_remove_userapplicationdetail_signature', '2022-11-16 10:29:13.192342'),
(71, 'account', '0013_customuser_signature', '2022-11-16 10:29:13.726030'),
(72, 'Admin', '0002_remove_userapplicationdetail_district_and_more', '2022-11-17 07:08:00.502747'),
(73, 'Admin', '0003_remove_applicationform_is_payment_and_more', '2022-11-17 08:51:48.609585'),
(74, 'Admin', '0004_userapplicationpayment_remove_applicationform_renew_and_more', '2022-11-17 09:11:01.395830'),
(75, 'Admin', '0005_remove_applicationform_payment_and_more', '2022-11-17 09:17:40.872986'),
(76, 'Admin', '0006_userapplicationdetail_is_reniew_and_more', '2022-11-17 09:27:43.637582'),
(77, 'Admin', '0007_userapplicationpayment_company_name_and_more', '2022-11-17 09:32:33.302609'),
(78, 'Admin', '0008_userapplicationpayment_email_and_more', '2022-11-17 09:35:51.279918'),
(79, 'Admin', '0009_userapplicationdetail_union_name_and_more', '2022-11-18 08:45:13.019370'),
(80, 'payment', '0001_initial', '2022-11-18 08:45:22.404788'),
(81, 'Admin', '0010_alter_applicationform_created_at_and_more', '2022-11-19 07:08:36.636618'),
(82, 'account', '0014_customuser_company_name_customuser_union_name_and_more', '2022-11-19 07:08:37.438400'),
(83, 'Admin', '0011_userapplicationdetail_approved_company_name_and_more', '2022-11-22 04:53:08.277560'),
(84, 'account', '0015_customuser_approved_company_name_and_more', '2022-11-22 04:53:09.055669'),
(85, 'Admin', '0012_userapplicationpayment_payment_rupees_and_more', '2022-11-23 06:32:03.592678'),
(86, 'Admin', '0013_userapplicationdetail_is_payment', '2022-11-23 07:22:42.193455'),
(87, 'Admin', '0014_remove_userapplicationdetail_is_payment_and_more', '2022-11-23 07:23:40.930301'),
(88, 'account', '0016_teammember', '2022-11-25 05:53:26.406724'),
(89, 'account', '0017_customuser_member_admin_alter_teammember_admin', '2022-11-25 06:47:09.570528'),
(90, 'account', '0018_customuser_apply_role_type', '2022-11-26 18:21:55.033597'),
(91, 'Admin', '0015_applicationform_bill_number_and_more', '2022-11-27 04:52:36.984691'),
(92, 'Admin', '0016_alter_applicationform_bill_number', '2022-11-27 06:26:12.000880'),
(93, 'Admin', '0017_userapplicationdetail_industry_certificate', '2022-11-28 06:42:38.527058'),
(94, 'Admin', '0018_applicationform_payment_get', '2022-11-28 07:35:06.002079'),
(95, 'Admin', '0019_alter_userapplicationpayment_user', '2022-11-28 10:55:09.789292'),
(96, 'Admin', '0020_userapplicationpayment_payment_get', '2022-11-29 10:11:34.841502'),
(97, 'Admin', '0021_userapplicationdetail_application_certificate', '2022-11-29 20:33:31.076737'),
(98, 'Admin', '0022_applicationform_type_application_id', '2022-11-30 06:32:25.887283'),
(99, 'Admin', '0023_userapplicationdetail_physical_year', '2022-11-30 07:39:29.648152'),
(100, 'account', '0019_customuser_sex', '2022-11-30 07:58:49.278649'),
(101, 'Admin', '0024_rename_industry_certificate_userapplicationdetail_industry_certificate_back_side_and_more', '2022-12-04 05:00:57.809889'),
(102, 'Admin', '0025_userapplicationpayment_ceo_approved_email_and_more', '2022-12-06 05:42:00.326357'),
(103, 'account', '0020_customuser_division_forest_email', '2022-12-18 15:00:31.194422');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3yj7266krbif20sb2iiqr1txqvgo7kp5', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p29zL:nUXPbaq8-4lNoK7R6SdzZ_w3q1SmwaAQM1wEL3W0iA4', '2022-12-19 11:50:23.136185'),
('4g62phu63wvkhlt3k5ekjtc81p6mje15', '.eJxVjDsOwjAQBe_iGln-JWtT0ucM1np3jQMokfKpEHdHkVJA-2bmvVXGfWt5X2XJI6urslFdfseC9JTpIPzA6T5rmqdtGYs-FH3SVQ8zy-t2un8HDdd21MkmLkVC5zwIB3IoxhM5cX3PaMDEGLgKxkS168D7YoFBIkN1YKz6fAEkRDhy:1p21rg:tNYgMjM7bG5T5t9TwTuPgx8FNa6n6QFSC8V-YReDrJg', '2022-12-19 03:09:56.303651'),
('5wi5ybzbz16cmum542il89631glka90m', '.eJxVjDsOwyAQBe9CHSFWrPikTJ8zIGCX4CQCydiVlbvHllwk7cy8t4kQ16WGdfAcJhJXgSguvzDF_OJ2GHrG9ugy97bMU5JHIk875L0Tv29n-3dQ46j7GjKUZJVxnskbQBvRea2cglLQmoIFjHWQokJMlNGQI71DYM0EzOLzBfC-N-I:1p5Tiq:iY7_Vk65OfHztlbJbmQjlOnXGaL7EGWq0UGp-KOqikg', '2022-12-28 15:31:04.653469'),
('70unf83hcvbs2saqmwgc1dbjq28kuabq', '.eJxVjDsOwjAQBe_iGln-JWtT0ucM1np3jQMokfKpEHdHkVJA-2bmvVXGfWt5X2XJI6urslFdfseC9JTpIPzA6T5rmqdtGYs-FH3SVQ8zy-t2un8HDdd21MkmLkVC5zwIB3IoxhM5cX3PaMDEGLgKxkS168D7YoFBIkN1YKz6fAEkRDhy:1ozKdp:tgBYlcTkRo0SX3d6YX9HaEVetTsQQwby5T7-t5z-89g', '2022-12-11 16:36:29.479834'),
('713qckew9xukoscn6nggx4iz4ajsispa', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p7b9f:_YRLYSiqCTuJhZaRLkiGRqftxun0xHDX6nqa0DfL-6w', '2023-01-03 11:51:31.994829'),
('82rtu1qsy5d5fgtfq3zndsioa5u8ss5k', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p294a:_2KJ2x3iFJkVD2B65pTTnN6gUxCiTTXDldHazsp_jTc', '2022-12-19 10:51:44.458504'),
('96kxdnc6bdmxlqypunj3vw92jcsixogc', '.eJxVjEsOwjAMBe-SNYqcD4lhyZ4zVHbs0gJqpKZdIe4OlbqA7ZuZ9zIdrcvQrU3nbhRzNs4cfjem8tBpA3Kn6VZtqdMyj2w3xe602WsVfV529-9goDZ86xxYGHtPmWMqghoZIqPPIoCBIecorAoevTt6CIl6ghjdyaFin4p5fwDvGjfH:1omIoS:wCjAnS4BpJ-f9aGJ4enT39zEI17KHu0Meq1adhIII2M', '2022-11-05 18:01:36.513552'),
('9nr8quxx815twu9ph1htqce5lcup2tqv', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p7iWK:KM8BCoL1OWBUq6tPXH0SCV8GiXCGObaXFYDaTGSsUik', '2023-01-03 19:43:24.048362'),
('b12oesn6xw5f351047o7v1iap90feocb', '.eJxVjEsOwiAUAO_C2hAeUD4u3fcM5D0-UjU0Ke3KeHdD0oVuZybzZgGPvYaj5y0siV0ZWHb5hYTxmdsw6YHtvvK4tn1biI-En7bzeU35dTvbv0HFXsfXeRNRkfAGpFRJiCIIgJRKhgz45DRAponAOCu11aVEKyfUzniFAtjnC99RNtM:1ovd8m:MQ1SRWYjIRKq4Ib8W234gyGRrj17aCsulrxcUhm04uk', '2022-12-01 11:33:08.719828'),
('bbf95djnu2js5gf8qiwctsmli6k73khr', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p23lf:zOaLCyMKR9jBv4Wg1aPvj8Tiwc1Mn61ZMXNFlCsFvTE', '2022-12-19 05:11:51.680292'),
('c81ecvxq7mtp4ck9jzfhdhkx7umct2mu', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p2C4L:ZfQJHDWFTn6GkPtC-qRzKipe2UCsqnMx7zJSxPPcDfs', '2022-12-19 14:03:41.605269'),
('dcypvgc76s0qq1hnxosko2aq4um7njk0', '.eJxVjEEOwiAQRe_C2hCQlmFcuu8ZyDBMpWpoUtqV8e7apAvd_vfef6lI21ri1mSJU1YX1Rl1-h0T8UPqTvKd6m3WPNd1mZLeFX3Qpoc5y_N6uH8HhVr51pbBeSaw4HNvQkfoTC-YgicOiAxCJKM4MWIzEoC1yeFIYM6Ajq16fwAFbTgS:1p4vlJ:yzSGnCXkSZK7TNx3RsX6jLSAyY7kZa7CMgrDAB4CRfE', '2022-12-27 03:15:21.367120'),
('etrdfyaoddwgblidxsj3toe8dd7sy7an', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p7bB3:vC6GSTMhUmcodAousbQ7whmcNl3UbXaT0jdUS_rwryI', '2023-01-03 11:52:57.385265'),
('g0b37znyn5421od91r6n3zl6l7h4s0hi', '.eJxVjEsOwiAUAO_C2hAeUD4u3fcM5D0-UjU0Ke3KeHdD0oVuZybzZgGPvYaj5y0siV0ZWHb5hYTxmdsw6YHtvvK4tn1biI-En7bzeU35dTvbv0HFXsfXeRNRkfAGpFRJiCIIgJRKhgz45DRAponAOCu11aVEKyfUzniFAtjnC99RNtM:1ovcQH:_zmdn4VXpmc6d9LmIpZOIq_AF8UupwVps4cwCTV-jwg', '2022-12-01 10:47:09.184548'),
('gog59wrs1sfdq026qwdr6lxzl65u4zd0', '.eJxVjDsOwjAQBe_iGllJFtY2JT1nsPYXEkCxFCcV4u4QKQW0b2bey2ValyGv1eY8qju71h1-NyZ52LQBvdN0K17KtMwj-03xO63-WtSel939OxioDt8aY9OAWQIUPokoty2yRknQ9YFNOm1ILYbICaMBMwXsA2AKCQ3g6N4f-4M4TA:1ottR1:Cn-MrOmp04jWy5E8prqKUvQ-u9KJLs7lWvxHFqGnirA', '2022-11-26 16:32:47.303906'),
('h4e50g3k6mz99kskebo1ysm9b9qdnjrf', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p29FA:jHFRyXhUW5I1hd0SY-UX7oAMoF5frn0ZeBKq55sur7s', '2022-12-19 11:02:40.714365'),
('jeio3s8hwphvoz57s26otx6807vuunrh', '.eJxVjMsOwiAQRf-FtSE8hgIu3fsNZJihUjU0Ke3K-O_apAvd3nPOfYmE21rT1suSJhZnAeL0u2WkR2k74Du22yxpbusyZbkr8qBdXmcuz8vh_h1U7PVbq5GYjBl09By8ta7E0QVw5BB4MDlj8VErbzNnY8CgLRQCIGinQRGL9wfeTjea:1ovCiB:6KUV54wk48odTqtvwWfe5V8U7uWYrpeLANitdKn0y5k', '2022-11-30 07:19:55.879474'),
('lvowqq5v5jm8cdk14sgzssyufn8s0gvp', '.eJxVjM0OwiAQhN-FsyHA8iMevfsMZBe2UjU0Ke3J-O62SQ-auc33zbxFwnWpae08p7GIi7BKnH5LwvzktpPywHafZJ7aMo8kd0UetMvbVPh1Pdy_g4q9bmtUZ3boQQMie600gwtbtPGarIsWYw4D00BQfAhsTYZocyGw5JRx4vMF8vI3lw:1oztVZ:leg99L7PHE-c1kmQjfX4E1dIHG1qH5vT-WYH0V78kn4', '2022-12-13 05:50:17.544655'),
('m7zghflr4t8va1aa98bmv5ttx62qw85o', '.eJxVjDsOwjAQBe_iGln-JWtT0ucM1np3jQMokfKpEHdHkVJA-2bmvVXGfWt5X2XJI6urslFdfseC9JTpIPzA6T5rmqdtGYs-FH3SVQ8zy-t2un8HDdd21MkmLkVC5zwIB3IoxhM5cX3PaMDEGLgKxkS168D7YoFBIkN1YKz6fAEkRDhy:1p4JNi:EtZ0SlC08mmOf30yUByr3T_z9LuH5MLOk65CFY2kMRQ', '2022-12-25 10:16:26.442981'),
('qyvfn0l8q8x9gg0clqyi4wnbuf4o5nvf', '.eJxVjEEOwiAQRe_C2hBggIJL956BzMBUqoYmpV0Z765NutDtf-_9l0i4rTVtnZc0FXEWEMTpdyTMD247KXdst1nmua3LRHJX5EG7vM6Fn5fD_Tuo2Ou3tsZnSxCAvUKlPZvBRwbN6IBi8MrqQs5EHXVmChYhljEQ0OCy82MU7w_p1jeF:1p64is:xgh8fJzSRxWDMHHpo3962fFBiTMXj0Cjrz0bjPx5SUs', '2022-12-30 07:01:34.605228'),
('s2vaage1ocxr6tpwbjqy9i1qi8gk6xmi', '.eJxVjEsOwjAMBe-SNYqcD4lhyZ4zVHbs0gJqpKZdIe4OlbqA7ZuZ9zIdrcvQrU3nbhRzNs4cfjem8tBpA3Kn6VZtqdMyj2w3xe602WsVfV529-9goDZ86xxYGHtPmWMqghoZIqPPIoCBIecorAoevTt6CIl6ghjdyaFin4p5fwDvGjfH:1omIlN:X8bhHku4Shw55MWgfTosJNZY-yuWZp7ccT8vPtmF--Y', '2022-11-05 17:58:25.992939'),
('vl7vp8nkb6tu2miwlgyztpxkpqt6qxw3', '.eJxVjMsOwiAQRf-FtSEwDI-6dO83kIGhUjU0Ke3K-O_apAvd3nPOfYlI21rj1ssSJxZnAeL0uyXKj9J2wHdqt1nmua3LlOSuyIN2eZ25PC-H-3dQqddvnSwTBo3Wo4HkDFhK2SvFwUEBowg1F1boPJghj2hxGLU3xoMLikoS7w--sDbR:1oquxZ:LT4IS3gMH1Dy3TUb6an8V_26vUBcFVtlJuioBJT5RLg', '2022-11-18 11:34:05.946547'),
('xedqhebojg8izyf7svflslwhof0zy9dm', 'e30:1oyWiS:7MErlR_A7h0RWE11LnAJTE1FO4o_d1ykSYZlCYk4gOI', '2022-12-09 11:17:56.712174');

-- --------------------------------------------------------

--
-- Table structure for table `nepallocation_districts`
--

CREATE TABLE `nepallocation_districts` (
  `id` bigint(20) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) NOT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nepallocation_districts`
--

INSERT INTO `nepallocation_districts` (`id`, `district_id`, `name`, `alt_name`, `state_id`) VALUES
(1, 1, 'Bhojpur', 'भोजपुर', 1),
(2, 2, 'Dhankuta', 'धनकुटा', 1),
(3, 3, 'Ilam', 'इलाम', 1),
(4, 4, 'Jhapa', 'झापा', 1),
(5, 5, 'Khotang', 'खोटाँग', 1),
(6, 6, 'Morang', 'मोरंग', 1),
(7, 7, 'Okhaldhunga', 'ओखलढुंगा', 1),
(8, 8, 'Panchthar', 'पांचथर', 1),
(9, 9, 'Sankhuwasabha', 'संखुवासभा', 1),
(10, 10, 'Solukhumbu', 'सोलुखुम्बू', 1),
(11, 11, 'Sunsari', 'सुनसरी', 1),
(12, 12, 'Taplejung', 'ताप्लेजुंग', 1),
(13, 13, 'Terhathum', 'तेह्रथुम', 1),
(14, 14, 'Udayapur', 'उदयपुर', 1),
(15, 20, 'Bara', 'बारा', 2),
(16, 17, 'Dhanusha', 'धनुषा', 2),
(17, 18, 'Mahottari', 'महोत्तरी', 2),
(18, 21, 'Parsa', 'पर्सा', 2),
(19, 22, 'Rautahat', 'रौतहट', 2),
(20, 15, 'Saptari', 'सप्तरी', 2),
(21, 19, 'Sarlahi', 'सर्लाही', 2),
(22, 16, 'Siraha', 'सिराहा', 2),
(23, 26, 'Bhaktapur', 'भक्तपुर', 8),
(24, 34, 'Chitwan', 'चितवन', 3),
(25, 27, 'Dhading', 'धादिङ', 3),
(26, 25, 'Dolakha', 'दोलखा', 3),
(27, 28, 'Kathmandu', 'काठमाडौँ', 8),
(28, 29, 'Kavrepalanchowk', 'काभ्रेपलाञ्चोक', 3),
(29, 30, 'Lalitpur', 'ललितपुर', 8),
(30, 35, 'Makawanpur', 'मकवानपुर', 3),
(31, 31, 'Nuwakot', 'नुवाकोट', 3),
(32, 24, 'Ramechhap', 'रामेछाप', 3),
(33, 32, 'Rasuwa', 'रसुवा', 3),
(34, 23, 'Sindhuli', 'सिन्धुली', 3),
(35, 33, 'Sindhupalchok', 'सिन्धुपाल्चोक', 3),
(36, 36, 'Baglung', 'बागलुङ', 4),
(37, 37, 'Gorkha', 'गोरखा', 4),
(38, 38, 'Kaski', 'कास्की', 4),
(39, 39, 'Lamjung', 'लमजुङ', 4),
(40, 40, 'Manang', 'मनाङ', 4),
(41, 41, 'Mustang', 'मुस्ताङ', 4),
(42, 42, 'Myagdi', 'म्याग्दी', 4),
(43, 43, 'Nawalpur', 'नवलपुर', 4),
(44, 44, 'Parbat', 'पर्वत', 4),
(45, 45, 'Syangja', 'स्याङग्जा', 4),
(46, 46, 'Tanahun', 'तनहुँ', 4),
(47, 50, 'Arghakhanchi', 'अर्घाखाँची', 5),
(48, 57, 'Banke', 'बाँके', 5),
(49, 58, 'Bardiya', 'बर्दिया', 5),
(50, 53, 'Dang', 'दाङ', 5),
(51, 56, 'Eastern Rukum', 'पूर्वी रूकुम', 5),
(52, 51, 'Gulmi', 'गुल्मी', 5),
(53, 47, 'Kapilvastu', 'कपिलवस्तु', 5),
(54, 52, 'Palpa', 'पाल्पा', 5),
(55, 48, 'Parasi', 'परासी', 5),
(56, 54, 'Pyuthan', 'प्युठान', 5),
(57, 55, 'Rolpa', 'रोल्पा', 5),
(58, 49, 'Rupandehi', 'रुपन्देही', 5),
(59, 67, 'Dailekh', 'दैलेख', 6),
(60, 61, 'Dolpa', 'डोल्पा', 6),
(61, 62, 'Humla', 'हुम्ला', 6),
(62, 68, 'Jajarkot', 'जाजरकोट', 6),
(63, 63, 'Jumla', 'जुम्ला', 6),
(64, 64, 'Kalikot', 'कालिकोट', 6),
(65, 65, 'Mugu', 'मुगु', 6),
(66, 60, 'Salyan', 'सल्यान', 6),
(67, 66, 'Surkhet', 'सुर्खेत', 6),
(68, 59, 'Western Rukum', 'पश्चिमी रूकुम', 6),
(69, 70, 'Achham', 'अछाम', 7),
(70, 76, 'Baitadi', 'बैतडी', 7),
(71, 72, 'Bajhang', 'बझाङ', 7),
(72, 73, 'Bajura', 'बाजुरा', 7),
(73, 75, 'Dadeldhura', 'डडेलधुरा', 7),
(74, 77, 'Darchula', 'दार्चुला', 7),
(75, 71, 'Doti', 'डोटी', 7),
(76, 69, 'Kailali', 'कैलाली', 7),
(77, 74, 'Kanchanpur', 'कंचनपुर', 7);

-- --------------------------------------------------------

--
-- Table structure for table `nepallocation_municipality`
--

CREATE TABLE `nepallocation_municipality` (
  `id` bigint(20) NOT NULL,
  `municipality_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nepallocation_municipality`
--

INSERT INTO `nepallocation_municipality` (`id`, `municipality_id`, `name`, `alt_name`, `district_id`, `state_id`) VALUES
(1, 296, 'Aamchok', 'आमचोक', 1, 1),
(2, 298, 'Arun', 'अरुण', 1, 1),
(3, 43, 'Bhojpur', 'भोजपुर', 1, 1),
(4, 294, 'Hatuwagadhi', 'हतुवागढी', 1, 1),
(5, 299, 'Pauwadungma', 'पौवाडुङ्मा', 1, 1),
(6, 295, 'Ramprasad Rai', 'रामप्रसाद राई', 1, 1),
(7, 300, 'Salpasilichho', 'सालपसिलिछो', 1, 1),
(8, 253, 'Shadanand', 'षदानन्द', 1, 1),
(9, 297, 'Tyamke Maiyunm', 'त्यम्के मैयुम', 1, 1),
(10, 302, 'Chaubise', 'चौबिसे', 2, 1),
(11, 304, 'Chhathar Jorpati', 'छथर जोरपाटी', 2, 1),
(12, 81, 'Dhankuta', 'धनकुटा', 2, 1),
(13, 303, 'Khalsa Chhintang Sahidbhumi', 'खालसा छिन्ताङ सहिदभूमि', 2, 1),
(14, 179, 'Mahalaxmi', 'महालक्ष्मी', 2, 1),
(15, 208, 'Pakhribas', 'पाखरीबास', 2, 1),
(16, 301, 'Sangurigadhi', 'साँगुरीगढी', 2, 1),
(17, 307, 'Chulachuli', 'चुलाचुली', 3, 1),
(18, 75, 'Deumai', 'देउमाई', 3, 1),
(19, 121, 'Ilam', 'इलाम', 3, 1),
(20, 182, 'Mai', 'माई', 3, 1),
(21, 306, 'Mai Jogmai', 'माई जोगमाई', 3, 1),
(22, 309, 'Mangsebung', 'मङ्गेबुङ', 3, 1),
(23, 305, 'Phakphokthum', 'फाकफोकथुम', 3, 1),
(24, 308, 'Rong', 'रोङ', 3, 1),
(25, 310, 'Sandakpur', 'सन्दकपुर', 3, 1),
(26, 276, 'Suryodaya', 'सूर्योदय', 3, 1),
(27, 4, 'Arjundhara', 'अर्जुनधारा', 4, 1),
(28, 315, 'Barhadashi', 'बाह्रदशी', 4, 1),
(29, 31, 'Bhadrapur', 'भद्रपुर', 4, 1),
(30, 50, 'Birtamod', 'बिर्तामोड', 4, 1),
(31, 312, 'Buddha Shanti', 'बुद्ध शान्ति', 4, 1),
(32, 72, 'Damak', 'दमक', 4, 1),
(33, 100, 'Gauradaha', 'गौरादह', 4, 1),
(34, 316, 'Gaurigunj', 'गौरीगन्ज', 4, 1),
(35, 317, 'Haldibari', 'हल्दिबारी', 4, 1),
(36, 314, 'Jhapa', 'झापा', 4, 1),
(37, 313, 'Kachankawal', 'कचनकवल', 4, 1),
(38, 311, 'Kamal', 'कमल', 4, 1),
(39, 141, 'Kankai', 'कनकाई', 4, 1),
(40, 190, 'Mechinagar', 'मेचीनगर', 4, 1),
(41, 259, 'Shiva Sataxi', 'शिव सताक्सी', 4, 1),
(42, 320, 'Aiselukharka', 'ऐसेलुखर्क', 5, 1),
(43, 323, 'Barahpokhari', 'बराहपोखरी', 5, 1),
(44, 88, 'Diktel Rupakot Majuwagadhi', 'दिक्तेल रुपाकोट मजुवागढी', 5, 1),
(45, 319, 'Diprung', 'डिप्रुङ', 5, 1),
(46, 114, 'Halesi Tuwachung', 'हलेसी तुवाचुङ', 5, 1),
(47, 321, 'Jantedhunga', 'जानतेढुङ्गा', 5, 1),
(48, 322, 'Kepilasgadhi', 'केपिलासगढी', 5, 1),
(49, 318, 'Khotehang', 'खोटेहाङ', 5, 1),
(50, 324, 'Lamidanda', 'लामिडाँडा', 5, 1),
(51, 325, 'Sakela', 'साकेला', 5, 1),
(52, 27, 'Belbaari', 'बेलबारी', 6, 1),
(53, 762, 'Belbari', 'बेलबारी', 6, 1),
(54, 47, 'Biratnagar', 'विराटनगर', 6, 1),
(55, 760, 'Budhiganga', 'बुढीगंगा', 6, 1),
(56, 327, 'Budi Ganga', 'बुढी गंगा', 6, 1),
(57, 770, 'Budiganga', 'बुढीगंगा', 6, 1),
(58, 771, 'Dhanpalthaan', 'धनपालथान', 6, 1),
(59, 329, 'Dhanpalthan', 'धनपालथान', 6, 1),
(60, 772, 'Gramthaan', 'ग्रामथान', 6, 1),
(61, 331, 'Gramthan', 'ग्रामथान', 6, 1),
(62, 326, 'Jahada', 'जहादा', 6, 1),
(63, 330, 'Kanepokhari', 'कानेपोखरी', 6, 1),
(64, 328, 'Katahari', 'कटहरी', 6, 1),
(65, 332, 'Kerabari', 'केराबारी', 6, 1),
(66, 166, 'Letang', 'लेटाङ', 6, 1),
(67, 333, 'Miklajung', 'मिक्लाजुङ', 6, 1),
(68, 218, 'Pathari Shanischare', 'पथरी शनिश्चरे', 6, 1),
(69, 773, 'Pathri Sanischare', 'पाथरी शनिश्चरे', 6, 1),
(70, 774, 'Rangali', 'रंगाली', 6, 1),
(71, 240, 'Rangeli', 'रंगेली', 6, 1),
(72, 244, 'Ratuwamai', 'रतुवामाई', 6, 1),
(73, 270, 'Sunawarshi', 'सुनवर्शी', 6, 1),
(74, 776, 'Sunbarshi', 'सुनवर्षी', 6, 1),
(75, 271, 'Sundar Haraincha', 'सुन्दर हरैंचा', 6, 1),
(76, 775, 'Sundarharaicha', 'सुन्दरहरैचा', 6, 1),
(77, 291, 'Urlabari', 'उर्लाबारी', 6, 1),
(78, 335, 'Champadevi', 'चम्पादेवी', 7, 1),
(79, 338, 'Chisankhugadhi', 'चिसंखुगढी', 7, 1),
(80, 339, 'Khiji Demba', 'खिजी डेम्बा', 7, 1),
(81, 340, 'Likhu', 'लिखु', 7, 1),
(82, 334, 'Manebhanjyang', 'मानेभञ्ज्याङ', 7, 1),
(83, 337, 'Molung', 'मोलुङ', 7, 1),
(84, 264, 'Siddhicharan', 'सिद्धिचरण', 7, 1),
(85, 336, 'Sunkoshi', 'सुनकोशी', 7, 1),
(86, 343, 'Hilihang', 'हिलिहाङ', 8, 1),
(87, 346, 'Kummayak', 'कुमायक', 8, 1),
(88, 341, 'Miklajung', 'मिक्लाजुङ', 8, 1),
(89, 344, 'Phalelung', 'फालेलुङ', 8, 1),
(90, 783, 'Phalgunanda', 'फाल्गुनन्द', 8, 1),
(91, 342, 'Phalgunanda', 'फाल्गुनन्द', 8, 1),
(92, 222, 'Phidim', 'फिदिम', 8, 1),
(93, 347, 'Tumbewa', 'तुम्बेवा', 8, 1),
(94, 345, 'Yangwarak', 'याङ्गवारक', 8, 1),
(95, 352, 'Bhot Khola', 'भोट खोला', 9, 1),
(96, 59, 'Chainpur', 'चैनपुर', 9, 1),
(97, 351, 'Chichila', 'चिचिला', 9, 1),
(98, 84, 'Dharmadevi', 'धर्मदेवी', 9, 1),
(99, 151, 'Khandbari', 'खाँदबारी', 9, 1),
(100, 175, 'Madi', 'माडी', 9, 1),
(101, 348, 'Makalu', 'मकालु', 9, 1),
(102, 213, 'Panchkhapan', 'पाँचखापन', 9, 1),
(103, 350, 'Sabhapokhari', 'सभापोखरी', 9, 1),
(104, 349, 'Silichong', 'सिलिचङ', 9, 1),
(105, 353, 'Dudhakaushika', 'दुधकौशिका', 10, 1),
(106, 355, 'Dudhkoshi', 'दूधकोशी', 10, 1),
(107, 358, 'Khumbu Pasang Lhamu', 'खुम्बु पासाङ ल्हामु', 10, 1),
(108, 359, 'Likhu Pike', 'लिखु पाइक', 10, 1),
(109, 356, 'Maha Kulung', 'महा कुलुङ', 10, 1),
(110, 354, 'Necha Salyan', 'नेचा सल्यान', 10, 1),
(111, 268, 'Solu Dudhkunda', 'सोलु दुधकुण्ड', 10, 1),
(112, 357, 'Sotang', 'सोटाङ', 10, 1),
(113, 17, 'Barahachhetra', 'बराहक्षेत्र', 11, 1),
(114, 365, 'Barju', 'बर्जु', 11, 1),
(115, 362, 'Bhokraha', 'भोक्राहा', 11, 1),
(116, 363, 'Dewangunj', 'देवानगन्ज', 11, 1),
(117, 83, 'Dharan', 'धरान', 11, 1),
(118, 91, 'Duhabi', 'दुहबी', 11, 1),
(119, 364, 'Gadhi', 'गढी', 11, 1),
(120, 361, 'Harinagara', 'हरिनगर', 11, 1),
(121, 122, 'Inaruwa', 'इनरुवा', 11, 1),
(122, 125, 'Itahari', 'इटहरी', 11, 1),
(123, 360, 'Koshi', 'कोशी', 11, 1),
(124, 235, 'Ramdhuni', 'रामधुनी', 11, 1),
(125, 777, 'Aathrai Tribeni', 'आठराई त्रिवेणी', 12, 1),
(126, 367, 'Aathrai Triveni', 'आठराई त्रिवेणी', 12, 1),
(127, 372, 'Maiwa Khola', 'मैवा खोला', 12, 1),
(128, 778, 'Mauwakhola', 'मौवाखोला', 12, 1),
(129, 369, 'Meringden', 'Meringden', 12, 1),
(130, 373, 'Mikwa Khola', 'मिक्वा खोला', 12, 1),
(131, 779, 'Mikwakhola', 'मिक्वाखोला', 12, 1),
(132, 368, 'Pathibhara Yangwarak', 'पाथीभरा याङवारक', 12, 1),
(133, 782, 'Pathivara Yangwarak', 'पाथिवरा यांगवारक', 12, 1),
(134, 371, 'Phaktanglung', 'फाक्ताङलुङ', 12, 1),
(135, 780, 'Phattanglung', 'फट्टाङलुङ', 12, 1),
(136, 223, 'Phungling', 'फुङ्लिङ', 12, 1),
(137, 370, 'Sidingwa', 'सिडिङवा', 12, 1),
(138, 366, 'Sirijangha', 'सिरिजाङ्घा', 12, 1),
(139, 781, 'Sirijungha', 'सिरिजुङ्घा', 12, 1),
(140, 374, 'Aathrai', 'आठराई', 13, 1),
(141, 376, 'Chhathar', 'छथर', 13, 1),
(142, 161, 'Laligurans', 'लालीगुराँस', 13, 1),
(143, 377, 'Menchayayem', 'मेन्चायेम', 13, 1),
(144, 198, 'Myanglung', 'म्याङलुङ', 13, 1),
(145, 375, 'Phedap', 'फेडाप', 13, 1),
(146, 25, 'Belaka', 'बेलका', 14, 1),
(147, 66, 'Chaudandigadhi', 'चौदण्डीगढी', 14, 1),
(148, 145, 'Katari', 'कटारी', 14, 1),
(149, 381, 'Limchungbung', 'लिम्चुङबुङ', 14, 1),
(150, 379, 'Rautamai', 'रौतामाई', 14, 1),
(151, 380, 'Tapli', 'तापली', 14, 1),
(152, 289, 'Triyuga', 'त्रियुग', 14, 1),
(153, 378, 'Udayapurgadhi', 'उदयपुरगढी', 14, 1),
(154, 383, 'Adarsha Kotwal', 'आदर्श कोतवाल', 15, 2),
(155, 384, 'Baragadhi', 'बारागढी', 15, 2),
(156, 388, 'Bishrampur', 'बिश्रामपुर', 15, 2),
(157, 389, 'Devtal', 'देवताल', 15, 2),
(158, 131, 'Jitpur Simara', 'जितपुर सिमरा', 15, 2),
(159, 134, 'Kalaiya', 'कलैया', 15, 2),
(160, 386, 'Karaiyamai', 'करैयामाई', 15, 2),
(161, 154, 'Kolhabi', 'कोल्हाबी', 15, 2),
(162, 176, 'Mahagadhimai', 'महागढीमाई', 15, 2),
(163, 205, 'Nijgadh', 'निजगढ', 15, 2),
(164, 207, 'Pachrauta', 'पचरौता', 15, 2),
(165, 390, 'Parawanipur', 'परवानीपुर', 15, 2),
(166, 385, 'Pheta', 'फेटा', 15, 2),
(167, 387, 'Prasauni', 'प्रसौनी', 15, 2),
(168, 265, 'Simraungadh', 'सिम्रौनगढ', 15, 2),
(169, 382, 'Subarna', 'सुवर्णा', 15, 2),
(170, 394, 'Aaurahi', 'औराही', 16, 2),
(171, 395, 'Bateshwar', 'बटेश्वर', 16, 2),
(172, 45, 'Bideha', 'बिदेहा', 16, 2),
(173, 396, 'Dhanauji', 'धनौजी', 16, 2),
(174, 82, 'Dhanushadham', 'धनुषाधाम', 16, 2),
(175, 97, 'Ganeshman Charnath', 'गणेशमान चारनाथ', 16, 2),
(176, 115, 'Hansapur', 'हंसपुर', 16, 2),
(177, 393, 'Janak Nandini', 'जनक नन्दिनी', 16, 2),
(178, 128, 'Janakpur', 'जनकपुर', 16, 2),
(179, 137, 'Kamala', 'कमला', 16, 2),
(180, 157, 'Kshireshwor Nath', 'क्षीरेश्वर नाथ', 16, 2),
(181, 391, 'Laksminiya', 'लक्ष्मीनिया', 16, 2),
(182, 194, 'Mithila', 'मिथिला', 16, 2),
(183, 195, 'Mithila Bihari', 'मिथिला बिहारी', 16, 2),
(184, 392, 'Mukhiyapatti Musaharmiya', 'मुखियापट्टी मुसहर्मिया', 16, 2),
(185, 199, 'Nagarain', 'नगराई', 16, 2),
(186, 247, 'Sabaila', 'सबाइला', 16, 2),
(187, 254, 'Shahidnagar', 'शहिदनगर', 16, 2),
(188, 5, 'Aurahi', 'औरही', 17, 2),
(189, 12, 'Balawa', 'बलवा', 17, 2),
(190, 21, 'Bardibas', 'बर्दिवास', 17, 2),
(191, 34, 'Bhangaha', 'भङ्गाहा', 17, 2),
(192, 400, 'Ekdara', 'एकडारा', 17, 2),
(193, 102, 'Gaushala', 'गौशाला', 17, 2),
(194, 127, 'Jaleshwar', 'जलेश्वर', 17, 2),
(195, 167, 'Loharpatti', 'लोहारपट्टी', 17, 2),
(196, 401, 'Mahottari Rural Municipality', 'महोत्तरी गाउँपालिका', 17, 2),
(197, 184, 'Manara Shisawa', 'मनारा शिसावा', 17, 2),
(198, 188, 'Matihani', 'मटिहानी', 17, 2),
(199, 398, 'Pipara', 'पिपरा', 17, 2),
(200, 237, 'Ramgopalpur', 'रामगोपालपुर', 17, 2),
(201, 399, 'Samsi', 'सम्सी', 17, 2),
(202, 397, 'Sonama', 'सोनामा', 17, 2),
(203, 10, 'Bahudarmai', 'बहादुरमाई', 18, 2),
(204, 405, 'Bindabasini', 'बिन्दवासिनी', 18, 2),
(205, 49, 'Birgunj', 'वीरगन्ज', 18, 2),
(206, 404, 'Chhipaharmai', 'छिपहरमाई', 18, 2),
(207, 411, 'Dhobini', 'धोबिनी', 18, 2),
(208, 403, 'Jagarnathpur', 'जगरनाथपुर', 18, 2),
(209, 407, 'Jeera Bhavani', 'जीरा भवानी', 18, 2),
(210, 408, 'Kalikamai', 'कालिकामाई', 18, 2),
(211, 409, 'Pakaha Mainpur', 'पकाहा मैनपुर', 18, 2),
(212, 216, 'Parsagadhi', 'पर्सागढी', 18, 2),
(213, 406, 'Paterwa Sugauli', 'पटेरवा सुगौली', 18, 2),
(214, 225, 'Pokhariya', 'पोखरिया', 18, 2),
(215, 402, 'Sakhuwa Prasauni', 'सखुवा प्रसौनी', 18, 2),
(216, 410, 'Thori', 'थोरी', 18, 2),
(217, 23, 'Baudhimai', 'बौधिमाई', 19, 2),
(218, 52, 'Brindaban', 'वृन्दबन', 19, 2),
(219, 63, 'Chandrapur', 'चन्द्रपुर', 19, 2),
(220, 78, 'Dewahi Gonahi', 'देवाही गोनाही', 19, 2),
(221, 412, 'Durga Bhagawati', 'दुर्गा भगवती', 19, 2),
(222, 93, 'Gadhimai', 'गढीमाई', 19, 2),
(223, 98, 'Garuda', 'गरुड', 19, 2),
(224, 99, 'Gaur', 'गौर', 19, 2),
(225, 111, 'Gujara', 'गुजरा', 19, 2),
(226, 123, 'Ishnath', 'इशनाथ', 19, 2),
(227, 144, 'Katahariya', 'कटहरिया', 19, 2),
(228, 169, 'Madhav Narayan', 'माधव नारायण', 19, 2),
(229, 189, 'Maulapur', 'मौलापुर', 19, 2),
(230, 215, 'Paroha', 'पारोहा', 19, 2),
(231, 221, 'Phatuwa Bijayapur', 'विजयपुर फटुवा', 19, 2),
(232, 233, 'Rajdevi', 'राजदेवी', 19, 2),
(233, 234, 'Rajpur', 'राजपुर', 19, 2),
(234, 413, 'Yamunamai', 'यमुनामाई', 19, 2),
(235, 418, 'Aagnisaira Krishnasawaran', 'अग्निसाइरा कृष्णस्वरण', 20, 2),
(236, 420, 'Balan-Bihul', 'बालन-बिहुल', 20, 2),
(237, 415, 'Belhi Chapena', 'बेल्ही चापेना', 20, 2),
(238, 421, 'Bishnupur', 'विष्णुपुर', 20, 2),
(239, 51, 'Bode Barsain', 'बोडे बार्सैन', 20, 2),
(240, 416, 'Chhinnamasta', 'छिन्नमस्ता', 20, 2),
(241, 71, 'Dakneshwari', 'डाक्नेश्वरी', 20, 2),
(242, 116, 'Hanumannagar Kankalini', 'हनुमाननगर कंकालिनी', 20, 2),
(243, 140, 'Kanchanrup', 'कञ्चनरुप', 20, 2),
(244, 148, 'Khadak', 'खडक', 20, 2),
(245, 417, 'Mahadeva', 'महादेव', 20, 2),
(246, 232, 'Rajbiraj', 'राजविराज', 20, 2),
(247, 419, 'Rupani', 'रुपानी', 20, 2),
(248, 251, 'Saptakoshi', 'सप्तकोशी', 20, 2),
(249, 256, 'Shambhunath', 'शम्भुनाथ', 20, 2),
(250, 274, 'Surunga', 'सुरुङ्गा', 20, 2),
(251, 414, 'Tilathi Koiladi', 'तिलाठी कोइलाडी', 20, 2),
(252, 422, 'Tirhut', 'तिर्हुत', 20, 2),
(253, 9, 'Bagmati', 'बागमती', 21, 2),
(254, 11, 'Balara', 'बलरा', 21, 2),
(255, 18, 'Barahathawa', 'बराहथवा', 21, 2),
(256, 430, 'Basbariya', 'बासबरिया', 21, 2),
(257, 429, 'Bishnu', 'विष्णु', 21, 2),
(258, 424, 'Bramhapuri', 'ब्रम्हपुरी', 21, 2),
(259, 426, 'Chakraghatta', 'चक्रघट्टा', 21, 2),
(260, 423, 'Chandranagar', 'चन्द्रनगर', 21, 2),
(261, 428, 'Dhankaul', 'धनकौल', 21, 2),
(262, 105, 'Godaita', 'गोदैता', 21, 2),
(263, 117, 'Haripur', 'हरिपुर', 21, 2),
(264, 118, 'Haripurwa', 'हरिपुरवा', 21, 2),
(265, 119, 'Hariwan', 'हरिवान', 21, 2),
(266, 124, 'Ishworpur', 'ईश्वरपुर', 21, 2),
(267, 132, 'Kabilasi', 'कबिलासी', 21, 2),
(268, 427, 'Kaudena', 'कौडेना', 21, 2),
(269, 160, 'Lalbandi', 'लालबन्दी', 21, 2),
(270, 183, 'Malangwa', 'मलङ्गवा', 21, 2),
(271, 431, 'Parsa', 'पर्सा', 21, 2),
(272, 425, 'Ramnagar', 'रामनगर', 21, 2),
(273, 434, 'Aaurahi', 'औराही', 22, 2),
(274, 435, 'Arnama', 'अर्नामा', 22, 2),
(275, 433, 'Bariyarpatti', 'बरियारपट्टी', 22, 2),
(276, 436, 'Bhagawanpur', 'भगवानपुर', 22, 2),
(277, 440, 'Bishnupur', 'विष्णुपुर', 22, 2),
(278, 80, 'Dhangadimai', 'धनगढीमाई', 22, 2),
(279, 109, 'Golbazar', 'गोलबजार', 22, 2),
(280, 136, 'Kalyanpur', 'कल्याणपुर', 22, 2),
(281, 143, 'Karjanha', 'कर्जन्हा', 22, 2),
(282, 159, 'Lahan', 'लहान', 22, 2),
(283, 432, 'Laksmipur Patari', 'लक्ष्मीपुर पटारी', 22, 2),
(284, 193, 'Mirchaiya', 'मिर्चैया', 22, 2),
(285, 437, 'Naraha', 'नरहा', 22, 2),
(286, 438, 'Nawarajpur', 'नवराजपुर', 22, 2),
(287, 439, 'Sakhuwanankarkatti', 'सखुवानङ्करकट्टी', 22, 2),
(288, 266, 'Siraha', 'सिरहा', 22, 2),
(289, 269, 'Sukhipur', 'सुखीपुर', 22, 2),
(290, 33, 'Bhaktapur', 'भक्तपुर', 23, 3),
(291, 64, 'Changunarayan', 'चाँगुनारायण', 23, 3),
(292, 173, 'Madhyapur Thimi', 'मध्यपुरथिमि', 23, 3),
(293, 275, 'Suryabinayak', 'सूर्यविनायक', 23, 3),
(294, 36, 'Bharatpur', 'भरतपुर', 24, 3),
(295, 441, 'Ichchhakamana', 'इच्छाकामना', 24, 3),
(296, 135, 'Kalika', 'कालिका', 24, 3),
(297, 149, 'Khairhani', 'खैरहनी', 24, 3),
(298, 174, 'Madi', 'माडी', 24, 3),
(299, 241, 'Rapti', 'राप्ती', 24, 3),
(300, 243, 'Ratnanagar', 'रत्ननगर', 24, 3),
(301, 443, 'Benighat Rorang', 'बेनिघाट रोराङ', 25, 3),
(302, 87, 'Dhunibeshi', 'धुनिबेशी', 25, 3),
(303, 445, 'Gajuri', 'गजुरी', 25, 3),
(304, 444, 'Galchhi', 'गल्छी', 25, 3),
(305, 449, 'Gangajamuna', 'गंगाजमुना', 25, 3),
(306, 446, 'Jwalamukhi', 'ज्वालामुखी', 25, 3),
(307, 451, 'Khaniyabas', 'खानियाबास', 25, 3),
(308, 450, 'Netrawati Dabjong', 'नेत्रावती डब्जोङ', 25, 3),
(309, 206, 'Nilkantha', 'नीलकण्ठ', 25, 3),
(310, 452, 'Ruby Valley', 'रुबी उपत्यका', 25, 3),
(311, 447, 'Siddhalekh', 'सिद्धलेख', 25, 3),
(312, 442, 'Thakre', 'ठाकरे', 25, 3),
(313, 456, 'Baiteshwar', 'बैतेश्वर', 26, 3),
(314, 42, 'Bhimeshwar', 'भीमेश्वर', 26, 3),
(315, 458, 'Bigu', 'बिगु', 26, 3),
(316, 459, 'Gaurishankar', 'गौरीशंकर', 26, 3),
(317, 130, 'Jiri', 'जिरी', 26, 3),
(318, 453, 'Kalinchok', 'कालिञ्चोक', 26, 3),
(319, 454, 'Melung', 'मेलुङ', 26, 3),
(320, 455, 'Shailung', 'शैलुङ', 26, 3),
(321, 457, 'Tamakoshi', 'तामाकोशी', 26, 3),
(322, 54, 'Budhanilkantha', 'बुढानिलकण्ठ', 27, 3),
(323, 62, 'Chandragiri', 'चन्द्रागिरि', 27, 3),
(324, 74, 'Daxinkaali', 'दक्षिणकाली', 27, 3),
(325, 108, 'Gokarneshwor', 'गोकर्णेश्वर', 27, 3),
(326, 763, 'Kagashwori', 'कागेश्वरी', 27, 3),
(327, 133, 'Kageshwori Manohara', 'कागेश्वरी मनोहरा', 27, 3),
(328, 146, 'Kathmandu', 'काठमाडौं ।', 27, 3),
(329, 152, 'Kirtipur', 'कीर्तिपुर', 27, 3),
(330, 200, 'Nagarjun', 'नागार्जुन', 27, 3),
(331, 257, 'Shankharapur', 'शंखरापुर', 27, 3),
(332, 279, 'Tarakeshor', 'तारकेश्वर', 27, 3),
(333, 286, 'Tokha', 'टोखा', 27, 3),
(334, 13, 'Banepa', 'बनेपा', 28, 3),
(335, 465, 'Bethanchok', 'बेथानचोक', 28, 3),
(336, 463, 'Bhumlu', 'भुम्लु', 28, 3),
(337, 462, 'Chaunri Deurali', 'चौंरी देउराली', 28, 3),
(338, 86, 'Dhulikhel', 'धुलिखेल', 28, 3),
(339, 466, 'Khanikhola', 'खानीखोला', 28, 3),
(340, 464, 'Mahabharat', 'महाभारत', 28, 3),
(341, 185, 'Mandandeupur', 'मण्डनदेउपुर', 28, 3),
(342, 202, 'Namobuddha', 'नमोबुद्ध', 28, 3),
(343, 212, 'Panchkhal', 'पाँचखाल', 28, 3),
(344, 219, 'Paunauti', 'पौनौती', 28, 3),
(345, 460, 'Roshi', 'रोशी', 28, 3),
(346, 461, 'Temal', 'तेमल', 28, 3),
(347, 467, 'Bagmati', 'बागमती', 29, 3),
(348, 106, 'Godawari', 'गोदावरी', 29, 3),
(349, 468, 'Konjyosom', 'कोन्ज्योसोम', 29, 3),
(350, 162, 'Lalitpur', 'ललितपुर', 29, 3),
(351, 180, 'Mahalaxmi', 'महालक्ष्मी', 29, 3),
(352, 469, 'Mahankal', 'महांकाल', 29, 3),
(353, 472, 'Bagmati', 'बागमती', 30, 3),
(354, 470, 'Bakaiya', 'बकैया', 30, 3),
(355, 476, 'Bhimphedi', 'भीमफेदी', 30, 3),
(356, 120, 'Hetauda', 'हेटौंडा', 30, 3),
(357, 477, 'Indrasarowar', 'इन्द्रसरोवर', 30, 3),
(358, 475, 'Kailash', 'कैलाश', 30, 3),
(359, 474, 'Makawanpurgadhi', 'मकवानपुरगढी', 30, 3),
(360, 471, 'Manhari', 'मनहरी', 30, 3),
(361, 473, 'Raksirang', 'रक्सिराङ', 30, 3),
(362, 280, 'Thaha', 'थाहा', 30, 3),
(363, 28, 'Belkotgadhi', 'बेलकोटगढी', 31, 3),
(364, 46, 'Bidur', 'बिदुर', 31, 3),
(365, 479, 'Dupcheshwar', 'दुप्चेश्वर', 31, 3),
(366, 478, 'Kakani', 'ककनी', 31, 3),
(367, 486, 'Kispang', 'किस्पाङ', 31, 3),
(368, 482, 'Likhu', 'लिखु', 31, 3),
(369, 487, 'Myagang', 'म्यागाङ', 31, 3),
(370, 484, 'Panchakanya', 'पञ्चकन्या', 31, 3),
(371, 480, 'Shivapuri', 'शिवपुरी', 31, 3),
(372, 483, 'Suryagadhi', 'सुर्यगढी', 31, 3),
(373, 481, 'Tadi', 'ताडी', 31, 3),
(374, 485, 'Tarkeshwar', 'तारकेश्वर', 31, 3),
(375, 490, 'Doramba', 'दोरम्बा', 32, 3),
(376, 491, 'Gokulganga', 'गोकुलगंगा', 32, 3),
(377, 488, 'Khandadevi', 'खाण्डादेवी', 32, 3),
(378, 489, 'Likhu Tamakoshi', 'लिखु तामाकोशी', 32, 3),
(379, 187, 'Manthali', 'मन्थली', 32, 3),
(380, 236, 'Ramechhap', 'रामेछाप', 32, 3),
(381, 492, 'Sunapati', 'सुनापति', 32, 3),
(382, 493, 'Umakunda', 'उमाकुण्ड', 32, 3),
(383, 498, 'Aamachodingmo', 'आमचोडिङ्मो', 33, 3),
(384, 497, 'Gosaikund', 'गोसाइकुण्ड', 33, 3),
(385, 495, 'Kalika', 'कालिका', 33, 3),
(386, 494, 'Naukunda', 'नौकुण्ड', 33, 3),
(387, 496, 'Uttargaya', 'उत्तरगया', 33, 3),
(388, 90, 'Dudhauli', 'दुधौली', 34, 3),
(389, 505, 'Ghyanglekh', 'ग्याङ्लेख', 34, 3),
(390, 503, 'Golanjor', 'गोलन्जोर', 34, 3),
(391, 501, 'Hariharpurgadhi', 'हरिहरपुरगढी', 34, 3),
(392, 138, 'Kamalamai', 'कमलामाई', 34, 3),
(393, 500, 'Marin', 'मारिन', 34, 3),
(394, 504, 'Phikkal', 'फिक्कल', 34, 3),
(395, 502, 'Sunkoshi', 'सुनकोशी', 34, 3),
(396, 499, 'Tinpatan', 'तिनपाटन', 34, 3),
(397, 509, 'Balephi', 'बलेफी', 35, 3),
(398, 22, 'Barhabise', 'बाह्रबिसे', 35, 3),
(399, 511, 'Bhotekoshi', 'भोटेकोशी', 35, 3),
(400, 68, 'Chautara Sangachowkgadhi', 'चौतारा साँगाचोकगढी', 35, 3),
(401, 510, 'Helambu', 'हेलम्बु', 35, 3),
(402, 506, 'Indrawati', 'इन्द्रावती', 35, 3),
(403, 508, 'Jugal', 'जुगल', 35, 3),
(404, 513, 'Lisankhu Pakhar', 'लिसांखु पाखर', 35, 3),
(405, 191, 'Melamchi', 'मेलम्ची', 35, 3),
(406, 507, 'Panchpokhari Thangpal', 'पाँचपोखरी थाङ्पाल', 35, 3),
(407, 512, 'Sunkoshi', 'सुनकोशी', 35, 3),
(408, 515, 'Badigad', 'बडिगाड', 36, 4),
(409, 8, 'Baglung', 'बाग्लुङ', 36, 4),
(410, 518, 'Bareng', 'बरेङ', 36, 4),
(411, 85, 'Dhorpatan', 'ढोरपाटन', 36, 4),
(412, 95, 'Galkot', 'गलकोट', 36, 4),
(413, 126, 'Jaimini', 'जैमिनी', 36, 4),
(414, 516, 'Kathekhola', 'काठेखोला', 36, 4),
(415, 517, 'Nisikhola', 'निसिखोला', 36, 4),
(416, 520, 'Tamankhola', 'तमखोला', 36, 4),
(417, 519, 'Tarakhola', 'ताराखोला', 36, 4),
(418, 523, 'Aarughat', 'आरुघाट', 37, 4),
(419, 527, 'Ajirkot', 'अजिरकोट', 37, 4),
(420, 522, 'Barpak Sulikot', 'बारपाक सुलिकोट', 37, 4),
(421, 526, 'Bhimsen Thapa', 'भीमसेन थापा', 37, 4),
(422, 529, 'Chum Nubri', 'चुम नुब्री', 37, 4),
(423, 528, 'Dharche', 'धार्चे', 37, 4),
(424, 525, 'Gandaki', 'गण्डकी', 37, 4),
(425, 110, 'Gorkha', 'गोरखा', 37, 4),
(426, 209, 'Palungtar', 'पालुङटार', 37, 4),
(427, 521, 'Shahid Lakhan', 'शाहिद लखन', 37, 4),
(428, 524, 'Siranchok', 'सिरञ्चोक', 37, 4),
(429, 530, 'Annapurna', 'अन्नपूर्ण', 38, 4),
(430, 531, 'Machhapuchhre', 'माछापुच्छ्रे', 38, 4),
(431, 532, 'Madi', 'माडी', 38, 4),
(432, 224, 'Pokhara', 'पोखरा', 38, 4),
(433, 533, 'Rupa', 'रुपा', 38, 4),
(434, 764, ' Besisahar', 'बेसीशहर', 39, 4),
(435, 768, ' Dordi', 'दोर्दी', 39, 4),
(436, 769, ' Kohlasothar', 'कोहलासोथर', 39, 4),
(437, 766, ' Madhyanepal', 'मध्यनेपाल', 39, 4),
(438, 767, ' Marsyangdi', 'मर्स्याङ्दी', 39, 4),
(439, 765, ' Rainas', 'रैनास', 39, 4),
(440, 30, 'Besishahar', 'बेशीशहर', 39, 4),
(441, 535, 'Dordi', 'दोर्दी', 39, 4),
(442, 536, 'Dudhpokhari', 'दूधपोखरी', 39, 4),
(443, 537, 'Kwaholasothar', 'क्वाहोलासोथर', 39, 4),
(444, 171, 'Madhya Nepal', 'मध्य नेपाल', 39, 4),
(445, 534, 'Marsyangdi', 'मर्स्याङ्दी', 39, 4),
(446, 230, 'Rainas', 'रैनास', 39, 4),
(447, 272, 'Sundarbazar', 'सुन्दरबजार', 39, 4),
(448, 540, 'Chame', 'चामे', 40, 4),
(449, 538, 'Manang Disyang', 'मनाङ दिस्याङ', 40, 4),
(450, 541, 'Narpa Bhumi', 'नरपा भूमि', 40, 4),
(451, 539, 'Nason', 'नासन', 40, 4),
(452, 544, 'Baragung Muktichhetra', 'बारागुङ मुक्तिक्षेत्र', 41, 4),
(453, 542, 'Gharpajhong', 'घरपाझोङ', 41, 4),
(454, 546, 'Lo-Thekar Damodarkunda', 'लो-थेकर दामोदरकुण्ड', 41, 4),
(455, 545, 'Lomanthang', 'लोमान्थाङ', 41, 4),
(456, 543, 'Thasang', 'थासाङ', 41, 4),
(457, 551, 'Annapurna', 'अन्नपूर्ण', 42, 4),
(458, 29, 'Beni', 'बेनी', 42, 4),
(459, 550, 'Dhaulagiri', 'धौलागिरी', 42, 4),
(460, 547, 'Malika', 'मलिका', 42, 4),
(461, 548, 'Mangala', 'मंगला', 42, 4),
(462, 549, 'Raghuganga', 'रघुगंगा', 42, 4),
(463, 555, 'Baudikali', 'बौदिकाली', 43, 4),
(464, 553, 'Binayi Triveni', 'विनय त्रिवेणी', 43, 4),
(465, 554, 'Bulingtar', 'बुलिङटार', 43, 4),
(466, 76, 'Devchuli', 'देवचुली', 43, 4),
(467, 94, 'Gaindakot', 'गैँडाकोट', 43, 4),
(468, 552, 'Hupsekot', 'हुप्सेकोट', 43, 4),
(469, 147, 'Kawasoti', 'कावासोती', 43, 4),
(470, 172, 'Madhyabindu', 'मध्यविन्दु', 43, 4),
(471, 559, 'Bihadi', 'बिहादी', 44, 4),
(472, 556, 'Jaljala', 'जलजला', 44, 4),
(473, 158, 'Kushma', 'कुश्मा', 44, 4),
(474, 560, 'Mahashila', 'महाशिला', 44, 4),
(475, 557, 'Modi', 'मोदी', 44, 4),
(476, 558, 'Painyu', 'पाइन्यु', 44, 4),
(477, 220, 'Phalewas', 'फलेवास', 44, 4),
(478, 564, 'Aandhikhola', 'आँधीखोला', 45, 4),
(479, 565, 'Arjun Chaupari', 'अर्जुन चौपारी', 45, 4),
(480, 38, 'Bheerkot', 'भेरकोट', 45, 4),
(481, 562, 'Biruwa', 'बिरुवा', 45, 4),
(482, 65, 'Chapakot', 'चापाकोट', 45, 4),
(483, 96, 'Galyang', 'गल्याङ', 45, 4),
(484, 563, 'Harinas', 'हरिनास', 45, 4),
(485, 561, 'Kaligandaki', 'कालीगण्डकी', 45, 4),
(486, 566, 'Phedikhola', 'फेदीखोला', 45, 4),
(487, 228, 'Putalibaazar', 'पुतलीबजार', 45, 4),
(488, 293, 'Waling', 'वालिङ', 45, 4),
(489, 569, 'Aanbu Khaireni', 'आन्बु खैरेनी', 46, 4),
(490, 570, 'Bandipur', 'बन्दीपुर', 46, 4),
(491, 35, 'Bhanu', 'भानु', 46, 4),
(492, 41, 'Bhimad', 'भीमद', 46, 4),
(493, 572, 'Devghat', 'देवघाट', 46, 4),
(494, 571, 'Ghiring', 'घिरिङ', 46, 4),
(495, 568, 'Myagde', 'म्याग्दे', 46, 4),
(496, 567, 'Rishing', 'रिसिङ', 46, 4),
(497, 261, 'Shuklagandaki', 'शुक्लागण्डकी', 46, 4),
(498, 292, 'Vyas', 'व्यास', 46, 4),
(499, 44, 'Bhumikasthan', 'भूमिकास्थान', 47, 5),
(500, 575, 'Chhatradev', 'छत्रदेव', 47, 5),
(501, 573, 'Malarani', 'मलारानी', 47, 5),
(502, 574, 'Pandini', 'पाण्डिनी', 47, 5),
(503, 249, 'Sandhikharka', 'सन्धिखर्क', 47, 5),
(504, 267, 'Sitganga', 'सितगंगा', 47, 5),
(505, 577, 'Baijnath', 'बैजनाथ', 48, 5),
(506, 580, 'Duduwa', 'डुडुवा', 48, 5),
(507, 579, 'Janaki', 'जानकी', 48, 5),
(508, 578, 'Khajura', 'खजुरा', 48, 5),
(509, 153, 'Kohalpur', 'कोहलपुर', 48, 5),
(510, 581, 'Narainapur', 'नरैनापुर', 48, 5),
(511, 204, 'Nepalgunj', 'नेपालगन्ज', 48, 5),
(512, 576, 'Raptisonari', 'राप्तिसोनारी', 48, 5),
(513, 582, 'Badhaiyatal', 'बढैयाताल', 49, 5),
(514, 16, 'Bansgadhi', 'बाँसगढी', 49, 5),
(515, 19, 'Barbardiya', 'बारबर्दिया', 49, 5),
(516, 583, 'Geruwa', 'गेरुवा', 49, 5),
(517, 112, 'Gulariya', 'गुलरिया', 49, 5),
(518, 170, 'Madhuwan', 'मधुवन', 49, 5),
(519, 231, 'Rajapur', 'राजापुर', 49, 5),
(520, 281, 'Thakurbaba', 'ठाकुरबाबा', 49, 5),
(521, 586, 'Babai', 'बबई', 50, 5),
(522, 589, 'Banglachuli', 'बंगलाचुली', 50, 5),
(523, 590, 'Dangisharan', 'दंगिशरण', 50, 5),
(524, 585, 'Gadhawa', 'गढवा', 50, 5),
(525, 104, 'Ghorahi', 'घोराही', 50, 5),
(526, 163, 'Lamahi', 'लमही', 50, 5),
(527, 588, 'Rajpur', 'राजपुर', 50, 5),
(528, 584, 'Rapti', 'राप्ती', 50, 5),
(529, 587, 'Shantinagar', 'शान्तिनगर', 50, 5),
(530, 290, 'Tulsipur', 'तुलसीपुर', 50, 5),
(531, 633, 'Bhume', 'भुमे', 51, 5),
(532, 634, 'Putha Uttarganga', 'पुथा उत्तरगंगा', 51, 5),
(533, 635, 'Sisne', 'सिस्ने', 51, 5),
(534, 595, 'Chandrakot', 'चन्द्रकोट', 52, 5),
(535, 597, 'Chhatrakot', 'छत्रकोट', 52, 5),
(536, 592, 'Dhurkot', 'धुर्कोट', 52, 5),
(537, 593, 'Gulmi Durbar', 'गुल्मी दरबार', 52, 5),
(538, 598, 'Isma', 'इस्मा', 52, 5),
(539, 599, 'Kaligandaki', 'कालीगण्डकी', 52, 5),
(540, 594, 'Madane', 'मदने', 52, 5),
(541, 596, 'Malika', 'मलिका', 52, 5),
(542, 196, 'Musikot', 'मुसिकोट', 52, 5),
(543, 245, 'Resunga', 'रेसुंगा', 52, 5),
(544, 600, 'Ruru', 'रुरु', 52, 5),
(545, 591, 'Satyawati', 'सत्यवती', 52, 5),
(546, 15, 'Banganga', 'बाणगंगा', 53, 5),
(547, 604, 'Bijaynagar', 'विजयनगर', 53, 5),
(548, 53, 'Buddhabhumi', 'बुद्धभूमि', 53, 5),
(549, 142, 'Kapilvastu', 'कपिलवस्तु', 53, 5),
(550, 155, 'Krishnanagar', 'कृष्णनगर', 53, 5),
(551, 181, 'Maharajgunj', 'महाराजगन्ज', 53, 5),
(552, 601, 'Mayadevi', 'मायादेवी', 53, 5),
(553, 260, 'Shivaraj', 'शिवराज', 53, 5),
(554, 602, 'Shuddhodhan', 'शुद्धोधन', 53, 5),
(555, 603, 'Yasodhara', 'यशोधरा', 53, 5),
(556, 612, 'Bagnaskali', 'बागनास्कली', 54, 5),
(557, 610, 'Mathagadhi', 'मठगढी', 54, 5),
(558, 611, 'Nisdi', 'निस्दी', 54, 5),
(559, 614, 'Purbakhola', 'पूर्वखोला', 54, 5),
(560, 609, 'Rainadevi Chhahara', 'रैनादेवी छहरा', 54, 5),
(561, 613, 'Rambha', 'रम्भा', 54, 5),
(562, 239, 'Rampur', 'रामपुर', 54, 5),
(563, 616, 'Ribdikot', 'रिब्दीकोट', 54, 5),
(564, 278, 'Tansen', 'तानसेन', 54, 5),
(565, 615, 'Tinau', 'तिनाउ', 54, 5),
(566, 20, 'Bardghat', 'बर्दघाट', 55, 5),
(567, 608, 'Palhi Nandan', 'पाल्ही नन्दन', 55, 5),
(568, 606, 'Pratappur', 'प्रतापपुर', 55, 5),
(569, 238, 'Ramgram', 'रामग्राम', 55, 5),
(570, 607, 'Sarawal', 'सरवल', 55, 5),
(571, 273, 'Sunwal', 'सुनवल', 55, 5),
(572, 605, 'Triveni Susta', 'त्रिवेणी सुस्ता', 55, 5),
(573, 620, 'Airawati', 'ऐरावती', 56, 5),
(574, 619, 'Gaumukhi', 'गौमुखी', 56, 5),
(575, 618, 'Jhimaruk', 'झिमरुक', 56, 5),
(576, 622, 'Mallarani', 'मल्लरानी', 56, 5),
(577, 623, 'Mandavi', 'मांडवी', 56, 5),
(578, 617, 'Naubahini', 'नौबहिनी', 56, 5),
(579, 229, 'Pyuthan', 'प्युठान', 56, 5),
(580, 621, 'Sarumarani', 'सरूमरानी', 56, 5),
(581, 277, 'Swargadwari', 'स्वर्गद्वारी', 56, 5),
(582, 629, 'Gangadev', 'गंगादेव', 57, 5),
(583, 626, 'Lungri', 'लुङ्गरी', 57, 5),
(584, 630, 'Madi', 'माडी', 57, 5),
(585, 628, 'Paribartan', 'परिवर्तन', 57, 5),
(586, 246, 'Ropla', 'रोपला', 57, 5),
(587, 625, 'Runtigadhi', 'रुन्टीगढी', 57, 5),
(588, 631, 'Sunchhahari', 'सुनछहरी', 57, 5),
(589, 624, 'Sunil Smriti', 'सुनिल स्मृति', 57, 5),
(590, 632, 'Thawang', 'थवाङ', 57, 5),
(591, 627, 'Triveni', 'त्रिवेणी', 57, 5),
(592, 58, 'Butwal', 'बुटवल', 58, 5),
(593, 77, 'Devdaha', 'देवदह', 58, 5),
(594, 636, 'Gaidhawa', 'गैधवा', 58, 5),
(595, 645, 'Kanchan', 'कञ्चन', 58, 5),
(596, 638, 'Kotahimai', 'कोटाहिमाई', 58, 5),
(597, 168, 'Lumbini Sanskritik', 'लुम्बिनी संस्कृत', 58, 5),
(598, 639, 'Marchawarimai', 'मार्चवारीमाई', 58, 5),
(599, 637, 'Mayadevi', 'मायादेवी', 58, 5),
(600, 644, 'Om Satiya', 'ओम सतिया', 58, 5),
(601, 642, 'Rohini', 'रोहिणी', 58, 5),
(602, 248, 'Sainamaina', 'सैनामैना', 58, 5),
(603, 641, 'Sammarimai', 'समरीमाई', 58, 5),
(604, 643, 'Shuddhodhan', 'शुद्धोधन', 58, 5),
(605, 263, 'Siddharthanagar', 'सिद्धार्थनगर', 58, 5),
(606, 640, 'Siyari', 'सियारी', 58, 5),
(607, 285, 'Tilottama', 'तिलोत्तमा', 58, 5),
(608, 2, 'Aathabis', 'आठबिस', 59, 6),
(609, 651, 'Bhagawatimai', 'भगवतीमाई', 59, 6),
(610, 647, 'Bhairabi', 'भैरवी', 59, 6),
(611, 60, 'Chamunda Bindrasaini', 'चामुण्डा बिन्द्रसैनी', 59, 6),
(612, 92, 'Dullu', 'दुल्लु', 59, 6),
(613, 652, 'Dungeshwar', 'डुङ्गेश्वर', 59, 6),
(614, 646, 'Gurans', 'गुराँस', 59, 6),
(615, 649, 'Mahabu', 'महाबु', 59, 6),
(616, 203, 'Narayan', 'नारायण', 59, 6),
(617, 648, 'Naumule', 'नौमुले', 59, 6),
(618, 650, 'Thantikandh', 'ठान्टिकाण्ड', 59, 6),
(619, 658, 'Chharka Tangsong', 'छर्का ताङसोङ', 60, 6),
(620, 657, 'Dolpo Buddha', 'डोल्पो बुद्ध', 60, 6),
(621, 656, 'Jagadulla', 'जगदुल्ला', 60, 6),
(622, 654, 'Kaike', 'काइके', 60, 6),
(623, 653, 'Mudkechula', 'मुड्केचुला', 60, 6),
(624, 655, 'She Phoksundo', 'उनी फोक्सुण्डो', 60, 6),
(625, 282, 'Thuli Bheri', 'ठुली भेरी', 60, 6),
(626, 288, 'Tripura Sundari', 'त्रिपुरा सुन्दरी', 60, 6),
(627, 661, 'Adanchuli', 'अडांचुली', 61, 6),
(628, 664, 'Chankheli', 'चनखेली', 61, 6),
(629, 662, 'Kharpunath', 'खार्पुनाथ', 61, 6),
(630, 665, 'Namkha', 'नम्खा', 61, 6),
(631, 660, 'Sarkegad', 'सार्केगड', 61, 6),
(632, 659, 'Simkot', 'सिमकोट', 61, 6),
(633, 663, 'Tanjakot', 'तान्जाकोट', 61, 6),
(634, 668, 'Barekot', 'बारेकोट', 62, 6),
(635, 39, 'Bheri', 'भेरी', 62, 6),
(636, 70, 'Chhedagad', 'छेडागढ', 62, 6),
(637, 666, 'Junichande', 'जुनिचन्दे', 62, 6),
(638, 667, 'Kuse', 'कुसे', 62, 6),
(639, 201, 'Nalgad', 'नलगास', 62, 6),
(640, 669, 'Shivalaya', 'शिवालय', 62, 6),
(641, 61, 'Chandannath', 'चन्दननाथ', 63, 6),
(642, 676, 'Guthichaur', 'गुठीचौर', 63, 6),
(643, 675, 'Hima', 'हिमा', 63, 6),
(644, 673, 'Kanaka Sundari', 'कनक सुन्दरी', 63, 6),
(645, 671, 'Patarasi', 'पटरासी', 63, 6),
(646, 674, 'Sinja', 'सिन्जा', 63, 6),
(647, 670, 'Tatopani', 'तातोपानी', 63, 6),
(648, 672, 'Tila', 'तिला', 63, 6),
(649, 150, 'Khandachakra', 'खंडचक्र', 64, 6),
(650, 682, 'Mahawai', 'महावाई', 64, 6),
(651, 677, 'Narharinath', 'नरहरिनाथ', 64, 6),
(652, 681, 'Pachaljharana', 'पाँचलझरना', 64, 6),
(653, 678, 'Palata', 'पलाता', 64, 6),
(654, 242, 'Raskot', 'रास्कोट', 64, 6),
(655, 680, 'Sanni Triveni', 'सन्नी त्रिवेणी', 64, 6),
(656, 679, 'Shubha Kalika', 'शुभ कालिका', 64, 6),
(657, 284, 'Tilagufa', 'तिलागुफा', 64, 6),
(658, 69, 'Chhayanath Rara', 'छायानाथ रारा', 65, 6),
(659, 683, 'Khatyad', 'खत्याड', 65, 6),
(660, 685, 'Mugum Karmarong', 'मुगुम कर्मारोङ', 65, 6),
(661, 684, 'Soru', 'सोरु', 65, 6),
(662, 7, 'Bagchaur', 'बागचौर', 66, 6),
(663, 14, 'Bangad Kupinde', 'बांगद कुपिन्दे', 66, 6),
(664, 691, 'Chhatreshwari', 'छत्रेश्वरी', 66, 6),
(665, 692, 'Darma', 'डार्मा', 66, 6),
(666, 690, 'Kalimati', 'कालीमाटी', 66, 6),
(667, 693, 'Kapurkot', 'कपुरकोट', 66, 6),
(668, 689, 'Kumakh', 'कुमाख', 66, 6),
(669, 252, 'Shaarda', 'शारदा', 66, 6),
(670, 695, 'Siddha Kumakh', 'सिद्ध कुमाख', 66, 6),
(671, 696, 'Barahatal', 'बाराहतल', 67, 6),
(672, 40, 'Bheriganga', 'भेरीगंगा', 67, 6),
(673, 48, 'Birendranagar', 'वीरेन्द्रनगर', 67, 6),
(674, 698, 'Chaukune', 'चौकुने', 67, 6),
(675, 699, 'Chingad', 'चिंगाड', 67, 6),
(676, 113, 'Gurbhakot', 'गुर्भाकोट', 67, 6),
(677, 165, 'Lekbeshi', 'लेकबेशी', 67, 6),
(678, 211, 'Panchapuri', 'पञ्चपुरी', 67, 6),
(679, 697, 'Simta', 'सिम्ता', 67, 6),
(680, 3, 'Aathbiskot', 'आठबिसकोट', 68, 6),
(681, 688, 'Banphikot', 'बनफीकोट', 68, 6),
(682, 67, 'Chaurjahari', 'चौरजहारी', 68, 6),
(683, 197, 'Musikot', 'मुसिकोट', 68, 6),
(684, 686, 'Sani Bheri', 'सानी भेरी', 68, 6),
(685, 705, 'Bannigadi Jayagad', 'बान्निगढी जयगड', 69, 7),
(686, 701, 'Chaurpati', 'चौरपाटी', 69, 7),
(687, 704, 'Dhankari', 'धनकारी', 69, 7),
(688, 139, 'Kamalbazar', 'कमलबजार', 69, 7),
(689, 186, 'Mangalsen', 'मंगलसेन', 69, 7),
(690, 703, 'Mellekh', 'मेल्लेख', 69, 7),
(691, 210, 'Panchadewal Binayak', 'पञ्चदेवल विनायक', 69, 7),
(692, 700, 'Ramaroshan', 'रामरोशन', 69, 7),
(693, 250, 'Saphebagar', 'साफेबगर', 69, 7),
(694, 702, 'Turmakhand', 'तुर्मखण्ड', 69, 7),
(695, 73, 'Dasharath Chand', 'दशरथ चन्द', 70, 7),
(696, 786, 'Dasharathchand', 'दशरथचन्द', 70, 7),
(697, 707, 'Dilashaini', 'डिलाशैनी', 70, 7),
(698, 706, 'Dogdakedar', 'डगडाकेदार', 70, 7),
(699, 192, 'Melauli', 'मेलौली', 70, 7),
(700, 709, 'Pancheshwar', 'पञ्चेश्वर', 70, 7),
(701, 217, 'Patan', 'पाटन', 70, 7),
(702, 785, 'Purchaudi', 'पुर्चौडी', 70, 7),
(703, 227, 'Purchaundi', 'पुर्चौंडी', 70, 7),
(704, 711, 'Shivanath', 'शिवनाथ', 70, 7),
(705, 708, 'Sigas', 'सिगास', 70, 7),
(706, 710, 'Surnaya', 'सुर्नाया', 70, 7),
(707, 714, 'Bitthadchir', 'बिठ्ठडचिर', 71, 7),
(708, 57, 'Bungal', 'बुंगल', 71, 7),
(709, 715, 'Chhabis Pathibhera', 'छबिस पाथीभेरा', 71, 7),
(710, 716, 'Chhanna', 'छन्ना', 71, 7),
(711, 718, 'Durgathali', 'दुर्गाथली', 71, 7),
(712, 129, 'Jaya Prithvi', 'जय पृथ्वी', 71, 7),
(713, 712, 'Kedarsyu', 'केदारस्यु', 71, 7),
(714, 717, 'Masta', 'मस्त', 71, 7),
(715, 721, 'Saipal', 'साइपाल', 71, 7),
(716, 720, 'Surma', 'सुर्मा', 71, 7),
(717, 719, 'Talkot', 'तालकोट', 71, 7),
(718, 713, 'Thalara', 'थालारा', 71, 7),
(719, 6, 'Badimalika', 'बडिमालिका', 72, 7),
(720, 55, 'Budhiganga', 'बुढीगंगा', 72, 7),
(721, 56, 'Budhinanda', 'बुढीनन्द', 72, 7),
(722, 726, 'Gaumul', 'गौमुल', 72, 7),
(723, 725, 'Himali', 'हिमाली', 72, 7),
(724, 724, 'Jagannath', 'जगन्नाथ', 72, 7),
(725, 722, 'Khaptad Chhededaha', 'खप्तड छेडेदह', 72, 7),
(726, 723, 'Swami Kartik Khapar', 'स्वामी कार्तिक खापर', 72, 7),
(727, 287, 'Tribeni', 'त्रिवेणी', 72, 7),
(728, 728, 'Aalitaal', 'आलिताल', 73, 7),
(729, 1, 'Aamargadhi', 'अमरगढी', 73, 7),
(730, 731, 'Ajaymeru', 'अजयमेरु', 73, 7),
(731, 730, 'Bhageshwar', 'भागेश्वर', 73, 7),
(732, 729, 'Ganyapadhura', 'गन्यापधुरा', 73, 7),
(733, 727, 'Navadurga', 'नवदुर्गा', 73, 7),
(734, 214, 'Parashuram', 'परशुराम', 73, 7),
(735, 788, 'Parshuram', 'परशुराम', 73, 7),
(736, 738, 'Api Himal', 'अपि हिमाल', 74, 7),
(737, 736, 'Duhu', 'दुहु', 74, 7),
(738, 735, 'Lekam', 'लेकम', 74, 7),
(739, 177, 'Mahakali', 'महाकाली', 74, 7),
(740, 733, 'Malikarjun', 'मलिकार्जुन', 74, 7),
(741, 734, 'Marma', 'मर्मा', 74, 7),
(742, 732, 'Naugad', 'नौगाड', 74, 7),
(743, 255, 'Shailyashikhar', 'शैल्यशिखर', 74, 7),
(744, 739, 'Aadarsha', 'आदर्श', 75, 7),
(745, 745, 'Badikedar', 'बडीकेदार', 75, 7),
(746, 744, 'Bogatan', 'बोगाटन', 75, 7),
(747, 89, 'Dipayal Silgadhi', 'दिपायल सिलगढी', 75, 7),
(748, 742, 'Jorayal', 'जोरयाल', 75, 7),
(749, 741, 'K.I. Singh', 'K.I सिंह', 75, 7),
(750, 740, 'Purbichauki', 'पूर्वचौकी', 75, 7),
(751, 743, 'Sayal', 'सायल', 75, 7),
(752, 258, 'Shikhar', 'शिखर', 75, 7),
(753, 749, 'Bargagoriya', 'बर्गागोरिया', 76, 7),
(754, 32, 'Bhajani', 'भजनी', 76, 7),
(755, 751, 'Chure', 'चुरे', 76, 7),
(756, 79, 'Dhangadhi', 'धनगढी', 76, 7),
(757, 101, 'Gauriganga', 'गौरीगंगा', 76, 7),
(758, 103, 'Ghodaghodi', 'घोडाघोडी', 76, 7),
(759, 761, 'Godawari', 'गोदावरी', 76, 7),
(760, 107, 'Godawari, Seti', 'गोदावरी, सेती', 76, 7),
(761, 746, 'Janaki', 'जानकी', 76, 7),
(762, 748, 'Joshipur', 'जोशीपुर', 76, 7),
(763, 747, 'Kailari', 'कैलारी', 76, 7),
(764, 164, 'Lamki Chuha', 'लम्की चुहा', 76, 7),
(765, 750, 'Mohanyal', 'मोहन्याल', 76, 7),
(766, 283, 'Tikapur', 'टीकापुर', 76, 7),
(767, 24, 'Bedkot', 'बेदकोट', 77, 7),
(768, 26, 'Belauri', 'बेलौरी', 77, 7),
(769, 753, 'Beldandi', 'बेलडाँडी', 77, 7),
(770, 37, 'Bheemdatta', 'भीमदत्त', 77, 7),
(771, 156, 'Krishnapur', 'कृष्णपुर', 77, 7),
(772, 752, 'Laljhadi', 'लालझाडी', 77, 7),
(773, 178, 'Mahakali', 'महाकाली', 77, 7),
(774, 226, 'Punarbas', 'पुनर्वास', 77, 7),
(775, 262, 'Shuklaphanta', 'शुक्लाफाँटा', 77, 7);

-- --------------------------------------------------------

--
-- Table structure for table `nepallocation_states`
--

CREATE TABLE `nepallocation_states` (
  `id` bigint(20) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nepallocation_states`
--

INSERT INTO `nepallocation_states` (`id`, `province_id`, `name`, `alt_name`) VALUES
(1, 1, 'Province No. 1', 'प्रदेश नं. १'),
(2, 2, 'Madhesh Province', 'मधेस प्रदेश'),
(3, 3, 'Bagmati Province', 'बागमती प्रदेश'),
(4, 4, 'Gandaki Province', 'गण्डकी प्रदेश'),
(5, 5, 'Lumbini Province', 'लुम्बिनी प्रदेश'),
(6, 6, 'Karnali Province', 'कर्णाली प्रदेश'),
(7, 7, 'Sudurpashchim Province', 'सुदूरपश्चिम प्रदेश'),
(8, 8, 'kathmandu valley', 'काठमाडौं उपत्यका');

-- --------------------------------------------------------

--
-- Table structure for table `payment_districts`
--

CREATE TABLE `payment_districts` (
  `id` bigint(20) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) NOT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_municipality`
--

CREATE TABLE `payment_municipality` (
  `id` bigint(20) NOT NULL,
  `municipality_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_states`
--

CREATE TABLE `payment_states` (
  `id` bigint(20) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alt_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_customuser`
--
ALTER TABLE `account_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_email_a15d8618_uniq` (`email`);

--
-- Indexes for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_groups_customuser_id_group_id_7e51db7b_uniq` (`customuser_id`,`group_id`),
  ADD KEY `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_user__customuser_id_permission_650e378f_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `account_customuser_u_permission_id_f4aec423_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `account_teammember`
--
ALTER TABLE `account_teammember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_teammember_admin_id_97114694_fk_account_customuser_id` (`admin_id`);

--
-- Indexes for table `admin_applicationform`
--
ALTER TABLE `admin_applicationform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_applicationform_user_id_424606b2_fk_account_customuser_id` (`user_id`),
  ADD KEY `Admin_applicationfor_get_user_application_efd2fbdd_fk_Admin_use` (`get_user_application_detail_id`),
  ADD KEY `Admin_applicationfor_in_central_approved__40c3d933_fk_account_c` (`in_central_approved_by_id`),
  ADD KEY `Admin_applicationfor_in_district_approved_6428302c_fk_account_c` (`in_district_approved_by_id`),
  ADD KEY `Admin_applicationfor_in_state_approved_by_745ab30e_fk_account_c` (`in_state_approved_by_id`);

--
-- Indexes for table `admin_applicationformapproveddetail`
--
ALTER TABLE `admin_applicationformapproveddetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_applicationfor_approved_by_id_579894e0_fk_account_c` (`approved_by_id`),
  ADD KEY `Admin_applicationfor_approved_form_id_86e98420_fk_Admin_app` (`approved_form_id`);

--
-- Indexes for table `admin_applicationformcancelleddetail`
--
ALTER TABLE `admin_applicationformcancelleddetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_applicationfor_cancelled_by_id_3b6f10af_fk_account_c` (`cancelled_by_id`),
  ADD KEY `Admin_applicationfor_cancelled_form_id_bb28e21b_fk_Admin_app` (`cancelled_form_id`);

--
-- Indexes for table `admin_blog`
--
ALTER TABLE `admin_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_businesstype`
--
ALTER TABLE `admin_businesstype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_contactus`
--
ALTER TABLE `admin_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_districts`
--
ALTER TABLE `admin_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_districts_get_state_id_b011b371_fk_Admin_states_id` (`get_state_id`);

--
-- Indexes for table `admin_globalsettings`
--
ALTER TABLE `admin_globalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_homenavigation`
--
ALTER TABLE `admin_homenavigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_homenavigation_parent_id_edbd67a1_fk_Admin_hom` (`parent_id`);

--
-- Indexes for table `admin_navigation`
--
ALTER TABLE `admin_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_navigation_parent_id_f6876827_fk_Admin_navigation_id` (`parent_id`);

--
-- Indexes for table `admin_pagetype`
--
ALTER TABLE `admin_pagetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_recomendationpricecategory`
--
ALTER TABLE `admin_recomendationpricecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_states`
--
ALTER TABLE `admin_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Admin_states_state_code_89b81862_uniq` (`state_code`);

--
-- Indexes for table `admin_team`
--
ALTER TABLE `admin_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_userapplicationdetail`
--
ALTER TABLE `admin_userapplicationdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_userapplicatio_user_id_82dc7053_fk_account_c` (`user_id`);

--
-- Indexes for table `admin_userapplicationpayment`
--
ALTER TABLE `admin_userapplicationpayment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Admin_userapplicatio_get_user_application_a1956442_fk_Admin_use` (`get_user_application_detail_id`),
  ADD KEY `Admin_userapplicatio_user_id_01139629_fk_account_c` (`user_id`),
  ADD KEY `Admin_userapplicatio_user_application_for_409188b4_fk_Admin_app` (`user_application_form_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `axes_accessattempt_username_ip_address_user_agent_8ea22282_uniq` (`username`,`ip_address`,`user_agent`),
  ADD KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  ADD KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  ADD KEY `axes_accessattempt_username_3f2d4ca0` (`username`);

--
-- Indexes for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accessfailurelog_user_agent_ea145dda` (`user_agent`),
  ADD KEY `axes_accessfailurelog_ip_address_2e9f5a7f` (`ip_address`),
  ADD KEY `axes_accessfailurelog_username_a8b7e8a4` (`username`);

--
-- Indexes for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  ADD KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  ADD KEY `axes_accesslog_username_df93064b` (`username`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_account_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `nepallocation_districts`
--
ALTER TABLE `nepallocation_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nepallocation_distri_state_id_32e94e58_fk_nepalloca` (`state_id`);

--
-- Indexes for table `nepallocation_municipality`
--
ALTER TABLE `nepallocation_municipality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nepallocation_munici_district_id_e23c1622_fk_nepalloca` (`district_id`),
  ADD KEY `nepallocation_munici_state_id_0ebd8a4f_fk_nepalloca` (`state_id`);

--
-- Indexes for table `nepallocation_states`
--
ALTER TABLE `nepallocation_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_districts`
--
ALTER TABLE `payment_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_districts_state_id_d5009f36_fk_payment_states_id` (`state_id`);

--
-- Indexes for table `payment_municipality`
--
ALTER TABLE `payment_municipality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_municipality_district_id_9e815074_fk_payment_d` (`district_id`),
  ADD KEY `payment_municipality_state_id_ca8942d7_fk_payment_states_id` (`state_id`);

--
-- Indexes for table `payment_states`
--
ALTER TABLE `payment_states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_customuser`
--
ALTER TABLE `account_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `account_teammember`
--
ALTER TABLE `account_teammember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin_applicationform`
--
ALTER TABLE `admin_applicationform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_applicationformapproveddetail`
--
ALTER TABLE `admin_applicationformapproveddetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `admin_applicationformcancelleddetail`
--
ALTER TABLE `admin_applicationformcancelleddetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_blog`
--
ALTER TABLE `admin_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_businesstype`
--
ALTER TABLE `admin_businesstype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_contactus`
--
ALTER TABLE `admin_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_districts`
--
ALTER TABLE `admin_districts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `admin_globalsettings`
--
ALTER TABLE `admin_globalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_homenavigation`
--
ALTER TABLE `admin_homenavigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_navigation`
--
ALTER TABLE `admin_navigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_pagetype`
--
ALTER TABLE `admin_pagetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_recomendationpricecategory`
--
ALTER TABLE `admin_recomendationpricecategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_states`
--
ALTER TABLE `admin_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `admin_team`
--
ALTER TABLE `admin_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_userapplicationdetail`
--
ALTER TABLE `admin_userapplicationdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_userapplicationpayment`
--
ALTER TABLE `admin_userapplicationpayment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `nepallocation_districts`
--
ALTER TABLE `nepallocation_districts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `nepallocation_municipality`
--
ALTER TABLE `nepallocation_municipality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `nepallocation_states`
--
ALTER TABLE `nepallocation_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_districts`
--
ALTER TABLE `payment_districts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_municipality`
--
ALTER TABLE `payment_municipality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_states`
--
ALTER TABLE `payment_states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD CONSTRAINT `account_customuser_g_customuser_id_b6c60904_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD CONSTRAINT `account_customuser_u_customuser_id_03bcc114_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_u_permission_id_f4aec423_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `account_teammember`
--
ALTER TABLE `account_teammember`
  ADD CONSTRAINT `account_teammember_admin_id_97114694_fk_account_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `admin_applicationform`
--
ALTER TABLE `admin_applicationform`
  ADD CONSTRAINT `Admin_applicationfor_get_user_application_efd2fbdd_fk_Admin_use` FOREIGN KEY (`get_user_application_detail_id`) REFERENCES `admin_userapplicationdetail` (`id`),
  ADD CONSTRAINT `Admin_applicationfor_in_central_approved__40c3d933_fk_account_c` FOREIGN KEY (`in_central_approved_by_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `Admin_applicationfor_in_district_approved_6428302c_fk_account_c` FOREIGN KEY (`in_district_approved_by_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `Admin_applicationfor_in_state_approved_by_745ab30e_fk_account_c` FOREIGN KEY (`in_state_approved_by_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `Admin_applicationform_user_id_424606b2_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `admin_applicationformapproveddetail`
--
ALTER TABLE `admin_applicationformapproveddetail`
  ADD CONSTRAINT `Admin_applicationfor_approved_by_id_579894e0_fk_account_c` FOREIGN KEY (`approved_by_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `Admin_applicationfor_approved_form_id_86e98420_fk_Admin_app` FOREIGN KEY (`approved_form_id`) REFERENCES `admin_applicationform` (`id`);

--
-- Constraints for table `admin_applicationformcancelleddetail`
--
ALTER TABLE `admin_applicationformcancelleddetail`
  ADD CONSTRAINT `Admin_applicationfor_cancelled_by_id_3b6f10af_fk_account_c` FOREIGN KEY (`cancelled_by_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `Admin_applicationfor_cancelled_form_id_bb28e21b_fk_Admin_app` FOREIGN KEY (`cancelled_form_id`) REFERENCES `admin_applicationform` (`id`);

--
-- Constraints for table `admin_districts`
--
ALTER TABLE `admin_districts`
  ADD CONSTRAINT `Admin_districts_get_state_id_b011b371_fk_Admin_states_id` FOREIGN KEY (`get_state_id`) REFERENCES `admin_states` (`id`);

--
-- Constraints for table `admin_homenavigation`
--
ALTER TABLE `admin_homenavigation`
  ADD CONSTRAINT `Admin_homenavigation_parent_id_edbd67a1_fk_Admin_hom` FOREIGN KEY (`parent_id`) REFERENCES `admin_homenavigation` (`id`);

--
-- Constraints for table `admin_navigation`
--
ALTER TABLE `admin_navigation`
  ADD CONSTRAINT `Admin_navigation_parent_id_f6876827_fk_Admin_navigation_id` FOREIGN KEY (`parent_id`) REFERENCES `admin_navigation` (`id`);

--
-- Constraints for table `admin_userapplicationdetail`
--
ALTER TABLE `admin_userapplicationdetail`
  ADD CONSTRAINT `Admin_userapplicatio_user_id_82dc7053_fk_account_c` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `admin_userapplicationpayment`
--
ALTER TABLE `admin_userapplicationpayment`
  ADD CONSTRAINT `Admin_userapplicatio_get_user_application_a1956442_fk_Admin_use` FOREIGN KEY (`get_user_application_detail_id`) REFERENCES `admin_userapplicationdetail` (`id`),
  ADD CONSTRAINT `Admin_userapplicatio_user_application_for_409188b4_fk_Admin_app` FOREIGN KEY (`user_application_form_id`) REFERENCES `admin_applicationform` (`id`),
  ADD CONSTRAINT `Admin_userapplicatio_user_id_01139629_fk_account_c` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `nepallocation_districts`
--
ALTER TABLE `nepallocation_districts`
  ADD CONSTRAINT `nepallocation_distri_state_id_32e94e58_fk_nepalloca` FOREIGN KEY (`state_id`) REFERENCES `nepallocation_states` (`id`);

--
-- Constraints for table `nepallocation_municipality`
--
ALTER TABLE `nepallocation_municipality`
  ADD CONSTRAINT `nepallocation_munici_district_id_e23c1622_fk_nepalloca` FOREIGN KEY (`district_id`) REFERENCES `nepallocation_districts` (`id`),
  ADD CONSTRAINT `nepallocation_munici_state_id_0ebd8a4f_fk_nepalloca` FOREIGN KEY (`state_id`) REFERENCES `nepallocation_states` (`id`);

--
-- Constraints for table `payment_districts`
--
ALTER TABLE `payment_districts`
  ADD CONSTRAINT `payment_districts_state_id_d5009f36_fk_payment_states_id` FOREIGN KEY (`state_id`) REFERENCES `payment_states` (`id`);

--
-- Constraints for table `payment_municipality`
--
ALTER TABLE `payment_municipality`
  ADD CONSTRAINT `payment_municipality_district_id_9e815074_fk_payment_d` FOREIGN KEY (`district_id`) REFERENCES `payment_districts` (`id`),
  ADD CONSTRAINT `payment_municipality_state_id_ca8942d7_fk_payment_states_id` FOREIGN KEY (`state_id`) REFERENCES `payment_states` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
