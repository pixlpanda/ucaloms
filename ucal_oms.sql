-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 02:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ucal_oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `add_id` int(5) UNSIGNED NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `org_id` int(5) UNSIGNED NOT NULL,
  `address` text DEFAULT NULL,
  `gst` varchar(55) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(5) UNSIGNED NOT NULL,
  `brand` text DEFAULT NULL,
  `logo` varchar(25) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand`, `logo`, `created_on`, `updated_on`) VALUES
(1, 'Atul', 'logo-11.png', '2023-03-28 05:39:14', '2023-03-28 05:40:02'),
(2, 'Bajaj', 'logo-3.png', '2023-03-28 05:39:14', '2023-03-28 05:40:14'),
(3, 'Hero', 'logo-6.png', '2023-03-28 05:39:14', '2023-03-28 05:40:35'),
(4, 'Royal Enfield', 'logo-5.png', '2023-03-28 05:39:14', '2023-03-28 05:40:50'),
(5, 'Suzuki', 'logo-7.png', '2023-03-28 05:39:14', '2023-03-28 05:41:05'),
(6, 'Greaves', 'logo-13.png', '2023-03-28 05:39:14', '2023-03-28 05:41:52'),
(7, 'Piaggio', 'logo-10.png', '2023-03-28 05:39:14', '2023-03-28 05:42:00'),
(8, 'Mahindra', 'logo-14.png', '2023-03-28 05:39:14', '2023-03-28 05:42:11'),
(9, 'TVS', 'logo-4.png', '2023-03-28 05:39:14', '2023-03-28 05:40:27'),
(10, 'Yamaha', 'logo-12.png', '2023-03-28 05:39:14', '2023-03-28 05:41:40'),
(11, 'Honda', 'logo-8.png', '2023-03-28 05:39:14', '2023-03-28 05:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) UNSIGNED NOT NULL,
  `category` text DEFAULT NULL,
  `icon` varchar(25) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`, `icon`, `created_on`, `updated_on`) VALUES
(1, 'Carburetors', 'carb.svg', '2023-03-28 05:54:30', '2023-03-28 05:55:07'),
(2, 'Pumps', 'pump.svg', '2023-03-28 05:54:30', '2023-03-28 05:55:38'),
(3, 'Filters', 'filter.svg', '2023-03-28 05:54:30', '2023-03-28 05:55:32'),
(4, 'Kit Parts', 'kit.svg', '2023-03-28 05:54:30', '2023-03-28 05:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `comp_id` int(5) UNSIGNED NOT NULL,
  `password` text DEFAULT NULL,
  `gst` varchar(15) NOT NULL,
  `company_type` text DEFAULT NULL,
  `comp_address` text DEFAULT NULL,
  `comp_contact` varchar(15) NOT NULL,
  `comp_email` text DEFAULT NULL,
  `pincode` int(6) UNSIGNED NOT NULL,
  `state` varchar(15) NOT NULL,
  `branch_id` int(11) UNSIGNED NOT NULL,
  `comp_name` text DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`comp_id`, `password`, `gst`, `company_type`, `comp_address`, `comp_contact`, `comp_email`, `pincode`, `state`, `branch_id`, `comp_name`, `created_on`, `updated_on`) VALUES
