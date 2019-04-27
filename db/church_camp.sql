-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2019 at 12:50 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 5.6.40-6+ubuntu16.04.1+deb.sury.org+3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `church_camp`
--

-- --------------------------------------------------------

--
-- Table structure for table `churches`
--

CREATE TABLE `churches` (
  `id` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `churches`
--

INSERT INTO `churches` (`id`, `country`, `state`, `district`, `name`, `inserted_at`) VALUES
(15, 1, 1, 8, 'Balaramapuram', '2017-12-10 08:44:02'),
(16, 1, 1, 8, 'Nedumangadu', '2017-12-10 08:54:06'),
(17, 1, 1, 8, 'Neyyatinkara', '2017-12-10 08:54:54'),
(18, 1, 1, 8, 'Parassala', '2017-12-10 08:54:54'),
(19, 1, 1, 8, 'Thiruvananthapuram', '2017-12-10 08:54:54'),
(20, 1, 1, 9, 'Kollam', '2017-12-10 08:55:35'),
(21, 1, 1, 10, 'Ayroor', '2017-12-10 08:55:57'),
(22, 1, 1, 10, 'Kozhencherry', '2017-12-10 08:56:18'),
(23, 1, 1, 11, 'Alapuzha', '2017-12-10 08:56:34'),
(24, 1, 1, 11, 'Cherthala', '2017-12-10 08:57:39'),
(25, 1, 1, 11, 'Chethy', '2017-12-10 08:57:39'),
(26, 1, 1, 11, 'Pallithode', '2017-12-10 08:57:39'),
(27, 1, 1, 11, 'Thyckal', '2017-12-10 08:57:39'),
(28, 1, 1, 11, 'Thyckattussery', '2017-12-10 08:57:39'),
(29, 1, 1, 11, 'Vettakkal', '2017-12-10 08:57:39'),
(30, 1, 1, 12, 'Changanassery', '2017-12-10 08:58:03'),
(31, 1, 1, 12, 'Chingavanam', '2017-12-10 09:01:47'),
(32, 1, 1, 12, 'Erattupetta', '2017-12-10 09:01:47'),
(33, 1, 1, 12, 'Erumely', '2017-12-10 09:01:47'),
(34, 1, 1, 12, 'Kanjazha', '2017-12-10 09:01:47'),
(35, 1, 1, 12, 'Kanjirappally', '2017-12-10 09:01:47'),
(36, 1, 1, 12, 'Kottayam', '2017-12-10 09:01:47'),
(37, 1, 1, 12, 'Mukkoottuthara', '2017-12-10 09:01:47'),
(38, 1, 1, 12, 'Pala', '2017-12-10 09:01:47'),
(39, 1, 1, 12, 'Pampady', '2017-12-10 09:01:47'),
(40, 1, 1, 12, 'Payyappady', '2017-12-10 09:01:48'),
(41, 1, 1, 12, 'Peruva', '2017-12-10 09:01:48'),
(42, 1, 1, 12, 'Punchavayal', '2017-12-10 09:01:48'),
(43, 1, 1, 12, 'Puthuppally', '2017-12-10 09:01:48'),
(44, 1, 1, 12, 'Thalayolapparambu', '2017-12-10 09:01:48'),
(45, 1, 1, 12, 'Thiruvanchoor', '2017-12-10 09:01:48'),
(46, 1, 1, 13, 'Adimaly', '2017-12-10 09:02:07'),
(47, 1, 1, 13, 'Erattayar', '2017-12-10 09:03:06'),
(48, 1, 1, 13, 'Kanjikuzhi', '2017-12-10 09:03:06'),
(49, 1, 1, 13, 'Kattappana', '2017-12-10 09:03:06'),
(50, 1, 1, 13, 'Keerithodu', '2017-12-10 09:03:06'),
(51, 1, 1, 13, 'Pannimattom', '2017-12-10 09:03:06'),
(52, 1, 1, 13, 'Thodupuzha', '2017-12-10 09:03:06'),
(53, 1, 1, 14, 'Allapara', '2017-12-10 09:03:36'),
(54, 1, 1, 14, 'Arakkunnam', '2017-12-10 09:09:09'),
(55, 1, 1, 14, 'Ayavana', '2017-12-10 09:09:09'),
(56, 1, 1, 14, 'Cheladu', '2017-12-10 09:09:09'),
(57, 1, 1, 14, 'Chottanikkara', '2017-12-10 09:09:09'),
(58, 1, 1, 14, 'Ernakulam', '2017-12-10 09:09:09'),
(59, 1, 1, 14, 'Fort Cochin', '2017-12-10 09:09:09'),
(60, 1, 1, 14, 'Kalamassery', '2017-12-10 09:09:09'),
(61, 1, 1, 14, 'Kallelimed', '2017-12-10 09:09:09'),
(62, 1, 1, 14, 'Kalloorkad', '2017-12-10 09:09:09'),
(63, 1, 1, 14, 'Kaloor', '2017-12-10 09:09:09'),
(64, 1, 1, 14, 'Kolenchery', '2017-12-10 09:09:09'),
(65, 1, 1, 14, 'Kothamangalam', '2017-12-10 09:09:09'),
(66, 1, 1, 14, 'Kunnakkal', '2017-12-10 09:09:09'),
(67, 1, 1, 14, 'Kuruppumpadi', '2017-12-10 09:09:09'),
(68, 1, 1, 14, 'Mamalakkaandam', '2017-12-10 09:09:09'),
(69, 1, 1, 14, 'Maniyanthram', '2017-12-10 09:09:09'),
(70, 1, 1, 14, 'Marady', '2017-12-10 09:09:09'),
(71, 1, 1, 14, 'Marika', '2017-12-10 09:09:09'),
(72, 1, 1, 14, 'Mathirappally', '2017-12-10 09:09:09'),
(73, 1, 1, 14, 'Muvattupuzha', '2017-12-10 09:09:09'),
(74, 1, 1, 14, 'Njarackal', '2017-12-10 09:09:09'),
(75, 1, 1, 14, 'Njarakkadu', '2017-12-10 09:09:09'),
(76, 1, 1, 14, 'Palakkuzha', '2017-12-10 09:09:09'),
(77, 1, 1, 14, 'Piravam', '2017-12-10 09:09:09'),
(78, 1, 1, 14, 'Pooyamkutty', '2017-12-10 09:09:09'),
(79, 1, 1, 14, 'Pothanicadu', '2017-12-10 09:09:09'),
(80, 1, 1, 14, 'Vadattupara', '2017-12-10 09:09:09'),
(81, 1, 1, 14, 'Vazhakulam', '2017-12-10 09:09:09'),
(82, 1, 1, 14, 'Vyttila', '2017-12-10 09:09:09'),
(83, 1, 1, 15, 'Ayode', '2017-12-10 09:09:41'),
(84, 1, 1, 15, 'Kattilapoovam', '2017-12-10 09:10:49'),
(85, 1, 1, 15, 'Koratty', '2017-12-10 09:10:49'),
(86, 1, 1, 15, 'Kunnamkulam', '2017-12-10 09:10:49'),
(87, 1, 1, 15, 'Pazhayannur', '2017-12-10 09:10:49'),
(88, 1, 1, 15, 'Poomala', '2017-12-10 09:10:49'),
(89, 1, 1, 15, 'Thrissur', '2017-12-10 09:10:49'),
(90, 1, 1, 16, 'Chemmannur', '2017-12-10 09:11:07'),
(91, 1, 1, 16, 'Elippara', '2017-12-10 09:12:24'),
(92, 1, 1, 16, 'Kalladikode', '2017-12-10 09:12:24'),
(93, 1, 1, 16, 'Kandamangalam', '2017-12-10 09:12:24'),
(94, 1, 1, 16, 'Kongad', '2017-12-10 09:12:24'),
(95, 1, 1, 16, 'Moonnekkar', '2017-12-10 09:12:24'),
(96, 1, 1, 16, 'Palakkad', '2017-12-10 09:12:24'),
(97, 1, 1, 16, 'Vadakkencherry', '2017-12-10 09:12:24'),
(98, 1, 1, 17, 'Malappuram', '2017-12-10 09:45:45'),
(99, 1, 1, 17, 'Nilambur', '2017-12-10 09:46:03'),
(100, 1, 1, 18, 'Kanjirad', '2017-12-10 09:46:37'),
(101, 1, 1, 18, 'Kodencherry', '2017-12-10 09:48:16'),
(102, 1, 1, 18, 'Kozhikode', '2017-12-10 09:48:16'),
(103, 1, 1, 18, 'NIT', '2017-12-10 09:48:16'),
(104, 1, 1, 18, 'Poozhithode', '2017-12-10 09:48:16'),
(105, 1, 1, 18, 'Puthuppady', '2017-12-10 09:48:16'),
(106, 1, 1, 18, 'Thiruvambadi', '2017-12-10 09:48:16'),
(107, 1, 1, 18, 'Thottilpalam', '2017-12-10 09:48:16'),
(108, 1, 1, 19, 'Kattimoola', '2017-12-10 09:48:39'),
(110, 1, 1, 19, 'Manathavady', '2017-12-10 09:50:05'),
(111, 1, 1, 19, 'Meenangadi', '2017-12-10 09:50:05'),
(112, 1, 1, 19, 'Payyampally', '2017-12-10 09:50:05'),
(113, 1, 1, 19, 'Puthiyadamkunnu', '2017-12-10 09:50:05'),
(114, 1, 1, 19, 'Sulthan Bathery', '2017-12-10 09:50:05'),
(115, 1, 1, 19, 'Thrikkaipetta', '2017-12-10 09:50:05'),
(116, 1, 1, 20, 'Adakkathode', '2017-12-10 09:50:28'),
(117, 1, 1, 20, 'Ambayathode', '2017-12-10 09:52:36'),
(118, 1, 1, 20, 'Angadikkadave', '2017-12-10 09:52:36'),
(119, 1, 1, 20, 'Cherupuzha', '2017-12-10 09:52:36'),
(120, 1, 1, 20, 'Kannur', '2017-12-10 09:52:36'),
(121, 1, 1, 20, 'Karuvanchal', '2017-12-10 09:52:36'),
(122, 1, 1, 20, 'Keezhpally', '2017-12-10 09:52:36'),
(123, 1, 1, 20, 'Kudiyanmala', '2017-12-10 09:52:36'),
(124, 1, 1, 20, 'Koottupuzha', '2017-12-10 09:52:36'),
(125, 1, 1, 20, 'Thalipparamba', '2017-12-10 09:52:36'),
(126, 1, 1, 14, 'Avoly', '2017-12-10 11:00:32'),
(127, 1, 1, 19, 'Pulpallly', '2017-12-10 11:00:54'),
(128, 1, 1, 8, 'Kattakada', '2017-12-10 11:02:41'),
(129, 1, 1, 21, 'Kolichal', '2017-12-23 17:11:09'),
(130, 1, 1, 21, 'Neeleswaram', '2017-12-23 17:11:32'),
(131, 1, 2, 23, 'Anna Nagar (Chennai)', '2017-12-23 17:12:02'),
(132, 1, 2, 23, 'Velachery (Chennai)', '2017-12-23 17:16:19'),
(133, 1, 2, 23, 'Chapputhodu (Cherambadi)', '2017-12-23 17:16:19'),
(134, 1, 2, 23, 'Hosur (Dinnapalli)', '2017-12-23 17:16:19'),
(135, 1, 2, 23, 'Madurai', '2017-12-23 17:16:19'),
(136, 1, 2, 23, 'Nallur (Krishnagiri)', '2017-12-23 17:16:19'),
(137, 1, 2, 23, 'Salem', '2017-12-23 17:16:19'),
(138, 1, 2, 23, 'Nagercoil', '2017-12-23 17:16:19'),
(139, 1, 2, 23, 'Vadavally (Coimbatore)', '2017-12-23 17:16:19'),
(140, 1, 2, 23, 'Walajapet (Vellore)', '2017-12-23 17:16:19'),
(141, 1, 6, NULL, 'Karaikkal', '2017-12-23 17:18:50'),
(142, 1, 4, NULL, 'Hulimavu (Banglore)', '2017-12-23 17:20:14'),
(143, 1, 4, NULL, 'Mathikkere (Banglore)', '2017-12-23 17:21:17'),
(144, 1, 4, NULL, 'Medahally (Banglore)', '2017-12-23 17:24:30'),
(145, 1, 4, NULL, 'Periyapatanam', '2017-12-23 17:24:30'),
(146, 1, 4, NULL, 'Nelliahudikkeri', '2017-12-23 17:24:30'),
(147, 1, 4, NULL, 'Siddalingapura', '2017-12-23 17:24:30'),
(148, 1, 4, NULL, 'Hosanagar', '2017-12-23 17:24:30'),
(149, 1, 4, NULL, 'Mysore', '2017-12-23 17:24:30'),
(150, 1, 7, NULL, 'Chintal', '2017-12-23 17:25:18'),
(151, 1, 7, NULL, 'Gachibowli', '2017-12-23 17:26:59'),
(152, 1, 7, NULL, 'Raparthi Nagar (Khammam)', '2017-12-23 17:26:59'),
(153, 1, 7, NULL, 'Sathuppally', '2017-12-23 17:27:00'),
(154, 1, 8, NULL, 'Guntur', '2017-12-23 17:28:12'),
(155, 1, 8, NULL, 'Eluru', '2017-12-23 17:28:46'),
(156, 10, 17, 25, 'Other', '2017-12-23 17:36:56'),
(157, 1, 1, 14, 'Peniel Bible Seminary', '2017-12-23 17:37:49'),
(158, 1, 9, 25, 'Mandur', '2017-12-23 17:38:22'),
(159, 1, 9, 25, 'Honda', '2017-12-23 17:38:56'),
(160, 1, 9, 25, 'Khandepar', '2017-12-23 17:38:56'),
(161, 1, 10, 25, 'Borivali', '2017-12-23 17:39:25'),
(162, 1, 10, 25, 'Khonpada', '2017-12-23 17:40:38'),
(163, 1, 10, 25, 'Baramati (Mumbai)', '2017-12-23 17:40:38'),
(164, 1, 10, 25, 'Mumbai East (Powai)', '2017-12-23 17:40:38'),
(165, 1, 10, 25, 'Vasai', '2017-12-23 17:40:38'),
(166, 1, 11, 25, 'Khargone', '2017-12-23 17:41:00'),
(167, 1, 11, 25, 'Morena', '2017-12-23 17:42:36'),
(168, 1, 11, 25, 'Pithampor', '2017-12-23 17:42:36'),
(169, 1, 11, 25, 'Senthwa', '2017-12-23 17:42:36'),
(170, 1, 11, 25, 'Narasingpur', '2017-12-23 17:42:36'),
(171, 1, 12, 25, 'Allahabad', '2017-12-23 17:42:53'),
(172, 1, 12, 25, 'Kanjauli', '2017-12-23 17:44:12'),
(173, 1, 12, 25, 'Monai, Auta', '2017-12-23 17:44:12'),
(174, 1, 12, 25, 'Navgaon', '2017-12-23 17:44:12'),
(175, 1, 13, 25, 'South Delhi', '2017-12-23 17:44:30'),
(176, 1, 13, 25, 'Mayur Vihar Phase - 3', '2017-12-23 17:45:04'),
(177, 1, 14, 25, 'Faribad', '2017-12-23 17:45:25'),
(178, 1, 15, 25, 'Patna', '2017-12-23 17:45:54'),
(179, 1, 15, 25, 'Hilsa', '2017-12-23 17:46:10'),
(180, 1, 16, 25, 'Arampur (Gosaba)', '2017-12-23 17:46:38'),
(181, 1, 1, 16, 'Valkulambu', '2017-12-23 19:33:31'),
(183, 1, 1, 14, 'Angamaly', '2017-12-24 12:03:44'),
(184, 1, 11, 25, 'Indore', '2017-12-24 12:49:29'),
(185, 1, 17, 25, 'Patiala', '2017-12-25 03:26:28'),
(186, 1, 1, 14, 'Nettur', '2017-12-25 03:31:46'),
(187, 1, 17, 25, 'Goa', '2017-12-25 06:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `inserted_at`) VALUES
(1, 'India', '2017-12-04 10:26:44'),
(2, 'United States', '2017-12-04 10:26:44'),
(3, 'Keniya', '2017-12-04 10:26:44'),
(4, 'Dubai', '2017-12-23 17:34:18'),
(5, 'Kuwait', '2017-12-23 17:35:07'),
(6, 'Abu Dhabi', '2017-12-23 17:35:07'),
(7, 'Sharja', '2017-12-23 17:35:07'),
(8, 'Sri Lanka', '2017-12-23 17:35:07'),
(9, 'Nepal', '2017-12-23 17:35:07'),
(10, 'Other', '2017-12-23 17:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(11) NOT NULL,
  `attendee_id` int(11) NOT NULL,
  `day1` tinyint(1) NOT NULL DEFAULT '0',
  `day2` tinyint(1) NOT NULL DEFAULT '0',
  `day3` tinyint(1) NOT NULL DEFAULT '0',
  `day4` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country`, `state`, `name`, `inserted_at`) VALUES
(8, 1, 1, 'Thiruvananthapuram', '2017-12-10 08:45:31'),
(9, 1, 1, 'Kollam', '2017-12-10 08:45:44'),
(10, 1, 1, 'Pathanamthitta', '2017-12-10 08:46:05'),
(11, 1, 1, 'Alapuzha', '2017-12-10 08:46:16'),
(12, 1, 1, 'Kottayam', '2017-12-10 08:46:26'),
(13, 1, 1, 'Idukki', '2017-12-10 08:46:39'),
(14, 1, 1, 'Ernakulam', '2017-12-10 08:46:48'),
(15, 1, 1, 'Thrissur', '2017-12-10 08:48:57'),
(16, 1, 1, 'Palakkad', '2017-12-10 08:48:57'),
(17, 1, 1, 'Malappuram', '2017-12-10 08:48:57'),
(18, 1, 1, 'Kozhikode', '2017-12-10 08:48:57'),
(19, 1, 1, 'Wayanad', '2017-12-10 08:48:58'),
(20, 1, 1, 'Kannur', '2017-12-10 08:48:58'),
(21, 1, 1, 'Kasaragod', '2017-12-10 08:48:58'),
(22, 1, 2, 'Nilgiris', '2017-12-10 08:50:32'),
(23, 1, 2, 'Tamilnadu', '2017-12-10 08:51:44'),
(24, 1, 4, 'Karnataka', '2017-12-10 08:52:02'),
(25, 10, 17, 'Other', '2017-12-23 17:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `preregistration`
--

CREATE TABLE `preregistration` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `church` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `preregistration`
--

INSERT INTO `preregistration` (`id`, `name`, `church`, `age`, `gender`) VALUES
(78, 'SUNIL V PAUL', 17, 43, 'M'),
(79, 'SUJITH P', 17, 27, 'M'),
(80, 'MANOHARAN', 17, 28, 'M'),
(81, 'ASHIK', 17, 17, 'M'),
(82, 'BINU BALAN', 17, 20, 'M'),
(83, 'EVAN EBY PAUL', 17, 13, 'M'),
(84, 'CARIS ELIZHABATH PAUL', 17, 9, 'F'),
(511, 'Sabu K. Augustine', 19, 49, 'M'),
(512, 'Ben Sam Sabu', 19, 17, 'M'),
(513, 'Benedict Sabu', 19, 13, 'M'),
(514, 'Blessy Lin Sabu', 19, 15, 'F'),
(515, 'Joel James', 19, 26, 'M'),
(516, 'Gaius Mathew Joseph', 19, 21, 'M'),
(517, 'Shintu Sebastian', 19, 23, 'M'),
(518, 'Sijo Joseph', 19, 28, 'M'),
(519, 'Cecil Francis', 19, 22, 'M'),
(520, 'Prem Prakash', 19, 41, 'M'),
(521, 'Sumithra Prem', 19, 39, 'F'),
(522, 'Adyn Prem', 19, 10, 'M'),
(523, 'Lincy Sabu', 19, 46, 'F'),
(524, 'Biju Varghese', 19, 39, 'M'),
(525, 'Neethu Biju', 19, 35, 'F'),
(526, 'Anand Paul Varghese', 19, 10, 'M'),
(527, 'Vivek John Varghese', 19, 7, 'M'),
(528, 'Betty Francis', 19, 20, 'F'),
(529, 'Salmon Francis', 19, 25, 'M'),
(530, 'CC Francis', 19, 56, 'M'),
(531, 'Raju TA', 19, 48, 'M'),
(532, 'Sherly Raju', 19, 40, 'F'),
(533, 'Juliya T Raju', 19, 17, 'F'),
(534, 'Sabu KS', 19, 34, 'M'),
(535, 'Nissy Sabu', 19, 27, 'F'),
(536, 'JIlson Mathew', 19, 38, 'M'),
(537, 'Bincy Jilson', 19, 35, 'F'),
(538, 'Aron Jilson', 19, 3, 'M'),
(539, 'Reah Jogy', 19, 19, 'F'),
(540, 'Saneesh', 19, 36, 'M'),
(541, 'Jessy Saneesh', 19, 30, 'F'),
(542, 'Joyal Saneesh', 19, 6, 'M'),
(543, 'Joshua Saneesh', 19, 3, 'M'),
(544, 'Shibin SR', 19, 12, 'M'),
(545, 'Siby  C Jose', 19, 0, 'M'),
(546, 'Gloriya Siby', 19, 0, 'F'),
(547, 'Kesiya Siby', 19, 0, 'F'),
(548, 'Tresa Mathew', 19, 22, 'F'),
(583, 'Sunil Lal', 15, 0, NULL),
(584, 'Ajil S Lal', 15, 0, NULL),
(1204, 'Stephen V A', 16, 55, 'M'),
(1205, 'Clara Stephen', 16, 54, 'F'),
(1206, 'Jenny V Stephen', 16, 23, 'F'),
(1207, 'Reni V Stephen', 16, 21, 'M'),
(1208, 'Alan V Stephen', 16, 21, 'M'),
(1209, 'Gasila C Baby', 16, 22, 'F'),
(1210, 'Chandrika Sukumaran', 16, 56, 'F'),
(1211, 'Molly Saji', 16, 37, 'F'),
(1212, 'Revathy M S', 16, 17, 'F'),
(1213, 'Renuka M S', 16, 15, 'F'),
(1214, 'Ananthu Suresh SA', 16, 18, 'M'),
(1215, 'Arya Suresh AS', 16, 13, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `church` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `age` int(11) DEFAULT NULL,
  `accommodation` tinyint(4) NOT NULL DEFAULT '1',
  `hot_water` tinyint(1) NOT NULL DEFAULT '0',
  `milk` tinyint(1) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inserted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country`, `name`, `inserted_at`) VALUES
(1, 1, 'Kerala', '2017-12-04 10:27:19'),
(2, 1, 'Tamilnadu', '2017-12-04 10:27:19'),
(3, 1, 'Andra Pradesh', '2017-12-04 10:27:19'),
(4, 1, 'Karnataka', '2017-12-04 10:27:19'),
(6, 1, 'Puducherry (Pondicherry)', '2017-12-23 17:17:10'),
(7, 1, 'Telengana', '2017-12-23 17:24:52'),
(8, 1, 'Andhara Pradesh', '2017-12-23 17:27:41'),
(9, 1, 'Goa', '2017-12-23 17:30:02'),
(10, 1, 'Maharashtra', '2017-12-23 17:34:04'),
(11, 1, 'Madhya Pradesh', '2017-12-23 17:34:04'),
(12, 1, 'Uttar Predesh', '2017-12-23 17:34:04'),
(13, 1, 'Delhi', '2017-12-23 17:34:04'),
(14, 1, 'Hariyana', '2017-12-23 17:34:04'),
(15, 1, 'Bihar', '2017-12-23 17:34:04'),
(16, 1, 'West Bengal', '2017-12-23 17:34:04'),
(17, 10, 'Other', '2017-12-23 17:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `timing`
--

CREATE TABLE `timing` (
  `id` int(11) NOT NULL,
  `date_id` int(11) DEFAULT NULL,
  `day` tinyint(1) NOT NULL,
  `breakfast` tinyint(1) NOT NULL DEFAULT '0',
  `lunch` tinyint(1) NOT NULL DEFAULT '0',
  `tea` tinyint(1) NOT NULL DEFAULT '0',
  `supper` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `is_admin`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-11-27 12:03:15', 1),
(2, 'joel', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-05 21:00:51', 0),
(3, 'gaius', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:20:45', 0),
(4, 'prem', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:21:10', 0),
(5, 'shintu', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:21:25', 0),
(6, 'reni', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:25:00', 0),
(7, 'abin', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:29:14', 0),
(8, 'cecil', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-10 09:29:23', 0),
(9, 'joel', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-24 09:50:03', 0),
(10, 'praise', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-24 09:50:43', 0),
(11, 'jonathan', 'cc03e747a6afbbcbf8be7668acfebee5', '2017-12-24 09:52:03', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `churches`
--
ALTER TABLE `churches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country_id` (`country`),
  ADD KEY `fk_state_id` (`state`),
  ADD KEY `fk_district_id` (`district`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dates_user_id` (`attendee_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dist_country_id` (`country`),
  ADD KEY `fk_dist_state_id` (`state`);

--
-- Indexes for table `preregistration`
--
ALTER TABLE `preregistration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reg_church_id` (`church`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_state_country_id` (`country`);

--
-- Indexes for table `timing`
--
ALTER TABLE `timing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tim_date_id` (`date_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `churches`
--
ALTER TABLE `churches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2630;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `preregistration`
--
ALTER TABLE `preregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1364;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3065;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `timing`
--
ALTER TABLE `timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `churches`
--
ALTER TABLE `churches`
  ADD CONSTRAINT `fk_country_id` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_district_id` FOREIGN KEY (`district`) REFERENCES `districts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_state_id` FOREIGN KEY (`state`) REFERENCES `states` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `dates`
--
ALTER TABLE `dates`
  ADD CONSTRAINT `fk_dates_user_id` FOREIGN KEY (`attendee_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `fk_dist_country_id` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_dist_state_id` FOREIGN KEY (`state`) REFERENCES `states` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `fk_reg_church_id` FOREIGN KEY (`church`) REFERENCES `churches` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `fk_state_country_id` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `timing`
--
ALTER TABLE `timing`
  ADD CONSTRAINT `fk_tim_date_id` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
