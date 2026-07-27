-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2025 at 08:18 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u435768449_hdsmm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL,
  `two_factor` enum('0','1') NOT NULL DEFAULT '0',
  `two_factor_secret_key` varchar(100) DEFAULT NULL,
  `2fa_code` int(11) DEFAULT NULL,
  `ip_type` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`, `two_factor`, `two_factor_secret_key`, `2fa_code`, `ip_type`, `ip`) VALUES
(5, '2', 'Tajammal', 'tajammal@gmail.com', 'admin', 'admin1122', '777755422799', '2025-04-27 12:13:25', '2025-12-08 01:17:12', '2404:3100:1c29:81d8:b00e:3b8d:666a:bf28', '2', '{\"admin_access\":\"1\",\"users\":\"1\",\"services\":\"1\",\"update-prices\":\"1\",\"bulk\":\"1\",\"bulkc\":\"1\",\"synced-logs\":\"1\",\"orders\":\"1\",\"subscriptions\":\"1\",\"dripfeed\":\"1\",\"tasks\":\"1\",\"payments\":\"1\",\"tickets\":\"1\",\"guard_logs\":\"1\",\"provider_logs\":\"1\",\"additionals\":\"1\",\"referral\":\"1\",\"broadcast\":\"1\",\"logs\":\"1\",\"reports\":\"1\",\"videop\":\"1\",\"coupon\":\"1\",\"child-panels\":\"1\",\"updates\":\"1\",\"appearance\":\"1\",\"themes\":\"1\",\"new_year\":\"1\",\"pages\":\"1\",\"news\":\"1\",\"meta\":\"1\",\"blog\":\"1\",\"menu\":\"1\",\"inte\":\"1\",\"language\":\"1\",\"whatsapp-telegram\":\"1\",\"files\":\"1\",\"settings\":\"1\",\"general_settings\":\"1\",\"providers\":\"1\",\"payments_settings\":\"1\",\"bank_accounts\":\"1\",\"modules\":\"1\",\"subject\":\"1\",\"payments_bonus\":\"1\",\"currency-manager\":\"1\",\"alert_settings\":\"1\",\"site_count\":\"1\",\"manager\":\"1\",\"signform\":\"1\",\"ticket\":\"1\",\"feedback\":\"1\"}', 'dark', '0', NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_constants`
--

CREATE TABLE `admin_constants` (
  `id` int(11) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `paidRent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_constants`
--

INSERT INTO `admin_constants` (`id`, `brand_logo`, `paidRent`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_report`
--

CREATE TABLE `admin_report` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `report_ip` varchar(45) NOT NULL,
  `report_date` datetime NOT NULL,
  `blocked_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `category_name_lang` longtext DEFAULT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') NOT NULL DEFAULT '2',
  `category_icon` text NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `category_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) NOT NULL,
  `child_panel_currency` varchar(191) NOT NULL,
  `child_panel_username` varchar(191) NOT NULL,
  `child_panel_password` varchar(191) NOT NULL,
  `charged_amount` float NOT NULL,
  `child_panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL DEFAULT 'Pending',
  `renewal_date` date NOT NULL,
  `created_on` datetime NOT NULL,
  `child_panel_uqid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `spent` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL DEFAULT 3,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `broadcast_id` varchar(255) NOT NULL DEFAULT '0',
  `google_login_verified` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `admin_type`, `password`, `telephone`, `whatsapp`, `telegram`, `website`, `balance`, `spent`, `balance_type`, `debit_limit`, `register_date`, `login_date`, `login_ip`, `apikey`, `tel_type`, `email_type`, `client_type`, `access`, `lang`, `timezone`, `currency_type`, `ref_code`, `ref_by`, `change_email`, `resend_max`, `currency`, `passwordreset_token`, `discount_percentage`, `broadcast_id`, `google_login_verified`) VALUES
(1, 'index.html', 'zeeshanyoucansee@gmail.com', 'admin', '2', '969b01addd342a54e3afc9252b0cad3d', NULL, '', '', '', 0.0000, 0.0000, '2', NULL, '2025-04-29 18:54:18', '2025-04-29 18:54:18', '2402:ad80:a8:7cf5:1:0:211d:c82d', 'cec615be5517a5067ba17c700173d851', '1', '2', '2', NULL, 'en', 0, 'USD', '70b1be', NULL, '2', 3, '1', '', 0, '0', 0),
(2, 'Ahmad', 'smmzone.pk@gmail.com', 'Ahmad', '2', 'f5bb0c8de146c67b44babbf4e6584cc0', NULL, '', '', '', 0.0000, 0.0000, '2', NULL, '2025-05-01 00:37:58', '2025-05-01 00:37:58', '110.39.8.108', 'a5b13a10a5c58fe5f0aa1f2adc81dbc0', '1', '2', '2', NULL, 'en', 0, 'USD', 'c57050', NULL, '2', 3, '1', '', 0, '0', 0),
(3, 'testunnnnnn', 'tajammalmods@gmail.com', 'tajammalmods', '2', 'b62fc011ecd64d0e82db0fd90669cf86', NULL, '', '', '', 0.0000, 0.0000, '2', NULL, '2025-05-15 13:36:15', '2025-05-15 13:36:15', '154.81.247.96', '9ba5890cb3526d7f5b75acbedd2b9456', '1', '2', '2', NULL, 'en', 0, 'USD', '8d78f1', NULL, '2', 3, '1', '', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `symbol_position` varchar(10) DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `currency_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'Indian Rupee', 'INR', '₹', 'left', 85.403888548759, 0.01170906872032, 1, 'a4956249500ba31bc01c4b302cfa8e1a22b8a801'),
(2, 'U.S. Dollar', 'USD', '$', 'left', 1, 1, 1, '8909c4c6bc52fe2357bd35e6b3fc209a2476399a'),
(3, 'Euro', 'EUR', '€', 'left', 0.87976645475721, 1.1366652986058, 0, '185d31d64c6feb611b6a2ab50b634ba00e43e586'),
(4, 'Turkish Lira', 'TRY', '₺', 'left', 38.321413534618, 0.026095070817172, 0, '349f7b9ebdeb631986de1a85faa303032f206147'),
(5, 'Russian Rouble', 'RUB', '₽', 'left', 83.12434699015, 0.012030169694067, 0, '5fe6bfdce0b90e9caf56a80fd25f33d0f20159f1'),
(6, 'Brazilian Real', 'BRL', 'R$', 'left', 5.6830528857512, 0.17596176212037, 0, 'e50baf88aed2020b6073f40a8ca26d7d1b0fb765'),
(7, 'South Korean Won', 'KRW', '₩', 'left', 1434.3785144119, 0.00069716604784057, 0, 'e676515c1847b4376de8a04c370e0bf201fc34ca'),
(8, 'Saudi Riyal', 'SAR', '﷼', 'left', 3.7508211838898, 0.26660828415258, 1, 'd7f247a574a692b15fc7e9dadf1fa4883c9a6e2d'),
(9, 'Chinese Yuan', 'CNY', '¥', 'left', 7.2924410871695, 0.13712829326238, 0, '06c7a274a673ed9037f1d4ad04f3a737b3024d75'),
(10, 'Vietnamese Dong', 'VND', '₫', 'left', 26025.547035584, 0.000038423784085412, 0, '4f2780b924554c2e51c34013c102c1119d9fbfb9'),
(11, 'Kuwaiti Dinar', 'KWD', 'د.ك', 'left', 0.30643459915612, 3.263339070568, 0, 'dcf8a0dd3ddfaca27e99475560a40ff4a780f070'),
(12, 'Egyptian Pound', 'EGP', '£', 'left', 50.957573560659, 0.019624168305612, 0, 'a0d874f915b1733bf25be06df757cb843ad07fbe'),
(13, 'Pakistani Rupee', 'PKR', '₨', 'left', 281.07030694624, 0.0035578286830251, 1, '4829c93dadf334b7298def05bbfdd8642142f378'),
(14, 'Nigerian Naira', 'NGN', '₦', 'left', 1602.3000175809, 0.00062410284530221, 0, '36577516307566a0725f97fdc8797b27ea1ef78d'),
(15, 'Canadian Dollar', 'CAD', '$', 'left', 1.3867763860622, 0.72109678968472, 1, '5b6f50afe899195ae08cc054bccfd9891e1efdc5'),
(16, 'Bangladeshi taka', 'BDT', '৳', 'left', 121.95589485186, 0.0081996856422128, 0, 'b94454a2acefc7747db7ea0bb101a9de6a984b6b'),
(17, 'Bulgarian Lev', 'BGN', 'лв.', 'left', 1.719190763144, 0.58166901628255, 0, '0269d8bb06993ebc6d1308e146199ef5e640ba8f'),
(18, 'Indonesian Rupiah', 'IDR', 'Rp', 'left', 16883.353538658, 0.000059229938987553, 0, 'cdfbe4175bd18b06715288fa38a1943337ad8e0f'),
(19, 'Ethiopian birr', 'ETB', 'Br', 'left', 133.29922644163, 0.0075019190035426, 1, '00006cb1bece705e2ef1360e99e15ad15b16ac03');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int(11) NOT NULL,
  `snow_data` text NOT NULL,
  `snow_data_array` text NOT NULL,
  `snow_status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text NOT NULL,
  `orders_count_increase` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0'),
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(11) NOT NULL,
  `snow_effect` int(11) NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int(11) NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int(11) NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text DEFAULT NULL,
  `fire_works` text DEFAULT NULL,
  `toys` text DEFAULT NULL,
  `snowflakes` int(11) NOT NULL,
  `snow_speed` int(11) NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int(11) NOT NULL,
  `toy_quantity` int(11) NOT NULL,
  `toy_speed` int(11) NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#ffffff', 0, '', ' <style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style> <!-- developed by Raj Patel-->        <!-- developed by Raj Patel-->       <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">           </script>      <!-- developed by Raj Patel-->              <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">           </script>               <!-- developed by Raj Patel-->     <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">           </script>      <!-- developed by Raj Patel-->              <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">           </script>                   <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">           </script>                   <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">           </script>      <!-- developed by Raj Patel--> <!-- developed by Raj Patel-->              <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">           </script>      <!-- developed by Raj Patel--> <!-- developed by Raj Patel-->              <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">           </script>               <!-- developed by Raj Patel--> <!-- developed by Raj Patel-->     <script type=\"text/javascript\" >        window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>                   <script type=\"text/javascript\" >        window.modules.signin = [];     </script>      <!-- developed by Raj Patel--> <!-- developed by Raj Patel--> <!-- developed by Raj Patel-->              <script type=\"text/javascript\" >        document.addEventListener(\'DOMContentLoaded\', function() {  var newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\" </script>', '', 0, '', '', '', 0, NULL, NULL, NULL, NULL, 100, 5, 'apple', 'style3', '0.97', 'medium', 80, 100, 6, 'infinite', '', '', '', '', '', '', '1', '', '1', '1', '', 'dukesmm.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `size` float NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `link`, `size`, `date`) VALUES
(1, NULL, '/img/files/pjGgvyDYHBIqNOTz.png', 172.42, '2024-12-05 22:18:25'),
(2, NULL, '/img/files/hVjgpZODJYmFHw9I.png', 8.42, '2024-12-05 22:20:19'),
(3, NULL, '/img/files/ibKsgM7Saf6EcnBG.png', 15.66, '2024-12-05 22:20:55'),
(4, NULL, '/img/files/kETuzsOdRS5Lim3J.png', 134.14, '2024-12-05 22:29:41'),
(5, NULL, '/img/files/OHsklwbCiezDEjF3.png', 21.31, '2024-12-05 22:31:21'),
(6, NULL, '/img/files/4jy7fQHDUGoqr6m8.png', 112.2, '2024-12-05 22:34:00'),
(7, NULL, '/img/files/ztwWk247Xi1bBaRP.png', 5.36, '2024-12-05 22:39:09'),
(8, NULL, '/img/files/dCPNztAFiqV92JpZ.png', 20.56, '2024-12-05 22:39:50'),
(9, NULL, '/img/files/SkReitf4BcE9Y6Iv.png', 13.52, '2024-12-05 22:40:58'),
(10, NULL, '/img/files/3FbOPBldygsifqH7.png', 42.94, '2024-12-05 22:41:37'),
(11, NULL, '/img/files/7dV81TExcnvgiOuD.png', 6.67, '2024-12-05 22:41:51'),
(12, NULL, '/img/files/6YvCEXrHBfqUJpAk.png', 60.03, '2024-12-05 22:42:43'),
(15, NULL, '/img/files/bZ9NFokM8ArVDT6y.png', 16.94, '2024-12-05 22:44:53'),
(17, NULL, '/img/files/ht4217HLcTYOCwdz.png', 40.35, '2024-12-05 22:46:34'),
(18, NULL, '/img/files/1tzmTg5leu4ESOvI.png', 243.81, '2024-12-05 22:47:11'),
(20, NULL, '/img/files/M0dH2INtbxAacnuj.png', 146.57, '2024-12-08 13:05:36'),
(21, NULL, '/img/files/PzYZSWoQIucrFfim.png', 19.03, '2025-01-19 23:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 0, 0, '2', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `guard_log`
--

CREATE TABLE `guard_log` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '', 1, 1),
(16, 'DMCA.com', 'Protect your website’s content with copyright infringement protection and takedown services.', '/img/integrations/DMCA3.svg', '', 1, 1),
(17, 'Crisp', 'A modern messaging platform to engage your customers via chat, email, and more.', '/img/integrations/Crisp-chat.svg', '', 1, 1),
(18, 'Google Search Console', 'Monitor and maintain your site’s presence in Google search results.', '/img/integrations/google-Search-Console.svg', '', 1, 1),
(19, 'AnnounceKit', 'Create beautiful changelogs and keep your customers updated with ease.', '/img/integrations/Announcekit.svg', '', 1, 1),
(20, 'Yeps.io', 'An easy-to-use platform for creating notification bars and banners for your website.', '/img/integrations/yeps.png', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(2, 'Urdu ', 'ur', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `menu_name_lang` longtext DEFAULT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) NOT NULL DEFAULT '2',
  `icon` varchar(225) DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') NOT NULL DEFAULT 'Internal',
  `active` varchar(225) NOT NULL,
  `tiptext` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_name_lang`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'New Order', '{\"en\": \"New Order\"}', 1, '2', '/', 'fas fa-cart-plus', '1', 'Internal', 'neworder', ''),
