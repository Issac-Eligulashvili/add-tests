-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2026 at 10:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falconteams`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('falconteams-cache-jm2050@messiah.edu|199.254.158.174', 'i:2;', 1762367608),
('falconteams-cache-jm2050@messiah.edu|199.254.158.174:timer', 'i:1762367608;', 1762367608),
('falconteams-cache-neffmicah2@gmail.com|199.254.158.197', 'i:1;', 1763402965),
('falconteams-cache-neffmicah2@gmail.com|199.254.158.197:timer', 'i:1763402965;', 1763402965),
('laravel-cache-lukerisser04@gmail.com|127.0.0.1', 'i:1;', 1784577514),
('laravel-cache-lukerisser04@gmail.com|127.0.0.1:timer', 'i:1784577514;', 1784577514);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

CREATE TABLE `camps` (
  `Camp_ID` int(11) NOT NULL,
  `Camp_Name` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Registration_Open` date DEFAULT NULL,
  `Registration_Close` date DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Camp_Gender` enum('girls','boys','coed') DEFAULT NULL,
  `Age_Min` tinyint(4) DEFAULT NULL,
  `Age_Max` tinyint(4) DEFAULT NULL,
  `Sport_ID` int(11) DEFAULT NULL,
  `Max_Capacity` int(11) DEFAULT NULL,
  `Location_Name` varchar(255) DEFAULT NULL,
  `Street_Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Zip_Code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`Camp_ID`, `Camp_Name`, `Description`, `Start_Date`, `End_Date`, `Registration_Open`, `Registration_Close`, `Price`, `Camp_Gender`, `Age_Min`, `Age_Max`, `Sport_ID`, `Max_Capacity`, `Location_Name`, `Street_Address`, `City`, `State`, `Zip_Code`) VALUES