(1, '$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', '33AAKCA0333K1ZY', 'Administrator', '11b/2 Sai Nagar, Ambit It Park road,\r\nAmbattur Industrial Estate', '+44 43444777', 'vigneshwaran@ucal.com', 600058, 'Tamil Nadu', 0, 'Jai Auto', '2021-12-14 09:03:10', '2022-11-30 11:27:57'),
(2, '', '33AAACU0541K1ZM', '', 'Plot No. : A3/A3, A4, A5, CMDA Industrial Complex, Maraimalai Nagar - 603209', '+91 44 4258 458', 'sale.mmn@ucal.com', 603209, 'Tamil Nadu', 1, 'Jai Auto Adayar', '2022-01-31 07:32:11', '2022-02-21 08:54:09'),
(3, '', '33AAACU0320J1ZV', '', 'Unit No. B-003, Raheja Tower, No. 177, Anna Salai, Chennai.', '044 2860 1235', 'marketingeltech@ucal.com', 600002, 'Tamil Nadu', 1, 'Jai Auto Ambattur', '2022-01-31 07:36:28', '2022-02-21 08:54:15'),
(4, '$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', '', 'Administrator', 'Raheja Towers', '', 'vikas@ucal.com', 600002, 'Tamil Nadu', 1, 'UCAL FUEL SYSTEMS LIMITED', '2022-02-21 09:00:58', '2022-11-30 11:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `contact_person`
--

CREATE TABLE `contact_person` (
  `cp_id` int(5) UNSIGNED NOT NULL,
  `cp_name` text DEFAULT NULL,
  `cp_designation` varchar(15) NOT NULL,
  `cp_email` text DEFAULT NULL,
  `comp_id` int(11) UNSIGNED NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-03-28-062755', 'App\\Database\\Migrations\\Pagetitle', 'default', 'App', 1680667563, 1),
(2, '2023-03-28-093755', 'App\\Database\\Migrations\\Address', 'default', 'App', 1680667563, 1),
(3, '2023-03-28-093909', 'App\\Database\\Migrations\\Brand', 'default', 'App', 1680667564, 1),
(4, '2023-03-28-094009', 'App\\Database\\Migrations\\Category', 'default', 'App', 1680667564, 1),
(5, '2023-03-28-094108', 'App\\Database\\Migrations\\Company', 'default', 'App', 1680667564, 1),
(6, '2023-03-28-094154', 'App\\Database\\Migrations\\ContactPerson', 'default', 'App', 1680667564, 1),
(7, '2023-03-28-094233', 'App\\Database\\Migrations\\Reqlist', 'default', 'App', 1680667564, 1),
(8, '2023-03-28-094313', 'App\\Database\\Migrations\\Request', 'default', 'App', 1680667564, 1),
(9, '2023-03-28-094404', 'App\\Database\\Migrations\\Saleorder', 'default', 'App', 1680667564, 1),
(10, '2023-03-28-094502', 'App\\Database\\Migrations\\Users', 'default', 'App', 1680667565, 1),
(11, '2023-03-28-095249', 'App\\Database\\Migrations\\Products', 'default', 'App', 1680667565, 1),
(12, '2023-03-31-094437', 'App\\Database\\Migrations\\Producttableupdate', 'default', 'App', 1680667565, 1),
(13, '2023-04-05-040737', 'App\\Database\\Migrations\\ProductSorting', 'default', 'App', 1680668768, 2),
(14, '2023-04-05-043445', 'App\\Database\\Migrations\\ProductBrandId', 'default', 'App', 1680669436, 3);

-- --------------------------------------------------------

--
-- Table structure for table `page_title`
--

CREATE TABLE `page_title` (
  `page_id` int(5) UNSIGNED NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_slug` varchar(512) NOT NULL,
  `page_description` text DEFAULT NULL,
  `page_keywords` text DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `page_title`
--

INSERT INTO `page_title` (`page_id`, `page_title`, `page_slug`, `page_description`, `page_keywords`, `created_on`, `updated_on`) VALUES
(1, 'Home', '/', 'Spare Parts dealers portal', 'UCAL', '2023-03-28 08:41:58', '2023-03-28 08:41:58'),
(2, 'View Cart', 'cart', '', 'CARBURATORS', '2023-03-28 08:41:58', '2023-03-28 08:41:58'),
(3, 'Profile', 'account', '', '', '2023-03-28 08:41:58', '2023-03-28 08:41:58'),
(4, 'Checkout', 'checkout', '', '', '2023-03-28 08:41:58', '2023-03-28 08:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(5) UNSIGNED NOT NULL,
  `brand` varchar(25) DEFAULT NULL,
  `brand_id` int(5) UNSIGNED DEFAULT 0,
  `oe_part` varchar(55) DEFAULT NULL,
  `ucal_part` varchar(55) NOT NULL,
  `prod_application` text DEFAULT NULL,
  `v_application` varchar(15) DEFAULT NULL,
  `2w` int(5) UNSIGNED DEFAULT 0,
  `3w` int(5) UNSIGNED DEFAULT 0,
  `4w` int(5) UNSIGNED DEFAULT 0,
  `cat_id` int(5) UNSIGNED DEFAULT 0,
  `prod_cat` varchar(15) DEFAULT NULL,
  `prod_mrp` int(5) DEFAULT NULL,
  `prod_selling` int(15) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `brand`, `brand_id`, `oe_part`, `ucal_part`, `prod_application`, `v_application`, `2w`, `3w`, `4w`, `cat_id`, `prod_cat`, `prod_mrp`, `prod_selling`, `created_on`, `updated_on`) VALUES
(1, 'Atul', 1, '3601003703', 'UVD22-45', 'Atul Auto BS4-CNG  ', '3W', 0, 1, 0, 1, 'BSIV', 2061, 1030, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(2, 'Atul', 1, '3601703002', 'UVD22-41', 'Atul Auto Rickshaw ', '3W', 0, 1, 0, 1, 'BSIV', 2061, 1030, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(3, 'Atul', 1, '3601003702', 'UVD22-39', 'Atul Auto Rickshaw ', '3W', 0, 1, 0, 1, 'BSIV', 2061, 1030, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(4, 'Bajaj', 2, 'JB581208', 'UVD16-1', 'Bajaj - Platina 100 CC ', '2W', 1, 0, 0, 1, 'BSIII', 1802, 901, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(5, 'Bajaj', 2, 'JK581201', 'UVD16-7', 'Bajaj - Plantina 125 CC ', '2W', 1, 0, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(6, 'Bajaj', 2, 'DP121001', 'BS26-176', 'Bajaj Wind 125CC (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 2667, 1333, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(7, 'Bajaj', 2, 'JA581209', 'VM16-614', 'Bajaj XCD 125 CC ', '2W', 1, 0, 0, 1, 'BSIII', 1836, 918, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(8, 'Bajaj', 2, 'PF581200', 'UVD20-3', 'Bajaj - Boxer 150 CC ', '2W', 1, 0, 0, 1, 'BSIII', 1664, 832, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(9, 'Bajaj', 2, 'PF581209', 'UVD20-4', 'Bajaj - Boxer 150 CC Iran ', '2W', 1, 0, 0, 1, 'BSIII', 1586, 793, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(10, 'Bajaj', 2, 'JZ581227', 'UVD20-2', 'Bajaj - Discover 125 CC  ', '2W', 1, 0, 0, 1, 'BSIII', 1959, 979, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(11, 'Bajaj', 2, 'PA581226', 'UCD26-10', 'Bajaj - Discover 125 CC M ', '2W', 1, 0, 0, 1, 'BSIII', 2364, 1182, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(12, 'Bajaj', 2, 'JE581231', 'UCD26-6', 'Bajaj - Discover 125CC ST ', '2W', 1, 0, 0, 1, 'BSIII', 2357, 1179, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(13, 'Bajaj', 2, 'JZ581241', 'UVD20-21', 'Bajaj Discover 125CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIII', 1565, 782, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(14, 'Bajaj', 2, 'JZ581228', 'UCD26-11', 'Bajaj - Discover 150 CC  ', '2W', 1, 0, 0, 1, 'BSIII', 2357, 1179, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(15, 'Bajaj', 2, 'JZ581209', 'UVD22-7', 'Bajaj -  Discover 150 CC ', '2W', 1, 0, 0, 1, 'BSIII', 1931, 966, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(16, 'Bajaj', 2, 'DV121009', 'BS29-14', ' Bajaj Avenger (Aura)  ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(17, 'Bajaj', 2, 'PD581200', 'UCD29-4', 'Bajaj - Avenger 220CC  ', '2W', 1, 0, 0, 1, 'BSIII', 2512, 1256, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(18, 'Bajaj', 2, 'JM120003', 'BS29-17', 'Bajaj Avenger Upgrade (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(19, 'Bajaj', 2, 'JE581200', 'UCD26-1', 'Bajaj Pulsar 135 CC ', '2W', 1, 0, 0, 1, 'BSIII', 3275, 1638, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(20, 'Bajaj', 2, 'JE581201', 'UCD26-4', 'Bajaj Pulsar 135 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2839, 1419, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(21, 'Bajaj', 2, 'DH121188', 'UCD29-6', 'Bajaj - Pulsar 150 CC  K1 UG 4.5  ', '2W', 1, 0, 0, 1, 'BSIII', 2271, 1135, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(22, 'Bajaj', 2, 'DH121097', 'BS26-188', 'Bajaj - Pulsar 150 CC (K1 UG) (DTS-i) (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2317, 1159, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(23, 'Bajaj', 2, 'DH121123', 'BS26-221', 'Bajaj - Pulsar 150 CC (K1 UG2) (DTS-i) (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2317, 1159, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(24, 'Bajaj', 2, 'DH121138', 'BS26-239', 'Bajaj Pulsar 150 CC (K1 UG 3) - DTS-I (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2317, 1159, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(25, 'Bajaj', 2, 'DH121040', 'BS26-165', 'Bajaj Pulsar 150 CC (K1 UG) (DTS-i) (4S)   ', '2W', 1, 0, 0, 1, 'BSIII', 2309, 1154, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(26, 'Bajaj', 2, 'DH121154', 'UCD29-3', 'Bajaj - Pulsar 158 CC -K1 UG (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 2442, 1221, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(27, 'Bajaj', 2, 'JE581233', 'UCD29-10', 'Bajaj - Pulsar 160 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2998, 1499, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(28, 'Bajaj', 2, 'DJ121079', 'UCD29-7', 'Bajaj Pulsar (K2 UG4) 180 CC  ', '2W', 1, 0, 0, 1, 'BSIII', 2268, 1134, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(29, 'Bajaj', 2, 'DJ121041', 'UCD29-1', 'Bajaj - Pulsar 180 CC K2 UG4  (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 2512, 1256, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(30, 'Bajaj', 2, 'DJ121032', 'BS29-13', 'Bajaj Pulsar 180 CC (K2 UG 2)(DTS-i) (4S)   ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(31, 'Bajaj', 2, 'DJ121020', 'BS29-16', 'Bajaj Pulsar 180 CC (K2 UG 3) (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(32, 'Bajaj', 2, 'DJ121008', 'BS29-6', 'Bajaj Pulsar 180 CC (K2)  (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(33, 'Bajaj', 2, 'DJ121020', 'BS29-9', 'Bajaj Pulsar 180 CC (K2)(DTS-i)  (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(34, 'Bajaj', 2, 'JL581212', 'UCD33-4', 'Bajaj - Pulsar 200 CC (NS) Philippines ', '2W', 1, 0, 0, 1, 'BSIII', 3208, 1604, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(35, 'Bajaj', 2, 'JL581211', 'UCD33-3', 'Bajaj - Pulsar 200 NS ', '2W', 1, 0, 0, 1, 'BSIII', 3208, 1604, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(36, 'Bajaj', 2, 'JC120024', 'UCD32-2', 'Bajaj - Pulsar 200CC ', '2W', 1, 0, 0, 1, 'BSIII', 3044, 1522, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(37, 'Bajaj', 2, 'JC120005', 'BS29-18', 'Bajaj Pulsar 200 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2370, 1185, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(38, 'Bajaj', 2, 'JL581201', 'UCD33-1', 'Bajaj Pulsar 200(NS) ', '2W', 1, 0, 0, 1, 'BSIII', 3721, 1860, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(39, 'Bajaj', 2, 'DJ121094', 'T1-UCD29-X68', 'Bajaj Pulsar 180 Export ', '2W', 1, 0, 0, 1, 'BSIII', 2315, 1158, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(40, 'Bajaj', 2, 'AN121234', 'UVD20-30', 'BAJAJ-RE MAX ', '2W', 1, 0, 0, 1, 'BSIII', 1647, 824, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(41, 'Bajaj', 2, 'JH581231', 'UCD26-19', 'BAJAJ-V12 EXPORT ', '2W', 1, 0, 0, 1, 'BSIII', 2362, 1181, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(42, 'Bajaj', 2, 'JE581258', 'T1-UCD26-X51', 'Bajaj Pulsar 135 Export (Euro  III) ', '2W', 1, 0, 0, 1, 'BSIII', 2404, 1202, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(43, 'Bajaj', 2, 'JE581254', 'UCD26-16', 'Bajaj Pulsar 135 Export (Euro  III) ', '2W', 1, 0, 0, 1, 'BSIII', 2404, 1202, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(44, 'Bajaj', 2, 'DH121224', 'T2-UCD29-X75', 'Bajaj Pulsar  150 Export -Euro  BSIII ', '2W', 1, 0, 0, 1, 'BSIII', 2315, 1158, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(45, 'Bajaj', 2, 'CR121065', 'VM18-257', 'Bajaj Chetak Scooter (2S) ', '2W', 1, 0, 0, 1, 'BSIII', 1469, 735, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(46, 'Bajaj', 2, 'DJ121091', 'UCD29-21', 'Bajaj Pulsar 180CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2326, 1163, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(47, 'Bajaj', 2, 'PD581215', 'UCD29-14', 'Bajaj Avenger 150CC ', '2W', 1, 0, 0, 1, 'BSIV', 2264, 1132, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(48, 'Bajaj', 2, 'PD581217', 'UCD29-18', 'Bajaj Avenger 150CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2311, 1155, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(49, 'Bajaj', 2, 'PD581214', 'UCD29-13', 'Bajaj Avenger 220CC ', '2W', 1, 0, 0, 1, 'BSIV', 2264, 1132, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(50, 'Bajaj', 2, 'PD581216', 'UCD29-17', 'Bajaj Avenger  220CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2311, 1155, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(51, 'Bajaj', 2, 'JZ581240', 'UVD20-20', 'Bajaj Discover 125CC ', '2W', 1, 0, 0, 1, 'BSIV', 1647, 824, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(52, 'Bajaj', 2, 'JV581204', 'UVD20-27', 'Baja Boxer 125CC  ', '2W', 1, 0, 0, 1, 'BSIV', 1524, 762, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(53, 'Bajaj', 2, 'JZ581242', 'UVD20-22', 'Bajaj 2W Disco 125 Export  ', '2W', 1, 0, 0, 1, 'BSIV', 1512, 756, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(54, 'Bajaj', 2, 'JE581251', 'UCD26-14', 'Bajaj Pulsar 135CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2404, 1202, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(55, 'Bajaj', 2, 'DH121209', 'UCD29-22', 'Bajaj Pulsar 150CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2317, 1159, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(56, 'Bajaj', 2, 'DH121218', 'UCD29-23', 'Bajaj Pulsar 150CC Export ', '2W', 1, 0, 0, 1, 'BSIV', 2283, 1142, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(57, 'Bajaj', 2, 'JE581257', 'UCD29-25', 'Bajaj Pulsar 160CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2529, 1265, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(58, 'Bajaj', 2, 'JE581249', 'UCD29-26', 'Bajaj Pulsar 160CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2529, 1265, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(59, 'Bajaj', 2, 'JE581255', 'UCD29-24', 'Bajaj Pulsar 160CC - BSIV Export ', '2W', 1, 0, 0, 1, 'BSIV', 2508, 1254, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(60, 'Bajaj', 2, 'JL581215', 'UCD33-6', 'Bajaj Pulsar 200CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2756, 1378, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(61, 'Bajaj', 2, 'DK121092', 'UCD32-3', 'Bajaj Pulsar 220CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2620, 1310, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(62, 'Bajaj', 2, 'JL581217', 'UCD33-7', 'Bajaj Pulsar NS200 EXPORT ', '2W', 1, 0, 0, 1, 'BSIV', 2709, 1355, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(63, 'Bajaj', 2, 'DK121095', 'UCD32-4', 'Bajaj Pulser 220cc Export ', '2W', 1, 0, 0, 1, 'BSIV', 2584, 1292, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(64, 'Bajaj', 2, 'JH581200', 'UCD24-1', 'Bajaj V15 150CC ', '2W', 1, 0, 0, 1, 'BSIV', 1787, 894, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(65, 'Bajaj', 2, 'JH581206', 'UCD24-2', 'Bajaj V15 150CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2364, 1182, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(66, 'Bajaj', 2, 'PD581221', 'UCD29-28', 'Bajaj Avenger 180 BS IV ', '2W', 1, 0, 0, 1, 'BSIV', 2349, 1174, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(67, 'Bajaj', 2, 'JH581233', 'UCD26-18', 'Bajaj V-12 Upgrade ', '2W', 1, 0, 0, 1, 'BSIV', 2391, 1196, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(68, 'Bajaj', 2, 'PF581268', 'UVD20-35', 'BAJAJ BOXER 150 UG ', '2W', 1, 0, 0, 1, 'BSIV', 1558, 779, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(69, 'Bajaj', 2, 'PF581228', 'UVD20-34', 'BAJAJ-PLATINA 125 CC ', '2W', 1, 0, 0, 1, 'BSIV', 1571, 785, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(70, 'Bajaj', 2, 'PF581272', 'T4-UCD20-X7', 'PLATINA 110CC BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 3210, 1605, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(71, 'Bajaj', 2, 'PF581264', 'UVD16-17', 'BAJAJ-CT-100 (AUTO START) ', '2W', 1, 0, 0, 1, 'BSIV', 1668, 834, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(72, 'Bajaj', 2, 'PF581297', 'UVD16-20', 'CT-110 ES CARB SUB ', '2W', 1, 0, 0, 1, 'BSIV', 1668, 834, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(73, 'Bajaj', 2, 'PD581225', 'UCD29-29', 'BAJAJ-AVENGER 180 BS IV EXPORT ', '2W', 1, 0, 0, 1, 'BSIV', 2302, 1151, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(74, 'Bajaj', 2, 'PD581226', 'T-UCD29-001/01', 'BAJAJ-AVENGER 160 STREET BS IV ', '2W', 1, 0, 0, 1, 'BSIV', 2349, 1174, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(75, 'Bajaj', 2, 'JE581247', 'UCD24-3', 'BAJAJ-PULSAR 125 ', '2W', 1, 0, 0, 1, 'BSIV', 2466, 1233, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(76, 'Bajaj', 2, 'DH121263', 'T-UCD26-002', 'PULSAR 125-K19 BS IV ', '2W', 1, 0, 0, 1, 'BSIV', 2483, 1241, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(77, 'Bajaj', 2, 'DU121077', 'UVD16-15', 'BAJAJ-CT-100 (SELF START) ', '2W', 1, 0, 0, 1, 'BSIV', 1685, 843, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(78, 'Bajaj', 2, 'AG121077', 'UVD20-7', 'Bajaj Autorickshaw RE 145 CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1900, 950, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(79, 'Bajaj', 2, '52AG0017', 'UVD20-8', 'Bajaj Autorickshaw RE 145 LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1734, 867, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(80, 'Bajaj', 2, '24121676', 'UVD20-9', 'Bajaj Autorickshaw RE 145 Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1906, 953, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(81, 'Bajaj', 2, '24121470', 'UVD18-10', 'Bajaj Autorickshaw RE 2S-CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1728, 864, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(82, 'Bajaj', 2, '24121471', 'UVD18-11', 'Bajaj Autorickshaw RE 2S-LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1728, 864, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(83, 'Bajaj', 2, '24121457', 'UVD18-9', 'Bajaj Autorickshaw RE 2S-Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1728, 864, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(84, 'Bajaj', 2, '24121660', 'UVD18-15', 'Bajaj Autorickshaw RE 2S-Petrol (Export) ', '3W', 0, 1, 0, 1, 'BSIII', 1728, 864, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(85, 'Bajaj', 2, 'AA121097', 'VM18-268', 'Bajaj Autorickshaw RE 4S - Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1690, 845, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(86, 'Bajaj', 2, '24121232', 'VM18-265', 'Bajaj Autorickshaw RE 4S-CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1690, 845, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(87, 'Bajaj', 2, '24121232', 'VM18-266', 'Bajaj Autorickshaw RE 4S-LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1690, 845, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(88, 'Bajaj', 2, 'AE121006', 'VM18-231', 'Bajaj 3/5 Port RE Autorickshaw ', '3W', 0, 1, 0, 1, 'BSIII', 1336, 668, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(89, 'Bajaj', 2, '24121118', 'VM18-251', 'Bajaj 5 Port RE Autorickshaw ', '3W', 0, 1, 0, 1, 'BSIII', 1469, 735, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(90, 'Bajaj', 2, 'AA121208', 'UVD20-11', 'Bajaj Autorickshaw RE 205 Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1927, 964, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(91, 'Bajaj', 2, 'AA121142', 'UVD22-6', 'Bajaj Autorickshaw RE 205 Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1806, 903, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(92, 'Bajaj', 2, 'AA121199', 'UVD20-16', 'Bajaj Autorickshaw RE 205 Petrol (DOM) ', '3W', 0, 1, 0, 1, 'BSIII', 1929, 965, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(93, 'Bajaj', 2, 'AA121209', 'UVD-20-12', 'Bajaj Autorickshaw RE 205 Petrol (Export) ', '3W', 0, 1, 0, 1, 'BSIII', 1637, 818, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(94, 'Bajaj', 2, 'AM121112', 'UVD22-3', 'Bajaj Autorickshaw RE 205 LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1806, 903, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(95, 'Bajaj', 2, 'AF121477', 'UVD22-2', 'Bajaj Autorickshaw RE 205 CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1526, 763, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(96, 'Bajaj', 2, 'RA581205', 'UVD22-20', 'Bajaj Autorickshaw RE 205 Optima LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1914, 957, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(97, 'Bajaj', 2, 'AM121169', 'UVD22-17', 'Bajaj Autorickshaw RE 205 Compact LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1914, 957, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(98, 'Bajaj', 2, 'AF121522', 'UVD22-19', 'Bajaj Autorickshaw RE 205 Compact CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1914, 957, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(99, 'Bajaj', 2, 'AZ581201', 'UVD22-4', 'Bajaj Autorickshaw RE 205 MAX  CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1806, 903, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(100, 'Bajaj', 2, 'AZ581217', 'UVD22-18', 'Bajaj Autorickshaw RE 205 Optima CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1914, 957, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(101, 'Bajaj', 2, '52AN0114', 'UVD22-30', 'Bajaj 3W RE205 Cargo  CNG ', '3W', 0, 1, 0, 1, 'BSIV', 1635, 817, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(102, 'Bajaj', 2, 'AF121527', 'UVD22-32', 'Bajaj 3W RE205 Compact CNG ', '3W', 0, 1, 0, 1, 'BSIV', 1586, 793, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(103, 'Bajaj', 2, 'AM121178', 'UVD22-31', 'Bajaj 3W RE205 Compact LPGÂ  ', '3W', 0, 1, 0, 1, 'BSIV', 1603, 801, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(104, 'Bajaj', 2, 'AZ581219', 'UVD22-34', 'Bajaj 3W RE205 COMPACT PLUS CNG ', '3W', 0, 1, 0, 1, 'BSIV', 1603, 801, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(105, 'Bajaj', 2, '52RA0010', 'UVD22-33', 'Bajaj 3W RE205 Compact Plus LPGÂ  ', '3W', 0, 1, 0, 1, 'BSIV', 1586, 793, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(106, 'Bajaj', 2, 'AA121280', 'UVD20-25', 'Bajaj Autorickshaw RE205 D Petrol 4S - BSIV  ', '3W', 0, 1, 0, 1, 'BSIV', 1632, 816, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(107, 'Bajaj', 2, 'AA121257', 'UVD20-19', 'Bajaj Autorickshaw Compact 4S Petrol FL ', '3W', 0, 1, 0, 1, 'BSIV', 1603, 801, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(108, 'Bajaj', 2, 'JZ581246', 'UVD20-31', 'Bajaj Discover  125 CC ', '3W', 0, 1, 0, 1, 'BSIV', 1611, 806, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(109, 'Bajaj', 2, 'AA121324', 'UVD20-26', 'Bajaj-RE 205 BS IV ', '3W', 0, 1, 0, 1, 'BSIV', 1632, 816, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(110, 'Bajaj', 2, 'AF121527', 'UVD22-32', 'Bajaj-RE Compact ', '3W', 0, 1, 0, 1, 'BSIV', 1632, 816, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(111, 'Bajaj', 2, 'AT581204', 'UVD22-42', 'Bajaj Wider Body  CNG ', '3W', 0, 1, 0, 1, 'BSIV', 1639, 819, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(112, 'Bajaj', 2, 'AT581205', 'UVD22-43', 'Bajaj RE - Maxima LPG ', '3W', 0, 1, 0, 1, 'BSIV', 1639, 819, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(113, 'Bajaj', 2, 'AY581200', 'UVD20-32', 'Bajaj RE MAX-Z ', '3W', 0, 1, 0, 1, 'BSIV', 1647, 824, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(114, 'Bajaj', 2, 'JZ581248', 'UVD20-33', 'Discover 125 CC Export ', '3W', 0, 1, 0, 1, 'BSIV', 1571, 785, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(115, 'Bajaj', 2, '52AS0036', 'UVD20-23', 'Bajaj Autorickshaw RE Compact CNG 2S - BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1785, 893, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(116, 'Bajaj', 2, '52AF0168', 'UVD22-37', 'Bajaj Autorickshaw Compact CNG 4S - BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1645, 823, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(117, 'Bajaj', 2, '52AG0039', 'UVD20-24', 'Bajaj Autorickshaw RE Compact LPG 2S - BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1736, 868, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(118, 'Bajaj', 2, '52AM0068', 'UVD22-36', 'Bajaj Autorickshaw RE Compact LPG 4S - BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1645, 823, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(119, 'Hero', 3, '16100-AAB-A000', 'T8-UCD33-X18', 'HERO-XTREME 200 CC ', '2W', 1, 0, 0, 1, 'BSIV', 3116, 1558, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(120, 'Hero', 3, '16100-ABW-0000', 'T-UCD33-002', 'HERO XPULSE 200CC MOTOR ', '2W', 1, 0, 0, 1, 'BSIV', 3155, 1577, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(121, 'Hero', 3, '16100-AAY-3020', 'UVD17-8 ', 'Hero  Duet 110 CC ', '2W', 1, 0, 0, 1, 'BSIV', 1399, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(122, 'Hero', 3, '16100-AAW-0020', 'UVD17-5', 'Hero Maestro  Edge  110CC ', '2W', 1, 0, 0, 1, 'BSIV', 1425, 712, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(123, 'Hero', 3, '16100-AAW-1000', 'UVD17-7', 'Hero Maestro Edge 110 CC Export ', '2W', 1, 0, 0, 1, 'BSIV', 1321, 660, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(124, 'Hero', 3, '16100-ABW-1000', 'T-UCD33-003', 'HERO XPULSE 200CC MOTOR-EXP ', '2W', 1, 0, 0, 1, 'BSIV', 3155, 1577, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(125, 'Enfield', 4, '570282/H', 'BS29-19', 'Royal Enfield Thunderbird 350CC  ', '2W', 1, 0, 0, 1, 'BSIII', 2544, 1272, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(126, 'Enfield', 4, '500820', 'BS26-199', 'Royal Enfield Thunderbird 350CC (4S)   ', '2W', 1, 0, 0, 1, 'BSIII', 3867, 1933, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(127, 'Enfield', 4, '576583/C', 'UCD29-16', 'Royal Enfield Thunderbird 350cc - BS IV ', '2W', 1, 0, 0, 1, 'BSIV', 2701, 1350, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(128, 'Enfield', 4, '574341/A', 'UCD33-5', 'Royal Enfield Himalayan 410 CC ', '2W', 1, 0, 0, 1, 'BSIV', 3424, 1712, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(129, 'Enfield', 4, '5107001B', 'BS29-10', 'Royal Enfield Thunderbird - 500cc ', '2W', 1, 0, 0, 1, 'BSIII', 3867, 1933, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(130, 'Enfield', 4, '570889/B', 'UCD33-2', 'Royal Enfield Thunderbird 500 CC ', '2W', 1, 0, 0, 1, 'BSIII', 4094, 2047, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(131, 'Suzuki', 5, '13200-34J00-000', 'UCD29-9', 'Suzuki - Zixxer 155 CC ', '2W', 1, 0, 0, 1, 'BSIII', 3432, 1716, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(132, 'Suzuki', 5, '13200-28G00-000', 'VM18-255', 'Suzuki - Zues & Heat  ', '2W', 1, 0, 0, 1, 'BSIII', 2625, 1312, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(133, 'Suzuki', 5, '13200-33G81-000', 'VM18-258', 'Suzuki Access Scooter 125 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2362, 1181, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(134, 'Suzuki', 5, '13200-28G40', 'UVD18-38', 'Suzuki Slingshot 125 CC ', '2W', 1, 0, 0, 1, 'BSIII', 3502, 1751, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(135, 'Suzuki', 5, '13200-34J50-000', 'UCD29-31', 'SUZUKI-X121 Zixxer Export Model ', '2W', 1, 0, 0, 1, 'BSIII', 3176, 1588, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(136, 'Suzuki', 5, '13200-34J40-000', 'UCD29-15', 'Suzuki Zixxer 150CC Export ', '2W', 1, 0, 0, 1, 'BSIV', 2828, 1414, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(137, 'Suzuki', 5, '13200-34J10-000', 'UCD29-19', 'Suzuki Zixxer  155CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2881, 1441, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(138, 'Greaves', 6, '400-068-47', 'UVD22-5', 'Greaves Autorickshaw G400AG  ', '3W', 0, 1, 0, 1, 'BSIII', 1524, 762, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(139, 'Greaves', 6, '400-068-42', 'UVD22-1', 'Greaves Autorickshaw G400WG  ', '3W', 0, 1, 0, 1, 'BSIII', 1658, 829, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(140, 'Greaves', 6, '075-068-51', 'UVD22-9', 'Greaves Autorickshaw G4510WG  ', '3W', 0, 1, 0, 1, 'BSIII', 1524, 762, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(141, 'Piaggio', 7, 'CM166103', 'UVD22-12', 'Piaggio Autorickshaw - APE PAX 200 CC CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1658, 829, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(142, 'Piaggio', 7, 'CM166102', 'UVD22-13', 'Piaggio Autorickshaw - APE PAX 200 CC LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1658, 829, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(143, 'Piaggio', 7, 'CM166104', 'UVD22-11', 'Piaggio Autorickshaw - APE PAX 200 CC PET ', '3W', 0, 1, 0, 1, 'BSIII', 1639, 819, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(144, 'Piaggio', 7, 'CM166110', 'UVD22-48', 'PIAGGIO 230 CC ', '2W', 1, 0, 0, 1, 'BSIV', 1838, 919, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(145, 'Mahindra', 8, '400-068-61', 'UCD26-13', 'Mahindra Alfo 3W 4S Diesel ', '3W', 0, 1, 0, 1, 'BSIV', 2707, 1354, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(146, 'Mahindra', 8, 'T0102AKE0010N', 'T9-UCD33-X20', 'MAHINDRA-M103 BS IV ', '2W', 1, 0, 0, 1, 'BSIV', 3721, 1860, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(147, 'TVS', 9, 'N2040010', 'VM18-241', ' TVS - Victor 110CC ', '2W', 1, 0, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(148, 'TVS', 9, 'N8041500', 'UVD19-1', ' TVS-Moped  ', '2W', 1, 0, 0, 1, 'BSIII', 1531, 765, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(149, 'TVS', 9, 'N9041400N', 'UCD29-2', 'TVS - Apache 180 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2703, 1352, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(150, 'TVS', 9, 'N1040060', 'VM19-X5', 'TVS - Victor GLX  ', '2W', 1, 0, 0, 1, 'BSIII', 1429, 714, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(151, 'TVS', 9, 'K6040440', 'UVD16-5', 'TVS - Wego ', '2W', 1, 0, 0, 1, 'BSIII', 1289, 644, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(152, 'TVS', 9, 'K6040640', 'UVD16-9', 'TVS - Wego ', '2W', 1, 0, 0, 1, 'BSIII', 1312, 656, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(153, 'TVS', 9, 'K6040540', 'UVD16-8', 'TVS - Wego (Export) ', '2W', 1, 0, 0, 1, 'BSIII', 1289, 644, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(154, 'TVS', 9, 'M7040800', 'BS26-230', 'TVS Apache 150CC (U68 ', '2W', 1, 0, 0, 1, 'BSIII', 2754, 1377, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(155, 'TVS', 9, 'N9041790N', 'UCD26-3', 'TVS Apache-RTR 150 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2425, 1213, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(156, 'TVS', 9, 'N9041790', 'UCD26-7', 'TVS Apache-RTR 150 CC Cable Type  ', '2W', 1, 0, 0, 1, 'BSIII', 2383, 1191, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(157, 'TVS', 9, 'N9041380', 'BS26-253', 'TVS Apache-RTR  - 160CC (U86)  ', '2W', 1, 0, 0, 1, 'BSIII', 2754, 1377, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(158, 'TVS', 9, 'N9041380', 'UCD26-5', 'TVS Apache-RTR 160 CC  Cable Type ', '2W', 1, 0, 0, 1, 'BSIII', 2754, 1377, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(159, 'TVS', 9, 'N9041400', 'UCD29-5', 'TVS - Apache 180 CC Cable Type ', '2W', 1, 0, 0, 1, 'BSIII', 2383, 1191, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(160, 'TVS', 9, 'M1040040', 'BS26-118', 'TVS Fiero (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2754, 1377, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(161, 'TVS', 9, 'M7040150', 'BS26-184', 'TVS Fiero F2  (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2754, 1377, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(162, 'TVS', 9, 'C9040010', 'VM18-237', 'TVS MAX 100R  (2S) ', '2W', 1, 0, 0, 1, 'BSIII', 1270, 635, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(163, 'TVS', 9, 'N5040810', 'UCD25-2', 'TVS Phenix 125cc ', '2W', 1, 0, 0, 1, 'BSIII', 2292, 1146, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(164, 'TVS', 9, '1087020', 'VM18-143', 'TVS Samurai(CAT/NON-CAT) ', '2W', 1, 0, 0, 1, 'BSIII', 1270, 635, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(165, 'TVS', 9, 'K041150', 'VM12-116', 'TVS Scooty - CAT NEW ', '2W', 1, 0, 0, 1, 'BSIII', 979, 490, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(166, 'TVS', 9, 'K041150', 'VM12-106', 'TVS Scooty - CAT OLD ', '2W', 1, 0, 0, 1, 'BSIII', 979, 490, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(167, 'TVS', 9, 'K041150', 'VM12-95', 'TVS Scooty - NON CAT ', '2W', 1, 0, 0, 1, 'BSIII', 979, 490, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(168, 'TVS', 9, 'K3040170', 'VM14-393', 'TVS Scooty Pep+ ', '2W', 1, 0, 0, 1, 'BSIII', 1208, 604, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(169, 'TVS', 9, 'K3041100', 'UVD14-2', 'TVS Scooty Pep+ & Streak ', '2W', 1, 0, 0, 1, 'BSIII', 1461, 730, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(170, 'TVS', 9, 'K3041120', 'UVD14-3', 'TVS Scooty Pep+ (Export) ', '2W', 1, 0, 0, 1, 'BSIII', 1461, 730, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(171, 'TVS', 9, 'K4040170', 'UVD16-10', 'TVS Scooty Zest ', '2W', 1, 0, 0, 1, 'BSIII', 1524, 762, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(172, 'TVS', 9, 'N9041090', 'VM19-125', 'TVS Victor GLX-R 125 CC (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(173, 'TVS', 9, 'N3040650', 'VM18-X31', 'TVS Victor GX 110 CC (4S) ', '2W', 1, 0, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(174, 'TVS', 9, 'P040560', 'UVD12-01', 'TVS Xl Super Heavy Duty - 2S  ', '2W', 1, 0, 0, 1, 'BSIII', 1113, 557, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(175, 'TVS', 9, 'N9042400', 'UCD26-15', 'TVS Apache 160CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2264, 1132, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(176, 'TVS', 9, 'N9042500', 'UCD29-27', 'TVS Apache 180CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 2277, 1138, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(177, 'TVS', 9, 'K6040980', 'UVD16-13', 'TVS Jupiter Export 110CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 1367, 684, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(178, 'TVS', 9, 'N5040950', 'UCD25-3', 'TVS Pheonix  125CC Euro 2 Export ', '2W', 1, 0, 0, 1, 'BSIV', 2156, 1078, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(179, 'TVS', 9, 'K3041170', 'UVD14-4', 'TVS Scooty PEP (BS-III) ', '2W', 1, 0, 0, 1, 'BSIV', 1529, 764, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(180, 'TVS', 9, 'K3041170', 'UVD14-5', 'TVS Scooty PEP Export - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 1529, 764, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(181, 'TVS', 9, 'K4040290', 'UVD16-14', 'TVS Sccooty Zest 110CC - BSIV ', '2W', 1, 0, 0, 1, 'BSIV', 1541, 771, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(182, 'TVS', 9, 'R4040170', 'UVD17-3', 'TVS-Dazz (Indonesia) ', '2W', 1, 0, 0, 1, 'BSIV', 1605, 802, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(183, 'TVS', 9, 'R1040080', 'VM17-173', 'TVS-Neo (Indonesia) ', '2W', 1, 0, 0, 1, 'BSIV', 1548, 774, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(184, 'TVS', 9, 'R3040040', 'UVD17-2', 'TVS-Rocks (Indonesia) ', '2W', 1, 0, 0, 1, 'BSIV', 1541, 771, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(185, 'TVS', 9, 'G3040020', 'UVD18-2', 'TVS King Autorickshaw 2S-LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1490, 745, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(186, 'TVS', 9, 'G2041610', 'VM18-273', 'TVS King Autorickshaw 2S-LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(187, 'TVS', 9, 'G5040010', 'UVD18-14', 'TVS King Autorickshaw 2S-Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(188, 'TVS', 9, 'G4040620', 'UVD18-12', 'TVS King Autorickshaw 4S-CNG ', '3W', 0, 1, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(189, 'TVS', 9, 'G4040310', 'UVD18-1', 'TVS King Autorickshaw 4S-LPG ', '3W', 0, 1, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(190, 'TVS', 9, 'G4040280', 'UVD18-6', 'TVS King Autorickshaw 4S-Petrol ', '3W', 0, 1, 0, 1, 'BSIII', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(191, 'TVS', 9, 'G4040930', 'UVD18-17', 'TVS King Autorickshaw 4S-Petrol (Export) ', '3W', 0, 1, 0, 1, 'BSIII', 1490, 745, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(192, 'TVS', 9, 'G4040920', 'UVD18-16', 'TVS King Autorickshaw 4S-Petrol (Peru Export) ', '3W', 0, 1, 0, 1, 'BSIII', 1490, 745, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(193, 'TVS', 9, 'G4041370', 'UVD18-22', 'TVS KING AUTORICKSHAW 4S PETROL -HIGH POWER EURO II ', '3W', 0, 1, 0, 1, 'BSIII', 1552, 776, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(194, 'TVS', 9, 'G4041670', 'UVD18-23', 'TVS KING AUTORICKSHAW 4S PETROL LIQUID COOLING ENGINE - EURO II ', '3W', 0, 1, 0, 1, 'BSIII', 1552, 776, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(195, 'TVS', 9, 'G4041340', 'UVD18-18', 'TVS King Autorickshaw CNG/LPG 4S - BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1448, 724, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(196, 'TVS', 9, 'G4040830', 'UVD18-24', 'TVS KING AUTORICKSHAW 4S PETROL LIQUID COOLING ENGINE - DOMESTIC ', '3W', 0, 1, 0, 1, 'BSIV', 1671, 835, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(197, 'TVS', 9, 'G4041520', 'UVD18-20', 'TVS KING AUTORICKSHAW 4S PETROL -REGULAR POWER BSIV ', '3W', 0, 1, 0, 1, 'BSIV', 1609, 805, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(198, 'Yamaha', 10, '5KA-E4101-10', 'VM17-128', 'Yamaha Crux ', '2W', 1, 0, 0, 1, 'BSIII', 2247, 1124, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(199, 'Yamaha', 10, '5REE4101000080', 'VM20-382', 'Yamaha Enticer 125 CC ', '2W', 1, 0, 0, 1, 'BSIII', 2294, 1147, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(200, 'Yamaha', 10, '5USE410100000', 'VM20-393', 'Yamaha Enticer 125 CC (4S)  ', '2W', 1, 0, 0, 1, 'BSIII', 2275, 1137, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(201, 'Yamaha', 10, '35B-E4901-00', 'BS25-33', 'Yamaha Gladiator UG  ', '2W', 1, 0, 0, 1, 'BSIII', 4238, 2119, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(202, 'Honda', 11, '16100KED01', 'UVD17-48', 'Honda Activa Carburetor ', '2W', 1, 0, 0, 1, 'BSIII', 1590, 2119, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(203, 'Bajaj', 2, 'PF581227', 'T-UVD 16-023', 'Bajaj Platina ES UG', '2W', 1, 0, 0, 1, 'BSIV', 1460, 730, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(204, 'Bajaj', 2, 'JB581289', 'T-UVD 16-024', 'Bajaj Discover 110 UG', '2W', 1, 0, 0, 1, 'BSIV', 1470, 735, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(205, 'Bajaj', 2, 'PF581241', 'T-UVD 16-025', 'Bajaj Platina E2', '2W', 1, 0, 0, 1, 'BSIII', 1370, 685, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(206, 'Bajaj', 2, 'DU121063', 'T-UVD 16-015', 'Bajaj CT100', '2W', 1, 0, 0, 1, 'BSIII', 1260, 630, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(207, 'Bajaj', 2, 'PF581226', 'T-UVD 16-020', 'Bajaj CT ES E2', '2W', 1, 0, 0, 1, 'BSIII', 1360, 680, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(208, 'Bajaj', 2, 'PF581226', 'T-UVD 16-020', 'Bajaj Boxer', '2W', 1, 0, 0, 1, 'BSIII', 1360, 680, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(209, 'Bajaj', 2, 'DU121062', 'T-UVD 16-013', 'Bajaj CT100 E2', '2W', 1, 0, 0, 1, 'BSIII', 1400, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(210, 'Bajaj', 2, 'DU121062', 'T-UVD 16-013', 'Bajaj Boxer', '2W', 1, 0, 0, 1, 'BSIII', 1400, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(211, 'Bajaj', 2, 'DU121009', 'T-UVD 16-026', 'Bajaj Boxer S', '2W', 1, 0, 0, 1, 'BSIII', 1400, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(212, 'TVS', 9, 'N8040680', 'T-UVD 16-022', 'TVS Star city 100', '2W', 1, 0, 0, 1, 'BSIII', 1400, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(213, 'TVS', 9, 'N8041180', 'T-UVD 16-027', 'TVS Star city 110', '2W', 1, 0, 0, 1, 'BSIII', 1400, 700, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(214, 'Bajaj', 2, 'JE581262', 'UCD26-22 ', 'PULSAR NS125 CC e Carb', '2W', 1, 0, 0, 1, 'BSVI', 4606, 2303, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(215, 'Bajaj', 2, 'PF581271', 'UCD20-2 ', 'PLATINA 110CC e carb', '2W', 1, 0, 0, 1, 'BSVI', 4554, 2277, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(216, 'Bajaj', 2, 'PF581273', 'UCD20-3', 'CT 100 e Carb', '2W', 1, 0, 0, 1, 'BSVI', 4554, 2277, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(217, 'Bajaj', 2, 'DY581215', 'UCD20-5 ', 'CT110X e Carb', '2W', 1, 0, 0, 1, 'BSVI', 4558, 2279, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(218, 'Bajaj', 2, 'DH121267', 'UCD26-21 ', 'Pulsar 125 CC e Carb', '2W', 1, 0, 0, 1, 'BSVI', 4496, 2248, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(219, 'Bajaj', 2, '24121757', 'UVD20-42 ', 'RE 145 FACELIFT PETROL EXPORT', '3W', 0, 1, 0, 1, 'BSIII', 2084, 1042, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(220, 'Bajaj', 2, 'AM121222', 'UVD22-51 ', 'COMPACT LPG ', '3W', 0, 1, 0, 1, 'BSIV', 1834, 917, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(221, 'Bajaj', 2, '24121738', 'UVD20-28', 'RE 145 FACELIFT PETROL BSIV', '3W', 0, 1, 0, 1, 'BSIV', 1992, 996, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(222, 'Bajaj', 2, 'AA121426', 'UVD20-37 ', 'BSIV RE205 COMPACT PETROL EXPORT', '3W', 0, 1, 0, 1, 'BSIII', 1902, 951, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(223, 'Bajaj', 2, 'AG121103', 'UVD20-41 ', 'RE COMPACT LPG 2S BSIV', '3W', 0, 1, 0, 1, 'BSIV', 2078, 1039, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(224, 'Bajaj', 2, 'PD581262', 'UCD29-33', 'AVENGER 160 STREET', '2W', 1, 0, 0, 1, 'BSIV', 2566, 1283, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(225, 'Bajaj', 2, 'AF121595', 'UVD22-52 ', 'Bajaj COMPACT CNG ', '3W', 0, 1, 0, 1, 'BSIV', 1930, 965, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(226, 'Bajaj', 2, 'DY581212', 'UCD24-4 ', 'CT-150 Export ', '2W', 1, 0, 0, 1, 'BSIII', 2704, 1352, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(227, 'Bajaj', 2, 'AA121427', 'UVD20-38', 'RE205 COMPACT PETROL BSIV', '3W', 0, 1, 0, 1, 'BSIV', 1924, 962, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(228, 'Bajaj', 2, 'AY581202', 'UVD20-39', 'RE MAXIMA Z PETROL', '3W', 0, 1, 0, 1, 'BSIII', 1898, 949, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(229, 'Bajaj', 2, 'AN121300', 'UVD20-40 ', 'RE MAXIMA C PETROL', '3W', 0, 1, 0, 1, 'BSIII', 1898, 949, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(230, 'Bajaj', 2, 'AM121206', 'UVD22-49', 'RE236 COMPACT 4S LPG EXPORT', '3W', 0, 1, 0, 1, 'BSIII', 1940, 970, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(231, 'Bajaj', 2, 'AM121284', 'UVD22-50 ', 'MAXIMA C LPG COMBODIA EXPORT', '3W', 0, 1, 0, 1, 'BSIII', 1946, 973, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(232, 'Bajaj', 2, 'RA581211', 'UVD22-53 ', 'MAXIMA Z CNG/LPG', '3W', 0, 1, 0, 1, 'BSIII', 1932, 966, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(233, 'TVS', 9, 'G9042580', 'UCD29-30', 'APACHE RTR 160 4V BSIV', '2W', 1, 0, 0, 1, 'BSIV', 2682, 1341, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(234, 'TVS', 9, 'N6040980', 'UVD16-16', 'JUPITER BSIV', '2W', 1, 0, 0, 1, 'BSIV', 1568, 784, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(235, 'TVS', 9, 'NF040620', 'UCD29-35', 'APACHE RTR 160 4V EURO III (EXPORT)', '2W', 1, 0, 0, 1, 'Euro III', 2488, 1244, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(236, 'TVS', 9, 'NF040580', 'UCD29-34', 'APACHE RTR 200 4V EURO III (EXPORT)', '2W', 1, 0, 0, 1, 'Euro III', 2488, 1244, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(237, 'TVS', 9, 'N6040450', 'UCD25-4', 'RYDER EURO II (EXPORT)', '2W', 1, 0, 0, 1, 'Euro II', 2430, 1215, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(238, 'TVS', 9, 'N6040410', 'UCD25-5', 'HLX 150 CC 5 Speed EURO II (EXPORT)', '2W', 1, 0, 0, 1, 'Euro II', 2316, 1158, '2022-01-30 18:30:00', '2022-01-31 10:04:14'),
(239, 'TVS', 9, 'G4041490', 'UVD18-21', 'KING AUTO BSIV (HIGH POWER)', '3W', 0, 1, 0, 1, 'BSIV', 1584, 792, '2022-01-30 18:30:00', '2022-01-31 10:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `reqlist`
--

CREATE TABLE `reqlist` (
  `rql_id` int(5) UNSIGNED NOT NULL,
  `req_id` int(11) UNSIGNED NOT NULL,
  `prod_id` int(11) UNSIGNED NOT NULL,
  `rqr_date` date NOT NULL,
  `qty` int(11) UNSIGNED NOT NULL,
  `mrp_price` float NOT NULL,
  `sell_price` float NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reqlist`
--

INSERT INTO `reqlist` (`rql_id`, `req_id`, `prod_id`, `rqr_date`, `qty`, `mrp_price`, `sell_price`, `created_on`, `updated_on`) VALUES
(1, 1, 36, '2022-03-09', 10, 0, 0, '2022-02-10 18:30:00', '2022-02-22 05:06:43'),
(2, 2, 0, '2022-02-17', 50, 0, 0, '2022-02-20 18:30:00', '2022-03-03 07:01:40'),
(3, 2, 36, '2022-02-24', 10, 0, 0, '0000-00-00 00:00:00', '2022-02-22 07:21:21'),
(4, 3, 0, '2022-05-07', 5, 0, 0, '2022-05-05 18:30:00', '2022-05-06 06:19:04'),
(5, 4, 0, '2022-05-06', 35, 0, 0, '2022-05-05 18:30:00', '2022-05-06 07:48:55'),
(6, 5, 0, '2022-05-10', 25, 0, 0, '2022-05-08 18:30:00', '2022-05-09 09:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `req_id` int(5) UNSIGNED NOT NULL,
  `comp_id` int(11) UNSIGNED NOT NULL,
  `org_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`req_id`, `comp_id`, `org_id`, `user_id`, `status`, `created_on`, `updated_on`) VALUES
(1, 3, 1, 1, 0, '2022-02-10 18:30:00', '2022-02-11 09:50:25'),
(2, 1, 1, 1, 0, '2022-02-20 18:30:00', '2022-02-21 06:38:04'),
(3, 1, 1, 1, 0, '2022-05-05 18:30:00', '2022-05-06 06:19:04'),
(4, 1, 1, 1, 0, '2022-05-05 18:30:00', '2022-05-06 07:48:55'),
(5, 1, 1, 1, 0, '2022-05-08 18:30:00', '2022-05-09 09:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `saleorder`
--

CREATE TABLE `saleorder` (
  `so_id` int(5) UNSIGNED NOT NULL,
  `cus_id` int(11) UNSIGNED NOT NULL,
  `contact_id` int(11) UNSIGNED NOT NULL,
  `saleOrderNumber` int(11) UNSIGNED NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) UNSIGNED NOT NULL,
  `us_name` text DEFAULT NULL,
  `us_email` text DEFAULT NULL,
  `emp_id` varchar(6) NOT NULL,
  `us_phone` varchar(15) NOT NULL,
  `password` text DEFAULT NULL,
  `comp_id` int(11) UNSIGNED NOT NULL,
  `user_type` text DEFAULT NULL,
  `us_status` int(11) UNSIGNED NOT NULL,
  `us_soft_delete` int(11) UNSIGNED NOT NULL,
  `us_designation` text DEFAULT NULL,
  `user_role` int(11) UNSIGNED NOT NULL,
  `rand_id` text DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `us_name`, `us_email`, `emp_id`, `us_phone`, `password`, `comp_id`, `user_type`, `us_status`, `us_soft_delete`, `us_designation`, `user_role`, `rand_id`, `created_on`, `updated_on`) VALUES
(1, 'vigneshwaran S', 'vigneshwaran@ucal.com', '', '8148070868', '$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', 1, '', 1, 0, 'Creative Developer', 1, '124578', '2022-01-29 04:47:15', '2022-11-30 11:26:58'),
(2, 'Keerthana', 'keerthana@ucal.com', '', '8148070868', '$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', 1, '', 1, 0, 'Creative Developer', 1, '1245343', '2022-01-29 04:47:15', '2022-11-30 11:27:03'),
(3, 'Venkatasubramaniyan T A\r\n', 'tav@ucal.com', '', '8148070868', '$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', 1, '', 1, 0, 'Creative Developer', 1, '1245232q34', '2022-01-29 04:47:15', '2022-11-30 11:27:06'),
(4, 'Vikas', 'vikas@ucal.com', '2214', '8148070868', '$2y$10$5ddZCrbGUDkSuyrUholj/O8xow1H8kHvMxXpiSF9NIgUZxyXoYLIW$2y$10$kLdLmenLRPvf2Fr2eM8ipunrbJ/C.7M360wDxPpZJkCubJ3tLWFA.', 4, 'Admin', 1, 0, 'After Market Sales', 1, '', '2022-02-21 09:03:13', '2022-11-30 11:26:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `contact_person`
--
ALTER TABLE `contact_person`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_title`
--
ALTER TABLE `page_title`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `reqlist`
--
ALTER TABLE `reqlist`
  ADD PRIMARY KEY (`rql_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `saleorder`
--
ALTER TABLE `saleorder`
  ADD PRIMARY KEY (`so_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `add_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `comp_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_person`
--
ALTER TABLE `contact_person`
  MODIFY `cp_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `page_title`
--
ALTER TABLE `page_title`
  MODIFY `page_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `reqlist`
--
ALTER TABLE `reqlist`
  MODIFY `rql_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `req_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saleorder`
--
ALTER TABLE `saleorder`
  MODIFY `so_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
