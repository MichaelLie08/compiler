-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 11:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magang`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_group`
--

CREATE TABLE `access_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `access_detail` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_group`
--

INSERT INTO `access_group` (`id`, `name`, `description`, `access_detail`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'super', NULL, NULL, '2022-09-09 15:21:34', 1, '2022-09-09 15:21:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `access_group_detail`
--

CREATE TABLE `access_group_detail` (
  `id_access_group` int(11) NOT NULL,
  `id_access_master` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_group_detail`
--

INSERT INTO `access_group_detail` (`id_access_group`, `id_access_master`, `priority`) VALUES
(1, 1, NULL),
(1, 2, NULL),
(1, 3, NULL),
(1, 4, NULL),
(1, 5, NULL),
(1, 6, NULL),
(1, 7, NULL),
(1, 8, NULL),
(1, 9, NULL),
(1, 10, NULL),
(1, 11, NULL),
(1, 12, NULL),
(1, 13, NULL),
(1, 14, NULL),
(1, 15, NULL),
(1, 16, NULL),
(1, 17, NULL),
(1, 18, NULL),
(1, 19, NULL),
(1, 20, NULL),
(1, 21, NULL),
(1, 22, NULL),
(1, 23, NULL),
(1, 24, NULL),
(1, 25, NULL),
(1, 26, NULL),
(1, 27, NULL),
(1, 28, NULL),
(1, 29, NULL),
(1, 30, NULL),
(1, 31, NULL),
(1, 32, NULL),
(1, 33, NULL),
(1, 34, NULL),
(1, 35, NULL),
(1, 36, NULL),
(1, 37, NULL),
(1, 38, NULL),
(1, 39, NULL),
(1, 40, NULL),
(1, 41, NULL),
(1, 42, NULL),
(1, 43, NULL),
(1, 44, NULL),
(1, 45, NULL),
(1, 46, NULL),
(1, 47, NULL),
(1, 48, NULL),
(1, 49, NULL),
(1, 50, NULL),
(1, 51, NULL),
(1, 52, NULL),
(1, 53, NULL),
(1, 54, NULL),
(1, 55, NULL),
(1, 56, NULL),
(1, 57, NULL),
(1, 58, NULL),
(1, 59, NULL),
(1, 60, NULL),
(1, 61, NULL),
(1, 62, NULL),
(1, 63, NULL),
(1, 64, NULL),
(1, 65, NULL),
(1, 66, NULL),
(1, 67, NULL),
(1, 68, NULL),
(1, 69, NULL),
(1, 70, NULL),
(1, 71, NULL),
(1, 72, NULL),
(1, 73, NULL),
(1, 74, NULL),
(1, 75, NULL),
(1, 76, NULL),
(1, 77, NULL),
(1, 78, NULL),
(1, 79, NULL),
(1, 80, NULL),
(1, 81, NULL),
(1, 82, NULL),
(1, 83, NULL),
(1, 84, NULL),
(1, 85, NULL),
(1, 86, NULL),
(1, 87, NULL),
(1, 88, NULL),
(1, 89, NULL),
(1, 90, NULL),
(1, 91, NULL),
(1, 92, NULL),
(1, 93, NULL),
(1, 94, NULL),
(1, 95, NULL),
(1, 96, NULL),
(1, 97, NULL),
(1, 98, NULL),
(1, 99, NULL),
(1, 100, NULL),
(1, 101, NULL),
(1, 102, NULL),
(1, 103, NULL),
(1, 104, NULL),
(1, 105, NULL),
(1, 106, NULL),
(1, 107, NULL),
(1, 108, NULL),
(1, 109, NULL),
(1, 110, NULL),
(1, 111, NULL),
(1, 112, NULL),
(1, 113, NULL),
(1, 114, NULL),
(1, 115, NULL),
(1, 116, NULL),
(1, 117, NULL),
(1, 118, NULL),
(1, 119, NULL),
(1, 120, NULL),
(1, 121, NULL),
(1, 122, NULL),
(1, 123, NULL),
(1, 124, NULL),
(1, 125, NULL),
(1, 126, NULL),
(1, 127, NULL),
(1, 128, NULL),
(1, 129, NULL),
(1, 130, NULL),
(1, 131, NULL),
(1, 132, NULL),
(1, 133, NULL),
(1, 134, NULL),
(1, 135, NULL),
(1, 136, NULL),
(1, 137, NULL),
(1, 138, NULL),
(1, 139, NULL),
(1, 140, NULL),
(1, 141, NULL),
(1, 142, NULL),
(1, 143, NULL),
(1, 144, NULL),
(1, 145, NULL),
(1, 1, NULL),
(1, 2, NULL),
(1, 3, NULL),
(1, 4, NULL),
(1, 5, NULL),
(1, 6, NULL),
(1, 7, NULL),
(1, 8, NULL),
(1, 9, NULL),
(1, 10, NULL),
(1, 11, NULL),
(1, 12, NULL),
(1, 13, NULL),
(1, 14, NULL),
(1, 15, NULL),
(1, 16, NULL),
(1, 17, NULL),
(1, 18, NULL),
(1, 19, NULL),
(1, 20, NULL),
(1, 21, NULL),
(1, 22, NULL),
(1, 23, NULL),
(1, 24, NULL),
(1, 25, NULL),
(1, 26, NULL),
(1, 27, NULL),
(1, 28, NULL),
(1, 29, NULL),
(1, 30, NULL),
(1, 31, NULL),
(1, 32, NULL),
(1, 33, NULL),
(1, 34, NULL),
(1, 35, NULL),
(1, 36, NULL),
(1, 37, NULL),
(1, 38, NULL),
(1, 39, NULL),
(1, 40, NULL),
(1, 41, NULL),
(1, 42, NULL),
(1, 43, NULL),
(1, 44, NULL),
(1, 45, NULL),
(1, 46, NULL),
(1, 47, NULL),
(1, 48, NULL),
(1, 49, NULL),
(1, 50, NULL),
(1, 51, NULL),
(1, 52, NULL),
(1, 53, NULL),
(1, 54, NULL),
(1, 55, NULL),
(1, 56, NULL),
(1, 57, NULL),
(1, 58, NULL),
(1, 59, NULL),
(1, 60, NULL),
(1, 61, NULL),
(1, 62, NULL),
(1, 63, NULL),
(1, 64, NULL),
(1, 65, NULL),
(1, 66, NULL),
(1, 67, NULL),
(1, 68, NULL),
(1, 69, NULL),
(1, 70, NULL),
(1, 71, NULL),
(1, 72, NULL),
(1, 73, NULL),
(1, 74, NULL),
(1, 75, NULL),
(1, 76, NULL),
(1, 77, NULL),
(1, 78, NULL),
(1, 79, NULL),
(1, 80, NULL),
(1, 81, NULL),
(1, 82, NULL),
(1, 83, NULL),
(1, 84, NULL),
(1, 85, NULL),
(1, 86, NULL),
(1, 87, NULL),
(1, 88, NULL),
(1, 89, NULL),
(1, 90, NULL),
(1, 91, NULL),
(1, 92, NULL),
(1, 93, NULL),
(1, 94, NULL),
(1, 95, NULL),
(1, 96, NULL),
(1, 97, NULL),
(1, 98, NULL),
(1, 99, NULL),
(1, 100, NULL),
(1, 101, NULL),
(1, 102, NULL),
(1, 103, NULL),
(1, 104, NULL),
(1, 105, NULL),
(1, 106, NULL),
(1, 107, NULL),
(1, 108, NULL),
(1, 109, NULL),
(1, 110, NULL),
(1, 111, NULL),
(1, 112, NULL),
(1, 113, NULL),
(1, 114, NULL),
(1, 115, NULL),
(1, 116, NULL),
(1, 117, NULL),
(1, 118, NULL),
(1, 119, NULL),
(1, 120, NULL),
(1, 121, NULL),
(1, 122, NULL),
(1, 123, NULL),
(1, 124, NULL),
(1, 125, NULL),
(1, 126, NULL),
(1, 127, NULL),
(1, 128, NULL),
(1, 129, NULL),
(1, 130, NULL),
(1, 131, NULL),
(1, 132, NULL),
(1, 133, NULL),
(1, 134, NULL),
(1, 135, NULL),
(1, 136, NULL),
(1, 137, NULL),
(1, 138, NULL),
(1, 139, NULL),
(1, 140, NULL),
(1, 141, NULL),
(1, 142, NULL),
(1, 143, NULL),
(1, 144, NULL),
(1, 145, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `access_master`
--

CREATE TABLE `access_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_master`
--

INSERT INTO `access_master` (`id`, `name`, `description`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'access_group_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(2, 'access_group_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(3, 'access_group_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(4, 'access_group_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(5, 'access_group_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(6, 'access_master_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(7, 'access_master_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(8, 'access_master_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(9, 'access_master_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(10, 'access_master_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(11, 'course_batch_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(12, 'course_batch_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(13, 'course_batch_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(14, 'course_batch_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(15, 'course_batch_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(16, 'course_tutor_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(17, 'course_tutor_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(18, 'course_tutor_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(19, 'course_tutor_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(20, 'course_tutor_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(21, 'general_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(22, 'general_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(23, 'general_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(24, 'general_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(25, 'general_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(26, 'member_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(27, 'member_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(28, 'member_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(29, 'member_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(30, 'member_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(31, 'member_bootcamp_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(32, 'member_bootcamp_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(33, 'member_bootcamp_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(34, 'member_bootcamp_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(35, 'member_bootcamp_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(36, 'member_course_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(37, 'member_course_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(38, 'member_course_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(39, 'member_course_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(40, 'member_course_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(41, 'modul_tutorial_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(42, 'modul_tutorial_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(43, 'modul_tutorial_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(44, 'modul_tutorial_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(45, 'modul_tutorial_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(46, 'm_company_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(47, 'm_company_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(48, 'm_company_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(49, 'm_company_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(50, 'm_company_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(51, 'm_course_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(52, 'm_course_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(53, 'm_course_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(54, 'm_course_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(55, 'm_course_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(56, 'm_discount_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(57, 'm_discount_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(58, 'm_discount_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(59, 'm_discount_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(60, 'm_discount_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(61, 'm_level_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(62, 'm_level_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(63, 'm_level_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(64, 'm_level_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(65, 'm_level_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(66, 'm_major_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(67, 'm_major_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(68, 'm_major_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(69, 'm_major_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(70, 'm_major_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(71, 'm_modul_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(72, 'm_modul_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(73, 'm_modul_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(74, 'm_modul_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(75, 'm_modul_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(76, 'm_package_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(77, 'm_package_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(78, 'm_package_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(79, 'm_package_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(80, 'm_package_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(81, 'm_tutor_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(82, 'm_tutor_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(83, 'm_tutor_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(84, 'm_tutor_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(85, 'm_tutor_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(86, 'order_course_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(87, 'order_course_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(88, 'order_course_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(89, 'order_course_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(90, 'order_course_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(91, 'package_benefit_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(92, 'package_benefit_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(93, 'package_benefit_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(94, 'package_benefit_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(95, 'package_benefit_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(96, 'users_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(97, 'users_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(98, 'users_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(99, 'users_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(100, 'users_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(101, 'users_failed_attempts_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(102, 'users_failed_attempts_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(103, 'users_failed_attempts_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(104, 'users_failed_attempts_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(105, 'users_failed_attempts_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(106, 'users_logs_manage', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(107, 'users_logs_create', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(108, 'users_logs_read', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(109, 'users_logs_update', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(110, 'users_logs_delete', NULL, '2022-09-12 09:54:38', 1, '2022-09-12 09:54:38', 1),
(111, 'm_bank_manage', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(112, 'm_bank_create', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(113, 'm_bank_read', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(114, 'm_bank_update', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(115, 'm_bank_delete', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(116, 'm_bank_account_manage', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(117, 'm_bank_account_create', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(118, 'm_bank_account_read', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(119, 'm_bank_account_update', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(120, 'm_bank_account_delete', NULL, '2022-09-13 09:43:18', 1, '2022-09-13 09:43:18', 1),
(121, 'order_confirm_manage', NULL, '2022-09-13 10:38:45', 1, '2022-09-13 10:38:45', 1),
(122, 'order_confirm_create', NULL, '2022-09-13 10:38:45', 1, '2022-09-13 10:38:45', 1),
(123, 'order_confirm_read', NULL, '2022-09-13 10:38:45', 1, '2022-09-13 10:38:45', 1),
(124, 'order_confirm_update', NULL, '2022-09-13 10:38:45', 1, '2022-09-13 10:38:45', 1),
(125, 'order_confirm_delete', NULL, '2022-09-13 10:38:45', 1, '2022-09-13 10:38:45', 1),
(126, 'm_payment_type_manage', NULL, '2022-09-13 10:56:04', 1, '2022-09-13 10:56:04', 1),
(127, 'm_payment_type_create', NULL, '2022-09-13 10:56:04', 1, '2022-09-13 10:56:04', 1),
(128, 'm_payment_type_read', NULL, '2022-09-13 10:56:04', 1, '2022-09-13 10:56:04', 1),
(129, 'm_payment_type_update', NULL, '2022-09-13 10:56:04', 1, '2022-09-13 10:56:04', 1),
(130, 'm_payment_type_delete', NULL, '2022-09-13 10:56:04', 1, '2022-09-13 10:56:04', 1),
(131, 'dashboard_manage', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(132, 'dashboard_create', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(133, 'dashboard_read', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(134, 'dashboard_update', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(135, 'dashboard_delete', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(136, 'report_order_manage', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(137, 'report_order_create', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(138, 'report_order_read', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(139, 'report_order_update', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(140, 'report_order_delete', NULL, '2022-09-13 14:37:12', 1, '2022-09-13 14:37:12', 1),
(141, 'report_confirm_order_manage', NULL, '2022-09-13 15:16:32', 1, '2022-09-13 15:16:32', 1),
(142, 'report_confirm_order_create', NULL, '2022-09-13 15:16:32', 1, '2022-09-13 15:16:32', 1),
(143, 'report_confirm_order_read', NULL, '2022-09-13 15:16:32', 1, '2022-09-13 15:16:32', 1),
(144, 'report_confirm_order_update', NULL, '2022-09-13 15:16:32', 1, '2022-09-13 15:16:32', 1),
(145, 'report_confirm_order_delete', NULL, '2022-09-13 15:16:32', 1, '2022-09-13 15:16:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_batch`
--

CREATE TABLE `course_batch` (
  `id` int(11) NOT NULL,
  `batch` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `quota` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Unlimited',
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_batch`
--

INSERT INTO `course_batch` (`id`, `batch`, `start_date`, `end_date`, `quota`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_course`) VALUES
(1, 1, '2022-09-12', '2022-10-11', 0, 1, '2022-09-12 14:42:45', 1, '2022-09-12 14:49:14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_discount`
--

CREATE TABLE `course_discount` (
  `id_m_course` int(11) NOT NULL,
  `id_m_package` int(11) NOT NULL,
  `id_m_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_discount`
--

INSERT INTO `course_discount` (`id_m_course`, `id_m_package`, `id_m_discount`) VALUES
(1, 1, 1),
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_tutor`
--

CREATE TABLE `course_tutor` (
  `id_m_course` int(11) NOT NULL,
  `id_m_tutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tutor`
--

INSERT INTO `course_tutor` (`id_m_course`, `id_m_tutor`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `name`, `value`, `updated_at`, `updated_id`) VALUES
(1, 'nama_lengkap', 'Toro Developer', '2022-09-12 08:57:58', 1),
(2, 'nama_singkat', 'toro', '2022-09-12 08:57:58', 1),
(3, 'alamat_lengkap', 'Woodland 9 No 19, Surabaya', '2022-09-12 08:57:58', 1),
(4, 'alamat', 'Woodland 9 No 19', '2022-09-12 08:57:58', 1),
(5, 'alamat2', 'Surabaya, Jawa Timur', '2022-09-12 08:57:58', 1),
(6, 'alamat3', 'Indonesia', '2022-09-12 08:57:58', 1),
(7, 'nama_contact', 'toro', '2022-09-12 08:57:58', 1),
(8, 'telepon', '0452 324978 ', '2022-09-12 08:57:58', 1),
(9, 'logo', 'uploads/general/6c849634e81d130098fcfc54b062d4ec.jpg', '2022-09-12 08:57:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `profile_picture` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `password`, `phone`, `address`, `profile_picture`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Budi', 'budi@mail.com', '$2y$10$mMlKL8qKiSY6q.u7CYE4We8rlVfiylYVzUozZsKkzqoNcrW7szFfa', '081123123123', 'Jl. AAA 123', '3c17dfde6e58c6ba2eb3a2e468cd13c1.png', 1, '2022-09-12 15:06:54', '2022-09-12 15:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `member_answer`
--

CREATE TABLE `member_answer` (
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_bootcamp`
--

CREATE TABLE `member_bootcamp` (
  `id_member` int(11) NOT NULL,
  `id_course_batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_course`
--

CREATE TABLE `member_course` (
  `id_member` int(11) NOT NULL,
  `id_m_course` int(11) NOT NULL,
  `progress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_course`
--

INSERT INTO `member_course` (`id_member`, `id_m_course`, `progress`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modul_tutorial`
--

CREATE TABLE `modul_tutorial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `tier` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_modul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul_tutorial`
--

INSERT INTO `modul_tutorial` (`id`, `name`, `description`, `tier`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_modul`) VALUES
(1, 'Introduction', '<h2>Selamat Datang!</h2>\n\n                            <p>pada tutorial ini anda akan belajar beberapa hal dasar dalam membangun UI website\n                                <em>Model-View-ViewModel</em> (MVVM) menggunakan knockout.js\n                            </p>\n\n                            <p>Anda akan belajar bagaimana mendefinisikan tampilan UI menggunakan <strong>views</strong> dan\n                                <strong>declarative bindings</strong>, ata dan perilakunya menggunakan <strong>viewmodels</strong> dan\n                                <strong>observables</strong>,\n                                dan bagaimana semuanya tetap sinkron secara otomatis dengan bantuan Knockout\'s <strong>dependency\n                                    tracking</strong>\n                            </p>\n\n                            <h3>Menggunakan bindings di view</h3>\n\n                            <p>Di sudut kanan bawah, anda dapat melihat <em>viewmodel</em> yang berisi data orang. Di sudut kanan atas, Anda memiliki <em>view</em> yang seharusnya menampilkan data orang. Saat ini hanya menampilkan \"<em>todo</em>\", jadi mari kita perbaiki itu.</p>\n\n                            <p>Ubah dua elemen <code>&lt;strong&gt;</code> dalam tampilan, tambahkan attribute <code>data-bind</code> untuk menampilkan nama orang:\n                            </p>\n\n                            <pre><code><span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span>First name: <span class=\"tag\">&lt;<span class=\"title\">strong</span> <span class=\"highlight\"><span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: firstName\"</span></span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">strong</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\n                            </code></pre>\n                            <pre><code><span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span>Last name: <span class=\"tag\">&lt;<span class=\"title\">strong</span> <span class=\"highlight\"><span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: lastName\"</span></span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">strong</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\n                            </code></pre>\n\n\n                            <p>attribute <code>data-bind</code> adalah bagaimana knockout memungkinkan anda secara deklaratif mengaitkan viewmodel properties dengan DOM element kamu baru saja menggunakan <code>text</code> binding untuk menetapkan text ke DOM elemen.</p>', 1, 1, '2022-09-12 11:32:20', 1, '2022-09-13 10:32:54', 1, 1),
(2, 'introduction', '<h2>Membuat data bisa diedit</h2>\r\n\r\n                            <p>Anda tidak dibatasi untuk menampilkan data statis. Mari gunakan <code>value</code> binding,  bersama dengan beberapa  <code>&lt;input&gt;</code> HTML biasa, untuk membuat data dapat diedit.</p>\r\n\r\n                            <p>Tambahkan markup berikut ke bagian bawah tampilan Anda (biarkan markup yang ada tetap di atasnya):</p>\r\n\r\n                            <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span>First name: <span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: firstName\"</span> /&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\r\n                                                                                    </code></pre>\r\n                            <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span>Last name: <span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: lastName\"</span>/&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span></code></pre>\r\n\r\n\r\n                            <p>Sekarang jalankan aplikasinya. Apa yang terjadi ketika Anda mengedit teks di salah satu kotak teks?</p>\r\n\r\n                            <p>Hmm... ternyata tidak terjadi apa-apa. Mari kita perbaiki itu...</p>\r\n                            <h3>Pengenalan Observables</h3>\r\n\r\n                            <p>Sebenarnya, saat anda mengedit salah satu dari text box, itu akan memperbarui data viewmodelnya. Tetapi karena properti viewmodel hanyalah string JavaScript biasa, mereka tidak memiliki cara untuk memberi tahu siapa pun bahwa mereka telah berubah, sehingga UI tetap statis. Itu sebabnya Knockout memiliki konsep <strong>observables</strong> - ini adalah properti yang secara otomatis akan mengeluarkan pemberitahuan setiap kali nilainya berubah.</p>\r\n\r\n                            <p>Ubah viewmodel anda untuk membuat isi dari <code>firstName</code> dan <code>lastName</code> <em>observable</em> menggunakan <code>ko.observable</code>:</p>\r\n\r\n                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">AppViewModel</span><span class=\"params\">()</span>{</span>\r\n    <span class=\"keyword\">this</span>.firstName = <span class=\"highlight\">ko.observable(<span class=\"string\">\"Bert\"</span>)</span>;\r\n    <span class=\"keyword\">this</span>.lastName = <span class=\"highlight\">ko.observable(<span class=\"string\">\"Bertington\"</span>)</span>;\r\n        }\r\n                                            </code></pre>\r\n\r\n                            <p>Sekarang jalankan kembali aplikasi dan edit kotak teks. Kali ini Anda tidak hanya akan melihat bahwa data model tampilan yang mendasarinya diperbarui saat Anda mengedit, tetapi semua UI terkait juga diperbarui secara sinkron dengannya. </p>', 2, 1, '2022-09-12 12:38:48', 1, '2022-09-14 10:02:42', 1, 1),
(3, 'introduction', '<h2>Mendefinisikan nilai yang dihitung</h2>\r\n\r\n                            <p>seringkali, anda ingin menggabungkan atau mengubah banyak observables values untuk membuat yang lain, pada contoh ini anda mungkin ingin mendefinisikan <em>full name</em> sebagain\r\n                                <em>first name</em> plus <em>space</em> plus <em>last name</em>.\r\n                            </p>\r\n\r\n                            <p>Untuk menangani ini, Knockout memiliki konsep <strong>computed properties</strong> -\r\n                                ini adalah <em>observable</em> (yaitu, mereka memberi tahu tentang perubahan) dan dihitung berdasarkan nilai dari observables lainnya.</p>\r\n\r\n                            <p>Tambahkan <code>fullName</code> ke view model anda, dengan menambahkan kode berikut di dalam AppViewModel, setelah namaDepan dan namaBelakang dideklarasikan:\r\n\r\n                                <code>AppViewModel</code>, after <code>firstName</code> and <code>lastName</code>\r\n                                are\r\n                                declared:\r\n                            </p>\r\n\r\n                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"keyword\">this</span>.fullName = ko.computed(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n    <span class=\"keyword\">return</span> <span class=\"keyword\">this</span>.firstName() + <span class=\"string\">\" \"</span> + <span class=\"keyword\">this</span>.lastName();\r\n    }, <span class=\"keyword\">this</span>);\r\n                                                            </code></pre>\r\n\r\n                            <p>Seperti yang bisa anda lihat, kami meneruskan fungsi panggilan balik ke <code>ko.computed</code>\r\n                                yang menentukan bagaimana seharusnya menghitung nilainya. Selanjutnya, tampilkan nilai \r\n <code>fullName</code> di UI Anda dengan menambahkan markup di bagian bawah tampilan Anda:</p>\r\n\r\n                            <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span>Full name: <span class=\"tag\">&lt;<span class=\"title\">strong</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: fullName\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">strong</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\r\n                                                                                    </code></pre>\r\n\r\n                            <p>Jika Anda menjalankan aplikasi sekarang dan mengedit kotak teks, Anda akan melihat bahwa semua elemen UI (termasuk tampilan nama lengkap) tetap sinkron dengan data yang mendasarinya.</p>\r\n\r\n                            <h3>Bagaimana cara kerjanya?</h3>\r\n\r\n                            <p>Segalanya tetap sinkron karena pelacakan ketergantungan otomatis:\r\n                                <code>&lt;strong&gt;</code> terakhir di sana bergantung pada <code>fullName</code>, yang bergantung pada <code>firstName</code>\r\n                                dan <code>lastName</code>, dan salah satu dari keduanya dapat diubah dengan mengedit textbox.\r\n                            </p>', 3, 1, '2022-09-12 12:38:48', 1, '2022-09-14 10:02:45', 1, 1),
(4, 'introduction', '<h2>Menambahkan lebih banyak behavior</h2>\n\n                            <p>Untuk menyelesaikan contoh ini, mari tambahkan satu behavior lagi. Yaitu button yang membuat value namaBelakang berubah menjadi huruf kapital.\n                            </p>\n\n                            <h3>Memperbarui view model</h3>\n\n                            <p>Pertama, tambahkan fungsi <code>capitalizeLastName</code>ke viewmodel untuk mengimplementasikan behavior ini:</p>\n\n                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">AppViewModel</span><span class=\"params\">()</span> {</span>\n    <span class=\"comment\">// ... leave firstName, lastName, and fullName unchanged here ...</span>\n    <span class=\"keyword\">this</span>.capitalizeLastName = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\n        <span class=\"keyword\">var</span> currentVal = <span class=\"keyword\">this</span>.lastName();        <span class=\"comment\">// Read the current value</span>\n        <span class=\"keyword\">this</span>.lastName(currentVal.toUpperCase()); <span class=\"comment\">// Write back a modified value</span>\n    };\n    }\n                            </code></pre>\n\n                            <p>Perhatikan bahwa, untuk membaca atau menulis nilai observables, Anda memanggilnya sebagai fungsi.</p>\n\n                            <h3>Memperbarui tampilan</h3>\n\n                            <p>Selanjutnya, tambahkan tombol ke tampilan, menggunakan pengikatan klik untuk mengaitkan klik dengan fungsi model tampilan yang baru saja Anda tambahkan:</p>\n\n                            <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: capitalizeLastName\"</span>&gt;</span>Go caps<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\n                            </code></pre>\n\n                            <p>Jika kamu menjalankan ini sekarang dan klik tombol \"Go Caps\", anda akan melihat semua bagian UI yang relevan diperbarui agar sesuai dengan status model tampilan yang diubah.</p>', 4, 1, '2022-09-12 12:42:46', 1, '2022-09-14 10:02:47', 1, 1),
(5, 'introduction', '<h2>Kerja yang baik!</h2>\r\n\r\n                            <p>Ini adalah contoh yang sangat mendasar, tetapi itu menggambarkan beberapa poin kunci dari MVVM:</p>\r\n\r\n                            <ul>\r\n                                <li>Anda sudah mempelajari object-oriented representasi dari data UI dan behaviour anda (viewmodel)</li>\r\n                                <li>Secara terpisah, Anda memiliki representasi deklaratif tentang bagaimana itu harus ditampilkan secara visual(pandangan Anda)</li>\r\n                                <li>Anda dapat menerapkan behavior canggih hanya dengan memperbarui objek viewmodel. Anda tidak perlu khawatir tentang elemen DOM mana yang perlu diubah/ditambahkan/dihapus - Framework dapat menangani sinkronisasi untuk Anda.</li>\r\n                            </ul>\r\n\r\n                            <p>Tutorial selanjutnya akan membawa Anda lebih dalam :)</p>', 5, 1, '2022-09-12 12:42:46', 1, '2022-09-14 10:02:51', 1, 1),
(6, 'Working with Lists and Collections', '<h2>Bekerja dengan Lists dan Collection</h2>\r\n                            \r\n                                <p>Seringkali , Anda ingin membuat blok elemen UI yang berulang, terutama saat menampilkan list dimana user dapat menambahkan dan menghapus elemen. Knockout memungkinkan Anda melakukannya dengan mudah, menggunakan <em>observable arrays</em> dan <code>foreach</code> binding. </p>\r\n                            \r\n                                <h3>Getting started</h3>\r\n                            \r\n                                <p>Dalam beberapa menit kedepan anda akan membangun UI dinamis untuk reservasi kursi dan makanan - ini bisa menjadi salah satu langkah dalam proses pemesanan maskapai. Di panel kanan bawah, Anda sudah mendapatkan:</p>\r\n                            \r\n                                <ul>\r\n                                    <li><code>SeatReservation</code>, konstruktor kelas JavaScript sederhana yang menyimpan nama penumpang dengan pilihan makanan</li>\r\n                                    <li><code>ReservationsViewModel</code>, kelas viewmodel yang menampung:\r\n                                        <ul>\r\n                                            <li><code>availableMeals</code>, objek JavaScript yang menyediakan data makanan</li>\r\n                                            <li><code>seats</code>, sebuah array yang menyimpan koleksi awal instans SeatReservation. Perhatikan bahwa ini adalah <code>ko.observableArray</code> - tidak mengherankan, itu setara dengan array biasa, yang berarti dapat secara otomatis     memicu pembaruan UI setiap kali item ditambahkan atau dihapus.\r\n</li>\r\n                                        </ul>\r\n                                    </li>\r\n                                </ul>\r\n                            \r\n                                <p>Tampilan (panel kanan atas) belum menampilkan data reservasi, jadi mari kita perbaiki. Perbarui element <code>&lt;tbody&gt;</code> untuk menggunakan <code>foreach</code> binding, sehingga akan membuat salinan child elemennya untuk setiap entri dalam array <code>seats</code>:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"highlight\"><span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: seats\"</span></span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">tbody</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>dan kemudian isi element <code>&lt;tbody&gt;</code> dengan beberapa markup untuk mengatakan bahwa Anda menginginkan baris tabel (<code>&lt;tr&gt;</code>) untuk setiap entri:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: seats\"</span>&gt;</span>\r\n                                <span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: name\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: meal().mealName\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: meal().price\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                <span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>    \r\n                            <span class=\"tag\">&lt;/<span class=\"title\">tbody</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>Perhatikan bahwa, karena properti <code>meal</code> adalah <em>observable</em>, penting untuk memanggil <code>meal()</code> sebagai fungsi (untuk mendapatkan nilai saat ini) sebelum mencoba membaca sub-properti. Dengan kata lain, tulis <code>meal().price</code>, <em>bukan</em>\r\n                                    <code>meal.price</code>.</p>\r\n                            \r\n                                <p>Hasil? Jika Anda menjalankan aplikasi sekarang, Anda akan melihat tabel sederhana informasi reservasi kursi.</p>\r\n                            \r\n                                <p><code>foreach</code> adalah bagian dari keluarga <em>control flow bindings</em> yang mencakup\r\n                                    <a href=\"http://knockoutjs.com/documentation/foreach-binding.html\"><code>foreach</code></a>,\r\n                                    <a href=\"http://knockoutjs.com/documentation/if-binding.html\"><code>if</code></a>,\r\n                                    <a href=\"http://knockoutjs.com/documentation/ifnot-binding.html\"><code>ifnot</code></a>, dan\r\n                                    <a href=\"http://knockoutjs.com/documentation/with-binding.html\"><code>with</code></a>. Ini memungkinkan untuk membangun segala jenis UI berulang, bersyarat, atau bersarang berdasarkan viewmodel dinamis Anda.\r\n                                </p>', 1, 1, '2022-09-12 13:26:39', 1, '2022-09-14 10:03:34', 1, 2),
(7, 'Working with Lists and Collections', '<h2>Menambahkan item</h2>\r\n                            \r\n                                <p>Mengikuti pola MVVM membuatnya sangat mudah untuk bekerja dengan grafik objek yang dapat diubah seperti array dan hierarki. Anda memperbarui data yang mendasarinya, dan UI secara otomatis diperbarui secara sinkron.</p>\r\n                            \r\n                                <h3>Menambahkan seat reservation</h3>\r\n                            \r\n                                <p>Tambahkan tombol ke tampilan Anda, menggunakan binding click untuk mengaitkan kliknya dengan fungsi pada viewmodel anda:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: addSeat\"</span>&gt;</span>Reserve another seat<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>kemudian implementasi fungsi addSeat, membuatnya mendorong entri tambahan ke dalam array <code>seats</code>:</p>\r\n                            \r\n                                <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">ReservationsViewModel</span><span class=\"params\">()</span> {</span>\r\n                                <span class=\"comment\">// ... leave all the rest unchanged ...</span>\r\n                            \r\n                                <span class=\"comment\">// Operations</span>\r\n                                self.addSeat = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                    self.seats.push(<span class=\"keyword\">new</span> SeatReservation(<span class=\"string\">\"\"</span>, self.availableMeals[<span class=\"number\">0</span>]));\r\n                                }\r\n                            }\r\n                            </code></pre>\r\n                            \r\n                                <p>Cobalah - sekarang ketika Anda mengklik \"Reserve seat\", UI diperbarui agar sesuai. Ini karena <code>seats</code> adalah observable array, jadi menambahkan atau menghapus item akan memicu pembaruan UI secara otomatis.\r\n</p>\r\n                            \r\n                                <p>Perhatikan bahwa menambahkan baris <em>tidak</em> melibatkan pembuatan ulang seluruh UI. Untuk efisiensi, Knockout melacak apa yang telah berubah di model tampilan Anda, dan melakukan serangkaian pembaruan DOM minimal untuk dicocokkan. Ini berarti Anda dapat meningkatkan hingga UI yang sangat besar atau canggih, dan dapat tetap tajam dan responsif bahkan pada perangkat seluler kelas bawah.</p>', 2, 1, '2022-09-12 13:26:39', 1, '2022-09-14 10:03:36', 1, 2),
(8, 'Working with Lists and Collections', '<h2>Membuat data dapat diedit</h2>\r\n\r\n                                <p>Anda bisa menggunakan binding di dalam block <code>foreach</code> sama seperti di tempat lain, jadi cukup mudah untuk mengupgrade apa yang kita miliki menjadi editor data lengkap. Perbarui tampilan Anda:</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: seats\"</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\r\n                                <span class=\"highlight\"><span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: name\"</span> /&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span></span>\r\n                                <span class=\"highlight\"><span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">select</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"options: $root.availableMeals, value: meal, optionsText: \'mealName\'\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">select</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span></span>\r\n                                <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: meal().price\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>    \r\n                        <span class=\"tag\">&lt;/<span class=\"title\">tbody</span>&gt;</span>\r\n                        </code></pre>\r\n\r\n                                <p>Kode ini menggunakan dua binding baru, <code>options</code> dan <code>optionsText</code>, yang bersama-sama mengontrol kumpulan item yang tersedia dalam daftar dropdown, dan properti objek mana ((dalam hal ini, <code>mealName</code>) yang digunakan untuk mewakili setiap item di layar.</p>\r\n                                <p>Cobalah - sekarang Anda dapat memilih dari makanan yang tersedia, dan hal itu akan menyebabkan baris yang sesuai (hanya) di-refresh untuk menampilkan harga makanan tersebut.</p>\r\n\r\n                                <h2>Memformat harga</h2>\r\n\r\n                                <p>Kami memiliki representasi berorientasi objek yang bagus dari data kami, sehingga kami dapat dengan mudah menambahkan properti dan fungsi tambahan di mana saja di grafik objek. Mari berikan kelas <code>SeatReservation</code> kemampuan untuk memformat data harganya sendiri menggunakan beberapa logika khusus.\r\n</p>\r\n\r\n                                <p>Karena harga yang diformat akan dihitung berdasarkan makanan yang dipilih, kami dapat mewakilinya menggunakan <code>ko.computed</code> (sehingga akan diperbarui secara otomatis setiap kali pilihan makanan berubah):</p>\r\n\r\n                                <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">SeatReservation</span><span class=\"params\">(name, initialMeal)</span> {</span>\r\n                            <span class=\"keyword\">var</span> self = <span class=\"keyword\">this</span>;\r\n                            self.name = name;\r\n                            self.meal = ko.observable(initialMeal);\r\n                        \r\n                            self.formattedPrice = ko.computed(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                <span class=\"keyword\">var</span> price = self.meal().price;\r\n                                <span class=\"keyword\">return</span> price ? <span class=\"string\">\"$\"</span> + price.toFixed(<span class=\"number\">2</span>) : <span class=\"string\">\"None\"</span>;        \r\n                            });\r\n                        }\r\n                        </code></pre>\r\n\r\n                                <p>Sekarang Anda dapat memperbarui tampilan untuk menggunakan <code>formattedPrice</code> pada setiap instance <code>SeatReservation</code>:</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: name\"</span> /&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">select</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"options: $root.availableMeals, value: meal, optionsText: \'mealName\'\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">select</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: <span class=\"highlight\">formattedPrice</span>\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                        <span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>\r\n                        </code></pre>', 3, 1, '2022-09-12 13:51:37', 1, '2022-09-14 10:03:45', 1, 2),
(9, 'Working with Lists and Collections', '<h2>Menghapus item dan menunjukkan total biaya tambahan</h2>\r\n\r\n                                <p>Karena Anda dapat menambahkan item, Anda juga harus dapat menghapusnya, bukan? Seperti yang Anda harapkan, ini hanyalah masalah memperbarui data yang mendasarinya.</p>\r\n\r\n                                <p>Perbarui tampilan Anda sehingga menampilkan tautan \"remove\" di sebelah setiap item:</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: name\"</span> /&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">select</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"options: $root.availableMeals, value: meal, optionsText: \'mealName\'\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">select</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: formattedPrice\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n    <span class=\"highlight\"><span class=\"tag\">&lt;<span class=\"title\">td</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">a</span> <span class=\"attribute\">href</span>=<span class=\"value\">\"#\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: $root.removeSeat\"</span>&gt;</span>Remove<span class=\"tag\">&lt;/<span class=\"title\">a</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span></span>\r\n<span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>         \r\n</code></pre>\r\n\r\n                                <p>Perhatikan bahwa <code>$root.</code> prefix menyebabkan Knockout mencari handler <code>removeSeat</code> removeSeat pada model tampilan tingkat atas Anda alih-alih pada instance <code>SeatReservation</code> yang terikat --- itu adalah tempat yang lebih baik untuk menempatkan <code>removeSeat</code> dalam contoh ini. Jadi, tambahkan fungsi <code>removeSeat</code> yang sesuai ke kelas root viewmodel Anda, <code>ReservationsViewModel</code>:</p>\r\n\r\n                                <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">ReservationsViewModel</span><span class=\"params\">()</span> {</span>\r\n    <span class=\"comment\">// ... leave the rest unchanged ...</span>\r\n\r\n    <span class=\"comment\">// Operations</span>\r\n    self.addSeat = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> <span class=\"comment\">/* ... leave unchanged ... */</span> }\r\n    <span class=\"highlight\">self.removeSeat = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(seat)</span> {</span> self.seats.remove(seat) }</span>\r\n}    \r\n</code></pre>\r\n\r\n                                <p>Sekarang jika anda jalankan aplikasinya, anda akan dapat menghapus dan menambahkan item.</p>\r\n\r\n                                <h3>Menampilkan total biaya</h3>\r\n\r\n                                <p>Akan menyenangkan untuk memberi tahu pelanggan berapa yang akan mereka bayar, bukan? Tidak mengherankan, kita dapat mendefinisikan total sebagai <em>computed property</em>, dan membiarkan kerangka kerja mengetahui kapan harus menghitung ulang dan menyegarkan tampilan.</p>\r\n\r\n                                <p>Tambahkan properti <code>ko.computed</code> berikut di dalam <code>ReservationsViewModel</code>:</p>\r\n\r\n                                <pre><code class=\"javascript\" data-result=\"[object Object]\">self.totalSurcharge = ko.computed(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n   <span class=\"keyword\">var</span> total = <span class=\"number\">0</span>;\r\n   <span class=\"keyword\">for</span> (<span class=\"keyword\">var</span> i = <span class=\"number\">0</span>; i &lt; self.seats().length; i++)\r\n       total += self.seats()[i].meal().price;\r\n   <span class=\"keyword\">return</span> total;\r\n});\r\n</code></pre>\r\n\r\n                                <p>Sekali lagi, perhatikan bahwa karena <code>seats</code> dan <code>meal</code> keduanya adalah observables, kami memanggilnya sebagai fungsi untuk membaca nilainya saat ini ((mis., <code>self.seats().length</code>).</p>\r\n\r\n                                <p>Tampilkan total biaya tambahan dengan menambahkan elemen <code>&lt;h3&gt;</code> berikut ke bagian bawah tampilan Anda:\r\n</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">h3</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"visible: totalSurcharge() &gt; 0\"</span>&gt;</span>\r\n    Total surcharge: $<span class=\"tag\">&lt;<span class=\"title\">span</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: totalSurcharge().toFixed(2)\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">span</span>&gt;</span>\r\n<span class=\"tag\">&lt;/<span class=\"title\">h3</span>&gt;</span>\r\n</code></pre>\r\n\r\n                                <p>Cuplikan ini menunjukkan dua poin baru:</p>\r\n\r\n                                <ul>\r\n                                    <li><code>visible</code> binding membuat elemen terlihat atau tidak terlihat saat data Anda berubah (secara internal, ini mengubah gaya tampilan CSS elemen). Dalam hal ini, kami memilih untuk menampilkan informasi \"biaya tambahan   total\" hanya jika lebih besar dari nol.</li>\r\n                                    <li>Anda dapat menggunakan <strong>ekspresi JavaScript arbitrer</strong> di dalam binding deklaratif. Di sini, kami menggunakan <code>totalSurcharge() &gt; 0</code> dan\r\n                                        <code>totalSurcharge().toFixed(2)</code>. Secara internal, ini sebenarnya mendefinisikan properti   yang dihitung untuk mewakili output dari ekspresi itu. Ini hanya alternatif sintaksis yang sangat ringan dan   nyaman.                                    </li>\r\n                                </ul>\r\n\r\n                                <p>Sekarang jika Anda menjalankan kode, Anda akan melihat \"biaya tambahan total\" muncul dan menghilang sebagaimana mestinya, dan berkat pelacakan ketergantungan, ia tahu kapan harus menghitung ulang nilainya sendiri — Anda tidak perlu memasukkan kode apa pun di \"tambah\" Anda atau fungsi \"hapus\" untuk memaksa dependensi memperbarui secara manual.</p>', 4, 1, '2022-09-12 13:51:37', 1, '2022-09-14 10:03:47', 1, 2),
(10, 'Working with Lists and Collections', '<h2>Tips terakhir</h2>\r\n\r\n                                <p>Setelah mengikuti pola MVVM dan mendapatkan representasi berorientasi objek dari data dan perilaku UI, Anda berada dalam posisi yang bagus untuk menggunakan behavior ekstra dengan cara yang nyaman.</p>\r\n\r\n                                <p>Misalnya, jika Anda diminta untuk menampilkan jumlah total kursi yang dipesan, Anda dapat menerapkannya hanya di satu tempat, dan Anda tidak perlu menulis kode tambahan untuk memperbarui jumlah kursi saat Anda menambah atau menghapus item. Cukup perbarui <code>&lt;h2&gt;</code> \r\ndi bagian atas tampilan Anda:</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">h2</span>&gt;</span>Your seat reservations <span class=\"highlight\">(<span class=\"tag\">&lt;<span class=\"title\">span</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: seats().length\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">span</span>&gt;</span>)</span><span class=\"tag\">&lt;/<span class=\"title\">h2</span>&gt;</span>\r\n</code></pre>\r\n\r\n                                <p>Trivial.</p>\r\n\r\n                                <p>Mirip, jika anda diminta untuk menaruh limit pada jumlah kursi yang dapat di pesan, katakanlah, Anda dapat membuat UI menyatakannya dengan menggunakan <code>enable</code> binding:</p>\r\n\r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: addSeat<span class=\"highlight\">, enable: seats().length &lt; 5</span>\"</span>&gt;</span>Reserve another seat<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n</code></pre>\r\n\r\n                                <p>Tombol akan dinonaktifkan ketika batas kursi tercapai. Anda tidak perlu menulis kode apa pun untuk mengaktifkannya kembali saat pengguna menghapus beberapa kursi (mengacaukan logika \"hapus\" Anda), karena ekspresi akan secara otomatis dievaluasi ulang oleh Knockout saat data terkait berubah.</p>\r\n\r\n                                <p>Jika Anda ingin mempelajari cara menyimpan kembali data yang diperbarui ke server, lihat tutorial Memuat dan Menyimpan Data.</p>', 5, 1, '2022-09-12 13:54:51', 1, '2022-09-14 10:03:49', 1, 2),
(11, 'Single Page Application', '<h2>Single page applications</h2>\r\n                            \r\n                                <p>Banyak UI berbasis web yang paling modern, responsif, dan menarik telah melampaui Ajax tradisional dan telah menjadi <em>Single page applications</em>: pengunjung tampaknya dapat menavigasi dalam satu halaman dengan kecepatan aplikasi asli. Contoh yang paling terkenal mungkin adalah GMail, tetapi belakangan ini teknik ini semakin meluas.</p>\r\n                            \r\n                                <p>Aplikasi tersebut menggunakan <strong>hash-based</strong> atau <strong>pushState navigation</strong> untuk mendukung gerakan mundur/maju dan bookmark.\r\n                                <h3>Contoh: Membangun klien email web</h3>\r\n                            \r\n                                <p>Anda memiliki model tampilan sederhana yang saat ini hanya menyimpan daftar folder. Tugas pertama Anda adalah menampilkan folder-folder itu di layar, dan membuatnya dapat dipilih.</p>\r\n                            \r\n                                <p>Anda dapat menggunakan <code>foreach</code> untuk menampilkan folder sebagai daftar. Tambahkan yang berikut ini ke tampilan Anda:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"comment\">&lt;!-- Folders --&gt;</span>\r\n                            <span class=\"tag\">&lt;<span class=\"title\">ul</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: folders\"</span>&gt;</span>\r\n                                <span class=\"tag\">&lt;<span class=\"title\">li</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: $data\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">li</span>&gt;</span>\r\n                            <span class=\"tag\">&lt;/<span class=\"title\">ul</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>Jika Anda menjalankan aplikasi, seharusnya muncul daftar poin-poin. Itu bagus dan semantik, tapi tidak terlalu menarik! Tingkatkan gaya dengan menambahkan <code>folders</code> class ke <code>&lt;ul&gt;</code> anda:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">ul</span> <span class=\"highlight\"><span class=\"attribute\">class</span>=<span class=\"value\">\"folders\"</span></span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: folders\"</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>Dengan ini tampilannya menjadi lebih menarik</p>\r\n                            \r\n                                <h3>Membuat folder dapat dipilih</h3>\r\n                            \r\n                                <p>Karena ini adalah MVVM, kami akan merepresentasikan posisi navigasi menggunakan properti viewmodel. Itu akan membuat navigasi berbasis hash menjadi sangat mudah nantinya. Tambahkan <code>chosenFolderId</code> ke kelas viewmodel Anda, dan fungsi yang disebut <code>goToFolder</code>:</p>\r\n                            \r\n                                <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">WebmailViewModel</span><span class=\"params\">()</span> {</span>\r\n                                <span class=\"comment\">// Data</span>\r\n                                <span class=\"keyword\">var</span> self = <span class=\"keyword\">this</span>;\r\n                                self.folders = [<span class=\"string\">\'Inbox\'</span>, <span class=\"string\">\'Archive\'</span>, <span class=\"string\">\'Sent\'</span>, <span class=\"string\">\'Spam\'</span>];\r\n                                <span class=\"highlight\">self.chosenFolderId = ko.observable();</span>\r\n                            \r\n                                <span class=\"comment\">// Behaviours</span>\r\n                                <span class=\"highlight\">self.goToFolder = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(folder)</span> {</span> self.chosenFolderId(folder); };</span>\r\n                            };\r\n                            </code></pre>\r\n                            \r\n                                <p>Sekarang anda dapat menggunakan binding <code>css</code> untuk menerapkan <code>selected</code> class pada folder yang sesuai, dan juga memanggil <code>goToFolder</code> setiap kali pengguna mengklik folder:</p>\r\n                            \r\n                                <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">li</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: $data<span class=\"highlight\">,</span> \r\n                                           <span class=\"highlight\">css: { selected: $data == $root.chosenFolderId() },</span>\r\n                                           <span class=\"highlight\">click: $root.goToFolder</span>\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">li</span>&gt;</span>\r\n                            </code></pre>\r\n                            \r\n                                <p>Cobalah - Anda sekarang akan melihat folder akan di highlight ketika Anda mengkliknya.</p>', 1, 1, '2022-09-12 14:45:33', 1, '2022-09-14 10:03:51', 1, 3);
INSERT INTO `modul_tutorial` (`id`, `name`, `description`, `tier`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_modul`) VALUES
(12, 'Single Page Application', '<h2>Menampilkan kotak surat</h2>\r\n                                \r\n                                    <p>Sekarang pengunjung dapat memilih folder, mari tunjukkan kepada mereka surat-surat di folder itu. Mulailah dengan mendefinisikan properti <code>chosenFolderData</code> pada viewmodel Anda:</p>\r\n                                \r\n                                    <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">WebmailViewModel</span><span class=\"params\">()</span> {</span>\r\n                                    <span class=\"comment\">// Data</span>\r\n                                    <span class=\"keyword\">var</span> self = <span class=\"keyword\">this</span>;\r\n                                    self.folders = [<span class=\"string\">\'Inbox\'</span>, <span class=\"string\">\'Archive\'</span>, <span class=\"string\">\'Sent\'</span>, <span class=\"string\">\'Spam\'</span>];\r\n                                    self.chosenFolderId = ko.observable();\r\n                                    <span class=\"highlight\">self.chosenFolderData = ko.observable();</span>\r\n                                \r\n                                    <span class=\"comment\">// Behaviours    </span>\r\n                                    self.goToFolder = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(folder)</span> {</span> self.chosenFolderId(folder); };\r\n                                };\r\n                                </code></pre>\r\n                                \r\n                                    <p>Selanjutnya, setiap kali pengguna menavigasi ke folder, isi <code>chosenFolderData</code> dengan melakukan permintaan Ajax:</p>\r\n                                \r\n                                    <pre><code class=\"javascript\" data-result=\"[object Object]\">self.goToFolder = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(folder)</span> {</span> \r\n                                    self.chosenFolderId(folder);\r\n                                    <span class=\"highlight\">$.get(<span class=\"string\">\'/mail\'</span>, { folder: folder }, self.chosenFolderData);</span>\r\n                                };\r\n                                </code></pre>\r\n                                \r\n                                    <p>Terakhir, tampilkan <code>chosenFolderData</code> sebagai grid, dengan menambahkan yang berikut ini di bagian bawah tampilan Anda:</p>\r\n                                \r\n                                    <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"comment\">&lt;!-- Mails grid --&gt;</span>\r\n                                <span class=\"tag\">&lt;<span class=\"title\">table</span> <span class=\"attribute\">class</span>=<span class=\"value\">\"mails\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"with: chosenFolderData\"</span>&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">thead</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">th</span>&gt;</span>From<span class=\"tag\">&lt;/<span class=\"title\">th</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">th</span>&gt;</span>To<span class=\"tag\">&lt;/<span class=\"title\">th</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">th</span>&gt;</span>Subject<span class=\"tag\">&lt;/<span class=\"title\">th</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">th</span>&gt;</span>Date<span class=\"tag\">&lt;/<span class=\"title\">th</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">thead</span>&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: mails\"</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: from\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: to\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: subject\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: date\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>     \r\n                                    <span class=\"tag\">&lt;/<span class=\"title\">tbody</span>&gt;</span>\r\n                                <span class=\"tag\">&lt;/<span class=\"title\">table</span>&gt;</span>\r\n                                </code></pre>\r\n                                \r\n                                    <p>Dengan <code>with</code> binding membuat <em>binding context</em> yang akan digunakan saat mengikat elemen apa pun di dalamnya. Dalam contoh ini, semua yang ada di dalam <code>&lt;table&gt;</code> akan diikat ke <code>chosenFolderData</code>jadi tidak perlu menggunakan <code>chosenFolderData.</code> sebagai prefix sebelum <code>mails</code>.</p>\r\n                                \r\n                                    <p>Cobalah: Anda sekarang akan melihat grid yang menampilkan surat ketika Anda mengklik folder mana pun.</p>\r\n                                \r\n                                    <p>Hal terakhir, mari buat \"Kotak Masuk\" muncul secara default (yaitu, tanpa perlu pengguna mengkliknya):</p>\r\n                                \r\n                                    <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">WebmailViewModel</span><span class=\"params\">()</span> {</span>\r\n                                    <span class=\"comment\">// ... leave everything else unchanged ...</span>\r\n                                \r\n                                    <span class=\"comment\">// Show inbox by default</span>\r\n                                    <span class=\"highlight\">self.goToFolder(<span class=\"string\">\'Inbox\'</span>);</span>\r\n                                };\r\n                                </code></pre>', 2, 1, '2022-09-12 14:45:33', 1, '2022-09-14 10:03:54', 1, 3),
(13, 'Single Page Application', '<h2>Melihat email individu</h2>\r\n                                    \r\n                                        <p>Pengunjung sekarang dapat menavigasi antar folder. Bagaimana dengan membiarkan mereka membuka dan membaca email tertentu? Seperti navigasi folder, mari kita mulai dengan mendefinisikan properti viewmodel untuk mewakili data yang dimuat untuk email tertentu:</p>\r\n                                    \r\n                                        <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">WebmailViewModel</span><span class=\"params\">()</span> {</span>\r\n                                        <span class=\"comment\">// Data</span>\r\n                                        <span class=\"keyword\">var</span> self = <span class=\"keyword\">this</span>;\r\n                                        self.folders = [<span class=\"string\">\'Inbox\'</span>, <span class=\"string\">\'Archive\'</span>, <span class=\"string\">\'Sent\'</span>, <span class=\"string\">\'Spam\'</span>];\r\n                                        self.chosenFolderId = ko.observable();\r\n                                        self.chosenFolderData = ko.observable();\r\n                                        <span class=\"highlight\">self.chosenMailData = ko.observable();</span>\r\n                                    \r\n                                        <span class=\"comment\">// ... leave everything else unchanged ...</span>\r\n                                    }\r\n                                    </code></pre>\r\n                                    \r\n                                        <p>Selanjutnya Anda perlu memperbarui binding Anda, sehingga jika pengunjung mengklik baris di kotak surat, viewmodel anda memuat surat yang sesuai. Pertama-tama gunakan <code>click</code> binding pada element <code>&lt;tr&gt;</code>:</p>\r\n                                    \r\n                                        <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: mails\"</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;<span class=\"title\">tr</span> <span class=\"highlight\"><span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: $root.goToMail\"</span></span>&gt;</span>\r\n                                        ... rest as before ...\r\n                                    </code></pre>\r\n                                    \r\n                                        <p>Selanjutnya, implementasikan <code>goToMail</code> pada <code>WebmailViewModel</code>, menyebabkannya memperbarui <code>chosenMailData</code> dan <code>chosenFolderData</code> melalui permintaan Ajax:</p>\r\n                                    \r\n                                        <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"comment\">// Behaviours    </span>\r\n                                    self.goToFolder = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(folder)</span> {</span> \r\n                                        self.chosenFolderId(folder);\r\n                                        <span class=\"highlight\">self.chosenMailData(<span class=\"literal\">null</span>); <span class=\"comment\">// Stop showing a mail</span></span>\r\n                                        $.get(<span class=\"string\">\"/mail\"</span>, { folder: folder }, self.chosenFolderData);        \r\n                                    };\r\n                                    <span class=\"highlight\">self.goToMail = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(mail)</span> {</span> </span>\r\n                                    <span class=\"highlight\">    self.chosenFolderId(mail.folder);</span>\r\n                                    <span class=\"highlight\">    self.chosenFolderData(<span class=\"literal\">null</span>); <span class=\"comment\">// Stop showing a folder</span></span>\r\n                                    <span class=\"highlight\">    $.get(<span class=\"string\">\"/mail\"</span>, { mailId: mail.id }, self.chosenMailData);</span>\r\n                                    <span class=\"highlight\">};</span>\r\n                                    </code></pre>\r\n                                    \r\n                                        <p>Sekarang, anda bisa menampilkan <code>chosenMailData</code> dengan menambahkan sedikit markup ke view anda:</p>\r\n\r\n                                        <pre><code class=\"xml\" data-result=\"[object Object]\" data-second_best=\"[object Object]\"><span class=\"comment\">&lt;!-- Chosen mail --&gt;</span>\r\n                                    <span class=\"tag\">&lt;<span class=\"title\">div</span> <span class=\"attribute\">class</span>=<span class=\"value\">\"viewMail\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"with: chosenMailData\"</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;<span class=\"title\">div</span> <span class=\"attribute\">class</span>=<span class=\"value\">\"mailInfo\"</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">h1</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: subject\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">h1</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">label</span>&gt;</span>From<span class=\"tag\">&lt;/<span class=\"title\">label</span>&gt;</span>: <span class=\"tag\">&lt;<span class=\"title\">span</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: from\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">span</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">label</span>&gt;</span>To<span class=\"tag\">&lt;/<span class=\"title\">label</span>&gt;</span>: <span class=\"tag\">&lt;<span class=\"title\">span</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: to\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">span</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\r\n                                            <span class=\"tag\">&lt;<span class=\"title\">p</span>&gt;</span><span class=\"tag\">&lt;<span class=\"title\">label</span>&gt;</span>Date<span class=\"tag\">&lt;/<span class=\"title\">label</span>&gt;</span>: <span class=\"tag\">&lt;<span class=\"title\">span</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: date\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">span</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">p</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;/<span class=\"title\">div</span>&gt;</span>\r\n                                        <span class=\"tag\">&lt;<span class=\"title\">p</span> <span class=\"attribute\">class</span>=<span class=\"value\">\"message\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"html: messageContent\"</span> /&gt;</span>\r\n                                    <span class=\"tag\">&lt;/<span class=\"title\">div</span>&gt;</span>\r\n                                    </code></pre>\r\n                                    \r\n                                        <p>Sekarang jika Anda mengklik sebuah surat, Anda akan melihatnya muncul di layar. Perhatikan penggunaan <code>html</code> binding, yang memungkinkan jeda baris atau markup HTML apa pun dalam konten email untuk ditampilkan di layar (kami membuat server bertanggung jawab untuk memastikan email dihapus dari konten berbahaya apa pun).</p>\r\n                                    \r\n                                        <p>Kerja bagus! Anda sekarang memiliki UI webmail yang sangat responsif - pengunjung dapat berpindah antar folder dan langsung membuka email satu per satu.</p>', 3, 1, '2022-09-12 15:21:57', 1, '2022-09-14 10:03:56', 1, 3),
(14, 'Single Page Application', '<h2>Mengaktifkan navigasi client-side</h2>\r\n                                        \r\n                                            <p>Ada banyak perpustakaan sumber terbuka untuk melakukan navigasi client-side (misalnya, dengan hash URL atau pushState). Salah satu dari mereka harus cocok dengan baik di samping Knockout. Untuk tutorial ini, kita akan menggunakan sammy.js karena memberikan cara mudah untuk menentukan pola URL client-side, seperti yang akan Anda lihat.</p>\r\n                                        \r\n                                               <p>Fungsi <code>goToFolder</code> dan <code>goToMail</code> secara langsung memicu permintaan Ajax dan memperbarui status viewmodel. Namun sekarang, kita akan mengubah <code>goToFolder</code> dan <code>goToMail</code> sehingga keduanya hanya memicu navigasi client-side. Secara terpisah, kami akan menggunakan Sammy untuk mendeteksi navigasi client-side dan kemudian melakukan permintaan Ajax dan memperbarui status model tampilan. ini berarti bahwa jika pengguna memicu navigasi client-side dengan cara yang berbeda (misalnya, mengklik <em>kembali</em>), pembaruan model tampilan yang sesuai akan tetap terjadi.</p>\r\n                                        \r\n                                            <p>Mulailah dengan menambahkan referensi ke <code>sammy.js</code> di bagian atas tampilan Anda:</p>\r\n                                        \r\n                                            <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">script</span> <span class=\"attribute\">src</span>=<span class=\"value\">\"/scripts/lib/sammy.js\"</span> <span class=\"attribute\">type</span>=<span class=\"value\">\"text/javascript\"</span>&gt;</span><span class=\"javascript\"></span><span class=\"tag\">&lt;/<span class=\"title\">script</span>&gt;</span>\r\n                                        </code></pre>\r\n                                        \r\n                                            <p>Selanjutnya, kurangi fungsi <code>goToFolder</code> dan <code>goToMail</code> Anda menjadi berikut ini, sehingga keduanya hanya memicu navigasi client-side:</p>\r\n                                        \r\n                                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"comment\">// Behaviours    </span>\r\n                                        self.goToFolder = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(folder)</span> {</span> <span class=\"highlight\">location.hash = folder</span> };\r\n                                        self.goToMail = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(mail)</span> {</span> <span class=\"highlight\">location.hash = mail.folder + <span class=\"string\">\'/\'</span> + mail.id</span> };\r\n                                        </code></pre>\r\n                                        \r\n                                            <p>Perhatikan bahwa kami menggunakan URL client-side dalam bentuk <code>#&lt;foldername&gt;</code> dan\r\n                                                <code>#&lt;foldername&gt;/&lt;mailid&gt;</code>.Yang harus kita lakukan sekarang adalah menggunakan Sammy untuk menangkap navigasi ke jenis URL ini, dan memanggil logika kita sebelumnya untuk memuat data yang sesuai melalui permintaan Ajax. Konfigurasikan Sammy sebagai berikut:</p>\r\n                                        \r\n                                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">WebmailViewModel</span><span class=\"params\">()</span> {</span>\r\n                                            <span class=\"comment\">// ... leave everything else unchanged ...   </span>\r\n                                        \r\n                                            <span class=\"comment\">// Client-side routes    </span>\r\n                                            Sammy(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                                <span class=\"keyword\">this</span>.get(<span class=\"string\">\'#:folder\'</span>, <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                                    self.chosenFolderId(<span class=\"keyword\">this</span>.params.folder);\r\n                                                    self.chosenMailData(<span class=\"literal\">null</span>);\r\n                                                    $.get(<span class=\"string\">\"/mail\"</span>, { folder: <span class=\"keyword\">this</span>.params.folder }, self.chosenFolderData);\r\n                                                });\r\n                                        \r\n                                                <span class=\"keyword\">this</span>.get(<span class=\"string\">\'#:folder/:mailId\'</span>, <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                                    self.chosenFolderId(<span class=\"keyword\">this</span>.params.folder);\r\n                                                    self.chosenFolderData(<span class=\"literal\">null</span>);\r\n                                                    $.get(<span class=\"string\">\"/mail\"</span>, { mailId: <span class=\"keyword\">this</span>.params.mailId }, self.chosenMailData);\r\n                                                });\r\n                                            }).run();\r\n                                        };\r\n                                        </code></pre>\r\n                                        \r\n                                            <p>Blok pertama cocok dengan URL dengan format <code>#&lt;foldername&gt;</code>; yang kedua cocok dengan URL dari format<code>#&lt;foldername&gt;/&lt;mailid&gt;</code>. Logika di dalamnya sama dengan fungsi <code>goToFolder</code> dan <code>goToMail</code> goToMail Anda sebelumnya — keduanya menggunakan permintaan Ajax untuk memperbarui viewmodel.</p>\r\n                                        \r\n                                            <p>Tampilan Anda sudah disiapkan untuk menampilkan hasil, jadi cobalah: Anda sekarang dapat bernavigasi dan melihat pembaruan URL. Jika Anda menjalankan Chrome, Firefox, atau Safari, Anda juga dapat menggunakan tombol maju dan mundur browser untuk menelusuri dan memutar ulang langkah Anda melalui folder.</p>\r\n                                        \r\n                                            <h4>Catatan untuk pengguna IE</h4>\r\n                                        \r\n                                            <p>Panel \"output\" (kiri bawah) menjalankan kode Anda di dalam iframe. Sementara sebagian besar browser mendukung navigasi berbasis hash dalam iframe dengan sempurna, berbagai browser lama (dan versi IE terbaru) tidak, sehingga Anda tidak akan melihat mundur/maju bekerja di panel \"output\" pada browser tersebut. Untuk lebih jelasnya, Sammy.js berfungsi dengan benar pada versi IE terbaru selama Anda tidak menggunakan iframe. Untuk membuktikannya, klik tautan \"contoh mandiri\" di akhir tutorial ini untuk melihat kode yang sudah selesai berjalan di luar iframe.\r\n</p>\r\n                                        \r\n                                            <h2>Mendukung bookmark / deep linking</h2>\r\n                                        \r\n                                            <p>Kode Anda hampir mendukung bookmark dan deep linking. Satu-satunya hal yang salah adalah, ketika halaman pertama kali dimuat, halaman tersebut secara paksa dialihkan ke Kotak Masuk, terlepas dari URL yang diminta. Mari kita perbaiki itu.</p>\r\n                                        \r\n                                            <p>Pertama, <strong>hapus</strong> baris yang memaksa redirection ke Kotak Masuk.</p>\r\n                                        \r\n                                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"comment\">// REMOVE the following two lines now:</span>\r\n                                        <span class=\"highlight\"><span class=\"comment\">// Show inbox by default</span></span>\r\n                                        <span class=\"highlight\">self.goToFolder(<span class=\"string\">\'Inbox\'</span>);</span>\r\n                                        </code></pre>\r\n                                        \r\n                                            <p>Sebagai gantinya, kami akan membuat Kotak Masuk muncul secara default hanya jika pengunjung memiliki URL client-side yang kosong. Tambahkan ke konfigurasi perutean Sammy Anda:</p>\r\n                                        \r\n                                            <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"comment\">// Client-side routes    </span>\r\n                                        Sammy(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n                                            <span class=\"comment\">// ... leave the existing two routes unchanged ...</span>\r\n                                        \r\n                                            <span class=\"highlight\"><span class=\"keyword\">this</span>.get(<span class=\"string\">\'\'</span>, <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> <span class=\"keyword\">this</span>.app.runRoute(<span class=\"string\">\'get\'</span>, <span class=\"string\">\'#Inbox\'</span>) });</span>\r\n                                        }).run();\r\n                                        </code></pre>\r\n                                        \r\n                                            <p>Menggunakan <code>runRoute</code> seperti ini berarti bahwa URL client-side yang kosong akan diperlakukan sama dengan <code>#Inbox</code>, yaitu akan memuat dan menampilkan Kotak Masuk.</p>\r\n                                        \r\n                                            <p>Itu berhasil! Sekarang pengunjung tidak hanya dapat bernavigasi dengan mengklik folder dan email, mereka juga dapat menggunakan tombol mundur/maju dan bookmark atau berbagi tautan sama seperti jika mereka menavigasi melalui halaman yang dibuat server. Dan karena rendering UI adalah semua sisi klien, hanya data JSON mentah yang ditransmisikan melalui kabel. Ini secara dramatis lebih efisien daripada memuat halaman HTML baru yang lengkap dari server setelah setiap klik, yang mengarah ke pengalaman pengguna yang jauh lebih menarik dan seperti asli.</p>', 4, 1, '2022-09-12 15:21:57', 1, '2022-09-14 10:03:58', 1, 3),
(15, 'Single Page Application', ' <h3>Ringkasan</h3>\r\n                                            \r\n <p>Knockout dan pola MVVM cocok secara alami untuk digunakan bersama library untuk bekerja dengan navigasi client-side. Setiap kali navigasi client-side terjadi, Anda memperbarui viewmodel Anda, dan UI akan diperbarui secara otomatis. Ini lebih bersih, lebih mudah, dan lebih kuat daripada menulis kode secara manual untuk memperbarui banyak bagian DOM Anda setiap kali navigasi terjadi.\r\n\r\nContoh ini berfokus pada navigasi client-side, sehingga hampir tidak menggunakan fitur Knockout sama sekali. Datanya hanya-baca, dan interaktivitas pengguna terbatas pada navigasi melalui data statis, jadi kami hanya menggunakan Knockout sebagai semacam sistem templating HTML sisi klien. Itu, tentu saja, bukan keseluruhan cerita: nilai sebenarnya adalah Anda juga dapat menghadirkan fitur Knockout yang lebih kaya (seperti pengikatan khusus, atau koleksi yang dapat diedit) dan mereka akan bekerja persis sama dalam navigasi client-side seperti tanpa itu. Kejelasan dan fleksibilitas arsitektur semacam ini memungkinkan Anda meningkatkan skala untuk menangani kompleksitas dunia nyata tanpa kode Anda menjadi tidak jelas atau tidak praktis.\r\n</p>', 5, 1, '2022-09-12 15:23:11', 1, '2022-09-14 10:04:01', 1, 3),
(16, 'Create Custom Binding', '<h2>Membuat binding khusus</h2>\r\n\r\n<p>Dalam interpretasi Knockout tentang MVVM, <em>bindings</em> adalah yang menyatukan tampilan dan viewmodel Anda. Binding adalah perantara; mereka melakukan pembaruan di kedua arah:</p>\r\n\r\n<ul>\r\n    <li>Binding melihat <strong>perubahan viewmodel</strong> dan memperbarui <strong>tampilan DOM</strong></li>\r\n    <li>Binding menangkap <strong>event DOM</strong> dan memperbarui <strong>properti viewmodel</strong></li>\r\n</ul>\r\n\r\n<p>Knockout memiliki kumpulan binding bawaan yang fleksibel dan komprehensif (misalnya, text, click, foreach), tetapi tidak berhenti di situ - Anda dapat membuat binding khusus hanya dalam beberapa baris kode. Dalam aplikasi realistis apa pun, Anda akan merasa manfaat merangkum pola UI umum di dalam binding, sehingga pola tersebut dapat digunakan kembali dengan mudah di banyak tempat. Misalnya, situs web ini menggunakan custom binding untuk merangkum pendekatannya terhadap dialog, panel yang dapat diseret, editor kode, dan bahkan untuk merender teks yang Anda baca.\r\n</p>\r\n\r\n<h3>Oke, mari kita buat sendiri</h3>\r\n\r\n<p>Anda sudah mendapatkan beberapa kode yang mewakili halaman survei yang tidak menarik tetapi berfungsi. Cobalah menggunakannya. Sekarang mari kita tingkatkan tampilan dan nuansa dalam tiga cara:</p>\r\n\r\n<ul>\r\n    <li>... dengan transisi animasi pada peringatan \"<em>Anda telah menggunakan terlalu banyak poin</em>\"</li>\r\n    <li>... dengan gaya yang ditingkatkan pada tombol Selesai</li>\r\n    <li>... dengan tampilan peringkat bintang yang menyenangkan untuk digunakan untuk menetapkan poin, alih-alih daftar drop-down yang mengganggu</li>\r\n</ul>', 1, 1, '2022-09-12 15:33:04', 1, '2022-09-14 10:04:04', 1, 4),
(17, 'Create Custom Binding', '<h2>Menerapkan transisi animasi</h2>\r\n\r\n<p>Ketika pengunjung memberikan terlalu banyak poin, peringatan \"<em>You\'ve used too many points</em>\" akan langsung terlihat, karena tampilannya dikontrol menggunakan <code>visible</code> binding.\r\n    Jika Anda ingin membuatnya memudar masuk dan keluar dengan lancar, Anda bisa menulis custom binding yang cepat dan dapat digunakan kembali yang secara internal menggunakan fungsi <code>fade</code> jQuery untuk mengimplementasikan animasi.</p>\r\n\r\n<p>Anda dapat menentukan binding khusus dengan menetapkan properti baru ke objek <code>ko.bindingHandlers</code>. Properti Anda dapat mengekspos dua fungsi panggilan balik:</p>\r\n\r\n<ul>\r\n    <li><code>init</code>, untuk dipanggil saat binding pertama kali terjadi (berguna untuk mengatur status awal atau mendaftarkan event handler)</li>\r\n    <li><code>update</code>, untuk dipanggil setiap kali data terkait diperbarui (sehingga Anda dapat memperbarui DOM agar sesuai)</li>\r\n</ul>\r\n\r\n<p>Mulai tentukan binding <code>fadeVisible</code> dengan menambahkan kode berikut di bagian atas panel viewmodel:</p>\r\n\r\n<pre><code class=\"javascript\" data-result=\"[object Object]\">ko.bindingHandlers.fadeVisible = {\r\n    update: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\r\n        <span class=\"comment\">// On update, fade in/out</span>\r\n        <span class=\"keyword\">var</span> shouldDisplay = valueAccessor();\r\n        shouldDisplay ? $(element).fadeIn() : $(element).fadeOut();\r\n    }\r\n};\r\n</code></pre>\r\n\r\n<p>Seperti yang Anda lihat, <code>update</code> handler diberikan elemen yang terikat padanya, dan fungsi yang mengembalikan nilai saat ini dari data terkait. Berdasarkan nilai saat ini, Anda dapat menggunakan jQuery untuk memudarkan elemen masuk atau keluar.</p>\r\n\r\n<p>Untuk menggunakan custom binding Anda, cukup ubah peringatan \"<em>You\'ve used too many points</em>\" sehingga menggunakan <code>fadeVisible</code> alih-alih <code>visible</code>:</p>\r\n\r\n<pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">h3</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"<span class=\"highlight\">fadeVisible</span>: pointsUsed() &gt; pointsBudget\"</span>&gt;</span>You\'ve used too many points! Please remove some.<span class=\"tag\">&lt;/<span class=\"title\">h3</span>&gt;</span>\r\n</code></pre>\r\n\r\n<p>Coba jalankan - behavior sudah hampir sempurna. Peringatan akan memudar masuk dan keluar dengan lancar sesuai kebutuhan.</p>\r\n\r\n<h2>Mengatur status awal elemen</h2>\r\n\r\n<p>Ada satu hal yang tidak beres: saat halaman pertama kali dimuat, peringatan tersebut untuk sementara mulai terlihat dan segera menghilang (klik Jalankan beberapa kali jika Anda perlu melihatnya terjadi). Anda harus menggunakan <code>handler</code> untuk memastikan status awal elemen cocok dengan data viewmodel awal.</p>\r\n\r\n<p>Itu cukup mudah - tambahkan <code>init</code> handler ke custom binding Anda:</p>\r\n\r\n<pre><code class=\"javascript\" data-result=\"[object Object]\">ko.bindingHandlers.fadeVisible = {\r\n    init: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\r\n        <span class=\"comment\">// Start visible/invisible according to initial value</span>\r\n        <span class=\"keyword\">var</span> shouldDisplay = valueAccessor();\r\n        $(element).toggle(shouldDisplay);\r\n    },\r\n    update: <span class=\"comment\">// ... leave the \"update\" handler unchanged ...</span>\r\n};\r\n</code></pre>\r\n\r\n<p>Itu memperbaikinya! Sekarang animasi hanya terjadi ketika viewmodel berubah.</p>\r\n\r\n<p>Membuat binding <code>fadeVisible</code> mungkin tampak seperti sedikit pekerjaan, tetapi ini adalah kode yang sepenuhnya dapat digunakan kembali, sehingga Anda dapat menyimpannya dalam file JavaScript \"bindings\" yang terpisah dan kemudian menggunakannya sebagai pengganti <code>visible</code> di mana saja di aplikasi Anda.</p>\r\n', 2, 1, '2022-09-12 15:44:31', 1, '2022-09-14 10:04:06', 1, 4),
(18, 'Create Custom Binding', '<h2>Mengintegrasikan dengan komponen pihak ketiga</h2>\r\n\r\n<p>Jika Anda ingin tampilan Anda berisi komponen dari library JavaScript eksternal (misalnya, jQuery UI atau YUI) dan mengikatnya ke properti viewmodel, teknik termudah adalah membuat custom binding. binding Anda akan menjadi perantara antara viewmodel Anda dan komponen pihak ketiga.</p>\r\n\r\n<p>Sebagai contoh, mari gunakan <a href=\"http://jqueryui.com/demos/button/\">widget \"Button\" jQuery UI</a> untuk meningkatkan tampilan dan nuansa tombol \"Finished\".</p>\r\n\r\n<p>Memulai cukup mudah. Definisikan <code>jqButton</code> binding dengan menambahkan kode berikut di bagian atas panel viewmodel:</p>\r\n\r\n<pre><code class=\"javascript\" data-result=\"[object Object]\">ko.bindingHandlers.jqButton = {\r\n    init: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element)</span> {</span>\r\n       $(element).button(); <span class=\"comment\">// Turns the element into a jQuery UI button</span>\r\n    }\r\n};\r\n</code></pre>\r\n\r\n<p>Untuk menggunakan binding, perbarui tombol \"<em>Finished</em>\" di view:</p>\r\n\r\n<pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"<span class=\"highlight\">jqButton: true,</span> enable: pointsUsed() &lt;= pointsBudget, click: save\"</span>&gt;</span>Finished<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n</code></pre>\r\n\r\n<p>Cobalah - ini sudah cukup berhasil. Tampilan tombol ditingkatkan, dan mengkliknya masih berfungsi sama</p>\r\n\r\n<h3>Toggling status \"disabled\" tombol</h3>\r\n\r\n<p>Tombol Anda tidak lagi terlihat dinonaktifkan ketika pengunjung telah melebihi anggaran poin mereka. <code>enable</code>\r\n    binding tidak berfungsi secara langsung dengan tombol UI jQuery, karena tombol UI jQuery tidak secara otomatis merespons atribut \"<code>disabled</code>\" HTML biasa. Sebagai gantinya, tombol jQuery UI memiliki API khusus untuk mengontrol tampilan yang enabled/disabled\r\n</p>\r\n\r\n<p>Itu tidak masalah: Anda dapat menggunakan <code>update</code> handler untuk memberi tahu tombol kapan harus mengaktifkan/menonaktifkan sendiri:\r\n</p>\r\n\r\n<pre><code class=\"javascript\" data-result=\"[object Object]\">ko.bindingHandlers.jqButton = {\r\n    init: <span class=\"comment\">/* ... leave \"init\" unchanged ... */</span>,\r\n    update: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\r\n        <span class=\"keyword\">var</span> currentValue = valueAccessor();\r\n        <span class=\"comment\">// Here we just update the \"disabled\" state, but you could update other properties too</span>\r\n        $(element).button(<span class=\"string\">\"option\"</span>, <span class=\"string\">\"disabled\"</span>, currentValue.enable === <span class=\"literal\">false</span>);\r\n    }\r\n};\r\n</code></pre>\r\n\r\n<p>Untuk menggunakan ini, perbarui tombol \"<em>Finished</em>\" sehingga Anda meneruskan properti <code>enable</code> ke dalam <code>jqButton</code> binding:</p>\r\n\r\n<pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"<span class=\"highlight\">jqButton: { enable: pointsUsed() &lt;= pointsBudget }</span>, click: save\"</span>&gt;</span>Finished<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n</code></pre>\r\n\r\n<p>Sekarang tombol akan terlihat abu-abu jika pengunjung melebihi anggaran poin mereka.</p>\r\n\r\n<p>Sekali lagi, <code>jqButton</code> binding dapat digunakan kembali pada tombol mana saja di aplikasi Anda, memungkinkan Anda secara deklaratif mengaitkan status tombol yang enabled/disabled dengan kondisi model tampilan apa pun. Anda juga dapat meningkatkan pengikatan untuk mengontrol secara deklaratif properti tombol UI jQuery lainnya juga, seperti ikon mana yang muncul di tombol.\r\n</p>\r\n', 3, 1, '2022-09-12 15:56:08', 1, '2022-09-14 10:04:08', 1, 4),
(19, 'Create Custom Binding', '    <h2>Menerapkan widget khusus</h2>\n\n    <p>Untuk menyelesaikan tutorial ini, mari lakukan sesuatu yang sedikit lebih menarik. Mari kita ganti dropdown \"importance\" dengan sistem peringkat bintang yang lebih baik untuk digunakan. Anda dapat melakukan ini hanya dalam beberapa baris kode dengan membuat binding untuk membungkus widget peringkat bintang yang ada (contoh) tetapi demi pembelajaran, mari kita buat sepenuhnya dari awal.\n    </p>\n\n    <p>Untuk memulai, tentukan pengikatan <code>starRating</code> dengan menambahkan yang berikut ini ke bagian atas panel viewmodel:\n    </p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\" data-second_best=\"[object Object]\">ko.bindingHandlers.starRating = {\n    init: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\n        $(element).addClass(<span class=\"string\">\"starRating\"</span>);\n        <span class=\"keyword\">for</span> (<span class=\"keyword\">var</span> i = <span class=\"number\">0</span>; i &lt; <span class=\"number\">5</span>; i++)\n           $(<span class=\"string\">\"&lt;span&gt;\"</span>).appendTo(element);\n    }\n};\n</code></pre>\n\n    <p>Kode ini hanya menyisipkan serangkaian element <code>&lt;span&gt;</code> Sudah ada beberapa CSS yang disiapkan untuk Anda tampilkan sebagai bintang. Untuk menggunakannya, perbarui tampilan Anda, singkirkan <code>&lt;select&gt;</code> dropdowns:</p>\n\n    <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">tbody</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"foreach: answers\"</span>&gt;</span>\n    <span class=\"tag\">&lt;<span class=\"title\">tr</span>&gt;</span>\n        <span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"text: answerText\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span>\n        <span class=\"highlight\"><span class=\"tag\">&lt;<span class=\"title\">td</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"starRating: points\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">td</span>&gt;</span></span>\n    <span class=\"tag\">&lt;/<span class=\"title\">tr</span>&gt;</span>\n<span class=\"tag\">&lt;/<span class=\"title\">tbody</span>&gt;</span>\n</code></pre>\n\n    <h3>Menampilkan rating saat ini</h3>\n\n    <p>Anda ingin peringkat bintang diperbarui secara otomatis setiap kali data model tampilan yang mendasarinya berubah, sehingga Anda dapat menggunakan <code>update</code> handler untuk menetapkan kelas CSS yang sesuai bergantung pada data saat ini:\n    </p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\">ko.bindingHandlers.starRating = {\n    init: <span class=\"comment\">/* ... leave \"init\" unchanged ... */</span>,\n    update: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\n        <span class=\"comment\">// Give the first x stars the \"chosen\" class, where x &lt;= rating</span>\n        <span class=\"keyword\">var</span> observable = valueAccessor();\n        $(<span class=\"string\">\"span\"</span>, element).each(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(index)</span> {</span>\n            $(<span class=\"keyword\">this</span>).toggleClass(<span class=\"string\">\"chosen\"</span>, index &lt; observable());\n        });\n    }\n};\n</code></pre>\n\n    <p>Karena alokasi poin awal semuanya 1, Anda harus mendapatkan satu bintang yang disorot untuk setiap jawaban.</p>\n\n    <h3>Highlighting saat mouse hover</h3>\n\n    <p>Saat pengunjung mengarahkan mouse ke bintang, ada baiknya untuk menyorot bintang yang akan mereka pilih. Status \"highlight\" tidak benar-benar perlu ditautkan ke model tampilan karena Anda tidak menyimpan data itu dengan cara apa pun, jadi opsi termudah adalah mengontrol highlighting dengan beberapa kode jQuery mentah.</p>\n\n    <p>Anda dapat menggunakan fungsi <code>hover</code> jQuery untuk menangkap acara hover-in dan hover-out, mengatur kelas CSS yang sesuai pada bintang yang terpengaruh:</p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\">init: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(element, valueAccessor)</span> {</span>\n    <span class=\"comment\">// ... leave existing code unchanged ... </span>\n\n    <span class=\"comment\">// Handle mouse events on the stars</span>\n    $(<span class=\"string\">\"span\"</span>, element).each(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(index)</span> {</span>\n        $(<span class=\"keyword\">this</span>).hover(\n            <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> $(<span class=\"keyword\">this</span>).prevAll().add(<span class=\"keyword\">this</span>).addClass(<span class=\"string\">\"hoverChosen\"</span>) },\n            <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> $(<span class=\"keyword\">this</span>).prevAll().add(<span class=\"keyword\">this</span>).removeClass(<span class=\"string\">\"hoverChosen\"</span>) }\n        );\n    });\n},\n</code></pre>\n\n    <p>Sekarang saat Anda menggerakkan mouse, Anda akan melihat bintang-bintang menyala.</p>\n\n    <h3>Menulis data kembali ke viewmodel</h3>\n\n    <p>Saat pengunjung mengeklik bintang, Anda ingin menyimpan peringkat mereka yang diperbarui dalam model tampilan yang mendasarinya, sehingga UI lainnya dapat diupdate secara otomatis. Ini cukup mudah dilakukan: gunakan <code>click</code> fucntion jQuery untuk menangkap click tersebut:</p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"comment\">// Handle mouse events on the stars</span>\n$(<span class=\"string\">\"span\"</span>, element).each(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(index)</span> {</span>\n    $(<span class=\"keyword\">this</span>).hover(\n        <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> $(<span class=\"keyword\">this</span>).prevAll().add(<span class=\"keyword\">this</span>).addClass(<span class=\"string\">\"hoverChosen\"</span>) },\n        <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> $(<span class=\"keyword\">this</span>).prevAll().add(<span class=\"keyword\">this</span>).removeClass(<span class=\"string\">\"hoverChosen\"</span>) }\n    )<span class=\"highlight\">.click(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span> </span>\n    <span class=\"highlight\">   <span class=\"keyword\">var</span> observable = valueAccessor(); </span> <span class=\"comment\">// Get the associated observable</span>\n    <span class=\"highlight\">   observable(index+<span class=\"number\">1</span>);              </span> <span class=\"comment\">// Write the new rating to it</span>\n    <span class=\"highlight\"> }); </span>\n});\n</code></pre>\n\n    <p>Cobalah - sistem peringkat bintang Anda sekarang harus berfungsi penuh! UI sekarang semua pembaruan sinkron dengan peringkat pengunjung.</p>\n\n    <h3>Ringkasan</h3>\n\n    <p><code>starRating</code> binding sama rumitnya dengan ikatan yang biasanya didapat. Ini menggambarkan bagaimana binding sering kali menjadi tempat kode Anda turun di bawah lapisan MVVM deklaratif yang berorientasi objek dengan baik dan ke dalam lapisan manipulasi DOM tingkat rendah yang lebih mentah untuk membuat pembaruan UI yang diperlukan. Apakah ini nyaman dan mudah bagi Anda atau tidak tergantung pada keahlian Anda dengan jQuery atau perpustakaan DOM lainnya ...</p>\n\n    <p>Seperti biasa, <code>starRating</code> benar-benar dapat digunakan kembali di mana saja di aplikasi Anda di mana Anda ingin menampilkan properti model tampilan numerik karena beberapa bintang di layar, secara otomatis menyegarkan tampilan setiap kali data model tampilan berubah. Ini dengan rapi memisahkan bisnis menampilkan bintang dari logika model tampilan apa pun yang berkaitan dengan pilihan pengunjung.\n    </p>\n', 4, 1, '2022-09-12 16:05:12', 1, '2022-09-14 10:04:11', 1, 4),
(20, 'Saving and Loading data', '<h2>Memuat dan menyimpan data</h2>\r\n\r\n<p>Sekarang, Anda telah memiliki pemahaman yang baik tentang bagaimana pola MVVM membantu Anda mengatur kode sisi klien dengan rapi untuk UI dinamis, dan bagaimana\r\n    Knockout\'s <em>observables</em>, <em>bindings</em>, and <em>dependency tracking</em> membuatnya bekerja. Di hampir semua aplikasi web, Anda juga perlu mendapatkan data dari server, dan mengirim kembali data yang dimodifikasi.\r\n</p>\r\n\r\n<p>Karena Knockout adalah perpustakaan sisi klien murni, ia memiliki fleksibilitas untuk bekerja dengan teknologi sisi server apa pun (mis., ASP.NET, Rails, PHP, dll.), dan pola arsitektur apa pun, basis data, apa pun. Selama kode sisi server Anda dapat mengirim dan menerima data JSON — tugas sepele untuk teknologi web yang setengah-layak — Anda akan dapat menggunakan teknik yang ditunjukkan dalam tutorial ini.\r\n</p>\r\n\r\n<h3>Skenario untuk tutorial ini</h3>\r\n\r\n<p>Semua perpustakaan JavaScript diwajibkan secara hukum untuk menawarkan contoh \"daftar tugas\" (catatan: itu lelucon) jadi ini dia. Luangkan waktu sejenak untuk memainkannya - tambahkan dan hapus beberapa tugas - dan baca kode untuk memahami cara kerjanya. Ini cukup mendasar dan dapat diprediksi. Selanjutnya, Anda akan memuat beberapa daftar tugas awal dari server, dan kemudian melihat dua cara berbeda untuk menyimpan data yang dimodifikasi kembali ke server\r\n</p>\r\n', 1, 1, '2022-09-12 16:10:52', 1, '2022-09-14 10:04:13', 1, 5);
INSERT INTO `modul_tutorial` (`id`, `name`, `description`, `tier`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_modul`) VALUES
(21, 'Loading and Saving data', '<h2>Memuat data dari server</h2>\r\n\r\n<p>Cara termudah untuk mendapatkan data JSON dari server adalah dengan membuat permintaan Ajax. Dalam tutorial ini, Anda akan menggunakan fungsi <code>$.getJSON</code> and <code>$.ajax</code> jQuery\r\n    untuk melakukannya. Setelah Anda mendapatkan datanya, Anda dapat menggunakannya untuk memperbarui model tampilan Anda, dan membiarkan UI memperbarui dirinya sendiri secara otomatis.\r\n</p>\r\n\r\n<p>Di server ini, ada beberapa kode yang menangani permintaan ke URL <code>/tasks</code>, dan merespons dengan data JSON. Tambahkan kode ke akhir <code>TaskListViewModel</code>\r\n    untuk meminta data tersebut dan menggunakannya untuk mengisi array <code>tasks</code>:\r\n</p>\r\n\r\n<pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">TaskListViewModel</span><span class=\"params\">()</span> {</span>\r\n    <span class=\"comment\">// ... leave the existing code unchanged ...</span>\r\n\r\n    <span class=\"comment\">// Load initial state from server, convert it to Task instances, then populate self.tasks</span>\r\n    $.getJSON(<span class=\"string\">\"/tasks\"</span>, <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(allData)</span> {</span>\r\n        <span class=\"keyword\">var</span> mappedTasks = $.map(allData, <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(item)</span> {</span> <span class=\"keyword\">return</span> <span class=\"keyword\">new</span> Task(item) });\r\n        self.tasks(mappedTasks);\r\n    });\r\n}\r\n</code></pre>\r\n\r\n<p><em><strong>Catatan penting!</strong> Perhatikan bahwa Anda <strong>tidak</strong> memanggil <code>ko.applyBindings</code> setelah memuat data. Banyak pendatang baru Knockout membuat kesalahan dengan mencoba mengikat ulang UI tmereka setiap kali mereka memuat beberapa data, tetapi itu tidak berguna. Tidak ada alasan untuk mengikat ulang - cukup memperbarui model tampilan yang ada sudah cukup untuk membuat seluruh UI diperbarui.\r\n    </em></p>\r\n\r\n<p>Kode ini mengambil data mentah array yang dikembalikan oleh server dan menggunakan helper jQuery <code>$.map</code> untuk membuat instance <code>Task</code> dari setiap entri mentah. Hasil array objek <code>Task</code> kemudia didorong ke dalam array <code>tasks</code>, yang menyebabkan UI diperbarui karena dia observables.</p>\r\n\r\n', 2, 1, '2022-09-12 16:21:40', 1, '2022-09-14 10:04:15', 1, 5),
(22, 'Loading and Saving data', '\r\n    <h2>Mengirim data kembali ke server: metode 1</h2>\r\n\r\n    <p>Tentu saja, Anda juga dapat menggunakan permintaan Ajax untuk mengirim data kembali ke server.\r\n        Tetapi sebelum kita sampai pada itu, ada alternatif yang mungkin lebih sederhana untuk dipertimbangkan.</p>\r\n\r\n    <p>Jika Anda memiliki beberapa representasi data model Anda di dalam <code>&lt;form&gt;</code>, HTML biasa, maka Anda cukup membiarkan pengguna memposting formulir itu ke server Anda.\r\n        Ini sangat mudah untuk dilakukan. Misalnya, tambahkan markup formulir berikut di bagian bawah tampilan Anda:</p>\r\n\r\n    <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">form</span> <span class=\"attribute\">action</span>=<span class=\"value\">\"/tasks/saveform\"</span> <span class=\"attribute\">method</span>=<span class=\"value\">\"post\"</span>&gt;</span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">textarea</span> <span class=\"attribute\">name</span>=<span class=\"value\">\"tasks\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: ko.toJSON(tasks)\"</span>&gt;</span><span class=\"tag\">&lt;/<span class=\"title\">textarea</span>&gt;</span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">type</span>=<span class=\"value\">\"submit\"</span>&gt;</span>Save<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n<span class=\"tag\">&lt;/<span class=\"title\">form</span>&gt;</span>\r\n</code></pre>\r\n\r\n    <p>Cuplikan ini menggunakan <code>&lt;textarea&gt;</code> agar Anda dapat melihat apa yang terjadi di balik layar. Cobalah: saat pengunjung mengedit data di UI, pelacakan ketergantungan akan menyebabkan representasi JSON di area teks diperbarui secara otomatis. Saat pengunjung mengirimkan formulir, kode sisi server Anda akan menerima data JSON tersebut.\r\n    </p>\r\n\r\n    <p>Anda tidak benar-benar ingin menampilkan <code>&lt;textarea&gt;</code> yang terlihat kepada pengunjung sebenarnya, jadi gantilah dengan kontrol input hidden:</p>\r\n\r\n    <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">form</span> <span class=\"attribute\">action</span>=<span class=\"value\">\"/tasks/saveform\"</span> <span class=\"attribute\">method</span>=<span class=\"value\">\"post\"</span>&gt;</span>\r\n    <span class=\"highlight\"><span class=\"tag\">&lt;<span class=\"title\">input</span> <span class=\"attribute\">type</span>=<span class=\"value\">\"hidden\"</span> <span class=\"attribute\">name</span>=<span class=\"value\">\"tasks\"</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"value: ko.toJSON(tasks)\"</span> /&gt;</span></span>\r\n    <span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">type</span>=<span class=\"value\">\"submit\"</span>&gt;</span>Save<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n<span class=\"tag\">&lt;/<span class=\"title\">form</span>&gt;</span>\r\n</code></pre>\r\n\r\n', 3, 1, '2022-09-12 16:25:35', 1, '2022-09-14 10:04:17', 1, 5),
(23, 'Loading and Saving data', '<div data-bind=\"markdown: currentTutorialStep() &amp;&amp; currentTutorialStep().Instructions\">\r\n    <h2>Mengirim data kembali ke server: metode 2</h2>\r\n\r\n    <p>Sebagai alternatif dari posting <code>&lt;form&gt;</code> HTML lengkap, Anda tentu saja dapat mengirim data model Anda ke server menggunakan request Ajax. misalnya,\r\n        <em>hapus</em> <code>&lt;form&gt;</code> yang baru saja Anda tambahkan di langkah sebelumnya, dan ganti dengan <code>&lt;button&gt;</code> sederhana:\r\n    </p>\r\n\r\n    <pre><code class=\"xml\" data-result=\"[object Object]\"><span class=\"tag\">&lt;<span class=\"title\">button</span> <span class=\"attribute\">data-bind</span>=<span class=\"value\">\"click: save\"</span>&gt;</span>Save<span class=\"tag\">&lt;/<span class=\"title\">button</span>&gt;</span>\r\n</code></pre>\r\n\r\n    <p>... lalu implementasikan <code>save</code> fungsi simpan dengan menambahkan fungsi tambahan ke <code>TaskListViewModel</code>:</p>\r\n\r\n    <pre><code class=\"javascript\" data-result=\"[object Object]\"><span class=\"function\"><span class=\"keyword\">function</span> <span class=\"title\">TaskListViewModel</span><span class=\"params\">()</span> {</span>\r\n    <span class=\"comment\">// ... leave all the existing code unchanged ...  </span>\r\n\r\n    self.save = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\r\n        $.ajax(<span class=\"string\">\"/tasks\"</span>, {\r\n            data: ko.toJSON({ tasks: self.tasks }),\r\n            type: <span class=\"string\">\"post\"</span>, contentType: <span class=\"string\">\"application/json\"</span>,\r\n            success: <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(result)</span> {</span> alert(result) }\r\n        });\r\n    };\r\n}\r\n</code></pre>\r\n\r\n    <p>Dalam contoh ini, <code>success</code> handler hanya <code>memberitahu</code> apa pun yang ditanggapi server, hanya agar Anda dapat melihat server benar-benar menerima dan memahami data. Dalam aplikasi nyata, Anda akan lebih cenderung menampilkan pesan flash \"tersimpan\" atau mengalihkan ke halaman lain.\r\n    </p>\r\n</div>\r\n', 4, 1, '2022-09-12 16:29:59', 1, '2022-09-14 10:04:22', 1, 5),
(24, 'Loading and Saving data', '    <h2>Pelacakan penghapusan</h2>\n\n    <p>Jika pengguna telah menghapus beberapa data pada klien, bagaimana server tahu untuk menghapus catatan database yang sesuai? Salah satu kemungkinannya adalah server harus memeriksa kumpulan data yang masuk, membandingkannya dengan apa yang ada di database, dan menyimpulkan catatan mana yang dihapus. Tapi itu cukup canggung - jauh lebih baik jika klien mengirimkan data yang secara eksplisit menyatakan catatan mana yang dihapus.</p>\n\n    <p>Saat memanipulasi observable array, Anda dapat dengan mudah melacak penghapusan dengan menggunakan fungsi <code>destroy</code> untuk menghapus item.\n        Misalnya, perbarui fungsi <code>removeTask</code> anda:</p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\">self.removeTask = <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(task)</span> {</span> self.tasks.<span class=\"highlight\">destroy</span>(task) };\n</code></pre>\n\n    <p>Apa fungsinya? Yah, itu tidak lagi benar-benar menghapus instansi <code>Task</code> dari <code>tasks</code> array - sebagai gantinya, itu hanya menambahkan properti <code>_destroy</code>\n        ke instance <code>Task</code> dengan nilai. <code>true</code>. Ini sama persis dengan konvensi Ruby on Rails menggunakan <code>_destroy</code> untuk menunjukkan bahwa item yang dikirimkan harus dihapus.\n        <code>foreach</code> binding mengetahui hal ini, dan tidak akan menampilkan item apa pun dengan nilai properti itu (itulah sebabnya item menghilang saat dihancurkan).\n    </p>\n\n    <h3>Bagaimana server menangani ini?</h3>\n\n    <p>Jika Anda menyimpan data sekarang, Anda akan melihat bahwa server masih menerima item yang dihancurkan, dan server dapat mengetahui item mana yang ingin Anda hapus\n        (karena mereka memiliki properti <code>_destroy</code> yang disetel ke <code>true</code>).</p>\n\n    <ul>\n        <li>Jika Anda menggunakan fitur parsing JSON otomatis di Rails, ActiveRecord akan mengetahui bahwa Anda ingin menghapus item terkait.</li>\n        <li>Untuk teknologi lain, Anda dapat menambahkan sedikit kode sisi server untuk menemukan <code>_destroy</code> dan menghapus item tersebut.</li>\n    </ul>\n\n    <p>Jika Anda ingin melihat lebih jelas data apa yang diterima server dalam contoh ini, coba ganti tombol \"Save\" dengan ajax dengan teknik form-HTML dari langkah 3 dalam tutorial ini.\n        .</p>\n\n    <h3>Hei, penghitung tugas saya tidak lagi berfungsi!</h3>\n\n    <p>Perhatikan bahwa keterangan \"<em>You have x incomplete task(s)</em>\" tidak lagi memfilter item yang dihapus, arena properti <code>incompleteTasks</code> computed\n        tidak mengetahui apa pun tentang flag <code>_destroy</code> Perbaiki ini dengan memfilter tugas yang dihancurkan:</p>\n\n    <pre><code class=\"javascript\" data-result=\"[object Object]\">self.incompleteTasks = ko.computed(<span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">()</span> {</span>\n    <span class=\"keyword\">return</span> ko.utils.arrayFilter(self.tasks(), <span class=\"function\"><span class=\"keyword\">function</span><span class=\"params\">(task)</span> {</span> <span class=\"keyword\">return</span> !task.isDone() <span class=\"highlight\">&amp;&amp; !task._destroy</span> });\n});\n</code></pre>\n\n    <p>Sekarang UI akan secara konsisten melihat <code>_destroy</code>ed tasks tidak ada, meskipun mereka masih dilacak secara internal.</p>\n', 5, 1, '2022-09-12 18:00:57', 1, '2022-09-14 10:04:24', 1, 5),
(25, 'Operator dan Variabel', '<h2>Variabel PHP</h2>\n<h4>Sintaks Perintah Membuat Variabel</h4>\nSuatu variabel digunakan untuk menyimpan suatu nilai, dapat berupa teks, angka, atau array.\nVariabel dalam PHP menggunakan simbol ‘$’ di awal namanya. Sintaks perintah membuat variabel:\n$nama_var = nilai;\n<h4>Tipe Data dari Variabel</h4>\nTipe data variabel tidak perlu didekalarasikan, PHP akan otomatis mengkonversi atau menentukan\ntipe data variabel berdasarkan nilai yang disimpannya. Contoh:\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"tag\">$<span class=\"title\">nama</span> <span class=\"attribute\">= \'Alvina Khansa\';</span>\n    <span class=\"tag\">$<span class=\"title\">nilai</span> <span class=\"attribute\">= 90;</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\nVariabel nama diatas otomatis akan bertipe string, variabel nilai akan bertipe integer. \n<br>\nAturan Pemberian Nama Variabel\n<br>\n• Harus dimulai dengan huruf atau garis bawah (underscore) ‘_’.\n<br>\n• Hanya dapat menggunakan karakter alphanumeric dan underscore\n<br>\n• (A?Z / a?z / 0 ? 9, dan _)\n<br>\n• Sebaiknya tidak menggunakan spasi, jika nama variabel terdiri lebih dari satu kata, pisahkan\ndengan underscore ($nama_depan, $nilai_tugas) atau kapitalisasi ($namaDepan, $nilaiTugas)\n<br>\n<h4>Scope Variabel</h4>\nScope atau ruang lingkup variabel adalah bagian dari skrip yang dapat mereferensikan variabel\ntersebut. Ada 3 scope variabel dalam PHP:\n<h4>Scope Local</h4>\nSuatu variabel yang dibuat pada suatu fungsi akan menjadi variabel lokal (memiliki scope local)\ndan hanya bisa diakses di dalam fungsi. Nama variabel yang sama dapat dibuat dalam fungsi\nyang berbeda, sebab variabel lokal hanya dikenali oleh fungsi yang membentuk variabel\ntersebut. Variabel lokal akan dihapus setelah fungsi usai dieksekusi. Contoh:\n<br>\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"tag\">function(){</span>\n       <span class=\"title\">$lokal</span> <span class=\"attribute\">= ’Saya hanya bisa diakses dari fungsi dimana saya berada’;</span>\n       <span class=\"title\">echo</span> <span class=\"attribute\">$lokal; //mencetak variable lokal</span>\n    <span class=\"tag\">}</span>\n    <span class=\"title\">echo</span> <span class=\"attribute\">$lokal; //akan terjadi error</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\n<h4>Scope Global</h4>\nScope global dimiliki oleh variabel yang dibuat diluar fungsi. Variabel dengan scope global\ndapat diakses dari bagian manapun dari program selama perintah tersebut ditulis diluar suatu\nfungsi. Variabel global dapat diakses dari dalam suatu fungsi dengan menggunakan kata kunci\n‘global’. Contoh:\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"tag\">$a = 10;</span>\n    <span class=\"tag\">function myTest(){</span>\n       <span class=\"attribute\">//mengacu ke variable scoper global</span>\n       <span class=\"title\">echo</span> <span class=\"attribute\">global $a;</span>\n    <span class=\"tag\">}</span>\n    <span class=\"title\">myTest()</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\n\n<h4>Scope Statik</h4>\nKetika suatu fungsi selesai digunakan, secara normal semua variabelnya akan dihapus. Jika\ndiinginkan variabel?variabel tersebut tidak dihapus ketika fungsi selesai dipakai, gunakan kata kunci ‘static’ saat membuat variabel. Contoh pembuatan variabel statik :\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"title\">static</span> <span class=\"attribute\">$varStatik;</span>\n<span class=\"title\">?</span>&gt;</span>\n<span class=\"title\">variabel $varStatik sekarang menjadi variabel statik. </span>\n</code></pre>\n<h2>Operator</h2>\nOperator digunakan untuk mengolah nilai. PHP memiliki beberapa kategori operator sebagai\nberikut:\n<br>\nOperator Hitung \n<br>\n+ Pertambahan \n<br>\n? Pengurangan  \n<br>\n* Perkalian\n<br> \n/ Pembagian \n<br>\n% Sisa hasil bagi  \n<br>\n++ Inkremen\n<br>\n?? dekremen\nContoh 1:\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"title\">//menghitung penjualan bersih</span>\n    <span class=\"title\">$jual = 100000;</span>\n    <span class=\"title\">$potongan = 0.1;</span>\n    <span class=\"title\">$net = $jual-($jual*$potongan);</span>\n    <span class=\"title\">echo \"Penjualan bersih = Rp $net,00\";</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\nContoh 2:\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"title\">//penggunaan operator modulus/sisa hasil bagi</span>\n    <span class=\"title\">$hal=10;</span>\n    <span class=\"title\">if ($hal % 2 == 0)</span>\n       <span class=\"title\">echo ‘Halaman genap’;</span>\n    <span class=\"title\">else</span>\n       <span class=\"title\">echo ‘Halaman ganjil’;</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\nContoh 3:\n<pre><code>\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\n    <span class=\"title\">//penggunaan inkremen</span>\n    <span class=\"title\">for($i=1;$i<=100;$i++){</span>\n       <span class=\"title\">echo “$i ”;</span>\n    <span class=\"title\">}</span>\n<span class=\"title\">?</span>&gt;</span>\n</code></pre>\n<h4>Operator Penugasan</h4>\n= sama dengan\n<br>\n+= tambah sama dengan contoh: a+=b artinya a=a+b\n<br>\n?= kurang sama dengan contoh: a-=b artinya a=a-b\n<br>\n*= kali sama dengan contoh: a*=b artinya a=a*b\n<br>\n/= bagi sama dengan contoh: a/=b artinya a=a/b\n<br>\n%= modulo(sisa hasil bagi) sama dengan contoh: a%=b artinya a=a%b\n<h4>Operator Perbandingan</h4>\n==  sama dengan  5==8 mengembalikan nilai false\n<br>\n!=  tidak sama dengan  5!=8 mengembalikan nilai true\n<br>\n<>  tidak sama dengan  5<>8 mengembalikan nilai true\n<br>\n>  lebih besar dari  5>8 mengembalikan nilai false\n<br>\n<  lebih kecil dari  5<8 mengembalikan nilai true\n<br>\n>=  lebih besar dari atau sama dengan 5>=8 mengembalikan nilai false\n<br>\n<=  lebih kecil dari atau sama dengan 5<=8 mengembalikan nilai true\n<br>\n<h4>Operator Logika</h4>\n&&(and)  contoh: x=6; y=3; (x < 10 && y > 1) mengembalikan true\n<br>\n||(or) contoh: x=6; y=3; (x==5 || y==5) mengembalikan false\n<br>\n!(not) contoh: x=6; y=3; !(x==y) mengembalikan true\n', 1, 1, '2022-09-16 09:20:40', 1, '2022-09-16 09:21:45', 1, 1),
(26, 'Conditional IF', '<h2>Struktur Kendali</h2>\r\nSeringkali alur eksekusi suatu program tidak berjalan lurus dari baris kode pertama sampai baris\r\nterakhir. Kadang?kadang pada suatu baris tertentu alur program bercabang (struktur keputusan). \r\nDi lain baris alur program akan kembali ke baris kode sebelumnya untuk mengulangi sekelompok\r\nperintah (struktur perulangan). \r\nStruktur keputusan dalam PHP mengenal struktur if dan switch. Untuk menerapkan suatu\r\nperulangan baris?baris kode program menggunakan struktur for, while, do...while, dan foreach.\r\nBerikut ini penjelasan masing?masing struktur tersebut.\r\n<h4>Struktur Keputusan</h4>\r\nKetika Anda menulis kode program, suatu saat Anda perlu menggunakan mekanisme percabangan\r\nsehingga berdasarkan kondisi program Anda akan melakukan aksi yang berbeda. Misalnya saja\r\nAnda ingin membuat program yang dapat menampilkan salam yang berbeda tergantung jenis hari\r\npada saat itu, maka kode programnya akan seperti ini:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$hari=date(“D”);</span>\r\n    <span class=\"attribute\">if ($hari==”Mon”)</span>\r\n       <span class=\"attribute\">echo “Selamat berlibur”;</span>\r\n    <span class=\"attribute\">else</span>\r\n       <span class=\"attribute\">echo “Selamat bekerja dan berkarya”;</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nJika program diatas dijalankan pada hari Minggu, maka Anda akan memperoleh ucapan ‘Selamat\r\nberlibur’, tapi jika dijalankan selain hari Minggu akan memperoleh ucapan ‘Selamat bekerja dan\r\nberkarya’.\r\nYa, contoh diatas adalah salah satu penggunaan struktur kondisi (if) yang dimiliki PHP. Struktur if\r\nmempunyai beberapa format, berikut penjelasannya. \r\n<h4>If</h4>\r\nStruktur ini memiliki 3 jenis format pemakaian, yaitu:\r\n\r\n<h5>• Pertama, bila struktur ini hanya akan mengeksekusi beberapa kode program hanya jika nilai\r\nkondisi true, maka format yang digunakan:\r\n<pre>\r\n<span class=\"attribute\">if (kondisi_1)</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_1_true;</span>\r\n</pre>\r\nContoh:</h5>\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$hari=date(“D”);</span>\r\n    <span class=\"attribute\">if ($hari==”Mon”)</span>\r\n       <span class=\"attribute\">echo “Selamat berlibur”;</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\n<h5>• Kedua, baik nilai kondisi if true atau false akan sama?sama mengeksekusi suatu kode program,\r\nmaka format yang digunakan:\r\n<pre>\r\n<span class=\"attribute\">if (kondisi_1)</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_1_true;</span>\r\n<span class=\"attribute\">else</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_1_false;</span>\r\n</pre>\r\nContoh:</h5>\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$hari=date(“D”);</span>\r\n    <span class=\"attribute\">if ($hari==”Mon”)</span>\r\n       <span class=\"attribute\">echo “Selamat berlibur”;</span>\r\n    <span class=\"attribute\">else</span>\r\n       <span class=\"attribute\">echo “Selamat bekerja dan berkarya”;</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\n<h5>• Ketiga, bila ada beberapa kondisi yang perlu dievaluasi, maka format yang digunakan:\r\n<pre>\r\n<span class=\"attribute\">if (kondisi_1)</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_1_true;</span>\r\n<span class=\"attribute\">elseif (kondisi_2)</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_2_true;</span>\r\n<span class=\"attribute\">else</span>\r\n  <span class=\"attribute\">kode_yang_akan dieksekusi_bila_nilai_kondisi_1_dan_2_false;</span>\r\n</pre>\r\nContoh:</h5>\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$hari=date(“D”);</span>\r\n    <span class=\"attribute\">if ($hari==”Mon”)</span>\r\n       <span class=\"attribute\">echo “Selamat berlibur”;</span>\r\n    <span class=\"attribute\">elseif ($hari==”Sat”)</span>\r\n       <span class=\"attribute\">echo “Selamat libur panjang”;</span>\r\n    <span class=\"attribute\">else</span>\r\n       <span class=\"attribute\">echo “Selamat bekerja dan berkarya”;</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nJika kode program yang akan dieksekusi dalam if lebih dari satu, maka kode?kode program tersebut\r\nharus dikurung dengan tanda kurung kurawal buka dan tutup seperti ini:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$hari=date(“D”);</span>\r\n    <span class=\"attribute\">if ($hari==”Mon”){</span>\r\n       <span class=\"attribute\">echo “Hai coy,<br />”;</span>\r\n       <span class=\"attribute\">echo “Selamat berlibur<br />”;</span>\r\n       <span class=\"attribute\">echo “Jangan lupa pesenanku ya”;</span>\r\n    <span class=\"attribute\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\n<h4>Switch</h4>\r\nJika dalam program ada banyak pilihan, maka lebih baik menggunakan switch. Sintaksnya:\r\n<pre>\r\n<span class=\"attribute\">switch(n){</span>\r\n  <span class=\"attribute\">case label_1 : pernyataan_yg_dieksekusi_jika_n=label_1;</span>\r\n  <span class=\"attribute\">break;</span>\r\n  <span class=\"attribute\">case label_2 : pernyataan_yg_dieksekusi_jika_n=label_2;</span>\r\n  <span class=\"attribute\">break;</span>\r\n  <span class=\"attribute\">default : dieksekusi_bila_nilai_n_bukan_label2_atau_label_1;</span>\r\n<span class=\"attribute\">}</span>\r\n</pre>\r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"attribute\">$x=1;</span>\r\n    <span class=\"attribute\">switch ($x){</span>\r\n      <span class=\"attribute\">case 1:</span>\r\n      <span class=\"attribute\">echo \"Number 1\";;</span>\r\n      <span class=\"attribute\">break;</span>\r\n      <span class=\"attribute\">case 2:</span>\r\n      <span class=\"attribute\">echo \"Number 2\";;</span>\r\n      <span class=\"attribute\">break;</span>\r\n      <span class=\"attribute\">case 3:</span>\r\n      <span class=\"attribute\">echo \"Number 3\";;</span>\r\n      <span class=\"attribute\">break;</span>\r\n      <span class=\"attribute\">default :</span>       \r\n      <span class=\"attribute\">echo \"No number between 1 and 3\";</span>\r\n    <span class=\"attribute\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>', 1, 1, '2022-09-16 09:49:26', 1, '2022-09-16 09:49:26', 1, 2),
(27, 'Looping ', '<h2>Struktur Perulangan (Loop)</h2>\r\n<h4>PHP mempunyai beberapa struktur perulangan:</h4>\r\n<h4>for</h4>\r\nFor merupakan struktur perulangan yang sering digunakan dalam pemrograman. Sintaksnya:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">for (inisialisasi; kondisi; inkremen){</span>\r\n       <span class=\"title\">kode yang akan ndieksekusi;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nTiga parameternya:\r\ninisialisasi  :  nilai awal konter\r\n<br>\r\nkondisi   :  parameter yang akan dievaluasi pada setiap  iterasi  perulangan.  Jika  hasil evaluasi true, perulangan akan dilanjutkan, bila false perulangan akan dihentikan\r\n<br>\r\ninkremen  :  nilai pertambahan konter setiap satu iterasi perulangan diselesaikan. Setiap parameter di atas bersifat opsional.\r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">for($i=1;$i<=100;$i++){</span>\r\n       <span class=\"title\">echo \"Bilangan ke?$i:  \" . $i . \"<br />\";</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nContoh for tanpa parameter kondisi:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">for($i=1;;$i++){</span>\r\n       <span class=\"title\">echo \"Bilangan ke?$i:  \" . $i . \"<br />\";</span>\r\n       <span class=\"title\"> if ($i>=5) exit;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\n<h4>foreach</h4>\r\nPerulangan ini disediakan PHP untuk memudahkan kita mengakses elemen?elemen suatu array.\r\nSintaks:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">foreach ($array as $value){</span>\r\n       <span class=\"title\">kode yang akan dieksekusi;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nPada setiap iterasi perulangan, nilai dari elemen array yang sedang ditunjuk oleh pointer akan\r\ndiletakkan ke variabel $value kemudian pointer akan bergerak menunjuk elemen array berikutnya\r\nsehingga pada iterasi selanjutnya, elemen array berikutnya yang akan diolah.\r\nContoh berikut akan mencetak nilai “satu”, “dua”, dan “tiga” secara berturut?turut:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">$x=array(\"satu\",\"dua\",\"tiga\");</span>\r\n    <span class=\"title\">foreach ($x as $value){</span>\r\n       <span class=\"title\">echo $value . \"<br />\";</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\n<h4>While</h4>\r\n\r\nPerulangan while akan menjalankan suatu blok kode (sekelompok kode) selama kondisinya bernilai\r\ntrue. Sintaks perulangan ini:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">while(condition){</span>\r\n       <span class=\"title\">kode yang akan dieksekusi;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">$i=1;</span>\r\n    <span class=\"title\">while($i<=5){</span>\r\n       <span class=\"title\">echo \"Bilangan ke?$i:  \" . $i . \"<br />\";</span>\r\n       <span class=\"title\">$i++;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nContoh while di atas akan terus menjalankan blok kodenya selama nilai dari variabel $i lebih kecil\r\natau sama dengan 5. Dan pada setiap iterasinya, nilai variabel $i akan bertambah 1 ($i++)\r\n<h4>Do...while</h4>\r\nSatu yang unik dari perulangan ini adalah, dia pasti akan melakukan iterasi, minimal satu kali,\r\nmeskipun nilai kondisinya tidak pernah true. Hal ini disebabkan struktur perulangan yang\r\nmenyebabkan blok kode akan dijalankan lebih dulu, lalu kondisinya dievaluasi belakangan. Sintaks\r\nperulangan ini:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">do{</span>\r\n       <span class=\"title\">kode yang akan dieksekusi;</span>\r\n    <span class=\"title\">}</span><span class=\"title\">while(kondisi);</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">$i=1;</span>\r\n    <span class=\"title\">do{</span>\r\n       <span class=\"title\">$i++;</span>\r\n       <span class=\"title\">echo \"Bilangan ke?$i:  \" . $i . \"<br />\";</span>\r\n    <span class=\"title\">}</span><span class=\"title\">while ($i<=5);</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nContoh di atas akan menjalankan kode $i++ dan echo \"Bilangan ke?$i:  \" . $i . \"<br />\"; terlebih dahulu,\r\nsetelah itu baru kondisinya dievaluasi.', 1, 1, '2022-09-16 15:07:30', 1, '2022-09-16 15:07:53', 1, 3),
(28, 'Function', '<h2>Fungsi</h2>\r\nSebuah fungsi dibuat dengan aturan sintaks:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">function namaFungsi() {</span>\r\n       <span class=\"title\">kode?kode yang akan dieksekusi;</span>\r\n    <span class=\"title\">}</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nBeberapa petunjuk dalam membuat sebuah fungsi:\r\n<br>\r\n• Namai fungsi yang menggambarkan fungsinya\r\n<br>\r\n• Nama fungsi dimulai dengan huruf atau garis bawah (underscore), tidak boleh angka.\r\n<br>\r\n<h4>Pemanggilan Fungsi</h4>\r\nKetika fungsi sudah dibuat, dia dapat dijalankan dengan cara dipanggil. Pemanggilan suatu fungsi\r\nmengikuti pola: nama fungsi lalu diikuti tanda kurung dan nilai parameter jika ada. Contoh:\r\n<br>\r\n<b>tambah(10,20);</b>\r\n<br>\r\nMemanggil sebuah fungsi bernama tambah dengan nilai parameter 10 dan 20. Jika tidak ada nilai\r\nparameter, maka pemanggilan fungsi:\r\n<br>\r\n<b>cetak();</b>\r\n<h4>Parameter Fungsi</h4>\r\nUntuk menambah daya guna fungsi dapat ditambahkan parameter fungsi yang tidak lain adalah\r\nserupa variabel. Parameter ini dituliskan sesudah nama fungsi didalam tanda kurung. Dengan\r\nparameter ini, hasil dari fungsi dapat diatur sesuai dengan keinginan.\r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">function namaProg ($fprogram) {</span>\r\n       <span class=\"title\">  echo $fname . “<br />”</span>\r\n    <span class=\"title\">}</span>\r\n    <span class=\"title\">echo “Bahasa membuat struktur dan konten adalah ”.namaProg(“HTML”);</span>\r\n    <span class=\"title\">echo “Unsur interaktif diberikan oleh ”.namaProg(“Javascript”);</span>\r\n    <span class=\"title\">echo “Memperindah tampilan fungsi dari ”.namaProg(“CSS”);</span>\r\n    <span class=\"title\">echo “Aplikasi web pengolahan data menggunakan ”.namaProg(“PHP”);</span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nHasil dari fungsi diatas (nama program) dapat diubah?ubah dengan memberi nilai berbeda pada\r\nparameter $fprogram saat pemanggilan fungsi.\r\n<h4>Nilai Balik Fungsi</h4>\r\nFungsi dapat diatur agar mengembalikan hasil berupa nilai dengan cara menggunakan kata kunci\r\nreturn. \r\nContoh:\r\n<pre><code>\r\n<span class=\"tag\">&lt;<span class=\"title\">?php</span>\r\n    <span class=\"title\">function tambah(){</span>\r\n       <span class=\"title\">$total = $x + $y;</span>\r\n       <span class=\"title\">return $total;</span>\r\n    <span class=\"title\">}</span>\r\n    <span class=\"title\">echo “$x + $y = ” . tambah(5,20);  </span>\r\n<span class=\"title\">?</span>&gt;</span>\r\n</code></pre>\r\nNilai yang dikembalikan pada fungsi diatas adalah jumlah dari nilai variabel $x dan $y yang  ada\r\ndidalam variabel $total. Hasil di layar browser adalah tampilan 5 + 20 = 25', 1, 1, '2022-09-16 15:37:52', 1, '2022-09-16 15:37:52', 1, 4),
(29, 'Array', '<h2>Array</h2>\r\nArray adalah jenis tipe data khusus yang menyimpan sejumlah nilai data dalam sebuah variabel.\r\nNilai?nilai data tersebut, yang disebut elemen array, memiliki indeks yang menunjukkan urutannya\r\ndalam  array. Elemen array pertama akan memiliki indeks 0, elemen kedua berindeks 1, dan\r\nseterusnya.\r\n<br>\r\nDengan array, proses pencarian data tertentu akan mudah dilakukan. Misalkan Anda memiliki data\r\nnama barang elektronik yang disimpan dalam variabel tunggal seperti ini:\r\n<br>\r\n  $brg1=”DVD”;<br>\r\n  $brg2=”Televisi”;<br>\r\n  $brg3=”Lemari es”;<br>\r\nBagaimana jika kita ingin mencari barang elektronik tertentu dengan menggunakan perulangan\r\nterhadap kelompok variabel tersebut? Tentu akan repot dengan berbagai kode yang harus kita buat\r\nuntuk menentukan nomor urut variabel tersebut terlebih dahulu dan sebagainya. Lain halnya jika\r\nmenggunakan array, kita hanya perlu menggunakan indeks array untuk menemukan barang\r\nelektronik yang kita cari. \r\n<h4>Membuat Array</h4>\r\nMembuat array dalam PHP menggunakan fungsi array().\r\nContoh:\r\n<br>\r\n$brg = array (“DVD”,”Televisi”,”Lemari es”);\r\nUntuk mengakses elemen array tersebut dengan menggunakan indeksnya. Nilai data “Televisi”\r\ndapat diakses dengan kode $brg[1]. Misalnya dicetak, maka perintahnya adalah:\r\n<br>\r\necho “Elemen array kedua adalah : ” . $brg[1];\r\n<br>\r\nArray juga dapat dibuat dengan cara menentukan indeksnya langsung seperti:\r\n<br>\r\n  $brg[0]=”DVD”;\r\n<br>\r\n  $brg[1]=”Televisi”;\r\n<br>\r\n  $brg[2]=”Lemari es”;\r\n<br>\r\n<h4>Jenis Array</h4>\r\nDalam PHP terdapat 3 jenis array, yaitu\r\n<h5>array numerik (indexed arrays)</h5>\r\n<h5>array assosiatif  (associative array)</h5>\r\n<h5>array multidimensi (multidimensional array)</h5>\r\n\r\n<h4>Array numerik</h4>\r\nJenis array yang berindeks numeris seperti contoh sebelumnya.\r\n<h4>Array assosiatif</h4>\r\nJenis array yang memiliki indeks berupa string.\r\n<h4>Array multidimensi</h4>\r\nJenis arary yang indeksnya juga array. Artinya, elemen dari array jenis ini berupa suatu array juga.\r\nContoh:\r\n<br>\r\n$mhs = array (\r\n<br>\r\n    array (‘A12.2010.04567’, ’Anita Larasati’, 3.5);\r\n<br>\r\n    array (‘A12.2010.05678’, ’Dude Harmono’, 3);\r\n<br>\r\n    array (‘A12.2010.06789’, ’Ernawati Listyani’, 2.75);\r\n<br>\r\n)\r\n<br>\r\nUntuk mengakses elemen array multidimensi, misalkan akan dicetak, maka kodenya:\r\n<br>\r\n  echo “NIM : “ . $mhs[0][0]. “Nama : ” . $mhs[0][1] . “IPK : ” . $mhs[0][2] . “<br />”;\r\n<br>\r\n  echo “NIM : “ . $mhs[1][0]. “Nama : ” . $mhs[1][1] . “IPK : ” . $mhs[1][2]; . “<br />”;\r\n<br>\r\n  echo “NIM : “ . $mhs[2][0]. “Nama : ” . $mhs[2][1] . “IPK : ” . $mhs[2][2];\r\n<br>\r\n<h4>Mencari Panjang Suatu Array</h4>\r\nSeperti diketahui array terdiri dari sejumlah elemen array. Untuk mengetahui jumlah elemen dalam\r\nsuatu array atau panjang suatu array dapat menggunakan fungsi count().\r\nContoh:\r\n<br>\r\n  $mobil = array (“Volvo”,”Jaguar”, “Mercedez”);\r\n<br>\r\n  echo “Panjang array adalah : ” . count($mobil);\r\n<br>\r\nFungsi count() diatas akan mengembalikan nilai panjang array yaitu 3.\r\n<h4>Mencetak Seluruh Elemen Array</h4>\r\nUntuk mencetak seluruh elemen array dapat digunakan suatu perulangan for sebagai berikut:\r\n<br>\r\n  $mobil = array (“Volvo”,”Jaguar”, “Mercedez”);\r\n<br>\r\n  $jum = count($mobil);\r\n<br>\r\n  for ($i=0; $i<$jum; $i++) {\r\n<br>\r\n    echo $mobil[$i] . ‘<br />’;\r\n<br>\r\n  }\r\n<br>\r\n<h4>Array Assosiatif</h4>\r\nPenulisan indeks untuk jenis array ini bagi Anda yang tidak terbiasa akan terbilang ganjil.  Tetapi\r\njika sudah terbiasa tidak akan menjadi masalah. Kode pembuatan array jenis ini jika menggunakan\r\nfungsi array() tampak seperti berikut ini:\r\n<br>\r\n  $umur = array (“Joni”=>”17”, “Indra”=>”18”, “Susi”=>”16”);\r\n<br>\r\n  echo “Joni berusia “ . $umur(“Joni”) . “ tahun”;\r\n<br>\r\nTampak dalam menentukan elemen?elemen array diatas menggunakan simbol “=>” yang dibuat\r\ndengan simbol sama dengan (“=”) dikombinasikan dengan simbol lebih besar (“>”).\r\nUntuk mencetak seluruh nilai elemen array jenis ini dapat menggunakan perulangan foreach,\r\nseperti ini:\r\n<br>\r\n  $umur = array (“Joni”=>”17”, “Indra”=>”18”, “Susi”=>”16”);\r\n<br>\r\n  foreach ($umur as $x=>$nilaiX) {\r\n<br>\r\n    echo “Indeks “ . $x . “ bernilai “ . $nilaiX . “<br />”;\r\n<br>\r\n  }\r\n<br>\r\n\r\n', 1, 1, '2022-09-16 15:59:25', 1, '2022-09-16 15:59:25', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `m_bank`
--

CREATE TABLE `m_bank` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_bank`
--

INSERT INTO `m_bank` (`id`, `name`, `code`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'BANK BRI', '002', '', 1, '2017-10-04 00:00:00', 1, '2022-08-10 11:09:18', 1),
(2, 'BANK EKSPOR INDONESIA', '003', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(3, 'BANK MANDIRI', '008', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(4, 'BANK BNI', '009', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(5, 'BANK DANAMON', '011', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(6, 'PERMATA BANK', '013', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(7, 'BANK BCA', '014', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(8, 'BANK BII', '016', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(9, 'BANK PANIN', '019', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(10, 'BANK ARTA NIAGA KENCANA', '020', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(11, 'BANK NIAGA', '022', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(12, 'BANK BUANA IND', '023', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(13, 'BANK LIPPO', '026', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(14, 'BANK NISP', '028', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(15, 'AMERICAN EXPRESS BANK LTD', '030', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(16, 'CITIBANK N.A.', '031', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(17, 'JP. MORGAN CHASE BANK, N.A.', '032', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(18, 'BANK OF AMERICA, N.A', '033', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(19, 'ING INDONESIA BANK', '034', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(20, 'BANK MULTICOR TBK.', '036', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(21, 'BANK ARTHA GRAHA', '037', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(22, 'BANK CREDIT AGRICOLE INDOSUEZ', '039', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(23, 'THE BANGKOK BANK COMP. LTD', '040', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(24, 'THE HONGKONG & SHANGHAI B.C.', '041', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(25, 'THE BANK OF TOKYO MITSUBISHI UFJ LTD', '042', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(26, 'BANK SUMITOMO MITSUI INDONESIA', '045', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(27, 'BANK DBS INDONESIA', '046', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(28, 'BANK RESONA PERDANIA', '047', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(29, 'BANK MIZUHO INDONESIA', '048', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(30, 'STANDARD CHARTERED BANK', '050', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(31, 'BANK ABN AMRO', '052', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(32, 'BANK KEPPEL TATLEE BUANA', '053', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(33, 'BANK CAPITAL INDONESIA, TBK.', '054', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(34, 'BANK BNP PARIBAS INDONESIA', '057', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(35, 'BANK UOB INDONESIA', '058', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(36, 'KOREA EXCHANGE BANK DANAMON', '059', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(37, 'RABOBANK INTERNASIONAL INDONESIA', '060', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(38, 'ANZ PANIN BANK', '061', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(39, 'DEUTSCHE BANK AG.', '067', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(40, 'BANK WOORI INDONESIA', '068', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(41, 'BANK OF CHINA LIMITED', '069', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(42, 'BANK BUMI ARTA', '076', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(43, 'BANK EKONOMI', '087', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(44, 'BANK ANTARDAERAH', '088', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(45, 'BANK HAGA', '089', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(46, 'BANK IFI', '093', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(47, 'BANK CENTURY, TBK.', '095', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(48, 'BANK MAYAPADA', '097', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(49, 'BANK JABAR', '110', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(50, 'BANK DKI', '111', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(51, 'BPD DIY', '112', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(52, 'BANK JATENG', '113', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(53, 'BANK JATIM', '114', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(54, 'BPD JAMBI', '115', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(55, 'BPD ACEH', '116', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(56, 'BANK SUMUT', '117', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(57, 'BANK NAGARI', '118', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(58, 'BANK RIAU', '119', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(59, 'BANK SUMSEL', '120', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(60, 'BANK LAMPUNG', '121', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(61, 'BPD KALSEL', '122', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(62, 'BPD KALIMANTAN BARAT', '123', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(63, 'BPD KALTIM', '124', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(64, 'BPD KALTENG', '125', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(65, 'BPD SULSEL', '126', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(66, 'BANK SULUT', '127', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(67, 'BPD NTB', '128', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(68, 'BPD BALI', '129', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(69, 'BANK NTT', '130', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(70, 'BANK MALUKU', '131', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(71, 'BPD PAPUA', '132', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(72, 'BANK BENGKULU', '133', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(73, 'BPD SULAWESI TENGAH', '134', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(74, 'BANK SULTRA', '135', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(75, 'BANK NUSANTARA PARAHYANGAN', '145', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(76, 'BANK SWADESI', '146', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(77, 'BANK MUAMALAT', '147', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(78, 'BANK MESTIKA', '151', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(79, 'BANK METRO EXPRESS', '152', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(80, 'BANK SHINTA INDONESIA', '153', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(81, 'BANK MASPION', '157', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(82, 'BANK HAGAKITA', '159', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(83, 'BANK GANESHA', '161', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(84, 'BANK WINDU KENTJANA', '162', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(85, 'HALIM INDONESIA BANK', '164', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(86, 'BANK HARMONI INTERNATIONAL', '166', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(87, 'BANK KESAWAN', '167', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(88, 'BANK TABUNGAN NEGARA (PERSERO)', '200', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(89, 'BANK HIMPUNAN SAUDARA 1906, TBK .', '212', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(90, 'BANK TABUNGAN PENSIUNAN NASIONAL', '213', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(91, 'BANK SWAGUNA', '405', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(92, 'BANK JASA ARTA', '422', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(93, 'BANK MEGA', '426', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(94, 'BANK JASA JAKARTA', '427', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(95, 'BANK BUKOPIN', '441', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(96, 'BANK SYARIAH MANDIRI', '451', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(97, 'BANK BISNIS INTERNASIONAL', '459', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(98, 'BANK SRI PARTHA', '466', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(99, 'BANK JASA JAKARTA', '472', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(100, 'BANK BINTANG MANUNGGAL', '484', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(101, 'BANK BUMIPUTERA', '485', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(102, 'BANK YUDHA BHAKTI', '490', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(103, 'BANK MITRANIAGA', '491', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(104, 'BANK AGRO NIAGA', '494', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(105, 'BANK INDOMONEX', '498', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(106, 'BANK ROYAL INDONESIA', '501', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(107, 'BANK ALFINDO', '503', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(108, 'BANK SYARIAH MEGA', '506', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(109, 'BANK INA PERDANA', '513', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(110, 'BANK HARFA', '517', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(111, 'PRIMA MASTER BANK', '520', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(112, 'BANK PERSYARIKATAN INDONESIA', '521', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(113, 'BANK AKITA', '525', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(114, 'LIMAN INTERNATIONAL BANK', '526', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(115, 'ANGLOMAS INTERNASIONAL BANK', '531', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(116, 'BANK DIPO INTERNATIONAL', '523', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(117, 'BANK KESEJAHTERAAN EKONOMI', '535', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(118, 'BANK UIB', '536', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(119, 'BANK ARTOS IND', '542', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(120, 'BANK PURBA DANARTA', '547', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(121, 'BANK MULTI ARTA SENTOSA', '548', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(122, 'BANK MAYORA', '553', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(123, 'BANK INDEX SELINDO', '555', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(124, 'BANK VICTORIA INTERNATIONAL', '566', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(125, 'BANK EKSEKUTIF', '558', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(126, 'CENTRATAMA NASIONAL BANK', '559', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(127, 'BANK FAMA INTERNASIONAL', '562', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(128, 'BANK SINAR HARAPAN BALI', '564', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(129, 'BANK HARDA', '567', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(130, 'BANK FINCONESIA', '945', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(131, 'BANK MERINCORP', '946', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(132, 'BANK MAYBANK INDOCORP', '947', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(133, 'BANK OCBC – INDONESIA', '948', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(134, 'BANK CHINA TRUST INDONESIA', '949', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1),
(135, 'BANK COMMONWEALTH', '950', NULL, 1, '2017-10-04 00:00:00', 1, '2022-08-10 10:15:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_bank_account`
--

CREATE TABLE `m_bank_account` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_id` int(11) NOT NULL,
  `id_m_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_bank_account`
--

INSERT INTO `m_bank_account` (`id`, `account_name`, `account_number`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_bank`) VALUES
(1, 'toro', '111', '', 1, '2022-09-13 10:36:57', 1, '2022-09-13 10:36:57', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `m_company`
--

CREATE TABLE `m_company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_company`
--

INSERT INTO `m_company` (`id`, `name`, `description`, `logo`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Tokopedia', '', '6c6eb0e2ce404783fbfa2fb14682d944.png', 1, '2022-09-12 09:20:37', 1, '2022-09-12 09:20:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_course`
--

CREATE TABLE `m_course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('SHORT COURSE','CAREER BOOTCAMP') NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_major` int(11) NOT NULL,
  `id_m_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_course`
--

INSERT INTO `m_course` (`id`, `name`, `description`, `type`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_major`, `id_m_level`) VALUES
(1, 'Knockout js Bootcamp', '<p>Kami dapat membantumu mendapatkan pekerjaan impian sebagai Data Science Expert dalam hitungan bulan, dengan jaminan uang kembali 100%</p>', 'CAREER BOOTCAMP', 1, '2022-09-12 11:02:48', 1, '2022-09-15 13:56:01', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_discount`
--

CREATE TABLE `m_discount` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `discount_type` enum('PERCENTAGE','FIXED') NOT NULL,
  `discount` varchar(255) NOT NULL,
  `is_auto_apply` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_discount`
--

INSERT INTO `m_discount` (`id`, `name`, `code`, `description`, `start_date`, `end_date`, `discount_type`, `discount`, `is_auto_apply`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Promo New Course', 'NEWCOURSE50', '<p>Discount new course 50%</p>', '2022-09-12 13:00:00', '2022-10-15 13:00:00', 'PERCENTAGE', '50', 1, 1, '2022-09-12 12:04:50', 1, '2022-09-13 19:38:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`id`, `name`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Beginner', '', 1, '2022-09-12 10:51:10', 1, '2022-09-12 10:51:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_major`
--

CREATE TABLE `m_major` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_major`
--

INSERT INTO `m_major` (`id`, `name`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Data Science', '', 1, '2022-09-12 10:52:30', 1, '2022-09-12 10:52:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_modul`
--

CREATE TABLE `m_modul` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `tier` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_modul`
--

INSERT INTO `m_modul` (`id`, `name`, `description`, `tier`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_course`) VALUES
(1, 'Introduction to Knockout JS', '<div>(a)\n<p>Introduction ke Knockout.js</p>\n</div>', 1, 1, '2022-09-12 15:23:36', 1, '2022-09-14 10:05:07', 1, 1),
(2, 'Working with lists and collection', 'mengenal lists dan collection di knockout.js', 2, 1, '2022-09-14 10:08:55', 1, '2022-09-14 10:08:55', 1, 1),
(3, 'Single App Aplication', 'belajar membuat single app application menggunakan knockout.js', 3, 1, '2022-09-14 10:08:55', 1, '2022-09-14 10:08:55', 1, 1),
(4, 'Create Custom Binding', 'belajar membuat custom binding', 4, 1, '2022-09-14 10:08:55', 1, '2022-09-14 10:08:55', 1, 1),
(5, 'Loading dan Saving data', 'belajar bagaimana save dan load data menggunakan knockout.js', 5, 1, '2022-09-14 10:08:55', 1, '2022-09-14 10:08:55', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_package`
--

CREATE TABLE `m_package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_package`
--

INSERT INTO `m_package` (`id`, `name`, `description`, `price`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Career Bootcamp', '', 3000000, 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_payment_type`
--

CREATE TABLE `m_payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_payment_type`
--

INSERT INTO `m_payment_type` (`id`, `name`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`) VALUES
(1, 'Bank Transfer', '', 1, '2022-09-13 10:56:55', 1, '2022-09-13 10:56:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_tutor`
--

CREATE TABLE `m_tutor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `profile_picture` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_company` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_tutor`
--

INSERT INTO `m_tutor` (`id`, `name`, `description`, `role`, `profile_picture`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_company`) VALUES
(1, 'Hendra', '', 'Data Scientist', '4a1a7cfc897545767ba01af7ec3076f9.jpg', 1, '2022-09-12 10:19:33', 1, '2022-09-12 10:19:33', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `no_generator`
--

CREATE TABLE `no_generator` (
  `id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_generator`
--

INSERT INTO `no_generator` (`id`, `month`, `year`, `value`, `type`) VALUES
(1, 9, 2022, 1, '2'),
(2, 9, 2022, 1, '2'),
(3, 9, 2022, 6, 'CONFIRM'),
(4, 9, 2022, 2, 'ORDER');

-- --------------------------------------------------------

--
-- Table structure for table `order_confirm`
--

CREATE TABLE `order_confirm` (
  `id` int(11) NOT NULL,
  `order_confirm_number` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `sender_account_name` varchar(255) DEFAULT NULL,
  `sender_account_number` varchar(255) DEFAULT NULL,
  `sender_bank` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_id` int(11) DEFAULT NULL,
  `verified_comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_id` int(11) NOT NULL,
  `id_order_course` int(11) NOT NULL,
  `id_m_course` int(11) NOT NULL,
  `id_m_payment_type` int(11) NOT NULL,
  `id_m_bank_account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_confirm`
--

INSERT INTO `order_confirm` (`id`, `order_confirm_number`, `date`, `sender_account_name`, `sender_account_number`, `sender_bank`, `amount`, `status`, `verified_at`, `verified_id`, `verified_comment`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_order_course`, `id_m_course`, `id_m_payment_type`, `id_m_bank_account`) VALUES
(1, 'CONFIRM/2022/09/005', '2022-09-13 14:21:38', 'Budi', '222', 7, 20000, 1, '2022-09-13 14:35:12', 1, 'mantap', '2022-09-13 14:21:51', 1, '2022-09-13 14:35:12', 1, 1, 1, 1, 1),
(2, 'CONFIRM/2022/09/006', '2022-09-13 18:46:00', 'Budi', '222', 6, 20000, 0, NULL, NULL, NULL, '2022-09-13 18:46:38', 1, '2022-09-13 19:05:41', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_course`
--

CREATE TABLE `order_course` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `total_price` double NOT NULL,
  `id_m_package` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 = Not Completed, 1 = Completed, 2 = Partial, 4 = Canceled',
  `forced_id` int(11) DEFAULT NULL,
  `forced_comment` text DEFAULT NULL,
  `forced_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_course` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_m_discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_course`
--

INSERT INTO `order_course` (`id`, `order_number`, `date`, `total_price`, `id_m_package`, `status`, `forced_id`, `forced_comment`, `forced_at`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_course`, `id_member`, `id_m_discount`) VALUES
(1, 'ORDER/2022/09/002', '2022-09-12 16:53:05', 20000, 1, 1, 1, NULL, '2022-09-13 08:21:56', '2022-09-12 16:53:05', 1, '2022-09-13 19:14:29', 1, 1, 1, 1),
(2, 'ORDER/2022/09/002', '2022-09-12 19:43:04', 3000000, 1, 4, 1, 'test', '2022-09-13 09:34:15', '2022-09-12 19:43:04', 1, '2022-09-13 19:14:31', 1, 1, 1, 1),
(3, 'ORDER/2022/09/001', '2022-09-13 19:10:02', 3000000, 1, 0, NULL, NULL, NULL, '2022-09-13 19:10:02', 1, '2022-09-13 19:14:32', 1, 1, 1, 1),
(4, 'ORDER/2022/09/002', '2022-09-13 19:29:16', 3000000, 1, 0, NULL, NULL, NULL, '2022-09-13 19:29:16', 1, '2022-09-13 19:29:16', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_benefit`
--

CREATE TABLE `package_benefit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_id` int(11) NOT NULL,
  `id_m_package` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_benefit`
--

INSERT INTO `package_benefit` (`id`, `name`, `description`, `status`, `created_at`, `created_id`, `updated_at`, `updated_id`, `id_m_package`) VALUES
(1, 'More than 60 total learning session (self and live learning)', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1),
(2, 'Intensive career and softskill session', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1),
(3, 'Unlimited learning access', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1),
(4, 'Career Profiler Assessment', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1),
(5, 'Lifetime Job-Connector services', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1),
(6, '4 Real-projects for your portfolio', '', 1, '2022-09-12 10:46:54', 1, '2022-09-12 10:46:54', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_access_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `id_access_group`) VALUES
(1, 'toro', 'toro@mail.com', '$2y$10$bADbRS70xYSWFUM8eF.LCu1s3rY/HDNYybH3siwPdH7/LEzHj0HIG', '2022-09-09 07:46:26', '2022-09-09 07:46:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_failed_attempts`
--

CREATE TABLE `users_failed_attempts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_group`
--
ALTER TABLE `access_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_master`
--
ALTER TABLE `access_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_batch`
--
ALTER TABLE `course_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_answer`
--
ALTER TABLE `member_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul_tutorial`
--
ALTER TABLE `modul_tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bank`
--
ALTER TABLE `m_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bank_account`
--
ALTER TABLE `m_bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_company`
--
ALTER TABLE `m_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_course`
--
ALTER TABLE `m_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_discount`
--
ALTER TABLE `m_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_major`
--
ALTER TABLE `m_major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_modul`
--
ALTER TABLE `m_modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_package`
--
ALTER TABLE `m_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_payment_type`
--
ALTER TABLE `m_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_tutor`
--
ALTER TABLE `m_tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `no_generator`
--
ALTER TABLE `no_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_confirm`
--
ALTER TABLE `order_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_course`
--
ALTER TABLE `order_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_benefit`
--
ALTER TABLE `package_benefit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_failed_attempts`
--
ALTER TABLE `users_failed_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_group`
--
ALTER TABLE `access_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `access_master`
--
ALTER TABLE `access_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `course_batch`
--
ALTER TABLE `course_batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member_answer`
--
ALTER TABLE `member_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modul_tutorial`
--
ALTER TABLE `modul_tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `m_bank`
--
ALTER TABLE `m_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `m_bank_account`
--
ALTER TABLE `m_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_company`
--
ALTER TABLE `m_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_course`
--
ALTER TABLE `m_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_discount`
--
ALTER TABLE `m_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_major`
--
ALTER TABLE `m_major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_modul`
--
ALTER TABLE `m_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_package`
--
ALTER TABLE `m_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_payment_type`
--
ALTER TABLE `m_payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_tutor`
--
ALTER TABLE `m_tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `no_generator`
--
ALTER TABLE `no_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_confirm`
--
ALTER TABLE `order_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_course`
--
ALTER TABLE `order_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_benefit`
--
ALTER TABLE `package_benefit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_failed_attempts`
--
ALTER TABLE `users_failed_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