(2, 'aroma', 'a', '2026-06-01', '2026-06-05', '2025-10-01', '2034-10-19', 10.00, 'coed', 5, 18, 1, 100, 'Messiah', '1 University Ave', 'Elizabethtown', 'PA', '17022'),
(8, 'LAX Day Camp', 'A fun day camp for LAX player', '2026-06-15', '2026-06-19', '2025-10-31', '2026-06-01', 100.00, 'boys', 5, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Soccer', 'Get great experience at girls soccer camp!', '2026-07-06', '2026-07-10', '2025-10-31', '2026-07-03', 150.00, 'girls', 10, 18, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Basketball', 'Basketball fun camp', '2026-06-08', '2026-06-12', '2025-10-31', '2026-06-05', 100.00, 'girls', 5, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'aroma middle school camp', 'a camp', '2025-11-24', '2025-11-28', '2025-11-10', '2025-11-14', 1000.00, 'girls', 12, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Aroma day camp', 'hi', '2026-06-01', '2026-06-05', '2025-11-12', '2026-06-12', 100.00, '', 5, 18, 1, 60, 'messiah', '12', 'Schenectady123', 'NY', '12345'),
(16, 'Aroma', 'yipee', '2025-11-18', '2025-11-20', '2025-11-17', '2029-11-30', 55.00, '', 5, 55, 1, 999, 'Messiah', '1 University Ave', 'Elizabethtown', 'PA', '17022'),
(17, 'All sports', '4444', '2025-11-18', '2025-11-20', '2025-11-16', '2029-12-14', 44.00, '', 4, 44, 1, 444, 'Messiah', '12 university ave', 'Schenectady', 'NY', '12345'),
(21, 'Other aroma', 'mmm', '2025-12-08', '2025-12-23', '2025-11-30', '2026-01-10', 99.00, '', 1, 99, 1, 999, 'Messiah', '1 University Ave', 'Schenectady', 'NY', '12345'),
(22, 'bvb', 'werty', '2025-12-01', '2025-12-31', '2025-11-30', '2026-01-10', 111.00, '', 1, 33, 4, 444, 'Messiah', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022'),
(23, 'tenny', 'abc', '2025-12-01', '2025-12-17', '2025-11-30', '2026-01-10', 333.00, 'girls', 1, 44, 2, 444, 'Messiah', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022'),
(24, 'Test add ons', 'add', '2026-02-02', '2026-02-06', '2026-01-19', '2026-02-07', 100.00, 'coed', 1, 99, 1, 444, 'Messiah', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022'),
(25, 'post update new camp', 'tests', '2026-02-07', '2026-03-14', '2025-12-30', '2030-10-22', 123.00, 'coed', 1, 99, 2, 555, 'Messiah', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022'),
(26, 'Promo code test', 'act', '2026-03-13', '2026-03-14', '2026-02-01', '2026-03-14', 100.00, 'coed', 1, 99, 1, 999, 'Messiah', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022'),
(35, 'Spreadsheet Camp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Spreadsheet Camp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `camp_discount`
--

CREATE TABLE `camp_discount` (
  `Camp_ID` int(11) NOT NULL,
  `Discount_Date` date DEFAULT NULL,
  `Discount_Amount` decimal(10,2) NOT NULL,
  `Discount_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `camp_discount`
--

INSERT INTO `camp_discount` (`Camp_ID`, `Discount_Date`, `Discount_Amount`, `Discount_ID`) VALUES
(8, '2026-01-01', 50.00, 1),
(9, '2026-01-01', 25.00, 2),
(11, '2026-01-01', 25.00, 3),
(11, '2026-03-18', 10.00, 4),
(15, '2026-01-01', 20.00, 5),
(17, '2027-10-18', 5.00, 6),
(21, '2026-01-10', 11.00, 8),
(22, '2026-01-10', 1.00, 9),
(22, '2026-01-10', 77.00, 10),
(23, '2026-01-10', 1.00, 100),
(23, '2026-01-10', 2.00, 101),
(23, '2026-01-10', 11.00, 102),
(23, NULL, 34.00, 103),
(23, NULL, 4.99, 104),
(2, '2027-10-18', 5.00, 107),
(26, '2026-03-14', 25.00, 155);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `Coach_ID` int(11) NOT NULL,
  `Coach_FirstName` varchar(50) DEFAULT NULL,
  `Coach_LastName` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `Sport_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`Coach_ID`, `Coach_FirstName`, `Coach_LastName`, `user_id`, `admin`, `Sport_ID`) VALUES
(1, 'Luke', 'Risser', 5, 1, 1),
(4, 'Mukisa', 'Serufusa', 11, 0, NULL),
(5, 'Jake', 'McIntire', 12, 1, NULL),
(7, 'micah', 'neff', 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coach_camp`
--

CREATE TABLE `coach_camp` (
  `Coach_Camp_ID` int(11) NOT NULL,
  `Coach_ID` int(11) DEFAULT NULL,
  `Camp_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_camp`
--

INSERT INTO `coach_camp` (`Coach_Camp_ID`, `Coach_ID`, `Camp_ID`) VALUES
(5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `extra_fees`
--

CREATE TABLE `extra_fees` (
  `Fee_ID` int(11) NOT NULL,
  `Fee_Name` varchar(100) DEFAULT NULL,
  `Fee_Description` text DEFAULT NULL,
  `Fee_Amount` decimal(8,2) DEFAULT NULL,
  `Camp_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_fees`
--

INSERT INTO `extra_fees` (`Fee_ID`, `Fee_Name`, `Fee_Description`, `Fee_Amount`, `Camp_ID`) VALUES
(15, 'Tueday', NULL, 2.00, 25),
(18, 'Monday Lunch', 'Sandwich and chips', 8.00, 24),
(19, 'Tuesday Lunch', 'big Sandwich and chips', 9.00, 24),
(25, 'Monday Lunch', 'Sandwich and chips', 8.00, 26);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `FAQ_ID` int(11) NOT NULL,
  `Question` text DEFAULT NULL,
  `Answer` text DEFAULT NULL,
  `Sport_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`FAQ_ID`, `Question`, `Answer`, `Sport_ID`) VALUES
(19, 'Why', 'Because', 1),
(20, 'Why', 'idk', 4);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `Image_ID` int(11) NOT NULL,
  `Image_path` varchar(200) DEFAULT NULL,
  `Image_Title` varchar(200) DEFAULT NULL,
  `Image_Text` text DEFAULT NULL,
  `Sport_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`Image_ID`, `Image_path`, `Image_Title`, `Image_Text`, `Sport_ID`) VALUES
(10, 'gallery-images/zNA0uycWp1OGxPR33ICQwyQE1OAmHf0GBGVN5MET.png', 'messiah', 'm', 2),
(19, 'gallery-images/cb28dd26-3377-4d35-a654-5a91f3d012d8.png', 'Play Sports', 'abc', 1),
(20, 'gallery-images/75c6ccff-7cb6-4916-a0e2-c350f08cb8e6.jpg', 'A', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_15_172624_create_pending_registrations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Parent_ID` int(11) NOT NULL,
  `Camp_ID` int(11) NOT NULL,
  `Order_Date` date DEFAULT NULL,
  `Item_Amount` decimal(8,2) DEFAULT NULL,
  `Item_Amount_Paid` decimal(8,2) DEFAULT NULL,
  `Player_ID` int(11) NOT NULL,
  `Refund_Amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `Payment_Intent_ID` varchar(255) DEFAULT NULL,
  `Charge_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Parent_ID`, `Camp_ID`, `Order_Date`, `Item_Amount`, `Item_Amount_Paid`, `Player_ID`, `Refund_Amount`, `Payment_Intent_ID`, `Charge_ID`) VALUES
(1, 6, 2, '2025-10-16', 10.00, 10.00, 114, 0.00, NULL, NULL),
(2, 7, 2, '2025-10-16', 10.00, 10.00, 115, 0.00, NULL, NULL),
(4, 9, 2, '2025-11-03', 10.00, 10.00, 212, 0.00, NULL, NULL),
(5, 10, 2, '2025-11-04', 10.00, 10.00, 308, 0.00, NULL, NULL),
(6, 11, 8, '2025-11-12', 99.50, 0.00, 594, 0.00, NULL, NULL),
(7, 11, 9, '2025-11-13', 149.75, 0.00, 595, 0.00, NULL, NULL),
(8, 11, 15, '2025-11-17', 99.80, 99.80, 597, 0.00, NULL, NULL),
(9, 11, 15, '2025-11-17', 99.80, 99.80, 598, 0.00, NULL, NULL),
(10, 12, 24, '2026-01-20', 95.00, 0.00, 694, 0.00, NULL, NULL),
(11, 12, 24, '2026-01-22', 95.00, 0.00, 695, 0.00, NULL, NULL),
(12, 12, 24, '2026-01-22', 95.00, 0.00, 696, 0.00, NULL, NULL),
(13, 12, 24, '2026-01-22', 95.00, 0.00, 697, 0.00, NULL, NULL),
(14, 12, 24, '2026-01-22', 103.00, 0.00, 698, 0.00, NULL, NULL),
(15, 12, 8, '2026-01-29', 50.00, 50.00, 699, 46.52, 'pi_3SuvhMLn6kPN0uzO0qxaslkX', NULL),
(16, 12, 25, '2026-01-31', 126.00, 126.00, 700, 0.00, 'pi_3SvirRLn6kPN0uzO0aqrdwRC', NULL),
(17, 12, 25, '2026-01-31', 126.00, 126.00, 701, 0.00, 'pi_3SvjRDLn6kPN0uzO1lLoSIkT', NULL),
(18, 12, 25, '2026-01-31', 126.00, 126.00, 698, 0.00, 'pi_3SvjtiLn6kPN0uzO1WxANaCh', NULL),
(19, 11, 15, '2026-02-04', 80.00, 0.00, 595, 0.00, NULL, NULL),
(20, 11, 17, '2026-02-04', 39.00, 0.00, 595, 0.00, NULL, NULL),
(21, 11, 17, '2026-02-04', -456.00, 0.00, 594, 0.00, NULL, NULL),
(22, 11, 17, '2026-02-04', 39.00, 39.00, 597, 0.00, 'pi_3SxBZULn6kPN0uzO0qOrKNiw', NULL),
(23, 11, 24, '2026-02-04', 104.00, 0.00, 598, 0.00, NULL, NULL),
(24, 12, 24, '2026-02-04', 95.00, 0.00, 699, 0.00, NULL, NULL),
(25, 12, 24, '2026-02-04', 112.00, 0.00, 701, 0.00, NULL, NULL),
(26, 12, 26, '2026-02-04', 58.00, 58.00, 694, 0.00, 'pi_3SxD4FLn6kPN0uzO1xPQDphJ', NULL),
(27, 12, 2, '2026-07-24', 5.00, 5.00, 694, 0.00, 'pi_3TwszgLn6kPN0uzO1vRlY7B9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_extra_fees`
--

CREATE TABLE `order_extra_fees` (
  `Order_Fee_ID` int(11) NOT NULL,
  `Fee_ID` int(11) DEFAULT NULL,
  `Order_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_extra_fees`
--

INSERT INTO `order_extra_fees` (`Order_Fee_ID`, `Fee_ID`, `Order_ID`) VALUES
(4, 25, 26);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `Parent_ID` int(11) NOT NULL,
  `Parent_FirstName` varchar(50) NOT NULL,
  `Parent_LastName` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Postal_Code` varchar(25) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Church_Name` varchar(255) DEFAULT NULL,
  `Church_Attendance` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`Parent_ID`, `Parent_FirstName`, `Parent_LastName`, `Address`, `City`, `State`, `Postal_Code`, `Email`, `Phone`, `Church_Name`, `Church_Attendance`) VALUES
(1, 'Trey', 'Bird', '123 place street', 'Pittsburgh', 'PA', '18231', 'tbird@gmail.com', '1349475231', 'The Church', 'Monthly'),
(2, 'Carl', 'Mann', '9012 Sesame street', 'Dover', 'Delaware', '12039', 'cmann@gmail.com', '4153542158', 'The Church', 'Monthly'),
(3, 'Luke', 'Risser', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'a@gmail.com', '7178030953', 'EBIC', 'Weekly'),
(4, 'E', 'E', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'e@gmail.com', '7178030953', 'EBIC', 'Weekly'),
(5, 'G', 'G', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'lukerisser0@gmail.com', '7178030953', 'EBIC', 'Weekly'),
(6, 'H', 'H', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'lukeri@gmail.com', '7178030953', 'EBIC', 'Weekly'),
(7, 'K', 'K', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'lukerisser4@gmail.com', '7178030953', 'EBIC', 'Weekly'),
(9, 'Micha', 'Nefph', '123v jsdfl', 'Elizabethtown', 'PA', '17022', 'neffmicah2@gmail.com', '2222222222', 'EBIC', 'Rarely'),
(10, 'Luke', 'zTest', '1234', 'Elizabethtown', 'PA', '17022', 'lukerisser04@gmail.com', '2222222222', 'EBIC', 'Occasionally'),
(11, 'test', 'test', 'test', 'test', 'test', 'test', 'test@gmail.com', '0987654321', NULL, NULL),
(12, 'Luke', 'Risser', '1557 Ridge Road', 'Elizabethtown', 'PA', '17022', 'lr1328@messiah.edu', '7178030953', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('jm2050@messiah.edu', '$2y$12$eV7bwCIRAxXJ/iPWkdAkN.p8IUPndMLpwPUxmiYjBtg6jZ3pDGJdG', '2025-10-30 12:27:47'),
('lukerisser04@gmail.com', '$2y$12$UNiPNlUCqPAalcvG7ap6x.p16cVwESU.HKal.in8fpde9FyayZciK', '2025-11-25 18:23:44'),
('mn1253@messiah.edu', '$2y$12$fSVtVZ8uaTWPGbYEWQBI7uFcj8e8QI1PScGpQg6sNbD3m3MtIzcsO', '2025-09-22 17:38:36'),
('neffmicah2@gmail.com', '$2y$12$kcuI159N3ySTXsijvDiOgORpvLCG8iZ2BbtIhtj.mjNisy5PHxpqi', '2025-09-22 17:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `pending_registrations`
--

CREATE TABLE `pending_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional_data`)),
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pending_registrations`
--

INSERT INTO `pending_registrations` (`id`, `email`, `name`, `password`, `token`, `additional_data`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'u@u.com', 'U', '$2y$12$yMf6YKruDDnUZaF/3aVmZuCqWwMl.rpVX.MJo8W8SzvAqkRb8o.WC', 'Fcc4JS8huSzbBG0ih6IptUr5OwhJEus77dVnMr5RwPnstMLWB9jfbgaYLnJ1c3n2', NULL, '2025-11-05 17:59:19', '2025-11-03 17:59:19', '2025-11-03 17:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player_ID` int(11) NOT NULL,
  `Parent_ID` int(11) DEFAULT NULL,
  `Division_Name` varchar(50) DEFAULT NULL,
  `Camper_FirstName` varchar(50) DEFAULT NULL,
  `Camper_LastName` varchar(50) DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Birth_Date` date DEFAULT NULL,
  `Shirt_Size` varchar(5) DEFAULT NULL,
  `Allergies` varchar(255) DEFAULT NULL,
  `Asthma` varchar(255) DEFAULT NULL,
  `Medication_Status` varchar(255) DEFAULT NULL,
  `Injuries` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Player_ID`, `Parent_ID`, `Division_Name`, `Camper_FirstName`, `Camper_LastName`, `Gender`, `Birth_Date`, `Shirt_Size`, `Allergies`, `Asthma`, `Medication_Status`, `Injuries`) VALUES
(12, 1, 'Aroma', 'Larry', 'Bird', 'M', '2014-12-24', 'AM', 'None', '0', '0', 'None'),
(13, 2, 'Aroma', 'Parker', 'Mann', 'M', '2015-02-06', 'AS', 'None', '0', '0', 'None'),
(14, 2, 'Aroma', 'Big', 'Mann', 'M', '2015-02-06', 'AS', 'None', '0', '0', 'None'),
(15, 2, 'Aroma', 'Little', 'Mann', 'M', '2015-02-06', 'AS', 'None', '0', '0', 'None'),
(111, 3, 'abc', 'Austin', 'Risser', 'M', '2005-12-12', 'AL', NULL, '0', '0', NULL),
(112, 4, 'abc', 'AJ', 'Engle', 'M', '2002-12-12', 'AL', NULL, '0', '0', NULL),
(113, 5, 'abc', 'Harry', 'Grantham', 'M', '2002-12-12', 'AL', NULL, '0', '0', NULL),
(114, 6, 'abc', 'Jimmy', 'Frey', 'M', '2002-12-12', 'AL', NULL, '0', '0', NULL),
(115, 7, 'abc', 'Lucas', 'Sollenberger', 'M', '2005-12-12', 'AL', NULL, '0', '0', NULL),
(212, 9, NULL, 'Luke', 'Nefph', 'M', '2015-11-18', 'YL', NULL, '0', '0', NULL),
(308, 10, NULL, 'Micha', 'Test', 'M', '2017-07-18', 'AS', 'None', '0', '0', 'None'),
(594, 11, NULL, 'test1', 'test', 'M', '2019-07-12', 'AS', 'allergies', '0', 'meds', 'no'),
(595, 11, NULL, 'Testing', 'Test', 'F', '2014-12-17', 'AS', 'no', '0', 'no', 'no'),
(596, 11, NULL, 'micha', 'Neff', 'F', '2011-08-09', 'AS', NULL, '0', NULL, NULL),
(597, 11, NULL, 'X', 'Y', 'M', '2009-12-12', 'AL', 'no', '0', 'no', 'no'),
(598, 11, NULL, 'kid', 'boy', 'F', '2015-11-17', 'YM', 'no', '0', 'pills', 'no'),
(694, 12, NULL, 'L', 'Risser', 'M', '2009-02-20', 'AL', 'no', '0', 'no', 'no'),
(695, 12, NULL, 'A', 'Z', 'M', '2002-12-12', 'YS', NULL, '0', NULL, NULL),
(696, 12, NULL, 'B', 'Z', 'M', '2002-12-12', 'YS', NULL, '0', NULL, NULL),
(697, 12, NULL, 'C', 'A', 'M', '2002-12-12', 'YS', NULL, '0', NULL, NULL),
(698, 12, NULL, 'd', 'd', 'M', '2002-12-12', 'AL', 'no', 'no', 'no', NULL),
(699, 12, NULL, 'L', 'Risser', 'M', '2012-02-20', 'AL', 'no', '0', 'no', 'no'),
(700, 12, NULL, 'L', 'Risser', 'M', '2024-02-20', 'AL', NULL, '0', NULL, NULL),
(701, 12, NULL, 'A', 'Z', 'M', '2002-12-12', 'YS', 'no', '0', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `player_camp`
--

CREATE TABLE `player_camp` (
  `player_camp_id` int(11) NOT NULL,
  `Camp_ID` int(11) DEFAULT NULL,
  `Player_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_camp`
--

INSERT INTO `player_camp` (`player_camp_id`, `Camp_ID`, `Player_ID`) VALUES
(10, 2, 12),
(11, 2, 13),
(12, 2, 14),
(13, 2, 15),
(109, 2, 111),
(110, 2, 112),
(111, 2, 113),
(112, 2, 114),
(113, 2, 115),
(210, 2, 212),
(306, 2, 308),
(592, 8, 594),
(593, 9, 595),
(594, 14, 596),
(595, 15, 597),
(596, 15, 598),
(692, 24, 694),
(693, 24, 695),
(694, 24, 696),
(695, 24, 697),
(696, 24, 698),
(697, 8, 699),
(698, 25, 700),
(699, 25, 701),
(700, 25, 698),
(701, 15, 595),
(702, 17, 595),
(703, 17, 594),
(704, 17, 597),
(705, 24, 598),
(706, 24, 699),
(707, 24, 701),
(708, 26, 694),
(2229, 2, 694);

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `Promo_Code_ID` int(11) NOT NULL,
  `Camp_ID` int(11) NOT NULL,
  `Promo_Code` varchar(100) NOT NULL,
  `Discount_Amount` decimal(10,2) NOT NULL,
  `Expiration_Date` date DEFAULT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`Promo_Code_ID`, `Camp_ID`, `Promo_Code`, `Discount_Amount`, `Expiration_Date`, `Created_At`) VALUES
(1, 21, 'a', 11.00, '2026-01-10', '2026-02-04 20:30:25'),
(2, 22, 'a', 77.00, '2026-01-10', '2026-02-04 20:30:25'),
(3, 23, 'a', 11.00, '2026-01-10', '2026-02-04 20:30:25'),
(4, 23, 'b', 34.00, NULL, '2026-02-04 20:30:25'),
(5, 23, 'd', 4.99, NULL, '2026-02-04 20:30:25'),
(6, 2, 'abc', 5.00, '2027-10-18', '2026-02-04 20:30:25'),
(16, 25, 'F', 1.00, NULL, '2026-02-04 20:31:57'),
(18, 24, 'A', 5.00, '2026-03-14', '2026-02-04 20:36:08'),
(26, 26, 'B', 25.00, '2026-03-14', '2026-02-04 20:52:00'),
(27, 26, 'C', 10.00, '2026-03-14', '2026-02-04 20:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LgMbFaVMU6dZtfmzGuT6KbO5IV8bwGlJmnwvhKW3', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6InoxWWhOU0s4YWYwODFjVmdsUDJpOFpEaFllRFU2VGNiVmdQSFpxT2wiO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RlYW1zLWRpc3BsYXkiO3M6NToicm91dGUiO3M6MTM6InRlYW1zLWRpc3BsYXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MjU6InBheW1lbnRfc3RhdHVzX3BsYXllcl82OTQiO3M6NDoicGFpZCI7czoyMzoicGF5bWVudF9kYXRhX3BsYXllcl82OTQiO2E6MTA6e3M6MTQ6InBheW1lbnRfbWV0aG9kIjtzOjY6InN0cmlwZSI7czoxMDoicGF5bWVudF9pZCI7czoyNzoicGlfM1R3c3pnTG42a1BOMHV6TzF2UmxZN0I5IjtzOjE0OiJwYXltZW50X2Ftb3VudCI7aTo1MDA7czoxMjoicGF5bWVudF9kYXRlIjtzOjE5OiIyMDI2LTA3LTI0IDIzOjU5OjA5IjtzOjE1OiJiaWxsaW5nX2FkZHJlc3MiO3M6MTU6IjE1NTcgUmlkZ2UgUm9hZCI7czoxMjoiYmlsbGluZ19jaXR5IjtzOjEzOiJFbGl6YWJldGh0b3duIjtzOjEzOiJiaWxsaW5nX3N0YXRlIjtzOjI6IlBBIjtzOjExOiJiaWxsaW5nX3ppcCI7czo1OiIxNzAyMiI7czoxMzoicmVjZWlwdF9lbWFpbCI7czoxODoibHIxMzI4QG1lc3NpYWguZWR1IjtzOjg6Im9yZGVyX2lkIjtpOjI3O31zOjE4OiJ0ZWFtc19kaXNwbGF5X2RhdGEiO2E6MTI6e2k6MDthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDEiO3M6MTE6IlBsYXllciBOYW1lIjtzOjEwOiJMYXJyeSBCaXJkIjtzOjM6IkFnZSI7aToxMTtzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czowOiIiO31pOjE7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAxIjtzOjExOiJQbGF5ZXIgTmFtZSI7czoxMToiUGFya2VyIE1hbm4iO3M6MzoiQWdlIjtpOjExO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjEwOiJMYXJyeSBCaXJkIjt9aToyO2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMSI7czoxMToiUGxheWVyIE5hbWUiO3M6ODoiQmlnIE1hbm4iO3M6MzoiQWdlIjtpOjExO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjA6IiI7fWk6MzthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDEiO3M6MTE6IlBsYXllciBOYW1lIjtzOjE0OiJIYXJyeSBHcmFudGhhbSI7czozOiJBZ2UiO2k6MjM7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MDoiIjt9aTo0O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMiI7czoxMToiUGxheWVyIE5hbWUiO3M6MTE6IkxpdHRsZSBNYW5uIjtzOjM6IkFnZSI7aToxMTtzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czowOiIiO31pOjU7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAyIjtzOjExOiJQbGF5ZXIgTmFtZSI7czoxMDoiTHVrZSBOZWZwaCI7czozOiJBZ2UiO2k6MTA7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MTE6IkxpdHRsZSBNYW5uIjt9aTo2O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMiI7czoxMToiUGxheWVyIE5hbWUiO3M6MTA6Ik1pY2hhIFRlc3QiO3M6MzoiQWdlIjtpOjk7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6OToiQ29sZSBSaWZlIjt9aTo3O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMiI7czoxMToiUGxheWVyIE5hbWUiO3M6ODoiTCBSaXNzZXIiO3M6MzoiQWdlIjtpOjE3O3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjE6IiAiO31pOjg7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAzIjtzOjExOiJQbGF5ZXIgTmFtZSI7czoxMDoiSmltbXkgRnJleSI7czozOiJBZ2UiO2k6MjM7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MDoiIjt9aTo5O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMyI7czoxMToiUGxheWVyIE5hbWUiO3M6MTg6Ikx1Y2FzIFNvbGxlbmJlcmdlciI7czozOiJBZ2UiO2k6MjA7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MTA6IkppbW15IEZyZXkiO31pOjEwO2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMyI7czoxMToiUGxheWVyIE5hbWUiO3M6MTM6IkF1c3RpbiBSaXNzZXIiO3M6MzoiQWdlIjtpOjIwO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjA6IiI7fWk6MTE7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAzIjtzOjExOiJQbGF5ZXIgTmFtZSI7czo4OiJBSiBFbmdsZSI7czozOiJBZ2UiO2k6MjM7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MDoiIjt9fXM6MTc6ImV4Y2VsX2V4cG9ydF9kYXRhIjthOjEyOntpOjA7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAxIjtzOjExOiJQbGF5ZXIgTmFtZSI7czoxMDoiTGFycnkgQmlyZCI7czozOiJBZ2UiO2k6MTE7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MDoiIjt9aToxO2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMSI7czoxMToiUGxheWVyIE5hbWUiO3M6MTE6IlBhcmtlciBNYW5uIjtzOjM6IkFnZSI7aToxMTtzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czoxMDoiTGFycnkgQmlyZCI7fWk6MjthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDEiO3M6MTE6IlBsYXllciBOYW1lIjtzOjg6IkJpZyBNYW5uIjtzOjM6IkFnZSI7aToxMTtzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czowOiIiO31pOjM7YTo1OntzOjQ6IlRlYW0iO3M6NjoiVGVhbSAxIjtzOjExOiJQbGF5ZXIgTmFtZSI7czoxNDoiSGFycnkgR3JhbnRoYW0iO3M6MzoiQWdlIjtpOjIzO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjA6IiI7fWk6NDthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDIiO3M6MTE6IlBsYXllciBOYW1lIjtzOjExOiJMaXR0bGUgTWFubiI7czozOiJBZ2UiO2k6MTE7czo2OiJHZW5kZXIiO3M6NDoiTWFsZSI7czoxNzoiVGVhbW1hdGUgUmVxdWVzdHMiO3M6MDoiIjt9aTo1O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMiI7czoxMToiUGxheWVyIE5hbWUiO3M6MTA6Ikx1a2UgTmVmcGgiO3M6MzoiQWdlIjtpOjEwO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjExOiJMaXR0bGUgTWFubiI7fWk6NjthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDIiO3M6MTE6IlBsYXllciBOYW1lIjtzOjEwOiJNaWNoYSBUZXN0IjtzOjM6IkFnZSI7aTo5O3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjk6IkNvbGUgUmlmZSI7fWk6NzthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDIiO3M6MTE6IlBsYXllciBOYW1lIjtzOjg6IkwgUmlzc2VyIjtzOjM6IkFnZSI7aToxNztzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czoxOiIgIjt9aTo4O2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMyI7czoxMToiUGxheWVyIE5hbWUiO3M6MTA6IkppbW15IEZyZXkiO3M6MzoiQWdlIjtpOjIzO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjA6IiI7fWk6OTthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDMiO3M6MTE6IlBsYXllciBOYW1lIjtzOjE4OiJMdWNhcyBTb2xsZW5iZXJnZXIiO3M6MzoiQWdlIjtpOjIwO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjEwOiJKaW1teSBGcmV5Ijt9aToxMDthOjU6e3M6NDoiVGVhbSI7czo2OiJUZWFtIDMiO3M6MTE6IlBsYXllciBOYW1lIjtzOjEzOiJBdXN0aW4gUmlzc2VyIjtzOjM6IkFnZSI7aToyMDtzOjY6IkdlbmRlciI7czo0OiJNYWxlIjtzOjE3OiJUZWFtbWF0ZSBSZXF1ZXN0cyI7czowOiIiO31pOjExO2E6NTp7czo0OiJUZWFtIjtzOjY6IlRlYW0gMyI7czoxMToiUGxheWVyIE5hbWUiO3M6ODoiQUogRW5nbGUiO3M6MzoiQWdlIjtpOjIzO3M6NjoiR2VuZGVyIjtzOjQ6Ik1hbGUiO3M6MTc6IlRlYW1tYXRlIFJlcXVlc3RzIjtzOjA6IiI7fX1zOjE5OiJkZWxldGVfYWZ0ZXJfZXhwb3J0IjtiOjA7czoxOToiY2FtcF9pZF9mb3JfY2xlYW51cCI7czoxOiIyIjt9', 1784937642);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `Sponsor_ID` int(11) NOT NULL,
  `Sponsor_Name` varchar(200) DEFAULT NULL,
  `Image_Path` text DEFAULT NULL,
  `Sponsor_Link` text DEFAULT NULL,
  `Sport_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `Sport_ID` int(11) NOT NULL,
  `Sport_Name` varchar(50) DEFAULT NULL,
  `Sport_Description` text DEFAULT NULL,
  `Sport_Image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`Sport_ID`, `Sport_Name`, `Sport_Description`, `Sport_Image`) VALUES
(1, 'Aroma', 'A revolution of missional athletes', 'sport-images/b0fa266c-224c-43aa-a7dc-04094bc69283.png'),
(2, 'Tennis', NULL, NULL),
(3, 'Soccer', 's', NULL),
(4, 'Boys\' Volleyball', 'bvb', 'sport-images/fb390d20-43ae-4af5-a2dc-aea238c1d431.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teammate_request`
--

CREATE TABLE `teammate_request` (
  `Player_ID` int(11) DEFAULT NULL,
  `Requested_FirstName` varchar(50) DEFAULT NULL,
  `Requested_LastName` varchar(50) DEFAULT NULL,
  `Teammate_Request_ID` int(11) NOT NULL,
  `Camp_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teammate_request`
--

INSERT INTO `teammate_request` (`Player_ID`, `Requested_FirstName`, `Requested_LastName`, `Teammate_Request_ID`, `Camp_ID`) VALUES
(13, 'Larry', 'Bird', 8, 2),
(212, 'Little', 'Mann', 250, 2),
(115, 'Jimmy', 'Frey', 368, 2),
(308, 'Cole', 'Rife', 369, 2),
(594, '', '', 721, 8),
(595, '', '', 722, 9),
(596, 'test', 'test', 723, 14),
(597, '', '', 724, 15),
(598, 'kid', 'girl', 725, 15),
(694, 'Luke', 'Risser', 843, 24),
(695, '', '', 844, 24),
(696, '', '', 845, 24),
(697, '', '', 846, 24),
(698, '', '', 847, 24),
(699, '', '', 848, 8),
(700, '', '', 849, 25),
(701, '', '', 850, 25),
(698, '', '', 851, 25),
(595, '', '', 852, 15),
(595, '', '', 853, 17),
(594, '', '', 854, 17),
(597, '', '', 855, 17),
(598, '', '', 856, 24),
(699, '', '', 857, 24),
(701, '', '', 858, 24),
(694, '', '', 859, 26),
(694, '', '', 1664, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'test@gmail.com', NULL, '$2y$12$JyiLg6wKreMONMUrjdU/5Obxs1IZHaW0BwoDsUPaEXpgWxkpVBaKO', NULL, '2025-09-17 17:32:36', '2025-09-17 17:32:36'),
(2, '', '', 'test2@gmail.com', NULL, '$2y$12$kB7DcFZr2regMpfDBcds9.BhrpVLapc0PovHrelb/rDDgEsxEXJFu', NULL, '2025-09-22 17:12:46', '2025-09-22 17:12:46'),
(5, 'Luke', 'Risser', 'lr1328@messiah.edu', NULL, '$2y$12$sUkziFtkfucQKqg0plvL0u1km9NOjzqAMcS7AD6MPWy71Mva7Slwm', NULL, '2025-09-24 17:21:54', '2025-11-24 23:26:05'),
(6, '', '', 'test@messiah.edu', NULL, '$2y$12$x3bPCzORGwGwz24i0jsu9uE2kXssBn18ZuBY7Q.DAiImj/19p5Fkm', NULL, '2025-09-30 13:47:18', '2025-09-30 13:47:18'),
(9, '', '', 'test2@messiah.edu', NULL, '$2y$12$n8jRIC0cGeo0NjUU8Aj5Z.TMCq6TJcdmgcAJSlekc4gpOCZyeRclG', NULL, '2025-10-01 23:54:17', '2025-10-01 23:54:17'),
(10, '', '', 'c@messiah.edu', NULL, '$2y$12$jTQ4gIbQQNTYCIcqkgSjDOqxXc1MVioxPfhHqBwEgOmORmgCWzWH.', NULL, '2025-10-02 19:25:53', '2025-10-02 19:25:53'),
(11, '', '', 'ms1905@messiah.edu', NULL, '$2y$12$BGOq8WA1bzxzpfRSIPo6OeHaNgEU/z2xYDA.8beY1xYKK1cTtZ5qe', NULL, '2025-10-06 23:46:27', '2025-10-06 23:46:27'),
(12, '', '', 'jm2050@messiah.edu', NULL, '$2y$12$xxNE3/pzdWVWXTBFf0xoAOLI3ZOZNaaB2BVSTAQBm4MJEfi9Wqpnm', NULL, '2025-10-07 00:42:33', '2025-10-07 00:42:33'),
(23, 'luke', 'test', 'lukerisser04@gmail.com', NULL, '$2y$12$ODaONwlYxumRp0VA73944u2DzMqrEyBLbG8g2DtIu.b0irj3QJg5a', NULL, '2025-11-04 13:18:23', '2025-11-04 13:18:23'),
(24, 'micah', 'neff', 'mn1253@messiah.edu', NULL, '$2y$12$bAJcspcXh14g0eak4M6FOOcQEWDaPxbLN2vqJR7MW5CwLblbxKXEu', NULL, '2025-11-05 18:44:10', '2025-11-05 18:44:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `camps`
--
ALTER TABLE `camps`
  ADD PRIMARY KEY (`Camp_ID`),
  ADD KEY `Camp_Sport_ibfk_1` (`Sport_ID`);

--
-- Indexes for table `camp_discount`
--
ALTER TABLE `camp_discount`
  ADD PRIMARY KEY (`Discount_ID`),
  ADD KEY `Camp_Discount_fk_1` (`Camp_ID`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`Coach_ID`),
  ADD KEY `fk_user_coach` (`user_id`),
  ADD KEY `fk_coach_sport` (`Sport_ID`);

--
-- Indexes for table `coach_camp`
--
ALTER TABLE `coach_camp`
  ADD PRIMARY KEY (`Coach_Camp_ID`),
  ADD KEY `Coach_Camp_ibfk_1` (`Coach_ID`),
  ADD KEY `Coach_Camp_ibfk_2` (`Camp_ID`);

--
-- Indexes for table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD PRIMARY KEY (`Fee_ID`),
  ADD KEY `Camp_ID` (`Camp_ID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`FAQ_ID`),
  ADD KEY `Sport_ID` (`Sport_ID`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`Image_ID`),
  ADD KEY `Sport_ID` (`Sport_ID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `FK_Order_Camp` (`Camp_ID`),
  ADD KEY `FK_Order_Parent` (`Parent_ID`);

--
-- Indexes for table `order_extra_fees`
--
ALTER TABLE `order_extra_fees`
  ADD PRIMARY KEY (`Order_Fee_ID`),
  ADD KEY `Fee_ID` (`Fee_ID`),
  ADD KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`Parent_ID`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pending_registrations`
--
ALTER TABLE `pending_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pending_registrations_email_unique` (`email`),
  ADD UNIQUE KEY `pending_registrations_token_unique` (`token`),
  ADD KEY `pending_registrations_token_index` (`token`),
  ADD KEY `pending_registrations_expires_at_index` (`expires_at`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `Parent_ID` (`Parent_ID`);

--
-- Indexes for table `player_camp`
--
ALTER TABLE `player_camp`
  ADD PRIMARY KEY (`player_camp_id`),
  ADD KEY `Player_Camp_ibfk_2` (`Player_ID`),
  ADD KEY `Player_Camp_ibfk_3` (`Camp_ID`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`Promo_Code_ID`),
  ADD KEY `Camp_ID` (`Camp_ID`),
  ADD KEY `Promo_Code` (`Promo_Code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`Sponsor_ID`),
  ADD KEY `Sport_ID` (`Sport_ID`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`Sport_ID`);

--
-- Indexes for table `teammate_request`
--
ALTER TABLE `teammate_request`
  ADD PRIMARY KEY (`Teammate_Request_ID`),
  ADD KEY `Teammate_Request_ibfk_1` (`Player_ID`),
  ADD KEY `Teammate_Request_ibfk_2` (`Camp_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camps`
--
ALTER TABLE `camps`
  MODIFY `Camp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `camp_discount`
--
ALTER TABLE `camp_discount`
  MODIFY `Discount_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `Coach_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coach_camp`
--
ALTER TABLE `coach_camp`
  MODIFY `Coach_Camp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `extra_fees`
--
ALTER TABLE `extra_fees`
  MODIFY `Fee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `FAQ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_extra_fees`
--
ALTER TABLE `order_extra_fees`
  MODIFY `Order_Fee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `Parent_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pending_registrations`
--
ALTER TABLE `pending_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `Player_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2222;

--
-- AUTO_INCREMENT for table `player_camp`
--
ALTER TABLE `player_camp`
  MODIFY `player_camp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2230;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `Promo_Code_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `Sponsor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `Sport_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teammate_request`
--
ALTER TABLE `teammate_request`
  MODIFY `Teammate_Request_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camps`
--
ALTER TABLE `camps`
  ADD CONSTRAINT `Camp_Sport_ibfk_1` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`);

--
-- Constraints for table `camp_discount`
--
ALTER TABLE `camp_discount`
  ADD CONSTRAINT `Camp_Discount_fk_1` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `fk_coach_sport` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`),
  ADD CONSTRAINT `fk_user_coach` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coach_camp`
--
ALTER TABLE `coach_camp`
  ADD CONSTRAINT `Coach_Camp_ibfk_1` FOREIGN KEY (`Coach_ID`) REFERENCES `coaches` (`Coach_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Coach_Camp_ibfk_2` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD CONSTRAINT `extra_fees_ibfk_1` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`);

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`);

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_ibfk_1` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Order_Camp` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`),
  ADD CONSTRAINT `FK_Order_Parent` FOREIGN KEY (`Parent_ID`) REFERENCES `parents` (`Parent_ID`);

--
-- Constraints for table `order_extra_fees`
--
ALTER TABLE `order_extra_fees`
  ADD CONSTRAINT `order_extra_fees_ibfk_1` FOREIGN KEY (`Fee_ID`) REFERENCES `extra_fees` (`Fee_ID`),
  ADD CONSTRAINT `order_extra_fees_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `Players_ibfk_1` FOREIGN KEY (`Parent_ID`) REFERENCES `parents` (`Parent_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_camp`
--
ALTER TABLE `player_camp`
  ADD CONSTRAINT `Player_Camp_ibfk_2` FOREIGN KEY (`Player_ID`) REFERENCES `players` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Player_Camp_ibfk_3` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD CONSTRAINT `promo_codes_ibfk_1` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`) ON DELETE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`Sport_ID`) REFERENCES `sports` (`Sport_ID`);

--
-- Constraints for table `teammate_request`
--
ALTER TABLE `teammate_request`
  ADD CONSTRAINT `Teammate_Request_ibfk_1` FOREIGN KEY (`Player_ID`) REFERENCES `players` (`Player_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Teammate_Request_ibfk_2` FOREIGN KEY (`Camp_ID`) REFERENCES `camps` (`Camp_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