(3, 'My Orders ', '{\"en\": \"Orders \"}', 3, '2', '/orders', 'fa fa-history', '1', 'Internal', 'orders', ''),
(6, 'Our Services', '{\"en\": \"Services\"}', 7, '2', '/services', 'fas fa-bring-forward', '1', 'Internal', 'services', ''),
(7, 'Add Funds', '{\"en\": \"Add Funds\"}', 5, '2', '/addfunds', 'fas fa-wallet', '1', 'Internal', 'addfunds', ''),
(8, 'Connect Api', '{\"en\": \"Api\"}', 12, '2', '/api', 'fas fa-code', '1', 'Internal', 'api', ''),
(10, 'Buy Child Panel', '{\"en\": \"Child Panels\"}', 11, '2', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'Refer & Earn', '{\"en\": \"Refer & Earn\"}', 13, '1', '/refer', 'fas fa-bezier-curve', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(13, 'Terms & Policy', '{\"en\": \"Terms\"}', 16, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'Internal', 'terms', ''),
(14, 'Signup ', '{\"en\": \"Signup\"}', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(15, 'Connect Api', '{\"en\": \"Api\"}', 4, '2', '/api', 'fas fa-plug', '1', 'External', 'api', ''),
(18, 'Terms & Policy', '{\"en\": \"Terms\"}', 3, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'External', 'terms', ''),
(32, 'Blogs & About', '{\"en\": \"blogs\"}', 14, '2', '/blog', 'fab fa-500px', '1', 'Internal', 'blog', ''),
(36, 'Services', '{\"en\":\"Services\",\"ar\":\"\"}', 17, '2', '/services', 'fas fa-anchor', '1', 'External', 'services', ''),
(56, 'My Account', NULL, 18, '2', '/account', 'far fa-user-circle', '1', 'Internal', 'account', ''),
(61, 'Customer Support', NULL, 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_title_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text DEFAULT NULL,
  `action_link` text DEFAULT NULL,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int(11) NOT NULL,
  `refund` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '<p><b>Before Deposting Read Our Terms And Instructions</b></p>', '1', '1', 'Add Funds', 'Tajammal Smm Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube ,panel,best panel for soical media services,pksmm.onlineFBS Panel,best world panel in pk,best panrl in uk,best panel ', '', '2025-02-08 10:07:46', '2', '<p><br></p>'),
(787, 'Login', 'auth', '<h3 style=\"text-align: center; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 700; line-height: 32px; font-family: Cairo;\"></h3><div>WELCOME TO PERFECT TAJAMMAL SMM PANEL<br></div><div> NO1 DIGITAL MARKETING AGENCY</div><div> Best and Cheap SMM Panel for Instagram, Tiktok, Facebook, Youtube and Twitter. Buy IG Reels     views and Followers, Buy Instagram Likes, Views and Comments, Buy TikTok Likes and Followers,   Buy Facebook Likes and Comments, Buy Youtube Likes, Views and Subscribers.</div>', '2', '1', 'Tajammal Smm Panel', 'Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,smm services,cheapest smm market,smm reseller panel,pakistan smm,buy instagram panel,smm,smm followers,smm social media,cheap instagram followers panel,smm pakistan,smm sites,social media marketing panel,bulk smm followers,smm instagram,ig panel,panel followers tiktok,Social Media Marketing Panel, Buy Social Media Services, Cheap SMM Panel, Best SMM Panel, Instagram Followers Panel, Facebook Likes Panel, Twitter Followers Panel, Buy Instagram Likes, Buy Facebook Followers, SMM Panel for Resellers, Social Media Growth Panel, Buy Social Media Engagement, Affordable SMM Panel, Social Media Marketing Tools, Instagram Engagement Panel, Boost Social Media Presence, Social Media Marketing Services, Social Media Panel Services, Social Media Automation Panel, Best SMM Panel for Instagram, Buy YouTube Subscribers, Real Social Media Followers Panel, Social Media Engagement Services, SMM Panel for Business, Instagram Growth Panel, Facebook Engagement Panel, Social Media Traffic Panel, SMM Services in Pakistan, Social Media Marketing in Pakistan, Buy Real Social Media Followers, Social Media Panel Pakistan, Best SMM Panel in Lahore, SMM Panel in Karachi, SMM Panel in Islamabad, SMM Panel in Rawalpindi, SMM Panel in Faisalabad, Cheap Instagram Followers Panel, Buy Social Media Likes Pakistan.Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,Smm Panel Easypaisa,Easypaisa Smm Panel, Jazzcash Smm Panel,Smm Panel Jazzcash,Smm Panel,TajammalSmmPanel,TajammalSmm,pakistan best smm panel,best smm panel pakistan,world best smm panel,best cheap smm panel,best smm panel for youtube watch time,Best Smm Panel,Tajammal,smm,panel', 'Tajammal Smm Panel the Premier API Provider for the Cheapest SMM Services Across TikTok, Instagram, YouTube, Facebook, and all Major Social Platforms. Become a Main Reseller and Grow your Social Media Business.', '2025-02-19 03:28:05', '2', '<p><br></p>'),
(9, 'New Order', 'neworder', '<p>Welcome to Tajammal Smm Panel</p>', '1', '1', 'New Order', 'best panel in pakistan,best smm,best panel,best smm panel in pakistan,cheap smm panel in paksitan,cheap smm panel in world,cheapest,cheapest smm,cheapest smm panel,cheap,cheapsmm,cheap smm panel,top best,pakistan,pakistans be', '', '2025-02-14 12:38:48', '2', '<p><b>IMPORTANT NOTE : USE NO REFIL SERVICE ON YOUR OWN RISK I AM NOT RESPONSIBLE FOR NO REFIL SERVICE ORDERS NO ANY SUPPORT FOR NO REFIL SERVICE</b></p><p><b> </b></p>'),
(14, 'Terms', 'terms', '<p><span style=\"background-color: rgb(255, 255, 255);\"><font color=\"#ff0000\">Terms of Service </font></span></p><p>✓ By placing an order with our panel, you automatically accept all the below-listed terms of service whether you read them or not.</p><p>✓ We reserve the right to change these Terms of Service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes.</p><p>✓ If you are placing duplicate order on a link while one order is already in process then it\'ll be your loss no refunds for such orders will be made.</p><p>✓ Refills Not Available After Username Change.</p><p>✓ Always Take Refill Before Placing New Order, We Dont Refill Old Drops.</p><p>✓ New Orders & Refills Always Finish According To Start Count & End Count, Your Own New Followers/Views Are Also Included Into It.</p><p>✓ If You Change Link In Any Running Order, No Refill / No Refund At Any Case.</p><p>✓ please make sure your account or post is not private before ordering.</p><p>✓ for refill, cancellation or speed up the link of your order must be correct / account must be public, no support will be provided for incorrect link / private link.</p><p>✓ if your order is in progress and You have deleted our maked your video or profile and changed the username of profile in this case we will not provide refunds</p><p>✓ for refill, cancellation, or speedup requests the status of your order must be above then start counting otherwise the command will not work. </p><p>✓ don\'t use no refill service\'s if you want 100% guarantee work, we will not provide any kind of support for no Refill services.</p><p> ✓ we are responsible for any kind of issue in guarantee service and we will solve it as soon as possible.</p><p> ✓ When Your Order Is in progress Don\'t Place Another order on same link or on another Panel First Clear Your First Order Then Place New If There is non guaranteed service Then No Guarantee Remember that </p><p>if You ou are using our panel and also using another panel, please note the following:</p><p>When you place an order on our panel and simultaneously place an order on another panel, both orders will work with the start count and total.</p><p>For example, if you had 10 followers initially and placed an order for 100 more followers on our panel, and also placed a similar order on another panel, you will receive a total of 100 new followers, not 200.</p><p>All panels\' systems work with start count and total. We are responsible for our order start count and total. Therefore, please clear your first order before placing another order on the same link.</p><p>✓ Tajammal Smm Panel does not guarantee a delivery time for any services. We offer our best estimation for when the order will be delivered. This is only an estimation and Tajammal Smm Panel will not refund orders that are processing if you feel they are taking too long.</p><p>✓ We reserve the right to change these terms of service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes.</p><p><br></p><p>✓ Tajammal Smm Panel rates are subject to change at any time without notice. The payment/refund policy stays in effect in the case of rate changes.</p><p>✓ Disclaimers: Tajammal Smm Panel will not be responsible for any damages you or your business may suffer.</p><p>✓ Liabilities: Tajammal Smm Panel is in no way liable for any account suspension or picture deletion done by Instagram, Twitter, Facebook, YouTube, or Other Social Media.</p><p><br></p><p> <font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\">Refill System </font></p><p>✓ No refill will be provided on 1% dropping. Refill system works at least on 2% dropping or more. For example, if you get 1000 subscribers and out of that 5 subscribers drop, then no refill But the refill system does work if 10 subscribers drop out of 1000 then the refill system will work.</p><p><br></p><p>✓ for refill, the link of your order must be correct / account must be public, no refill will be provided for incorrect link / private link</p><p><br></p><p>✓ How does the refill system work?</p><p><br></p><p>For example:</p><p>>Start count : 500</p><p>>Quantity : 500</p><p>>500+500=1000</p><p><br></p><p>Now check link status if your followers are less than 1000 then the refill is possible but it is not possible if you have 1000+ followers. all SMM panel refill systems work like this.</p><p><font color=\"#ff0000\">No Refil Services Policy</font></p><p>Don\'t Complain</p><p>No support</p><p>No Issues</p><p><br></p><p><font color=\"#ff0000\">Orders Issue Support</font></p><p>If You Have Any Order Issue We Will Try Our Best Don\'t Spam Again  And Again To Support Team Remember That No Support Available On No Refil Services If You Will Use Bad Words With Team Your Account Will Be Suspend </p><p><font color=\"#ff0000\">Wrong Links Orders Policy</font></p><p>No Refund Available On Wrong Links Orders.If U Have Any Confusion About Which Link We Should Use For Any Service Our Support Team Is Availabe U Can Ask From Our Support Team</p><p> <font color=\"#ff0000\">Refund Policy </font></p><p><br></p><p>\"Order Resolution & Refund:</p><p><br></p><p>Unresolved issues within 24 hours? Automatic refund to your panel account.</p><p><br></p><p>Choose:</p><p>A) Alternative services with refunded funds.</p><p>B) Full refund via live chat (1-24 hours, no deductions).</p><p><br></p><p>Funding Issues? Reach us via live chat or support . No response? Our team will contact you promptly.\"</p><p>We Cannot Send Payment To Your Bank Account You Can Use Your Fund In Smm Panel To Buy Services </p><p>When You Are Signing Up On Our Website U Agree Our Rules If U Will Not Follow Our Rules It Can Cause Of Suspension Your Panel Account</p><p> If u Will Putt Wrong Link We Cannot Provide Refund If u have Any confusion Contact Support Team For Assistance </p><p> <font color=\"#ff0000\">Privacy Policy </font></p><p>Our company highly values your privacy. We take your privacy seriously and will take all measures to protect your personal information.</p><p>If Any Illegal Activity Found In Your Account Our System Will Deactivate Your Account Instantly In This Case We Cannot Do Anything.</p><p><br></p><p>Our Website is a safe And Secure So We Will Don\'t Accept Any Illegal Activity </p><p><br></p><p>Any personal information received will only be used to fill your order. We will not sell or redistribute your information to anyone.</p><p><br></p><p>Tajammal Smm Panel works only with legal representatives who value the protection of personal information. That\'s why we confirm that your information will be projected.</p><p>Note : Don\'t Use Fake Email Adress For Sign Up If U will Use Fake Then We Are Not Responsible If U lost Your Account Password & Any other Issues </p><p><b>Guaranteed/Non Guaranteed Services </b></p><p><b>USE NO REFIL SERVICE ON YOUR OWN </b>RISK I AM NOT RESPONSIBLE FOR NO REFIL SERVICE ORDERS NO ANY SUPPORT FOR NO REFIL SERVICE</p><p><br></p><p><span style=\"font-family: \"Times New Roman\";\">THIRD PARTY PAYMENTS </span></p><p><span style=\"font-family: \"Times New Roman\";\">We will not accept third Party Accounts Payments If We have mentioned Easypaisa To Easypaisa Then Only Send From Your Easypaisa Account to Our Easypaisa Account Don\'t Send From Any Other Wallets.You can easily make a deposit using the following methods. Just make sure to read the payment instructions carefully before you proceed. Please note that third-party payments are not allowed. If you’re depositing through someone else’s account, you’ll need to provide both the front and back of your CNIC (National ID card). Thanks!</span><span style=\"font-family: \"Times New Roman\";\"></span></p><p><span style=\"font-family: \"Times New Roman\";\"><br></span></p><p><font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\">Best and Cheapest SMM Panel in Pakistan - Tajammal SMM Panel</font></p><p><br></p><p><font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\"> Email Adress : tajammalsmmpanel@gmail.com </font></p><p><font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\">Adress : Lahore Gulbarg 3 Main Street</font></p><p><br></p><p><font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\"><br></font></p><p><font color=\"#ff0000\" style=\"background-color: rgb(255, 255, 255);\"><br></font></p>', '1', '1', 'Terms And Conditions', 'Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,', 'Terms and Conditions to understand the rules and guidelines for using our SMM Panel services. Learn about refunds, privacy, and user responsibilities.', '2025-04-17 08:43:28', '2', '<p><br></p>'),
(789, 'Mass Order', 'massorder', '', '1', '1', 'Mas Orders', 'Tajammal Smm Panel ,panelgoto smm panelsmmpanelonesmm panel india24smm panel 24panel pakistansmm panel FBS Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube subscriberfast ,panel,b', '', '2024-06-29 10:08:42', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', 'Orders', 'Tajammal Smm Panel,panelgoto smm panelsmmpanelonesmm panel india24smm panel 24panel pakistansmm panel FBS Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube subscriberfast ,panel,be', '', '2024-09-26 05:46:16', '2', '<p>Orders Status &amp; Explanations</p><p>Pending</p><p>\"Pending\" order Status represents that your order has not stared yet. It will start according to the time mentioned in description.</p><p><br></p><p>In progress</p><p>\"In progress\" Order status represents that Our team has started working on your order and it will complete according to the mentioned speed in service description.&nbsp;</p><p><br></p><p>Completed</p><p>\"Completed\" Order status represents that your order has been delivered completely from our team. If you find some short delivery or drop after completion, you can contact our support for refill &amp; we are responsible to complete your order. Refill will be valid only for Guaranteed services</p><p><br></p><p>Cancelled &amp; Refunded</p><p>\"Cancelled &amp; Refunded\" Order status Shows that your order have cancelled by our team. Amount is always automatically totally Refunded  on \"cancelled &amp; Refunded\" status. Order can be cancelled due to following reasons:&nbsp;&nbsp;</p><p><br></p><p><br></p><p>Your link is not proper</p><p>Your account is private</p><p>Your content have some restrictions</p><p>Check above mentioned factors and replace your order if needed.</p><p><br></p><p>Partially Cancelled &amp; Refunded</p><p>\"Partially Cancelled &amp; Refunded\" order status represents that a part of your order is delivered and other part of your order is not delivered. Depending on delivery, we deduct payment for delivered quantity &amp; Refund you for undelivered or remaining quantity. In this case you get refund of amount mentioned in \"Remains\" section.</p>'),
(791, 'Services', 'services', '', '1', '1', 'Our Services', 'Tajammal Smm Panel,panelgoto smm panelsmmpanelonesmm panel india24smm panel 24panel pakistansmm panel FBS Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube subscriberfast ,panel,be', 'Checkout Our Cheapest Services And Enjoy Your Social Journey', '2025-02-12 09:09:39', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', 'Tickets', 'Tajammal Smm Panel,panelgoto smm panelsmmpanelonesmm panel india24smm panel 24panel pakistansmm panel FBS Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube subscriberfast ,panel,be', '', '2024-06-29 10:10:05', '2', ''),
(793, 'API', 'api', '', '1', '1', 'Api ', 'Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,', 'Premier API Provider for SMM  Admins Services Across TikTok, Instagram, YouTube, Facebook, and all Major Social Platforms. Become a Main Reseller and Grow your Social Media Business.', '2025-02-17 02:29:00', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', 'Signup', 'Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,', 'Signup Up Now And Start Your Journy On Social Media', '2025-02-17 02:26:48', '2', '');
INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(795, 'Blog', 'blog', '<p>Tajammal SMM Panel<br></p><p>Tajammal SMM Panel</p><p>Tajammal SMM Panel<br></p><p><br></p><p>Tajammal Smm Panel : Best and cheapest SMM panel in Pakistan for Top Social Media Services. Start from Rs.01 with Easypaisa & JazzCash Payment Method.</p><p><br></p><p>An SMM (Social Media Marketing) Panel is a platform that offers various social media services, such as increasing followers, likes, comments, and overall engagement across different social media platforms. These panels provide an efficient way for individuals and businesses to enhance their online presence and reach a wider audience. By utilizing an SMM panel, users can streamline their marketing efforts, save time, and achieve faster results in their social media campaigns.</p><p>1. Boost your social media presence effortlessly with our top-rated SMM Panel, offering affordable and instant engagement solutions for all major platforms.</p><p>2. Maximize your online impact with our efficient SMM Panel services, designed to deliver real followers, likes, and comments to elevate your brand\'s visibility.</p><p><br></p><p>SMM Panel Instagram</p><p>Tajammal Smm Panel : Best and cheapest SMM panel in Pakistan for Instagram Services. Start from Rs.01 with Easypaisa & JazzCash Payment Method.</p><p>TikTok SMM Panel</p><p>TikTok SMM Panel: Boost Your TikTok Presence with Tajammal Smm Panel. Start from Rs.01 with Easypaisa & JazzCash Payment Method.</p><p>In the rapidly evolving world of social media, TikTok has emerged as a dominant platform with millions of active users globally. For businesses, influencers, and marketers, leveraging TikTok’s potential is crucial. One of the most effective ways to enhance your TikTok presence is through a TikTok SMM Panel, especially with a trusted provider like Tajammal Smm Panel. In this article, we’ll explore what a TikTok SMM Panel is, its benefits, and how Tajammal Smm Panel can help you achieve your goals.</p><p>What is a TikTok SMM Panel?</p><p>A TikTok SMM (Social Media Marketing) Panel is a comprehensive service platform that provides various tools and services to enhance your TikTok account\'s visibility and engagement. These panels offer services like follower growth, likes, comments, views, and shares, allowing users to grow their audience and engagement metrics quickly and efficiently.</p><p>Benefits of Using a TikTok SMM Panel</p><p>1. Rapid Growth</p><p>Using a TikTok SMM Panel, such as Tajammal Smm Panel, can significantly accelerate the growth of your account. By purchasing followers, likes, and views, you can quickly build a substantial presence on the platform.</p><p>2. Enhanced Credibility</p><p>An account with a higher follower count and more engagement is perceived as more credible and influential. This can attract organic followers and engagement as well, as users are more likely to follow and interact with popular accounts.</p><p>3. Cost-Effective Marketing</p><p>Compared to traditional marketing methods, TikTok SMM Panels offer a cost-effective way to boost your social media presence. These services provide excellent ROI, especially for small businesses and individual influencers.</p><p>4. Time-Saving</p><p>Manually growing your TikTok account can be time-consuming. An SMM panel allows you to focus on creating content while the panel handles the growth aspects.</p><p>How to Choose the Best TikTok SMM Panel</p><p>When selecting a TikTok SMM Panel, consider the following factors:</p><p>1. Service Quality</p><p>Ensure the panel provides high-quality services that deliver real and active followers, likes, and views. Avoid panels that offer fake or bot-generated engagement, as this can harm your account in the long run.</p><p>2. Pricing</p><p>Compare the pricing of different panels to find one that fits your budget. Look for panels that offer a good balance between cost and quality.</p><p>3. Customer Support</p><p>Choose a panel that offers reliable customer support. This is crucial in case you encounter any issues or need assistance with the services.</p><p>4. User Reviews</p><p>Check reviews and testimonials from other users to gauge the panel’s reputation and effectiveness. Positive feedback from satisfied customers is a good indicator of a trustworthy panel.</p><p>Why Choose Tajammal Smm Panel?</p><p>Tajammal Smm Panel stands out as a reliable and efficient provider of TikTok SMM services. With a reputation for delivering real and active engagement, competitive pricing, and excellent customer support, Tajammal Smm Panel is a top choice for anyone looking to enhance their TikTok presence.</p><p>Conclusion</p><p>A TikTok SMM Panel can be a powerful tool in your social media marketing arsenal. By choosing the right panel, like Tajammal Smm Panel, you can boost your TikTok presence, enhance your credibility, and achieve your marketing goals more efficiently. Remember to prioritize quality and reliability when selecting a panel to ensure sustainable growth and success on TikTok.</p><p></p><p>YouTube SMM Panel</p><p>YouTube SMM Panel: Boost Your Channel with Tajammal Smm Panel, Start from Rs.01 with Easypaisa & JazzCash Payment Method.</p><p>In the ever-evolving world of social media, YouTube remains a powerhouse platform for content creators, businesses, and influencers. Gaining visibility and engagement on YouTube can be challenging, which is why many turn to Social Media Marketing (SMM) panels for support. Among the numerous options available, Tajammal Smm Panel stands out as a premier choice for enhancing your YouTube presence. This article explores the benefits and features of using Tajammal Smm Panel as your go-to YouTube SMM panel.</p><p>1. Affordable Pricing for YouTube Services</p><p>One of the key advantages of using Tajammal Smm Panel is its cost-effectiveness. The platform offers a variety of YouTube services, including views, likes, comments, and subscribers, at some of the lowest prices in the market. This affordability allows both budding and established YouTubers to invest in their channels without straining their budgets.</p><p>2. Comprehensive Range of Services</p><p>Tajammal Smm Panel provides a wide array of YouTube-specific services tailored to meet different needs. Whether you\'re looking to increase your video views, boost likes, garner more comments, or grow your subscriber base, Tajammal Smm Panel has you covered. This comprehensive service offering ensures that you can enhance all aspects of your YouTube channel.</p><p>3. Fast and Reliable Delivery</p><p>Timely delivery of services is crucial in maintaining the momentum of your YouTube growth strategy. Tajammal Smm Panel excels in this area, providing fast and reliable service delivery. Users can expect to see significant improvements in their engagement metrics shortly after placing their orders, helping to maintain the credibility and growth of their channels.</p><p>4. User-Friendly Platform</p><p>Navigating an SMM panel can be daunting, especially for beginners. Tajammal Smm Panel features a user-friendly interface that simplifies the process of selecting and purchasing services. The straightforward design allows users to easily find the services they need and place orders quickly, making it an ideal choice for users of all experience levels.</p><p>5. Enhanced Engagement and Visibility</p><p>With the right YouTube SMM panel, you can significantly improve your channel\'s engagement and visibility. By using Tajammal Smm Panel, you can attract more viewers, increase watch time, and boost interaction on your videos. This enhanced engagement not only helps in ranking higher in YouTube’s search results but also attracts organic growth over time.</p><p>6. Excellent Customer Support</p><p>Customer support is a critical factor when choosing an SMM panel. Tajammal Smm Panel offers responsive and helpful customer support, ready to assist with any questions or issues that may arise. This ensures a smooth and hassle-free experience, allowing users to focus on creating content while the platform handles their marketing needs.</p><p>Conclusion</p><p>Choosing the right YouTube SMM panel can make a significant difference in your channel\'s success. Tajammal Smm Panel combines affordability, comprehensive service offerings, fast delivery, and excellent customer support, making it a top choice for YouTubers aiming to enhance their presence. By leveraging the services of Tajammal Smm Panel, you can effectively boost your channel’s engagement and visibility, paving the way for sustained growth and success on YouTube.</p><p>Optimize your YouTube strategy today with Tajammal Smm Panel and watch your channel soar to new heights.</p><p>Instagram SMM Panel</p><p>Empower Your Instagram Growth with Tajammal Smm Panel: The Best Solution for Instagram Followers</p><p>In the fast-paced world of social media marketing, Instagram reigns supreme as a platform where brands, influencers, and individuals alike can cultivate a strong online presence. Central to this endeavor is the acquisition of genuine followers who engage with your content and contribute to your brand\'s credibility. Enter Tajammal Smm Panel—a powerhouse in the realm of social media marketing tools, specifically tailored to enhance your Instagram follower base effectively and efficiently.</p><p>Why Choose Tajammal Smm Panel for Instagram Followers?</p><p>Tajammal Smm Panel stands out as a preferred choice among marketers and influencers for several compelling reasons:</p><p>1. Quality and Authenticity: At Tajammal Smm Panel, we prioritize quality over quantity. Our services are designed to deliver genuine Instagram followers who are interested in your content and are more likely to engage with your posts, thereby fostering organic growth.</p><p>2. Wide Range of Packages: Whether you\'re just starting your Instagram journey or looking to expand your existing follower base, Tajammal Smm Panel offers a variety of packages to suit every need and budget. From basic follower packages to customized solutions targeting specific demographics or niches, we cater to diverse marketing objectives.</p><p>3. Instant Delivery: Time is of the essence in social media marketing. With Tajammal Smm Panel, you can expect prompt delivery of services. Increase your follower count swiftly and seamlessly, allowing you to focus on creating compelling content and engaging with your audience.</p><p>4. Security and Reliability: Rest assured that your Instagram account\'s security is our top priority. Tajammal Smm Panel adheres to strict security protocols and ethical practices, ensuring that your account remains protected while using our services to boost your follower numbers.</p><p>5. Analytics and Insights: Gain valuable insights into your Instagram performance with Tajammal Smm Panel\'s comprehensive analytics tools. Monitor follower growth, track engagement rates, and refine your marketing strategy based on actionable data.</p><p>Why Followers Matter on Instagram</p><p>- Enhanced Social Proof: A larger follower count enhances your profile\'s credibility and attractiveness to potential followers and collaborators.</p><p>- Increased Reach and Engagement: More followers mean greater reach for your content, leading to increased likes, comments, and shares—a key metric in measuring Instagram success.</p><p>- Business Growth: For businesses, a robust follower base translates into increased brand visibility, higher conversion rates, and ultimately, greater revenue generation.</p><p>Conclusion</p><p>In the competitive landscape of Instagram marketing, Tajammal Smm Panel emerges as a trusted partner in achieving sustainable growth and success. Whether you\'re an aspiring influencer, a small business owner, or a marketing professional, our platform provides the tools and expertise needed to elevate your Instagram strategy. With a commitment to quality, reliability, and client satisfaction, Tajammal Smm Panel is your gateway to building a thriving Instagram presence. Explore our services today and unlock the potential of your Instagram marketing efforts with Tajammal Smm Panel.</p><p>Tajammal Smm Panel: Your Ultimate Solution for Social Media Marketing</p><p>In the ever-evolving landscape of social media marketing, businesses and individuals are constantly seeking efficient ways to boost their online presence. One standout tool in this arena is the Tajammal Smm Panel, widely regarded as one of the best SMM (Social Media Marketing) panels available. Not only does it offer comprehensive services, but it also provides free trial options, making it an attractive choice for those looking to enhance their social media strategies.</p><p>What is an SMM Panel?</p><p>An SMM panel is an online platform that offers a range of social media marketing services. These can include likes, followers, comments, views, and more for various social media platforms such as Facebook, Instagram, Twitter, and YouTube. SMM panels are used by businesses, influencers, and marketers to amplify their online presence quickly and efficiently.</p><p>Why Tajammal Smm Panel Stands Out</p><p>Comprehensive Service Range</p><p>Tajammal Smm Panel offers a wide array of services tailored to meet diverse marketing needs. Whether you are looking to increase your Instagram followers, get more likes on Facebook, or boost your YouTube views, Tajammal Smm Panel has you covered. Their services are designed to provide high-quality, organic growth, ensuring that your social media accounts not only look impressive but also engage effectively with your audience.</p><p>User-Friendly Interface</p><p>One of the standout features of the Tajammal Smm Panel is its user-friendly interface. Navigating through the platform is straightforward, even for those who are not tech-savvy. This ease of use means that you can quickly set up your campaigns and start seeing results without a steep learning curve.</p><p>Free Trial Services</p><p>Understanding the importance of experiencing a service before committing to it, Tajammal Smm Panel offers free trial services. This feature allows potential users to test the platform and its offerings without any financial commitment. The free trial helps users gauge the effectiveness of the services and make informed decisions about which packages best suit their needs.</p><p>Affordable Pricing</p><p>Tajammal Smm Panel provides competitive pricing, making high-quality social media marketing accessible to businesses and individuals of all sizes. Their packages are designed to offer great value for money, ensuring that you get the best return on your investment.</p><p>Reliable Customer Support</p><p>Excellent customer service is a cornerstone of the Tajammal Smm Panel. Their support team is available to assist with any queries or issues, ensuring that users have a smooth and hassle-free experience. Whether you need help setting up your first campaign or have questions about advanced features, the Tajammal Smm Panel support team is always ready to help.</p><p>How to Get Started with Tajammal Smm Panel</p><p>Getting started with Tajammal Smm Panel is simple. Follow these steps:</p><p>1. Sign Up: Create an account on the Tajammal Smm Panel website.</p><p>2. Explore Services: Browse through the wide range of services and select the ones that align with your marketing goals.</p><p>3. Try the Free Trial: Take advantage of the free trial option to test the services.</p><p>4. Choose a Package: Based on your trial experience, choose a package that fits your needs and budget.</p><p>5. Launch Your Campaign: Set up your campaign and start seeing results!</p><p>Conclusion</p><p>In the crowded market of social media marketing tools, Tajammal Smm Panel stands out for its comprehensive services, user-friendly interface, free trial offerings, affordable pricing, and excellent customer support. Whether you are a business looking to enhance your online presence or an influencer aiming to grow your following, Tajammal Smm Panel is a reliable and effective solution. Try their free trial today and experience the difference for yourself!</p><p>SMM Panel Pakistan Easypaisa</p><p>SMM Panel Pakistan Easypaisa | Tajammal Smm Panel </p><p>Tajammal Smm Panel: Revolutionizing Social Media Marketing in Pakistan</p><p>Introduction</p><p>In the era of digital transformation, social media marketing (SMM) has emerged as a critical component for businesses striving to establish a robust online presence. Among the plethora of SMM service providers, Tajammal Smm Panel stands out in Pakistan for its innovative solutions and customer-centric approach. This article explores the impact of Tajammal Smm Panel on the Pakistani digital marketing landscape, its services, benefits, and the unique features that set it apart.</p><p>Understanding SMM Panels</p><p>Social media marketing panels (SMM panels) are platforms that offer a variety of social media services such as likes, followers, views, and comments for platforms including Facebook, Instagram, Twitter, and YouTube. These services are designed to enhance a user\'s social media presence quickly and efficiently.</p><p>The Emergence of Tajammal Smm Panel in Pakistan</p><p>Tajammal Smm Panel has rapidly gained popularity in Pakistan due to its tailored services and commitment to quality. As businesses and influencers seek to boost their online visibility, Tajammal Smm Panel provides an affordable and effective solution.</p><p>Key Features of Tajammal Smm Panel</p><p>1. Comprehensive Service Offerings</p><p>Tajammal Smm Panel offers a wide range of services, including:</p><p>• Instagram Followers, Likes, and Views</p><p>• Facebook Page Likes and Post Engagement</p><p>• YouTube Subscribers and Video Views</p><p>• Twitter Followers and Retweets</p><p>These services cater to diverse needs, from small businesses to individual influencers.</p><p>2. User-Friendly Interface</p><p>The platform is designed to be intuitive and easy to use, making it accessible even for those with limited technical knowledge. Users can navigate through various services, select their desired packages, and place orders seamlessly.</p><p>3. Affordable Pricing</p><p>One of the standout features of Tajammal Smm Panel is its competitive pricing. The platform offers budget-friendly packages, making social media marketing accessible to a broader audience in Pakistan.</p><p>4. High-Quality Engagement</p><p>Tajammal Smm Panel emphasizes the quality of engagement. Unlike many other SMM panels that provide low-quality, fake followers, Tajammal Smm Panel focuses on delivering genuine engagement to ensure long-term benefits for its clients.</p><p>Benefits of Using Tajammal Smm Panel</p><p>1. Enhanced Social Media Presence</p><p>By leveraging the services of Tajammal Smm Panel, businesses and influencers can significantly boost their social media metrics. An increased number of followers, likes, and views can enhance credibility and attract organic traffic.</p><p>2. Time Efficiency</p><p>Growing a social media account organically can be a time-intensive process. Tajammal Smm Panel offers a quick solution, allowing users to achieve their marketing goals in a shorter time frame.</p><p>3. Customizable Packages</p><p>The platform offers customizable packages tailored to meet the specific needs of different users. Whether a user wants to focus on Instagram growth or enhance YouTube engagement, there is a suitable package available.</p><p>Challenges and Ethical Considerations</p><p>While Tajammal Smm Panel provides numerous advantages, users must also consider the potential challenges and ethical implications:</p><p>1. Quality vs. Quantity</p><p>Ensuring that the engagement generated is genuine and not merely superficial is crucial. Tajammal Smm Panel aims to address this by focusing on high-quality services, but users should remain vigilant about the authenticity of their engagement.</p><p>2. Risk of Platform Policies</p><p>Social media platforms have strict guidelines against artificial boosting of metrics. Users must be aware of the risks involved, including potential account suspension or penalties.</p><p>3. Ethical Implications</p><p>The ethicality of purchasing social media engagement is often debated. While it can provide a quick boost, it may also be perceived as misleading by audiences. Transparency and ethical practices should be maintained to uphold brand integrity.</p><p>Conclusion</p><p>Tajammal Smm Panel is revolutionizing the social media marketing landscape in Pakistan by providing affordable, efficient, and high-quality services. Its comprehensive offerings, user-friendly interface, and commitment to genuine engagement make it a preferred choice for many businesses and influencers. However, users must balance the benefits with ethical considerations and potential risks. As the digital marketing field continues to evolve, Tajammal Smm Panel is poised to remain a key player in helping users achieve their social media goals.</p><p>Youtube subscriber main provider smm panel | SMM panel Pakistan Easypaisa</p><p>Boost Your YouTube Presence with High-Quality Subscribers from Tajammal Smm Panel</p><p>In today\'s digital age, establishing a significant presence on YouTube is crucial for content creators, businesses, and influencers. One of the most effective strategies to enhance your channel\'s visibility and credibility is by increasing your subscriber count. At Tajammal Smm Panel, we specialize in providing top-notch YouTube subscribers that can help you achieve your goals faster and more efficiently.</p><p>Why Are YouTube Subscribers Important?</p><p>Subscribers are the backbone of your YouTube channel. They are your loyal audience who consistently watch, engage with, and share your content. Here’s why having a large subscriber base is beneficial:</p><p>1. Enhanced Visibility: YouTube\'s algorithm favors channels with a higher number of subscribers, pushing your videos to a broader audience.</p><p>2. Increased Credibility: A substantial subscriber count signals to new viewers that your content is valuable and worth subscribing to.</p><p>3. Monetization Opportunities: More subscribers can lead to higher ad revenue and sponsorship deals, making your channel more profitable.</p><p>4. Stronger Community: Subscribers often become part of a dedicated community, fostering a more engaging and interactive environment on your channel.</p><p>How Tajammal Smm Panel Can Help You</p><p>At Tajammal Smm Panel, we offer a range of social media marketing services designed to elevate your YouTube presence. Here’s what sets us apart:</p><p>1. Genuine Subscribers: We provide real, active subscribers who are genuinely interested in your content, ensuring organic growth and higher engagement rates.</p><p>2. Safe and Secure: Our methods comply with YouTube’s guidelines, so you can rest assured that your channel remains safe and secure from any potential penalties.</p><p>3. Fast Delivery: We understand the urgency of growing your channel, which is why we deliver subscribers quickly and efficiently.</p><p>4. Affordable Packages: Whether you’re a budding YouTuber or an established content creator, we have packages that fit every budget and need.</p><p>Steps to Get Started</p><p>Getting started with Tajammal Smm Panel is easy and straightforward. Follow these simple steps to boost your YouTube subscribers:</p><p>1. Sign Up: Create an account on our website.</p><p>2. Select a Package: Choose a subscriber package that suits your requirements.</p><p>3. Provide Your Channel Details: Enter your YouTube channel URL and other necessary information.</p><p>4. Make Payment: Complete the payment process using our secure payment gateway.</p><p>5. Watch Your Channel Grow: Sit back and watch as your subscriber count increases.</p><p>Success Stories</p><p>Many YouTubers have already benefitted from our services. Here are a few success stories:</p><p>- Jane Doe, a beauty vlogger, saw her subscriber count increase by 50% within a month, leading to higher engagement and better sponsorship opportunities.</p><p>- John Smith, a tech reviewer, achieved monetization within three months of using our service, significantly boosting his channel’s revenue.</p><p>Frequently Asked Questions</p><p>Q1: Are the subscribers real people?</p><p>A: Yes, all our subscribers are real and active users who have a genuine interest in your content.</p><p>Q2: Will my channel be safe?</p><p>A: Absolutely. We use safe and compliant methods to ensure your channel remains secure.</p><p>Q3: How fast will I see results?</p><p>A: You can expect to see an increase in your subscriber count within a few days of your purchase.</p><p>Q4: Can I choose how many subscribers I want?</p><p>A: Yes, we offer various packages allowing you to choose the number of subscribers that best fits your needs.</p><p>Conclusion</p><p>Growing your YouTube channel can be challenging, but with Tajammal Smm Panel, it doesn\'t have to be. Our reliable and affordable YouTube subscriber services are designed to help you reach your goals quickly and effectively. Don’t miss out on the opportunity to enhance your online presence and achieve success on YouTube. Visit Tajammal Smm Panel today and take the first step towards a thriving YouTube channel.</p><p><br></p><p>Read More</p><p>Dominate Social Media in Pakistan: The Tajammal Smm Panel Advantage</p><p>Elevate Your Social Media Presence in Pakistan with Tajammal Smm Panel</p><p><br></p><p><br></p><p><br></p><p>In the bustling digital landscape of Pakistan, a strong social media presence is not just an option but a necessity for businesses aiming to thrive in today\'s competitive market. Enter Tajammal Smm Panel, your gateway to affordable and effective social media marketing solutions tailored specifically for the Pakistani market.</p><p><br></p><p><br></p><p><br></p><p>Understanding the Importance of Social Media in Pakistan</p><p><br></p><p><br></p><p><br></p><p>With a population of over 220 million people, Pakistan boasts a vibrant online community with a significant presence on various social media platforms such as Facebook, Instagram, Twitter, and YouTube. From local businesses to multinational corporations, everyone is vying for attention in this dynamic digital ecosystem.</p><p><br></p><p><br></p><p><br></p><p>The Rise of SMM Panel Pakistan</p><p><br></p><p><br></p><p><br></p><p>As businesses in Pakistan recognize the importance of social media marketing, the demand for cost-effective solutions has surged. SMM panels have emerged as a popular choice, offering a range of services to enhance visibility, engagement, and overall online presence. Among these, Tajammal Smm Panel stands out for its affordability, reliability, and targeted approach to the Pakistani market.</p><p><br></p><p><br></p><p><br></p><p>Why Choose Tajammal Smm Panel for Social Media Marketing in Pakistan?</p><p><br></p><p><br></p><p><br></p><p>1. Tailored Services: Tajammal Smm Panel understands the unique dynamics of the Pakistani market and offers services specifically designed to resonate with the local audience. Whether it\'s increasing followers, likes, comments, or views, Tajammal Smm Panel provides targeted solutions to help businesses connect with their target demographic effectively.</p><p><br></p><p><br></p><p><br></p><p>2. Affordability: In a market where budgets can be tight, affordability is key. Tajammal Smm Panel offers competitive rates without compromising on quality, making it accessible to businesses of all sizes, from startups to established enterprises.</p><p><br></p><p><br></p><p><br></p><p>3. Quick Delivery: Time is of the essence in the fast-paced world of social media. Tajammal Smm Panel ensures prompt delivery of its services, allowing businesses to see results almost instantly and maintain the momentum of their marketing campaigns.</p><p><br></p><p><br></p><p><br></p><p>4. 24/7 Customer Support: Effective customer support is crucial for any service, and Tajammal Smm Panel excels in this regard. Their dedicated support team is available round-the-clock to address any queries or concerns, ensuring a seamless experience for users.</p><p><br></p><p><br></p><p><br></p><p>How Tajammal Smm Panel Works in Pakistan</p><p><br></p><p><br></p><p><br></p><p>Using Tajammal Smm Panel to enhance your social media presence in Pakistan is simple:</p><p><br></p><p>1. Sign Up: Create an account on the platform to get started.</p><p><br></p><p>2. Choose Your Service: Select from a range of services tailored for the Pakistani market, including likes, followers, views, and more.</p><p><br></p><p>3. Place Your Order: Enter the necessary details, such as your social media profile or post URL, and specify the quantity required.</p><p><br></p><p>4. Make Payment: Complete the payment process using one of the available payment methods.</p><p><br></p><p>5. Track Your Results: Monitor the progress of your order and watch as your social media presence grows organically.</p><p><br></p><p><br></p><p><br></p><p>Conclusion</p><p><br></p><p><br></p><p><br></p><p>In a rapidly evolving digital landscape, a strong social media presence is essential for businesses looking to succeed in Pakistan. With its tailored services, affordability, and quick delivery, Tajammal Smm Panel offers the perfect solution for businesses of all sizes to enhance their online presence, engage with their audience, and achieve their marketing goals effectively. Join the ranks of successful businesses in Pakistan leveraging the power of Tajammal Smm Panel to unlock growth and maximize their social media impact.</p><p><br></p><p><br></p><p>smm panel pakistan easypaisa</p><p>PKR</p><p>Unlocking Growth: The Power of Tajammal Smm Panel for Affordable Social Media Marketing</p><p>The Rise of Affordable Social Media Marketing: A Look at Tajammal Smm Panel</p><p><br></p><p><br></p><p><br></p><p>In the rapidly evolving world of digital marketing, social media presence has become a vital aspect of any business strategy. From boosting brand awareness to driving sales, effective social media marketing (SMM) is indispensable. However, for many small businesses and individual marketers, the high cost of professional SMM services can be prohibitive. Enter Tajammal Smm Panel, one of the most cost-effective solutions in the market today.</p><p><br></p><p><br></p><p><br></p><p>What is Tajammal Smm Panel?</p><p><br></p><p><br></p><p><br></p><p>Tajammal Smm Panel is an online platform that offers a range of social media marketing services at exceptionally low prices. Designed to cater to businesses of all sizes, from startups to established enterprises, Tajammal Smm Panel provides tools to enhance visibility, engagement, and overall online presence across various social media platforms such as Facebook, Instagram, Twitter, and YouTube.</p><p><br></p><p><br></p><p><br></p><p>Why Choose Tajammal Smm Panel?</p><p><br></p><p><br></p><p><br></p><p>1. Affordability: One of the standout features of Tajammal Smm Panel is its affordability. The platform offers competitive rates, making high-quality social media marketing accessible to even those with tight budgets. This democratization of services allows smaller businesses to compete with larger corporations on a more level playing field.</p><p><br></p><p><br></p><p><br></p><p>2. Comprehensive Services: Tajammal Smm Panel provides a wide array of services, including likes, followers, views, comments, and shares. This comprehensive approach ensures that businesses can meet their specific marketing goals, whether it\'s increasing engagement on a particular post or building a broader follower base.</p><p><br></p><p><br></p><p><br></p><p>3. User-Friendly Interface: The platform is designed with ease of use in mind. Even those who are not tech-savvy can navigate the site and order services without any hassle. This simplicity is crucial for small business owners who need to manage their marketing efforts efficiently.</p><p><br></p><p><br></p><p><br></p><p>4. Quick Delivery: Time is of the essence in the fast-paced world of social media. Tajammal Smm Panel ensures quick delivery of its services, allowing businesses to see almost immediate results. This prompt service helps maintain the momentum of social media campaigns.</p><p><br></p><p><br></p><p><br></p><p>5. 24/7 Customer Support: Effective customer support is a cornerstone of any reliable service, and Tajammal Smm Panel excels in this regard. Their 24/7 customer support ensures that users can get assistance whenever they need it, addressing any issues or questions promptly.</p><p><br></p><p><br></p><p><br></p><p>How Tajammal Smm Panel Works</p><p><br></p><p><br></p><p><br></p><p>Using Tajammal Smm Panel is straightforward:</p><p><br></p><p>1. Sign Up: Users need to create an account on the platform.</p><p><br></p><p>2. Select a Service: Choose from a variety of services tailored to different social media platforms.</p><p><br></p><p>3. Place an Order: Enter the required details such as the URL of the social media post or profile and specify the quantity needed.</p><p><br></p><p>4. Payment: Complete the payment process. Tajammal Smm Panel supports various payment methods for convenience.</p><p><br></p><p>5. Monitor Results: Once the order is placed, users can monitor the progress and see the results as they happen.</p><p><br></p><p><br></p><p><br></p><p>Success Stories</p><p><br></p><p><br></p><p><br></p><p>Many businesses have leveraged Tajammal Smm Panel to boost their social media presence successfully. For instance, a small boutique used the platform to increase its Instagram followers and saw a significant uptick in sales due to higher engagement and visibility. Similarly, a freelance artist gained substantial YouTube subscribers, leading to increased visibility and job opportunities.</p><p><br></p><p><br></p><p><br></p><p>Conclusion</p><p><br></p><p><br></p><p><br></p><p>In a digital age where social media can make or break a business, affordable and effective tools like Tajammal Smm Panel are invaluable. By providing comprehensive, low-cost social media marketing services, Tajammal Smm Panel empowers businesses of all sizes to enhance their online presence, engage with their audience, and ultimately achieve their marketing goals. As social media continues to evolve, platforms like Tajammal Smm Panel will play a crucial role in leveling the playing field and fostering digital growth for businesses worldwide.</p><p><br></p><p>Read More</p><p>Grow Your Instagram Followers</p><p>Grow Your Instagram Followers with Tajammal Smm Panel: A Comprehensive Guide</p><p><br></p><p><br></p><p><br></p><p>In the rapidly evolving world of social media, Instagram remains one of the most powerful platforms for personal branding, business marketing, and community engagement. Growing your Instagram followers organically can be a daunting task, but leveraging tools like Tajammal Smm Panel can make this process more efficient and effective. This article explores how Tajammal Smm Panel can help you boost your Instagram followers and enhance your social media presence.</p><p><br></p><p><br></p><p><br></p><p>What is Tajammal Smm Panel?</p><p><br></p><p><br></p><p><br></p><p>Tajammal Smm Panel is a Social Media Marketing (SMM) tool that offers a variety of services to help individuals and businesses enhance their online presence. These services include increasing followers, likes, comments, and overall engagement on social media platforms like Instagram. The platform is user-friendly, cost-effective, and designed to deliver results quickly.</p><p><br></p><p><br></p><p><br></p><p>Why Use Tajammal Smm Panel for Instagram Growth?</p><p><br></p><p><br></p><p><br></p><p>1. Efficiency and Speed: Growing your Instagram following organically can take months, if not years. Tajammal Smm Panel provides a faster alternative, allowing you to see significant growth in a short period. This is particularly useful for new accounts looking to build credibility quickly.</p><p><br></p><p><br></p><p><br></p><p>2. Targeted Audience: Tajammal Smm Panel offers targeted growth options, meaning you can attract followers who are genuinely interested in your niche. This targeted approach ensures higher engagement rates and better interaction with your content.</p><p><br></p><p><br></p><p><br></p><p>3. Cost-Effective Solutions: Compared to traditional advertising methods, using an SMM panel is more affordable. Tajammal Smm Panel offers various packages to suit different budgets, making it accessible for small businesses and individual influencers alike.</p><p><br></p><p><br></p><p><br></p><p>4. User-Friendly Interface: The platform is designed to be intuitive, allowing even those with minimal technical knowledge to navigate and use the services effectively.</p><p><br></p><p><br></p><p><br></p><p>How to Use Tajammal Smm Panel for Instagram Growth</p><p><br></p><p><br></p><p><br></p><p>1. Sign Up and Choose a Package: Start by creating an account on Tajammal Smm Panel. Browse through the available packages and select one that aligns with your goals and budget. Packages vary based on the number of followers, likes, and other engagement metrics.</p><p><br></p><p><br></p><p><br></p><p>2. Customize Your Order: Once you\'ve selected a package, you can customize your order to target specific demographics, interests, or locations. This ensures that the followers you gain are relevant to your content.</p><p><br></p><p><br></p><p><br></p><p>3. Monitor Your Growth: After placing your order, you can monitor your Instagram growth through the Tajammal Smm Panel dashboard. The platform provides detailed analytics to help you track your progress and adjust your strategy as needed.</p><p><br></p><p><br></p><p><br></p><p>4. Engage with Your New Followers: To maximize the benefits of your new followers, it\'s crucial to engage with them. Respond to comments, like their posts, and create interactive content such as polls and stories. This engagement fosters a loyal community and encourages more organic growth.</p><p><br></p><p><br></p><p><br></p><p>Best Practices for Sustainable Instagram Growth</p><p><br></p><p><br></p><p><br></p><p>While using Tajammal Smm Panel can significantly boost your follower count, maintaining and growing your following requires ongoing effort and strategy. Here are some best practices:</p><p><br></p><p><br></p><p><br></p><p>- Create High-Quality Content: Consistently post visually appealing and valuable content that resonates with your audience. High-quality content is more likely to be shared, attracting new followers organically.</p><p><br></p><p><br></p><p><br></p><p>- Use Hashtags Wisely: Incorporate relevant hashtags to increase the visibility of your posts. Research trending hashtags in your niche and include a mix of popular and niche-specific tags.</p><p><br></p><p><br></p><p><br></p><p>- Collaborate with Influencers: Partnering with influencers in your industry can expose your account to a broader audience. Choose influencers whose followers align with your target demographic.</p><p><br></p><p><br></p><p><br></p><p>- Engage Regularly: Active engagement is key to retaining followers. Respond to comments, direct messages, and participate in conversations within your community.</p><p><br></p><p><br></p><p><br></p><p>- Analyze and Adapt: Use Instagram\'s insights and the analytics provided by Tajammal Smm Panel to understand what content performs best. Continuously adapt your strategy based on these insights to optimize your growth.</p><p><br></p><p><br></p><p><br></p><p>Conclusion</p><p><br></p><p><br></p><p><br></p><p>Growing your Instagram followers doesn\'t have to be a slow and arduous process. With the help of Tajammal Smm Panel, you can accelerate your growth and build a robust online presence efficiently. By combining the power of an SMM panel with a solid content and engagement strategy, you can achieve sustainable Instagram success. Whether you\'re an individual influencer or a business, Tajammal Smm Panel offers the tools you need to enhance your social media strategy and reach your goals.</p><p><br></p><p>Read More</p><p>Affiliate</p><p><br></p><p><br></p><p><br></p><p>How to Earn Money on Tajammal Smm Panel Through the Affiliate System</p><p><br></p><p><br></p><p>Social Media Marketing (SMM) panels are popular platforms that offer various services like followers, likes, comments, and other engagement metrics for social media platforms. Tajammal Smm Panel is one such platform, and it also offers an affiliate system that allows users to earn money by referring others to use the panel. Here\'s a comprehensive guide on how to earn money on Tajammal Smm Panel through its affiliate system.</p><p><br></p><p><br></p><p><br></p><p>1. Understand the Affiliate System</p><p><br></p><p><br></p><p><br></p><p>What is an Affiliate System?</p><p><br></p><p>An affiliate system is a marketing strategy where users (affiliates) earn commissions by promoting and driving sales or sign-ups to a business. For every successful referral, the affiliate earns a percentage of the sale or a fixed commission.</p><p><br></p><p><br></p><p><br></p><p>How Does Tajammal Smm Panel\'s Affiliate System Work?</p><p><br></p><p>Tajammal Smm Panel offers a unique affiliate link to every user. When someone clicks on your link and makes a purchase on the panel, you earn a commission from that sale. The commission rates and terms can vary, so it\'s essential to check the specifics on the Tajammal Smm Panel website or through their customer service.</p><p><br></p><p><br></p><p><br></p><p>2. Sign Up and Get Your Affiliate Link</p><p><br></p><p><br></p><p><br></p><p>Registration</p><p><br></p><p>To start, you need to sign up for an account on Tajammal Smm Panel. If you already have an account, you can log in and navigate to the affiliate section to get your unique affiliate link.</p><p><br></p><p><br></p><p><br></p><p>Locate Your Affiliate Link</p><p><br></p><p>Once logged in, go to the affiliate program section in your account dashboard. Here, you will find your unique affiliate link, which you will use to promote the panel.</p><p><br></p><p><br></p><p><br></p><p>3. Promote Your Affiliate Link</p><p><br></p><p><br></p><p><br></p><p>Create Content</p><p><br></p><p>One of the best ways to promote your affiliate link is by creating valuable content. This could include blog posts, videos, social media posts, or any other type of content that will attract potential customers.</p><p><br></p><p><br></p><p><br></p><p>Blogging</p><p><br></p><p>Write articles about the benefits of using SMM panels, how they can help businesses grow their social media presence, and why Tajammal Smm Panel is a great choice. Include your affiliate link within the content.</p><p><br></p><p><br></p><p><br></p><p>Video Content</p><p><br></p><p>Create videos on platforms like YouTube explaining how to use SMM panels, tutorials on using Tajammal Smm Panel, and reviews of their services. Place your affiliate link in the video description.</p><p><br></p><p><br></p><p><br></p><p>Social Media</p><p><br></p><p>Use your social media accounts to share your affiliate link. Join groups and forums related to social media marketing and share how Tajammal Smm Panel can benefit the members.</p><p><br></p><p><br></p><p><br></p><p>Facebook</p><p><br></p><p>Join groups related to digital marketing and social media growth. Share informative posts and engage with the community while subtly promoting your affiliate link.</p><p><br></p><p><br></p><p><br></p><p>Twitter and Instagram</p><p><br></p><p>Post regular updates, tips, and insights about SMM panels. Use relevant hashtags to reach a broader audience.</p><p><br></p><p><br></p><p><br></p><p>Email Marketing</p><p><br></p><p>If you have an email list, send out newsletters explaining the benefits of using SMM panels and include your affiliate link. Offer exclusive discounts or insights to encourage clicks and sign-ups.</p><p><br></p><p><br></p><p><br></p><p>Online Forums and Communities</p><p><br></p><p>Engage in discussions on platforms like Reddit, Quora, and niche-specific forums. Provide helpful answers and subtly include your affiliate link where relevant.</p><p><br></p><p><br></p><p><br></p><p>4. Optimize Your Promotions</p><p><br></p><p><br></p><p><br></p><p>SEO (Search Engine Optimization)</p><p><br></p><p>Optimize your blog posts and website content for search engines. Use keywords related to SMM panels and social media marketing to increase organic traffic to your content.</p><p><br></p><p><br></p><p><br></p><p>Track Your Performance</p><p><br></p><p>Use tracking tools to monitor the performance of your affiliate link. Analyze which channels and content types are driving the most traffic and conversions, and adjust your strategy accordingly.</p><p><br></p><p><br></p><p><br></p><p>5. Stay Updated and Engaged</p><p><br></p><p><br></p><p><br></p><p>Keep Up with Updates</p><p><br></p><p>Regularly check the Tajammal Smm Panel website or contact their support to stay informed about any changes in the affiliate program, new features, or promotional campaigns.</p><p><br></p><p><br></p><p><br></p><p>Engage with Your Audience</p><p><br></p><p>Respond to comments, emails, and messages from your audience. Building a relationship with your audience can lead to higher trust and more conversions.</p><p><br></p><p><br></p><p><br></p><p>Conclusion</p><p><br></p><p><br></p><p><br></p><p>Earning money on Tajammal Smm Panel through the affiliate system requires strategic planning and consistent effort. By understanding the affiliate system, promoting your link effectively, and staying engaged with your audience, you can create a steady stream of income. Remember, success in affiliate marketing often comes down to the value you provide to your audience and the trust you build with them.</p><p><br></p><p>Read More</p><p>Download Apk</p><p><br></p><p>Tajammal Smm Panel</p><p>Version: 1.0</p><p>Size: 7.6 MB</p><p>Reviews: ★★★★★ (4.8)</p><p>Downloads: 26.1k</p><p>Download APK </p><p><br></p><p>Reviews</p><p>Sarm Mbackup</p><p>Dr Sirajuddin ★★★★★</p><p>Best app</p><p>Akhtar Ramdani</p><p>Akhtar Ramdani ★★★★★</p><p>Cheapest smm panel</p><p>Dr Sirajuddin Soomro (Raja)</p><p>Fatima Afzal ★★★★★</p><p>Excellent App</p><p>Legit Money</p><p>Legit Money ★★★★★</p><p>Nice app</p><p>Mi Mi</p><p>Mohit Khan ★★★★★</p><p>Best smm panel </p><p>Krishna Girish</p><p>Jhanvi Kapoor ★★★★★</p><p>Great experience </p><p>Join WhatsApp Channel</p><p><br></p><p>Read More</p><p>SMM Panel Pakistan Payfast</p><p>SMM Panel Pakistan Payfast</p><p><br></p><p>Tajammal Smm Panel: Supercharge Your Social Media with Pakistan\'s Trusted Payment Gateway, PayFast!</p><p>In today\'s digital age, social media is the lifeblood of any successful brand or business in Pakistan. But building a strong social media presence takes time, effort, and resources. That\'s where Tajammal Smm Panel comes in, offering a comprehensive suite of SMM services to elevate your social media game. And to make things even smoother, Tajammal Smm Panel now seamlessly integrates with PayFast, Pakistan\'s leading and most trusted online payment gateway.</p><p>Tajammal Smm Panel: Your One-Stop Shop for Social Media Success</p><p>Tajammal Smm Panel empowers you to achieve your social media goals with a variety of services:</p><p>Grow Your Audience: Increase your follower base on platforms like Facebook, Instagram, YouTube, and more, reaching a wider audience and attracting new customers.</p><p>Boost Engagement: Get more likes, comments, and shares on your social media content, fostering stronger brand loyalty and community interaction.</p><p>Save Time and Money: Focus on running your business while Tajammal Smm Panel handles the time-consuming aspects of social media management, allowing you to see results without breaking the bank.</p><p>Track Your Progress: Monitor the performance of your SMM campaigns with Tajammal Smm Panel\'s detailed analytics, making data-driven decisions to optimize your strategy.</p><p>Why Choose PayFast for Secure and Hassle-Free Payments?</p><p>Pakistan\'s very own PayFast is the perfect partner for Tajammal Smm Panel, offering a secure and convenient payment experience:</p><p>Widely Trusted: PayFast is a household name in Pakistan, renowned for its secure transactions and fraud protection.</p><p>Multiple Payment Methods: Pay using your debit or credit card, internet banking, or mobile wallets like Easypaisa and JazzCash, for ultimate flexibility.</p><p>Instant Transactions: Enjoy immediate processing of your payments, so you can start using Tajammal Smm Panel\'s services right away.</p><p>24/7 Customer Support: PayFast\'s dedicated customer support team is always available to assist you with any queries.</p><p>The Perfect Match: Tajammal Smm Panel and PayFast</p><p>Together, Tajammal Smm Panel and PayFast create a winning combination for your social media success:</p><p>Effortless Management: Tajammal Smm Panel takes care of your social media growth, while PayFast ensures a smooth and secure payment process.</p><p>Focus on Growth: Free up your time to focus on core business activities while PayFast\'s instant transactions keep your SMM campaigns running.</p><p>Peace of Mind: With PayFast\'s robust security measures, you can relax knowing your transactions are protected.</p><p>Unleash the Power of Social Media with Tajammal Smm Panel and PayFast</p><p>Don\'t let social media management hold you back. Sign up for Tajammal Smm Panel today and leverage the power of PayFast for secure and convenient payments. Watch your brand soar to new heights with Tajammal Smm Panel\'s expert services and PayFast\'s trusted platform.</p><p>Get started now and witness the social media transformation!</p><p>Read More</p><p>SMM Panel Pakistan Easypaisa</p><p>SMM Panel Pakistan Easypaisa</p><p><br></p><p><br></p><p>SMM Panel Pakistan Easypaisa</p><p><br></p><p><br></p><p>Boost Your Social Media Presence with Tajammal Smm Panel and Easypaisa!</p><p>Do you crave a larger audience on social media for your Pakistani business or personal brand? Look no further than Tajammal Smm Panel and Easypaisa! This powerful combination simplifies social media marketing (SMM) and fuels your growth.</p><p>Tajammal Smm Panel: Your One-Stop Shop for SMM Needs</p><p>Tajammal Smm Panel is your gateway to a treasure trove of SMM services. Here\'s what it offers:</p><p>Increased Followers and Engagement: Grow your follower base and boost engagement on platforms like Facebook, Instagram, YouTube, and more.</p><p>Enhanced Brand Awareness: Tajammal Smm Panel helps you reach a wider audience and build brand recognition.</p><p>Cost-Effective Solutions: Get high-quality services at competitive prices, perfect for businesses of all sizes.</p><p>User-Friendly Interface: The panel\'s intuitive design makes it easy to navigate and use, even for SMM beginners.</p><p>Easypaisa: Effortless Payments Made Easy</p><p>Easypaisa, Pakistan\'s leading mobile wallet service, integrates seamlessly with Tajammal Smm Panel. Here\'s why it\'s the perfect payment partner:</p><p>Safe and Secure: Easypaisa prioritizes security, ensuring your transactions are safe and protected.</p><p>Convenient Top-Ups: Top up your Tajammal Smm Panel account with ease using the Easypaisa app or a wide network of Easypaisa agents.</p><p>Instant Transactions: Enjoy instant processing of your payments, so you can start using SMM services immediately.</p><p>Tajammal Smm Panel and Easypaisa: A Match Made in SMM Heaven</p><p>By combining Tajammal Smm Panel\'s powerful services with Easypaisa\'s convenient payment system, you unlock a world of benefits:</p><p>Effortless Growth Management: Focus on running your business while Tajammal Smm Panel handles your social media growth.</p><p>Faster Campaign Launch: Easypaisa\'s instant transactions let you launch your SMM campaigns without delay.</p><p>Peace of Mind: With Easypaisa\'s secure platform, you can rest assured your transactions are safe.</p><p>Ready to Take Your Social Media Presence to the Next Level?</p><p>Sign up for Tajammal Smm Panel today and experience the power of SMM. With Easypaisa as your payment partner, growing your social media presence has never been easier.</p><p>Get started now and watch your brand flourish!</p><p>Read More</p><p>Cheapest SMM Panel</p><p>Cheapest SMM Panel</p><p><br></p><p>Discover Tajammal Smm Panel, The Cheapest SMM Panel Offering Reliable and Fast Social Media Services. Start from Rs.01 with Easypaisa & JazzCash Payment Method.</p><p><br></p><p>Cheapest SMM Panel</p><p><br></p><p>A Social Media Marketing (SMM) panel is a platform where users can purchase social media services such as followers, likes, views, and comments at a low cost. These panels are designed to help individuals and businesses boost their social media presence quickly and affordably. The cheapest SMM panels offer competitive pricing without compromising on service quality, ensuring that users get the best value for their investment.</p><p><br></p><p>Tajammal Smm Panel</p><p><br></p><p>Tajammal Smm Panel is one of the most affordable SMM panels available, offering a wide range of services for platforms like Instagram, Facebook, Twitter, and YouTube. Known for its low-cost pricing structure, Tajammal Smm Panel provides reliable and fast delivery of services, making it an excellent choice for enhancing social media engagement. The platform features an easy-to-use interface and responsive customer support, ensuring a seamless experience for all users.</p><p><br></p><p>In the competitive landscape of Social Media Marketing (SMM) panels, Tajammal Smm Panel stands out for its affordability and comprehensive service offerings. Here\'s an in-depth look at why Tajammal Smm Panel is considered one of the cheapest and most efficient options in the market.</p><p><br></p><p>1. Affordable Pricing Structure</p><p>Tajammal Smm Panel boasts one of the most competitive pricing structures in the SMM industry. This platform offers a wide range of services, from followers and likes to views and comments, all at a fraction of the cost compared to other panels. This affordability makes it an excellent choice for individuals and businesses looking to enhance their social media presence without breaking the bank.</p><p><br></p><p>2. Wide Range of Services</p><p>Despite its low cost, Tajammal Smm Panel does not compromise on the variety of services offered. Users can purchase engagement for platforms such as Instagram, Facebook, Twitter, YouTube, and more. This extensive range ensures that clients can tailor their social media strategies across multiple platforms seamlessly.</p><p><br></p><p>3. User-Friendly Interface</p><p>Tajammal Smm Panel features a straightforward and intuitive user interface, making it accessible even for beginners. The easy navigation allows users to quickly find and purchase the services they need, further enhancing the overall user experience.</p><p><br></p><p>4. Reliability and Speed</p><p>While affordability is a key factor, the reliability and speed of service delivery are equally important. Tajammal Smm Panel excels in this regard, offering fast delivery times and consistent performance. Users can expect to see results almost immediately after placing their orders, ensuring their social media campaigns run smoothly.</p><p><br></p><p>5. Customer Support</p><p>Good customer support is crucial for any service, and Tajammal Smm Panel delivers on this front as well. The platform provides responsive and helpful customer support, addressing any issues or queries promptly. This level of service is especially valuable for users who may encounter problems or need assistance navigating the panel.</p><p><br></p><p>6. Secure and Confidential</p><p>Security and confidentiality are paramount when dealing with social media accounts and marketing services. Tajammal Smm Panel ensures that all transactions and user data are kept secure, providing peace of mind for its clients. The platform’s commitment to privacy is a significant advantage, especially in today’s data-sensitive environment.</p><p><br></p><p>Conclusion</p><p>Tajammal Smm Panel is a standout choice for those seeking the cheapest and most efficient SMM panel. Its combination of affordability, variety of services, user-friendly interface, reliability, and excellent customer support makes it a top contender in the SMM market. Whether you are an individual looking to boost your social media presence or a business aiming to enhance your digital marketing strategy, Tajammal Smm Panel offers a cost-effective and reliable solution.</p><p>Read More</p><p>Best SMM Panel</p><p>Best SMM Panel</p><p><br></p><p>Unlock Your Social Media Potential with the Best SMM Panel, Tajammal Smm Panel Offering Best Services For Instagram, TikTok, YouTube & Facebook.</p><p>Boost Your Social Media Presence with Tajammal Smm Panel</p><p>In today\'s digital age, social media is king. It\'s where brands connect with audiences, influencers build followings, and businesses drive sales. But managing multiple social media accounts can be a daunting task. That\'s where Tajammal Smm Panel comes in.</p><p>Tajammal Smm Panel is a comprehensive Social Media Management (SMM) tool designed to streamline your social media marketing efforts. Here\'s how it can help you:</p><p>Save Time and Effort: Schedule posts across all your social media platforms in advance, eliminating the need to manually post every day. Tajammal Smm Panel offers a user-friendly interface for easy scheduling and management.</p><p>Increase Engagement: Gain valuable insights into your audience demographics and content performance. Tajammal Smm Panel can help you tailor your content to resonate better with your followers, leading to increased engagement.</p><p>Grow Your Following: Access a wide range of SMM services, including follower growth, likes, comments, and shares. These services can give your social media profiles an initial boost, making them more attractive to organic growth. (Remember, it\'s always important to combine these services with high-quality content for long-term success).</p><p>Cost-Effective Solution: Tajammal Smm Panel offers a variety of pricing plans to suit your needs and budget. Compared to hiring a dedicated social media manager, Tajammal Smm Panel provides a cost-effective way to manage your social media presence.</p><p>Here are some additional benefits of using Tajammal Smm Panel:</p><p>User-Friendly Interface: Even if you\'re new to social media marketing, Tajammal Smm Panel\'s intuitive design makes it easy to navigate and use.</p><p>24/7 Support: Should you encounter any issues, Tajammal Smm Panel offers customer support to assist you.</p><p>Wide Range of Services: Tajammal Smm Panel goes beyond just follower growth. Explore their services for website traffic boosting, video view increases, and more.</p><p>Is Tajammal Smm Panel Right for You?</p><p>Tajammal Smm Panel is a powerful tool for anyone looking to take their social media presence to the next level. Whether you\'re a small business owner, an influencer, or an entrepreneur, Tajammal Smm Panel can help you save time, increase engagement, and grow your following.</p><p>Ready to Get Started?</p><p>Head over to Tajammal Smm Panel\'s website to explore their services and pricing plans. With Tajammal Smm Panel as your partner, you can focus on creating engaging content while they handle the nitty-gritty of social media management. Let Tajammal Smm Panel help you unlock the full potential of social media for your brand or business.</p><p>Read More</p><p>SMM Panel Pakistan</p><p>SMM Panel Pakistan</p><p><br></p><p>Best & Cheapest SMM Panel in Pakistan For Instagram, YouTube, TikTok & Facebook Services, Start From Rs 0.01 With Easypaisa & JazzCash.</p><p>In today\'s digital age, a strong social media presence is essential for businesses and individuals in Pakistan. But building a loyal following and keeping your audience engaged takes time and effort. Tajammal Smm Panel can be your secret weapon for supercharging your social media game.</p><p>Effortlessly Amplify Engagement:</p><p>Tajammal Smm Panel provides a convenient and cost-effective way to acquire the social proof you crave. Our platform offers a variety of packages to suit your needs, including:</p><p>Likes, Followers & Views: Get that initial boost to your social media profiles on Facebook, Instagram, YouTube, and more.</p><p>Website Traffic: Drive targeted visitors to your website and increase brand awareness.</p><p>Save Time and Resources:</p><p>Tajammal Smm Panel eliminates the need for tedious manual interaction. Our user-friendly platform allows you to:</p><p>Order and manage all your social media services in one place.</p><p>Free up your valuable time to focus on creating high-quality content and engaging with your audience.</p><p>Enjoy competitive prices that fit your budget.</p><p>Authentic Growth Starts with Tajammal Smm Panel</p><p>We understand the importance of quality over quantity. That\'s why Tajammal Smm Panel prioritizes providing:</p><p>Real, Engaged Followers: Unlike some providers, our followers are interested in your content, leading to more organic growth.</p><p>Safe</p>', '1', '1', 'Why People\'s Chose Tajammal Smm Panel ', 'Tajammal Smm Panel Smm Panel,smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller,', 'Learn why we are the best SMM Panel in the market. Affordable prices, instant delivery, and 24/7 support. Join thousands of satisfied customers today!', '2025-02-17 02:39:21', '2', '<p><br></p>');
INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(909, 'success', 'success', '', '1', '1', 'Tajammal Smm Panel', 'Tajammal Smm Panel,panelgoto smm panelsmmpanelonesmm panel india24smm panel 24panel pakistansmm panel FBS Panel,Best panel in pakistan ,best indian panel,cheap panel in services,best panel for youtube subscriberfast ,panel,be', '', '2024-06-29 10:11:45', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text NOT NULL,
  `panel_plan` text NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'yourpanel.com', 'A', 'Active', 0, 0, '2022-01-24 10:58:08', 'b1fbedd6f1266a8990bf648919068680', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int(11) NOT NULL,
  `methodName` varchar(300) DEFAULT NULL,
  `methodLogo` varchar(200) DEFAULT NULL,
  `methodVisibleName` varchar(300) DEFAULT NULL,
  `methodCallback` varchar(100) DEFAULT NULL,
  `methodMin` int(11) NOT NULL DEFAULT 1,
  `methodMax` int(11) NOT NULL DEFAULT 1,
  `methodFee` float NOT NULL DEFAULT 0,
  `methodBonusPercentage` float NOT NULL DEFAULT 0,
  `methodBonusStartAmount` int(11) NOT NULL DEFAULT 0,
  `methodCurrency` varchar(3) DEFAULT NULL,
  `methodStatus` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 -> off, 1 -> on',
  `methodExtras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `methodPosition` int(11) DEFAULT NULL,
  `methodInstructions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(1, 'PayTM Checkout', 'https://i.ibb.co/0VNTSLb/pngegg-2.png', 'PayTM Checkout', 'payTMCheckout', 1, 100000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"merchantKey\":\"\"}', 2, ''),
(2, 'PayTM Merchant', 'https://i.ibb.co/G0PxyPm/paytmpaymentgateway-3257-logo-1597644450-ayat1.png', 'PayTM Merchant', 'payTMMerchant', 1, 10000, 0, 0, 0, 'INR', '1', '{\"merchantId\":\"\"}', 2, '&lt;p&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;background-color: rgb(230, 0, 0); color: rgb(255, 255, 0);&quot;&gt;&lt;em&gt;Paytm and Phone Pe only&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;'),
(3, 'Perfect Money', 'https://excelcdn.in/smm/admin/images/payment-methods/perfect-money.png', 'Perfect Money', 'perfectMoney', 10, 1000, 3, 0, 0, 'USD', '1', '{\"accountNumber\":\"\",\"alternatePassPhrase\":\"\"}', 3, ''),
(4, 'Coinbase Commerce', 'https://excelcdn.in/smm/admin/images/payment-methods/coinbase-commerce.png', 'Coinbase Commerce', 'coinbaseCommerce', 1, 1000, 0, 0, 0, 'USD', '0', '{\"APIKey\":\"\"}', 4, NULL),
(5, 'Kashier', 'https://excelcdn.in/smm/admin/images/payment-methods/kashier.png', 'Kashier', 'kashier', 1, 1000, 0, 0, 0, 'USD', '0', '{\"MID\":\"\",\"APIKey\":\"\",\"mode\":\"live\"}', 5, NULL),
(6, 'Razorpay', 'https://excelcdn.in/smm/admin/images/payment-methods/razorpay.png', 'Razorpay', 'razorPay', 1, 10000, 0, 0, 0, 'INR', '0', '{\"APIPublicKey\":\"\",\"APISecretKey\":\"\",\"gatewayThemeColour\":\"\"}', 6, NULL),
(7, 'PhonePe (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/phonepe.png', 'PhonePe (Automatic)', 'phonepe', 1, 10000, 0, 0, 0, 'INR', '1', '{\"email\":\"\",\"password\":\"\"}', 7, ''),
(8, 'Easypaisa (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/easypaisa.png', 'Easypaisa (Automatic)', 'easypaisa', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"easypaisa\"}', 8, NULL),
(9, 'Jazzcash (Automatic)', 'https://excelcdn.in/smm/admin/images/payment-methods/jazzcash.png', 'Jazzcash (Automatic)', 'jazzcash', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"jazzcash\"}', 9, NULL),
(10, 'Instamojo', 'https://excelcdn.in/smm/admin/images/payment-methods/instamojo.jpg', 'Instamojo', 'instamojo', 1, 1000, 0, 0, 0, 'INR', '0', '{\"APIKey\":\"\",\"authToken\":\"\"}', 10, NULL),
(11, 'Cashmaal', 'https://excelcdn.in/smm/admin/images/payment-methods/cashmaal.png', 'Cashmaal', 'cashmaal', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"webId\":\"\"}', 11, NULL),
(12, 'Alipay', 'https://excelcdn.in/smm/admin/images/payment-methods/alipay.png', 'Alipay', 'alipay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"partnerId\":\"\",\"privateKey\":\"\"}', 12, NULL),
(13, 'PayU', 'https://excelcdn.in/smm/admin/images/payment-methods/payu.png', 'PayU', 'payU', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantKey\":\"\",\"merchantSalt\":\"\"}', 13, NULL),
(14, 'UpiApi', 'https://excelcdn.in/smm/admin/images/payment-methods/upiapi.png', 'UpiApi', 'upiapi', 1, 10000, 0, 0, 0, 'INR', '1', '{\"productionAPIToken\":\"\",\"productionAPISecretKey\":\"\"}', 2, ''),
(15, 'Opay Express Checkout', 'https://excelcdn.in/smm/admin/images/payment-methods/opay.png', 'Opay Express Checkout', 'opay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"merchantId\":\"\",\"publicKey\":\"\",\"secretKey\":\"\"}', 3, ''),
(16, 'Flutterwave', 'https://excelcdn.in/smm/admin/images/payment-methods/flutterwave.png', 'Flutterwave', 'flutterwave', 1, 1000, 0, 0, 0, 'USD', '0', '{\"secretKey\":\"\"}', 3, ''),
(17, 'Stripe', 'https://excelcdn.in/smm/admin/images/payment-methods/stripe.png', 'Stripe', 'stripe', 1, 1000, 0, 0, 0, 'USD', '0', '{\"publishableKey\":\"\",\"secretKey\":\"\"}', 1, ''),
(18, 'Payeer', 'https://excelcdn.in/smm/admin/images/payment-methods/payeer.png', 'Payeer', 'payeer', 1, 1000, 0, 0, 0, 'USD', '0', '{\"shopId\":\"\",\"secretKey\":\"\"}', 1, ''),
(100, 'Manual One', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual One', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, NULL),
(101, 'Manual Two', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Two', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, NULL),
(102, 'Manual Three', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Three', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 4, NULL),
(103, 'Manual Four', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Four', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, NULL),
(104, 'Manual Five', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Five', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 18, NULL),
(105, 'Manual Six', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Six', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 19, NULL),
(106, 'Manual Seven', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Seven', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 20, NULL),
(107, 'Manual Eight', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Eight', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 21, NULL),
(108, 'Manual Nine', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Nine', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 22, NULL),
(109, 'Manual Ten', 'https://excelcdn.in/smm/admin/images/payment-methods/manual.jpg', 'Manual Ten', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manual','Automatic') NOT NULL DEFAULT 'Automatic',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refill_status`
--

CREATE TABLE `refill_status` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `refill_apiid` int(11) DEFAULT NULL,
  `order_url` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `refill_status` varchar(255) DEFAULT 'Pending',
  `order_apiid` int(11) DEFAULT 0,
  `refill_response` text DEFAULT NULL,
  `refill_where` enum('site','api') DEFAULT 'site'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL,
  `price_profit` int(11) NOT NULL,
  `service_overflow` int(11) NOT NULL DEFAULT 0,
  `service_sync` enum('0','1') NOT NULL DEFAULT '1',
  `service_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `last_avg_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` varchar(200) DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2',
  `api_sync` enum('0','1') NOT NULL DEFAULT '1',
  `api_login_credentials` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `google_verification` varchar(255) DEFAULT NULL,
  `meta_logo` varchar(255) DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT 0,
  `site_update_rates_automatically` int(11) NOT NULL DEFAULT 0,
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `child_panel_nameservers` varchar(255) NOT NULL DEFAULT '{"ns1":"ns1.scriptlux.com","ns2":"ns2.scriptlux.com"}',
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> OFF , 2 -> ON',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text DEFAULT NULL,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `fake_order_min` int(11) DEFAULT NULL,
  `fake_order_max` int(11) DEFAULT NULL,
  `panel_orders` int(11) DEFAULT NULL,
  `panel_orders_pattern` varchar(255) NOT NULL DEFAULT '{"panel_orders_prefix":"","panel_orders_suffix":""}',
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT 0,
  `summary_card_background_color` varchar(100) DEFAULT 'theme_colour',
  `google_login` varchar(100) NOT NULL DEFAULT '{"purchased":"1","status":"1"}',
  `services_average_time` tinyint(1) NOT NULL DEFAULT 1,
  `alert_adminlogin` int(11) DEFAULT 1,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `whatsapp_field` varchar(255) DEFAULT NULL,
  `telegram_field` varchar(255) DEFAULT NULL,
  `website_field` varchar(255) DEFAULT NULL,
  `neworder_display` tinyint(1) DEFAULT 1,
  `sort_by` tinyint(1) DEFAULT 1,
  `timezone` varchar(100) NOT NULL DEFAULT 'UTC',
  `two_factor_auth` tinyint(1) DEFAULT 0,
  `search_enabled` tinyint(1) DEFAULT 0,
  `ticket_replytime` int(11) DEFAULT 180,
  `ticket_form` tinyint(1) DEFAULT 1,
  `ticket_imgupload` tinyint(1) DEFAULT 1,
  `ticket_res` tinyint(1) DEFAULT 1,
  `ticket_autoclose` tinyint(1) DEFAULT 2,
  `ticket_autoclose_time` int(11) DEFAULT NULL,
  `alert_newpayment` int(11) NOT NULL DEFAULT 2,
  `whatsappbutton` tinyint(1) DEFAULT 0,
  `whatsappnumber` varchar(20) DEFAULT NULL,
  `whatsappcolour` varchar(50) DEFAULT NULL,
  `whatsappposition` enum('left','right') DEFAULT 'left',
  `telegrambutton` tinyint(1) DEFAULT 0,
  `telegramusername` varchar(50) DEFAULT NULL,
  `telegramposition` enum('left','right') DEFAULT 'left',
  `theme_bg_img` varchar(255) DEFAULT NULL,
  `alert_newpay` tinyint(1) DEFAULT 1,
  `skype_area` tinyint(1) DEFAULT 0,
  `terms_checkbox` tinyint(1) DEFAULT 0,
  `otp` tinyint(1) DEFAULT 1,
  `neworder_terms` tinyint(1) DEFAULT 1,
  `auto_refill` tinyint(1) DEFAULT 1,
  `ser_sync` tinyint(1) DEFAULT 1,
  `site_timezone` varchar(50) DEFAULT 'UTC',
  `rentalpanel_price` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `google_verification`, `meta_logo`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `child_panel_nameservers`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `panel_orders_pattern`, `downloaded_category_icons`, `summary_card_background_color`, `google_login`, `services_average_time`, `alert_adminlogin`, `google_client_id`, `google_client_secret`, `whatsapp_field`, `telegram_field`, `website_field`, `neworder_display`, `sort_by`, `timezone`, `two_factor_auth`, `search_enabled`, `ticket_replytime`, `ticket_form`, `ticket_imgupload`, `ticket_res`, `ticket_autoclose`, `ticket_autoclose_time`, `alert_newpayment`, `whatsappbutton`, `whatsappnumber`, `whatsappcolour`, `whatsappposition`, `telegrambutton`, `telegramusername`, `telegramposition`, `theme_bg_img`, `alert_newpay`, `skype_area`, `terms_checkbox`, `otp`, `neworder_terms`, `auto_refill`, `ser_sync`, `site_timezone`, `rentalpanel_price`) VALUES
(1, 'Smm Panel', 'Smm Panel', '                               ', '', '', '', '', 'Smm Panel', '', 'USD', 1, 1, '2025-04-25 03:32:02', '', 'en', 'Simplify', 'Grapes', '1', '', '', '', '', '1', '2', '1', '2', 0, 0, '', '', '', '465', 'ssl', '2', '2', '2', '2', '2', '2', 'bizimsms', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 0, 0, 0, 0, '{\"ns1.dns-parking.com\n\":\"\",\"ns2.dns-parking.com\n\":\"\"}', 6, '2', '', NULL, 0, 0, '1', '2', 2, '1', '2', '0', '1', '1', '2', '2', '1', 0, '2', '2', 0, '0', '', '{\n  \"admin_access\": {\n    \"admin_access\": {\n      \"name\": \"Admin Access\",\n      \"value\": \"admin_access\"\n    },\n    \"users\": {\n      \"name\": \"Users\",\n      \"value\": \"users\"\n    },\n    \"services\": {\n      \"name\": \"Services\",\n      \"value\": \"services\"\n    },\n    \"update-prices\": {\n      \"name\": \"Update Prices\",\n      \"value\": \"update-prices\"\n    },\n    \"bulk\": {\n      \"name\": \"Bulk Services Editor\",\n      \"value\": \"bulk\"\n    },\n    \"bulkc\": {\n      \"name\": \"Bulk Category Editor\",\n      \"value\": \"bulkc\"\n    },\n    \"synced-logs\": {\n      \"name\": \"Seller Sync Logs\",\n      \"value\": \"synced-logs\"\n    },\n    \"orders\": {\n      \"name\": \"Orders\",\n      \"value\": \"orders\"\n    },\n    \"subscriptions\": {\n      \"name\": \"Subscriptions\",\n      \"value\": \"subscriptions\"\n    },\n    \"dripfeed\": {\n      \"name\": \"Dripfeed\",\n      \"value\": \"dripfeed\"\n    },\n    \"tasks\": {\n      \"name\": \"Order Refill and Cancel Tasks\",\n      \"value\": \"tasks\"\n    },\n    \"payments\": {\n      \"name\": \"Payments\",\n      \"value\": \"payments\"\n    },\n    \"tickets\": {\n      \"name\": \"Tickets\",\n      \"value\": \"tickets\"\n    },\n    \"guard_logs\": {\n      \"name\": \"Guard Logs\",\n      \"value\": \"guard_logs\"\n    },\n    \"provider_logs\": {\n      \"name\": \"Provider Logs\",\n      \"value\": \"provider_logs\"\n    }\n  },\n  \"additionals\": {\n    \"additionals\": {\n      \"name\": \"Additionals\",\n      \"value\": \"additionals\"\n    },\n    \"referral\": {\n      \"name\": \"Affiliates\",\n      \"value\": \"referral\"\n    },\n    \"broadcast\": {\n      \"name\": \"Broadcasts\",\n      \"value\": \"broadcast\"\n    },\n    \"logs\": {\n      \"name\": \"Panel Logs\",\n      \"value\": \"logs\"\n    },\n    \"reports\": {\n      \"name\": \"Reports\",\n      \"value\": \"reports\"\n    },\n    \"videop\": {\n      \"name\": \"Promotion\",\n      \"value\": \"videop\"\n    },\n    \"coupon\": {\n      \"name\": \"Coupons\",\n      \"value\": \"coupon\"\n    },\n    \"child-panels\": {\n      \"name\": \"Child Panels\",\n      \"value\": \"child-panels\"\n    },\n    \"updates\": {\n      \"name\": \"Updates\",\n      \"value\": \"updates\"\n    }\n  },\n  \"appearance\": {\n    \"appearance\": {\n      \"name\": \"Appearance\",\n      \"value\": \"appearance\"\n    },\n    \"themes\": {\n      \"name\": \"Themes\",\n      \"value\": \"themes\"\n    },\n    \"new_year\": {\n      \"name\": \"New Year\",\n      \"value\": \"new_year\"\n    },\n    \"pages\": {\n      \"name\": \"Pages\",\n      \"value\": \"pages\"\n    },\n    \"news\": {\n      \"name\": \"Announcements\",\n      \"value\": \"news\"\n    },\n    \"meta\": {\n      \"name\": \"Meta (SEO) Settings\",\n      \"value\": \"meta\"\n    },\n    \"blog\": {\n      \"name\": \"Blogs\",\n      \"value\": \"blog\"\n    },\n    \"menu\": {\n      \"name\": \"Menu\",\n      \"value\": \"menu\"\n    },\n    \"inte\": {\n      \"name\": \"Integrations\",\n      \"value\": \"inte\"\n    },\n    \"language\": {\n      \"name\": \"Languages\",\n      \"value\": \"language\"\n    },\n    \"whatsapp-telegram\": {\n      \"name\": \"WhatsApp & Telegram\",\n      \"value\": \"whatsapp-telegram\"\n    },\n    \"files\": {\n      \"name\": \"Uploaded Images\",\n      \"value\": \"files\"\n    }\n  },\n  \"settings\": {\n    \"settings\": {\n      \"name\": \"Settings\",\n      \"value\": \"settings\"\n    },\n    \"general_settings\": {\n      \"name\": \"General Settings\",\n      \"value\": \"general_settings\"\n    },\n    \"providers\": {\n      \"name\": \"Sellers\",\n      \"value\": \"providers\"\n    },\n    \"payments_settings\": {\n      \"name\": \"Payment Methods\",\n      \"value\": \"payments_settings\"\n    },\n    \"bank_accounts\": {\n      \"name\": \"Bank Accounts\",\n      \"value\": \"bank_accounts\"\n    },\n    \"modules\": {\n      \"name\": \"Modules\",\n      \"value\": \"modules\"\n    },\n    \"subject\": {\n      \"name\": \"Support Settings\",\n      \"value\": \"subject\"\n    },\n    \"payments_bonus\": {\n      \"name\": \"Payment Bonuses\",\n      \"value\": \"payments_bonus\"\n    },\n    \"currency-manager\": {\n      \"name\": \"Site Currency Manager\",\n      \"value\": \"currency-manager\"\n    },\n    \"alert_settings\": {\n      \"name\": \"Notification Settings\",\n      \"value\": \"alert_settings\"\n    },\n    \"site_count\": {\n      \"name\": \"Fake Orders\",\n      \"value\": \"site_count\"\n    },\n    \"manager\": {\n      \"name\": \"Manager\",\n      \"value\": \"manager\"\n    },\n    \"signform\": {\n      \"name\": \"Signform Settings\",\n      \"value\": \"signform\"\n    },\n    \"ticket\": {\n      \"name\": \"Ticket Settings\",\n      \"value\": \"ticket\"\n    },\n    \"feedback\": {\n      \"name\": \"Feedback Settings\",\n      \"value\": \"feedback\"\n    }\n  }\n}', 0, 10, 12, 0, '{\"panel_orders_prefix\":\"5\",\"panel_orders_suffix\":\"10\"}', 1, 'fixed_colour', '{\"status\":\"1\"}', 1, NULL, '', '', '2', '2', '2', 2, 2, '-54000', 0, 1, 10, 1, 1, 1, 2, 1, 2, 1, '+447955604663', 'Hello! ', 'left', 1, '', 'right', NULL, NULL, 1, 1, NULL, 1, 2, 1, '7200', '10');

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_api` int(11) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text DEFAULT NULL,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text DEFAULT NULL,
  `check_refill_status` int(11) DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`) VALUES
(1, 'Simplify', 'Simplify', '', '2022-11-16 09:28:01', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2'),
(2, 'Clementine', 'pitchy', '{\"stylesheets\":[\"public/pitchy/bootstrap.css\",\"public/pitchy/black.css\",\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\",\"public/datepicker/css/bootstrap-datepicker3.min.css\"],\"scripts\":[\"https://code.jquery.com/jquery-3.3.1.min.js\",\"public/pitchy/js/script.js\",\"public/pitchy/js/snowfall.min.js\",\"public/pitchy/js/bundle.js\",\"public/pitchy/js/main.js\",\"public/ajax.js\",\"public/datepicker/js/bootstrap-datepicker.min.js\"]}', '2022-11-21 09:29:47', '', '2'),
(5, 'X Blur', 'xblur', '', '2023-11-07 09:29:47', '', '1'),
(13, 'Tajammal', 'Eternity', '', '2023-11-07 09:29:47', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2',
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes', '1'),
(7, 'Child Panel', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 8, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_constants`
--
ALTER TABLE `admin_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_report`
--
ALTER TABLE `admin_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_report`
--
ALTER TABLE `admin_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=923;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
