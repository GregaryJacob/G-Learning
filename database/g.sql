-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 01:52 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `address`, `phone`, `message`, `document`, `status`) VALUES
(1, 4, 'India', '9876543211', 'hi', 'ofcgDjF12PIMazd.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, '7832f87255', 'Film', 0, 'film', 1682373600, NULL, 'fas fa-film', '36af2eaffe46c88ee29b6e2d7a7bf166.jpg'),
(2, '5f38add8e4', 'Acting', 1, 'acting', 1682373600, NULL, NULL, NULL),
(3, '60ba9fa632', 'Music', 0, 'music', 1682373600, NULL, 'fas fa-music', '9da6a12b8d5eef47b6f0fa877212e397.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0gm7lua3r3sj6mamhj2an8rctp1sqnv5', '::1', 1682394035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343033353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('3du7r70l71j38hl44e13hr9o8skrvj9n', '::1', 1682394036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343033353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('ku4h2h0p913jo4pos1k7nsrhi3q3phga', '::1', 1682394035, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343033353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('i169hllv4s5dhnlhn9ne8d7odc8qqi3o', '::1', 1682394036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343033353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('rgom5kd22rhhsgjncdtisedlqj4ostj5', '::1', 1682394036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343033363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b),
('a3e96pcmpstklb2kp7p49q9lh4l4c809', '::1', 1682394386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343338363b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31353a2257656c636f6d6520472061646d696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('pilgg44gp64ka2p07ohost5df86l1t2r', '::1', 1682394695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339343639353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31323a224c6f676f2075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('3t4upv2qsklfk2uussr51it1u5riqmfb', '::1', 1682395165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339353136353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31323a224c6f676f2075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('rm050b2ltqqh2igj48hjfiec0khmr3mu', '::1', 1682395285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339353136353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31323a224c6f676f2075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('9nc1d7fnj0c3el9ahll18ksrphrbrgr7', '::1', 1682395651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323339353433353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a31393a2257656c636f6d6520416c697961204268617474223b757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('n4dc6kd5sts6mnqjhv3439k7stfdlj41', '::1', 1682404461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430343433393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b69735f696e7374727563746f727c733a313a2231223b757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b666c6173685f6d6573736167657c733a31393a2257656c636f6d6520416c697961204268617474223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f6c6f67696e7c733a313a2231223b),
('7rh42i58si6m0banr42mbrscpchn1nrt', '::1', 1682404869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430343836393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31353a2257656c636f6d6520472061646d696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('8a1q76tmvdd9f4pu23f5vobrnjfir10t', '::1', 1682405177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430353137373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32333a2244617461206164646564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('9qgha5tvkp8ks877u67l40n7s0500ilr', '::1', 1682405895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430353839353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2257656c636f6d6520416c697961204268617474223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('sobagg6l98a175qh5i3p7uqvm862heoq', '::1', 1682406274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430363237343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a36353a22436f757273652075706461746564207375636365737366756c6c792e20506c65617365207761697420756e74696c6c2061646d696e20617070726f766573206974223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('uct5shg76sfqsse5vvflietrssoo35im', '::1', 1682406974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430363937343b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33343a224c6573736f6e20686173206265656e206164646564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('j6s0fp7fmp2tmqdlhc81vulf30qd1ta6', '::1', 1682406605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430363630353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33343a224c6573736f6e20686173206265656e206164646564207375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226e6577223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a22416c697961204268617474223b69735f696e7374727563746f727c733a313a2231223b757365725f6c6f67696e7c733a313a2231223b),
('4mogh7j0pfah3amfjhqdkui4a8nco03d', '::1', 1682407287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430373238373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31323a224d6573736167652073656e74223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('n0drckc7rkc7lusd76km3s9nd0kl8qm5', '::1', 1682408025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430383032353b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32353a2246726f6e74656e642073657474696e67732075706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('cqcp1td92krimrktugdbt9o1bg02u61r', '::1', 1682408350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430383335303b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a31393a2257656c636f6d65204976616e61205368616a69223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a224976616e61205368616a69223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b),
('h60cfms5764sf553kmnd3sc1ul329c8i', '::1', 1682408657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430383635373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32313a2257656c636f6d652052616e626972204b61706f6f72223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31333a2252616e626972204b61706f6f72223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b),
('334r0g3e5210f1d9e9n3s1t7rr29sa4v', '::1', 1682409051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430393035313b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a32303a2255706461746564207375636365737366756c6c79223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31333a2252616e626972204b61706f6f72223b69735f696e7374727563746f727c733a313a2230223b757365725f6c6f67696e7c733a313a2231223b),
('3uju9v9gimk40pn4ctmjo381rsop4r96', '::1', 1682409359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430393335393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33333a224170706c69636174696f6e20617070726f766564207375636365737366756c6c79223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('rlhedajg2a9uagg3ofvbgrng6vtvb5e8', '::1', 1682409902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323430393930323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33333a224170706c69636174696f6e20617070726f766564207375636365737366756c6c79223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('3o39v11kejla07vuq093fsqm5j1g6rfv', '::1', 1682410232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431303233323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33333a224170706c69636174696f6e20617070726f766564207375636365737366756c6c79223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('opnajdnsga93i8pfkn6jift7k3h0b75u', '::1', 1682410377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323431303233323b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b666c6173685f6d6573736167657c733a33333a224170706c69636174696f6e20617070726f766564207375636365737366756c6c79223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964206c6f67696e2063726564656e7469616c73223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b61646d696e5f6c6f67696e7c733a313a2231223b),
('8s3d91fm3hlsqqsgp5c5gil6e7581dtg', '::1', 1682422357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323432323335373b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31353a2257656c636f6d6520472061646d696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('2ilakmfrro0ioskk65ccb485716l6i1i', '::1', 1682422679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323432323637393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31353a2257656c636f6d6520472061646d696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b),
('pgv3ahnka0bkvr2059u1rjl9ul7gkttc', '::1', 1682422700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638323432323637393b636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a22472061646d696e223b69735f696e7374727563746f727c733a313a2230223b666c6173685f6d6573736167657c733a31353a2257656c636f6d6520472061646d696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d61646d696e5f6c6f67696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcomes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `course_type`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`, `multi_instructor`, `creator`) VALUES
(1, 'Directing the Actor: A USC course with Aliya Bhatt.', 'Learn directing and acting techniques from renowned actress Aliya Bhatt in this Class.', '<p>Produced by George Lucas and Randal Kleiser, this series of lectures are excerpts from Nina Foch’s directing class conducted at the University of Southern California in 2002. The lectures, organized into sections, cover script analysis, casting, directing, and acting. Spend some time watching Nina, learn from her and implement her ideas into your own work. You’ll be amazed how far she can take you.</p><p><span xss=removed>Who can benefit from Nina Foch’s course? Directors? Absolutely. Actors? Yes. But, it’s equally valuable for writers, editors, producers, and anyone with more than a passing interest in the art and craft of filmmaking. This material can be used for an entire course, as part of a course, or a rich reference source to immerse yourself in your craft.</span><br></p>', '[\"Acting lessons for Actors and Directors. Analyze scripts and manage successful castings.\"]', 'english', 1, 2, '[1]', '[\"None\"]', 0, NULL, 0, 'beginner', '2', NULL, 'https://www.youtube.com/watch?v=BddP6PYo2gs', 1682373600, 1682373600, 'general', 1, 0, 'active', 'youtube', '', 'acting tutorial for beginers', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES
(1, 3, 1, 1682373600, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Learn as you go'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h1><span xss=\"removed\">We share knowledge with the world</span></h1><h2><b>Improving lives through learning</b></h2><h2><b><br></b></h2><p><br></p><p>Whether you want to learn or to share what you know, you’ve come to the right place. As a global destination for online learning, we connect people through knowledge.</p>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(10, 'terms_and_condition', '<h2>Terms and Condition<div><span xss=removed>These Terms of Use (\"Terms\") were last updated on March 24, 2023.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Udemy’s mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“Services”).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you publish a course on the Udemy platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of personal data of our students and instructors in our Privacy Policy. If you are using Udemy as part of your employer’s Udemy Business learning and development program, you can consult our Udemy Business Privacy Statement.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you live in the United States or Canada, by agreeing to these Terms, you agree to resolve disputes with Udemy through binding arbitration (with very limited exceptions, not in court), and you waive certain rights to participate in class actions, as detailed in the Dispute Resolution section.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Table of Contents</span></div><div><span xss=removed>1. Accounts</span></div><div><span xss=removed>2. Content Enrollment and Lifetime Access</span></div><div><span xss=removed>3. Payments, Credits, and Refunds</span></div><div><span xss=removed>4. Content and Behavior Rules</span></div><div><span xss=removed>5. Udemy’s Rights to Content You Post</span></div><div><span xss=removed>6. Using Udemy at Your Own Risk</span></div><div><span xss=removed>7. Udemy’s Rights</span></div><div><span xss=removed>8. Subscription Terms</span></div><div><span xss=removed>9. Miscellaneous Legal Terms</span></div><div><span xss=removed>10. Dispute Resolution</span></div><div><span xss=removed>11. Updating These Terms</span></div><div><span xss=removed>12. How to Contact Us</span></div><div><span xss=removed>1. Accounts</span></div><div><span xss=removed>You need an account for most activities on our platform. Keep your password somewhere safe, because you’re responsible for all activity associated with your account. If you suspect someone else is using your account, let us know by contacting our Support Team. You must have reached the age of consent for online services in your country to use Udemy.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You need an account for most activities on our platform, including to purchase and access content or to submit content for publication. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You may not share your account login credentials with anyone else. You are responsible for what happens with your account and Udemy will not intervene in disputes between students or instructors who have shared account login credentials. You must notify us immediately upon learning that someone else may be using your account without your permission (or if you suspect any other breach of security) by contacting our Support Team. We may request some information from you to confirm that you are indeed the owner of your account.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Students and instructors must be at least 18 years of age to create an account on Udemy and use the Services. If you are younger than 18 but above the required age for consent to use online services where you live (for example, 13 in the US or 16 in Ireland), you may not set up an account, but we encourage you to invite a parent or guardian to open an account and help you access content that is appropriate for you. If you are below this age of consent to use online services, you may not create a Udemy account. If we discover that you have created an account that violates these rules, we will terminate your account. Under our Instructor Terms, you may be requested to verify your identity before you are authorized to submit content for publication on Udemy.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You can terminate your account at any time by following the steps here. Check our Privacy Policy to see what happens when you terminate your account.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>2. Content Enrollment and Lifetime Access</span></div><div><span xss=removed>When you enroll in a course or other content, you get a license from us to view it via the Udemy Services and no other use. Don’t try to transfer or resell content in any way. We generally grant you a lifetime access license, except when we must disable the content because of legal or policy reasons or for enrollments via Subscription Plans.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Under our Instructor Terms, when instructors publish content on Udemy, they grant Udemy a license to offer a license to the content to students. This means that we have the right to sublicense the content to enrolled students. As a student, when you enroll in a course or other content, whether it’s free or paid content, you are getting a license from Udemy to view the content via the Udemy platform and Services, and Udemy is the licensor of record. Content is licensed, and not sold, to you. This license does not give you any right to resell the content in any manner (including by sharing account information with a purchaser or illegally downloading the content and sharing it on torrent sites).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>In legal, more complete terms, Udemy grants you (as a student) a limited, non-exclusive, non-transferable license to access and view the content for which you have paid all required fees, solely for your personal, non-commercial, educational purposes through the Services, in accordance with these Terms and any conditions or restrictions associated with the particular content or feature of our Services. All other uses are expressly prohibited. You may not reproduce, redistribute, transmit, assign, sell, broadcast, rent, share, lend, modify, adapt, edit, create derivative works of, sublicense, or otherwise transfer or use any content unless we give you explicit permission to do so in a written agreement signed by a Udemy authorized representative. This also applies to content you can access via any of our APIs.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We generally give a lifetime access license to our students when they enroll in a course or other content. However, we reserve the right to revoke any license to access and use any content at any point in time in the event where we decide or are obligated to disable access to the content due to legal or policy reasons, for example, if the course or other content you enrolled in is the object of a copyright complaint, or if we determine it violates our Trust & Safety Guidelines. This lifetime access license does not apply to enrollments via Subscription Plans or to add-on features and services associated with the course or other content you enroll in. For example, instructors may decide at any time to no longer provide teaching assistance or Q&A services in association with the content. To be clear, the lifetime access is to the course content but not to the instructor.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Instructors may not grant licenses to their content to students directly, and any such direct license shall be null and void and a violation of these Terms.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>3. Payments, Credits, and Refunds</span></div><div><span xss=removed>When you make a payment, you agree to use a valid payment method. If you aren’t happy with your content, Udemy offers a 30-day refund or credit for most content purchases.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>3.1 Pricing</span></div><div><span xss=removed>The prices of content on Udemy are determined based on the terms of the Instructor Terms and our Promotions Policy. In some instances, the price of content offered on the Udemy website may not be exactly the same as the price offered on our mobile or TV applications, due to mobile platform providers’ pricing systems and their policies around implementing sales and promotions.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We occasionally run promotions and sales for our content, during which certain content is available at discounted prices for a set period of time. The price applicable to the content will be the price at the time you complete your purchase of the content (at checkout). Any price offered for particular content may also be different when you are logged into your account from the price available to users who aren’t registered or logged in, because some of our promotions are available only to new users.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you are logged into your account, the listed currency you see is based on your location when you created your account. If you are not logged into your account, the price currency is based on the country where you are located. We do not enable users to see pricing in other currencies.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you are a student located in a country where use and sales tax, goods and services tax, or value added tax is applicable to consumer sales, we are responsible for collecting and remitting that tax to the proper tax authorities. Depending on your location, the price you see may include such taxes, or tax may be added at checkout.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>3.2 Payments</span></div><div><span xss=removed>You agree to pay the fees for content that you purchase, and you authorize us to charge your debit or credit card or process other means of payment (such as Boleto, SEPA, direct debit, or mobile wallet) for those fees. Udemy works with payment service providers to offer you the most convenient payment methods in your country and to keep your payment information secure. We may update your payment methods using information provided by our payment service providers. Check out our Privacy Policy for more details.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>When you make a purchase, you agree not to use an invalid or unauthorized payment method. If your payment method fails and you still get access to the content you are enrolling in, you agree to pay us the corresponding fees within thirty (30) days of notification from us. We reserve the right to disable access to any content for which we have not received adequate payment.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>3.3 Refunds and Refund Credits</span></div><div><span xss=removed>If the content you purchased is not what you were expecting, you can request, within 30 days of your purchase of the content, that Udemy apply a refund to your account. This refund option does not apply to Subscription Plan purchases, which are covered in Section 8.4 below. We reserve the right to apply your refund as a refund credit or a refund to your original payment method, at our discretion, depending on capabilities of our payment service providers, the platform from which you purchased your content (website, mobile or TV app), and other factors. No refund is due to you if you request it after the 30-day guarantee time limit has passed. However, if the content you previously purchased is disabled for legal or policy reasons, you are entitled to a refund beyond this 30-day limit. Udemy also reserves the right to refund students beyond the 30-day limit in cases of suspected or confirmed account fraud.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>To request a refund, follow the steps here. As detailed in the Instructor Terms, instructors agree that students have the right to receive these refunds.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If we decide to issue refund credits to your account, they will be automatically applied towards your next content purchase on our website, but can’t be used for purchases in our mobile or TV applications. Refund credits may expire if not used within the specified period and have no cash value, in each case unless otherwise required by applicable law.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>At our discretion, if we believe you are abusing our refund policy, such as if you’ve consumed a significant portion of the content that you want to refund or if you’ve previously refunded the content, we reserve the right to deny your refund, restrict you from other future refunds, ban your account, and/or restrict all future use of the Services. If we ban your account or disable your access to the content due to your violation of these Terms or our Trust & Safety Guidelines, you will not be eligible to receive a refund. Additional information on our refund policy is available here.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>3.4 Gift and Promotional Codes</span></div><div><span xss=removed>Udemy or our partners may offer gift and promotional codes to students. Certain codes may be redeemed for gift or promotional credits applied to your Udemy account, which then may be used to purchase eligible content on our platform, subject to the terms included with your codes. Other codes may be directly redeemable for specific content. Gift and promotional credits can’t be used for purchases in our mobile or TV applications.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>These codes and credits, as well as any promotional value linked to them, may expire if not used within the period specified in your Udemy account. Gift and promotional codes offered by Udemy may not be refunded for cash, unless otherwise specified in the terms included with your codes or as required by applicable law. Gift and promotional codes offered by a partner are subject to that partner’s refund policies. If you have multiple saved credit amounts, Udemy may determine which of your credits to apply to your purchase. Check out our Support Page and any terms included with your codes for more details.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>4. Content and Behavior Rules</span></div><div><span xss=removed>You can only use Udemy for lawful purposes. You’re responsible for all the content that you post on our platform. You should keep the reviews, questions, posts, courses and other content you upload in line with our Trust & Safety Guidelines and the law, and respect the intellectual property rights of others. We can ban your account for repeated or major offenses. If you think someone is infringing your copyright on our platform, let us know.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You may not access or use the Services or create an account for unlawful purposes. Your use of the Services and behavior on our platform must comply with applicable local or national laws or regulations of your country. You are solely responsible for the knowledge of and compliance with such laws and regulations that are applicable to you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you are a student, the Services enable you to ask questions to the instructors of courses or other content you are enrolled in, and to post reviews of content. For certain content, the instructor may invite you to submit content as “homework” or tests. Don’t post or submit anything that is not yours.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you are an instructor, you can submit content for publication on the platform and you can also communicate with the students who have enrolled in your courses or other content. In both cases, you must abide by the law and respect the rights of others: you cannot post any course, question, answer, review or other content that violates applicable local or national laws or regulations of your country. You are solely responsible for any courses, content, and actions you post or take via the platform and Services and their consequences. Make sure you understand all the copyright restrictions set forth in the Instructor Terms before you submit any content for publication on Udemy.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If we are put on notice that your course or content violates the law or the rights of others (for example, if it is established that it violates intellectual property or image rights of others, or is about an illegal activity), if we discover that your content or behavior violates our Trust & Safety Guidelines, or if we believe your content or behavior is unlawful, inappropriate, or objectionable (for example if you impersonate someone else), we may remove your content from our platform. Udemy complies with copyright laws. Check out our Intellectual Property Policy for more details.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Udemy has discretion in enforcing these Terms and our Trust & Safety Guidelines. We may restrict or terminate your permission to use our platform and Services or ban your account at any time, with or without notice, for any or no reason, including for any violation of these Terms, if you fail to pay any fees when due, for fraudulent chargeback requests, upon the request of law enforcement or government agencies, for extended periods of inactivity, for unexpected technical issues or problems, if we suspect that you engage in fraudulent or illegal activities, or for any other reason in our sole discretion. Upon any such termination we may delete your account and content, and we may prevent you from further access to the platforms and use of our Services. Your content may still be available on the platforms even if your account is terminated or suspended. You agree that we will have no liability to you or any third party for termination of your account, removal of your content, or blocking of your access to our platforms and services.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If a user has published content that infringes your copyright or trademark rights, please let us know. Our Instructor Terms require our instructors to follow the law and respect the intellectual property rights of others. For more details on how to file a copyright or trademark infringement claim with us, see our Intellectual Property Policy.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>5. Udemy’s Rights to Content You Post</span></div><div><span xss=removed>You retain ownership of content you post to our platform, including your courses. We’re allowed to share your content to anyone through any media, including promoting it via advertising on other websites.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>The content you post as a student or instructor (including courses) remains yours. By posting courses and other content, you allow Udemy to reuse and share it but you do not lose any ownership rights you may have over your content. If you are an instructor, be sure to understand the content licensing terms that are detailed in the Instructor Terms.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>When you post content, comments, questions, reviews, and when you submit to us ideas and suggestions for new features or improvements, you authorize Udemy to use and share this content with anyone, distribute it and promote it on any platform and in any media, and to make modifications or edits to it as we see fit.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>In legal language, by submitting or posting content on or through the platforms, you grant us a worldwide, non-exclusive, royalty-free license (with the right to sublicense) to use, copy, reproduce, process, adapt, modify, publish, transmit, display, and distribute your content (including your name and image) in any and all media or distribution methods (existing now or later developed). This includes making your content available to other companies, organizations, or individuals who partner with Udemy for the syndication, broadcast, distribution, or publication of content on other media, as well as using your content for marketing purposes. You also waive any rights of privacy, publicity, or other rights of a similar nature applicable to all these uses, to the extent permissible under applicable law. You represent and warrant that you have all the rights, power, and authority necessary to authorize us to use any content that you submit. You also agree to all such uses of your content with no compensation paid to you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>6. Using Udemy at Your Own Risk</span></div><div><span xss=removed>Anyone can use Udemy to create and publish content and instructors and we enable instructors and students to interact for teaching and learning. Like other platforms where people can post content and interact, some things can go wrong, and you use Udemy at your own risk.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Our platform model means we do not review or edit the content for legal issues, and we are not in a position to determine the legality of content. We do not exercise any editorial control over the content that is available on the platform and, as such, do not guarantee in any manner the reliability, validity, accuracy, or truthfulness of the content. If you access content, you rely on any information provided by an instructor at your own risk.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>By using the Services, you may be exposed to content that you consider offensive, indecent, or objectionable. Udemy has no responsibility to keep such content from you and no liability for your access or enrollment in any course or other content, to the extent permissible under applicable law. This also applies to any content relating to health, wellness, and physical exercise. You acknowledge the inherent risks and dangers in the strenuous nature of these types of content, and by accessing such content you choose to assume those risks voluntarily, including risk of illness, bodily injury, disability, or death. You assume full responsibility for the choices you make before, during, and after your access to the content.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>When you interact directly with a student or an instructor, you must be careful about the types of personal information that you share. While we restrict the types of information instructors may request from students, we do not control what students and instructors do with the information they obtain from other users on the platform. You should not share your email or other personal information about you for your safety.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We do not hire or employ instructors nor are we responsible or liable for any interactions involved between instructors and students. We are not liable for disputes, claims, losses, injuries, or damage of any kind that might arise out of or relate to the conduct of instructors or students.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>When you use our Services, you will find links to other websites that we don’t own or control. We are not responsible for the content or any other aspect of these third-party sites, including their collection of information about you. You should also read their terms and conditions and privacy policies.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>7. Udemy’s Rights</span></div><div><span xss=removed>We own the Udemy platform and Services, including the website, present or future apps and services, and things like our logos, API, code, and content created by our employees. You can’t tamper with those or use them without authorization.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>All right, title, and interest in and to the Udemy platform and Services, including our website, our existing or future applications, our APIs, databases, and the content our employees or partners submit or provide through our Services (but excluding content provided by instructors and students) are and will remain the exclusive property of Udemy and its licensors. Our platforms and services are protected by copyright, trademark, and other laws of both the United States and foreign countries. Nothing gives you a right to use the Udemy name or any of the Udemy trademarks, logos, domain names, and other distinctive brand features. Any feedback, comments, or suggestions you may provide regarding Udemy or the Services is entirely voluntary and we will be free to use such feedback, comments, or suggestions as we see fit and without any obligation to you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You may not do any of the following while accessing or using the Udemy platform and Services:</span></div><div><span xss=removed><br></span></div><div><span xss=removed>access, tamper with, or use non-public areas of the platform (including content storage), Udemy’s computer systems, or the technical delivery systems of Udemy’s service providers.</span></div><div><span xss=removed>disable, interfere with, or try to circumvent any of the features of the platforms related to security or probe, scan, or test the vulnerability of any of our systems.</span></div><div><span xss=removed>copy, modify, create a derivative work of, reverse engineer, reverse assemble, or otherwise attempt to discover any source code of or content on the Udemy platform or Services.</span></div><div><span xss=removed>access or search or attempt to access or search our platform by any means (automated or otherwise) other than through our currently available search functionalities that are provided via our website, mobile apps, or API (and only pursuant to those API terms and conditions). You may not scrape, spider, use a robot, or use other automated means of any kind to access the Services.</span></div><div><span xss=removed>in any way use the Services to send altered, deceptive, or false source-identifying information (such as sending email communications falsely appearing as Udemy); or interfere with, or disrupt, (or attempt to do so), the access of any user, host, or network, including, without limitation, sending a virus, overloading, flooding, spamming, or mail-bombing the platforms or services, or in any other manner interfering with or creating an undue burden on the Services.</span></div><div><span xss=removed>8. Subscription Terms</span></div><div><span xss=removed>This section covers additional terms that apply to your use of our subscription-based collections as a student (“Subscription Plans”). By using a Subscription Plan, you agree to the additional terms in this section. Note that use of Udemy Business is not subject to these Terms, but is instead governed by the agreement between Udemy and the subscribing organization.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.1 Subscription Plans</span></div><div><span xss=removed>During your subscription to a Subscription Plan, you get a limited, non-exclusive, non-transferable license from us to access and view the content included in that Subscription Plan via the Services. With the exception of the lifetime access license grant, the terms included in the “Content Enrollment and Lifetime Access” section above apply to enrollments via Subscription Plans.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Your Subscription Plan may also include access to interactive environments, such as workspaces (“Interactive Sessions”). Interactive Sessions may be provided by a third party, subject to its own agreement or terms and conditions, and subject to usage limitations outlined on our Support Page. You’re responsible for complying with the terms and conditions of any third party provider.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>The subscription that you purchase or renew determines the scope, features, and price of your access to a Subscription Plan. You may not transfer, assign, or share your subscription with anyone else.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We reserve the right to revoke any license to use the content in our Subscription Plans for legal or policy reasons at any time and at our sole discretion, such as if we no longer have the right to offer the content through a Subscription Plan. Additional information on our right to revoke is included in the “Content Enrollment and Lifetime Access” section.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.2 Account Management</span></div><div><span xss=removed>You may cancel your subscription by following the steps outlined on our Support Page. If you cancel your subscription to a Subscription Plan, your access to that Subscription Plan will automatically end on the last day of your billing period. On cancellation, you will not be entitled to receive a refund or credit of any fees already paid for your subscription, unless otherwise required by applicable law. For clarity, cancellation of a subscription does not terminate your Udemy account.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.3 Free Trials & Renewals</span></div><div><span xss=removed>Your subscription may start with a free trial. The duration of the free trial period of your subscription will be specified during sign-up. Udemy determines free trial eligibility at our sole discretion and may limit access, eligibility, or duration. We reserve the right to terminate the free trial and suspend your subscription if we determine that you aren’t eligible.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We will charge the subscription fee for your next billing cycle at the end of the free trial period. Your subscription will automatically renew according to your subscription settings (e.g., monthly or annually) unless you cancel your subscription prior to the end of the free trial period. For more information on how to view applicable fees and dates of your free trial period, visit our Support Page.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.4 Payments and Billing</span></div><div><span xss=removed>The subscription fee will be listed at the time of your purchase. You can visit our Support Page to learn more about where to find the fees and dates applicable to your subscription. We may also be required to add taxes to your subscription fee as described in the “Payments, Credits, and Refunds” section above. Payments are non-refundable and there are no refunds or credits for partially used periods, unless otherwise required by applicable law. Depending on where you are located, you may qualify for a refund. See our Refund Policy for Subscription Plans for additional information.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>To subscribe to a Subscription Plan, you must provide a payment method. By subscribing to a Subscription Plan and providing your billing information during checkout, you grant us and our payment service providers the right to process payment for the then-applicable fees via the payment method we have on record for you. At the end of each subscription term, we will automatically renew your subscription for the same length of term and process your payment method for payment of the then-applicable fees.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>In the event that we update your payment method using information provided by our payment service providers (as described in the “Payments, Credits, and Refunds” section above), you authorize us to continue to charge the then-applicable fees to your updated payment method.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If we are unable to process payment through the payment method we have on file for you, or if you file a chargeback disputing charges made to your payment method and the chargeback is granted, we may suspend or terminate your subscription.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We reserve the right to change our Subscription Plans or adjust pricing for our Services at our sole discretion. Any price changes or changes to your subscription will take effect following notice to you, except as otherwise required by applicable law.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.5 Interactive Session Restrictions</span></div><div><span xss=removed>You may not do any of the following while accessing or using the Interactive Sessions:</span></div><div><span xss=removed><br></span></div><div><span xss=removed>use the Interactive Sessions for any purpose other than to perform the activities as instructed by Udemy’s labs;</span></div><div><span xss=removed>provide web, database, or forum access, or engage in cryptocurrency mining, on or through the Interactive Sessions;</span></div><div><span xss=removed>exceed the usage limitations outlined on our Support Page;</span></div><div><span xss=removed>access or use the Interactive Sessions in any commercial production environment;</span></div><div><span xss=removed>take any action in the Interactive Sessions that results in a disruption or interference of our Services or the stability of our infrastructure; or</span></div><div><span xss=removed>use any data or information other than simulated, anonymous, non-personal, non-live data or information when accessing or using the Interactive Sessions.</span></div><div><span xss=removed>These restrictions are in addition to those listed elsewhere in these Terms, including in the “Content and Behavior Rules” and “Udemy’s Rights” sections above.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>8.6 Subscription Disclaimers</span></div><div><span xss=removed>We make no guarantees as to the availability of any specific content in any Subscription Plan or as to any minimum amount of content in any Subscription Plan. At any point in the future, we reserve the right to offer or cease to offer additional features to any Subscription Plan, or to otherwise modify or terminate a Subscription Plan at our sole discretion. We have no responsibility to preserve or store the content inputted by you in connection with your use of any Subscription Plan. These disclaimers are in addition to those listed in the “Disclaimers” section below.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9. Miscellaneous Legal Terms</span></div><div><span xss=removed>These Terms are like any other contract, and they have boring but important legal terms that protect us from the countless things that could happen and that clarify the legal relationship between us and you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.1 Binding Agreement</span></div><div><span xss=removed>You agree that by registering, accessing, or using our Services, you are agreeing to enter into a legally binding contract with Udemy. If you do not agree to these Terms, do not register, access, or otherwise use any of our Services.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you are an instructor accepting these Terms and using our Services on behalf of a company, organization, government, or other legal entity, you represent and warrant that you are authorized to do so.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Any version of these Terms in a language other than English is provided for convenience and you understand and agree that the English language will control if there is any conflict.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>These Terms (including any agreements and policies linked from these Terms) constitute the entire agreement between you and us (which include, if you are an instructor, the Instructor Terms and the Promotions Policy).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If any part of these Terms is found to be invalid or unenforceable by applicable law, then that provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of these Terms will continue in effect.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Even if we are delayed in exercising our rights or fail to exercise a right in one case, it doesn’t mean we waive our rights under these Terms, and we may decide to enforce them in the future. If we decide to waive any of our rights in a particular instance, it doesn’t mean we waive our rights generally or in the future.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>The following sections shall survive the expiration or termination of these Terms: Sections 2 (Content Enrollment and Lifetime Access), 5 (Udemy’s Rights to Content You Post), 6 (Using Udemy at Your Own Risk), 7 (Udemy’s Rights), 8.5 (Subscription Disclaimers), 9 (Miscellaneous Legal Terms), and 10 (Dispute Resolution).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.2 Disclaimers</span></div><div><span xss=removed>It may happen that our platform is down, either for planned maintenance or because something goes down with the site. It may happen that one of our instructors is making misleading statements in their content. It may also happen that we encounter security issues. These are just examples. You accept that you will not have any recourse against us in any of these types of cases where things don’t work out right. In legal, more complete language, the Services and their content are provided on an “as is” and “as available” basis. We (and our affiliates, suppliers, partners, and agents) make no representations or warranties about the suitability, reliability, availability, timeliness, security, lack of errors, or accuracy of the Services or their content, and expressly disclaim any warranties or conditions (express or implied), including implied warranties of merchantability, fitness for a particular purpose, title, and non-infringement. We (and our affiliates, suppliers, partners, and agents) make no warranty that you will obtain specific results from use of the Services. Your use of the Services (including any content) is entirely at your own risk. Some jurisdictions don’t allow the exclusion of implied warranties, so some of the above exclusions may not apply to you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We may decide to cease making available certain features of the Services at any time and for any reason. Under no circumstances will Udemy or its affiliates, suppliers, partners or agents be held liable for any damages due to such interruptions or lack of availability of such features.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>We are not responsible for delay or failure of our performance of any of the Services caused by events beyond our reasonable control, like an act of war, hostility, or sabotage; natural disaster; electrical, internet, or telecommunication outage; or government restrictions.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.3 Limitation of Liability</span></div><div><span xss=removed>There are risks inherent to using our Services, for example, if you access health and wellness content like yoga, and you injure yourself. You fully accept these risks and you agree that you will have no recourse to seek damages against even if you suffer loss or damage from using our platform and Services. In legal, more complete language, to the extent permitted by law, we (and our group companies, suppliers, partners, and agents) will not be liable for any indirect, incidental, punitive, or consequential damages (including loss of data, revenue, profits, or business opportunities, or personal injury or death), whether arising in contract, warranty, tort, product liability, or otherwise, and even if we’ve been advised of the possibility of damages in advance. Our liability (and the liability of each of our group companies, suppliers, partners, and agents) to you or any third parties under any circumstance is limited to the greater of one hundred dollars ($100) or the amount you have paid us in the twelve (12) months before the event giving rise to your claims. Some jurisdictions don’t allow the exclusion or limitation of liability for consequential or incidental damages, so some of the above may not apply to you.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.4 Indemnification</span></div><div><span xss=removed>If you behave in a way that gets us in legal trouble, we may exercise legal recourse against you. You agree to indemnify, defend (if we so request), and hold harmless Udemy, our group companies, and their officers, directors, suppliers, partners, and agents from an against any third-party claims, demands, losses, damages, or expenses (including reasonable attorney fees) arising from (a) the content you post or submit, (b) your use of the Services (c) your violation of these Terms, or (d) your violation of any rights of a third party. Your indemnification obligation will survive the termination of these Terms and your use of the Services.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.5 Governing Law and Jurisdiction</span></div><div><span xss=removed>When these Terms mention “Udemy,” they’re referring to the Udemy entity that you’re contracting with. If you’re a student, your contracting entity and governing law will generally be determined based on your location.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Except in some cases as listed below, if you’re a student located in India, you’re contracting with Udemy India LLP and these Terms are governed by the laws of India, without reference to its choice or conflicts of law principles, and you consent to the exclusive jurisdiction and venue of the courts in Delhi, India.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you’re a student located in a geographical region other than India, if you’re accessing our Services through one of our mobile applications (such as Udemy’s Android or iOS application) and payment is processed through a mobile platform provider’s payment system, or if you’re accessing our Services as an instructor, you’re contracting with Udemy, Inc. and these Terms are governed by the laws of the State of California, USA without reference to its choice or conflicts of law principles. In cases where the “Dispute Resolution” section below doesn’t apply to you, you consent to the exclusive jurisdiction and venue of federal and state courts in San Francisco, California, USA.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.6 Legal Actions and Notices</span></div><div><span xss=removed>No action, regardless of form, arising out of or relating to this Agreement may be brought by either party more than one (1) year after the cause of action has accrued, except where this limitation cannot be imposed by law.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Any notice or other communication to be given hereunder will be in writing and given by registered or certified mail return receipt requested, or email (by us to the email associated with your account or by you to notices@udemy.com).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.7 Relationship Between Us</span></div><div><span xss=removed>You and we agree that no joint venture, partnership, employment, contractor, or agency relationship exists between us.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.8 No Assignment</span></div><div><span xss=removed>You may not assign or transfer these Terms (or the rights and licenses granted under them). For example, if you registered an account as an employee of a company, your account cannot be transferred to another employee. We may assign these Terms (or the rights and licenses granted under them) to another company or person without restriction. Nothing in these Terms confers any right, benefit, or remedy on any third-party person or entity. You agree that your account is non-transferable and that all rights to your account and other rights under these Terms terminate upon your death.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>9.9 Sanctions and Export Laws</span></div><div><span xss=removed>You warrant that you (as an individual or as a representative of any entity on whose behalf you use the Services) aren’t located in, or a resident of, any country that is subject to applicable U.S. trade sanctions or embargoes (such as Cuba, Iran, North Korea, Sudan, Syria, or the Crimea region of Ukraine). You also warrant that you aren’t a person or entity who is named on any U.S. government specially designated national or denied-party list.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>If you become subject to such a restriction during the term of any agreement with Udemy, you will notify us within 24 hours, and we will have the right to terminate any further obligations to you, effective immediately and with no further liability to you (but without prejudice to your outstanding obligations to Udemy).</span></div><div><span xss=removed><br></span></div><div><span xss=removed>You may not access, use, export, re-export, divert, transfer or disclose any portion of the Services or any related technical information or materials, directly or indirectly, in violation of any United States and other applicable country export control and trade sanctions laws, rules and regulations. You agree not to upload any content or technology (including information on encryption) whose export is specifically controlled under such laws.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10. Dispute Resolution</span></div><div><span xss=removed>If there’s a dispute, our Support Team is happy to help resolve the issue. If that doesn’t work and you live in the United States or Canada, your options are to go to small claims court or bring a claim in binding arbitration; you may not bring that claim in another court or participate in a non-individual class action claim against us.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>This Dispute Resolution section applies only if you live in the United States or Canada. Most disputes can be resolved, so before bringing a formal legal case, please first try contacting our Support Team.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10.1 Small Claims</span></div><div><span xss=removed>Either of us can bring a claim in small claims court in (a) San Francisco, California, (b) the county where you live, or (c) another place we both agree on, as long as it qualifies to be brought in that court.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10.2 Going to Arbitration</span></div><div><span xss=removed>If we can’t resolve our dispute amicably, you and Udemy agree to resolve any claims related to these Terms (or our other legal terms) through final and binding arbitration, regardless of the type of claim or legal theory. If one of us brings a claim in court that should be arbitrated and the other party refuses to arbitrate it, the other party can ask a court to force us both to go to arbitration (compel arbitration). Either of us can also ask a court to halt a court proceeding while an arbitration proceeding is ongoing.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10.3 The Arbitration Process</span></div><div><span xss=removed>Any disputes that involve a claim of less than $10,000 USD must be resolved exclusively through binding non-appearance-based arbitration. A party electing arbitration must initiate proceedings by filing an arbitration demand with the American Arbitration Association (AAA). The arbitration proceedings shall be governed by the AAA Commercial Arbitration Rules, Consumer Due Process Protocol, and Supplementary Procedures for Resolution of Consumer-Related Disputes. You and we agree that the following rules will apply to the proceedings: (a) the arbitration will be conducted by telephone, online, or based solely on written submissions (at the choice of the party seeking relief); (b) the arbitration must not involve any personal appearance by the parties or witnesses (unless we and you agree otherwise); and (c) any judgment on the arbitrator’s rendered award may be entered in any court with competent jurisdiction. Disputes that involve a claim of more than $10,000 USD must be resolved per the AAA’s rules about whether the arbitration hearing has to be in-person.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10.4 No Class Actions</span></div><div><span xss=removed>We both agree that we can each only bring claims against the other on an individual basis. This means: (a) neither of us can bring a claim as a plaintiff or class member in a class action, consolidated action, or representative action; (b) an arbitrator can’t combine multiple people’s claims into a single case (or preside over any consolidated, class, or representative action); and (c) an arbitrator’s decision or award in one person’s case can only impact that user, not other users, and can’t be used to decide other users’ disputes. If a court decides that this “No class actions” clause isn’t enforceable or valid, then this “Dispute Resolution” section will be null and void, but the rest of the Terms will still apply.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>10.5 Changes</span></div><div><span xss=removed>Notwithstanding the “Updating these Terms” section below, if Udemy changes this \"Dispute Resolution\" section after the date you last indicated acceptance to these Terms, you may reject any such change by providing Udemy written notice of such rejection by mail or hand delivery to Udemy Attn: Legal, 600 Harrison Street, 3rd Floor, San Francisco, CA 94107, or by email from the email address associated with your Account to notices@udemy.com, within 30 days of the date such change became effective, as indicated by the \"last updated on\" language above. To be effective, the notice must include your full name and clearly indicate your intent to reject changes to this \"Dispute Resolution\" section. By rejecting changes, you are agreeing that you will arbitrate any dispute between you and Udemy in accordance with the provisions of this \"Dispute Resolution\" section as of the date you last indicated acceptance to these Terms.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>11. Updating These Terms</span></div><div><span xss=removed>From time to time, we may update these Terms to clarify our practices or to reflect new or different practices (such as when we add new features), and Udemy reserves the right in its sole discretion to modify and/or make changes to these Terms at any time. If we make any material change, we will notify you using prominent means, such as by email notice sent to the email address specified in your account or by posting a notice through our Services. Modifications will become effective on the day they are posted unless stated otherwise.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Your continued use of our Services after changes become effective shall mean that you accept those changes. Any revised Terms shall supersede all previous Terms.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>12. How to Contact Us</span></div><div><span xss=removed>The best way to get in touch with us is to contact our Support Team. We’d love to hear your questions, concerns, and feedback about our Services.</span></div><div><span xss=removed><br></span></div><div><span xss=removed>Thanks for teaching and learning with us!</span></div></h2>');
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2><div>Privacy Policy</div><div>This Privacy Policy was last updated on March 23, 2023.</div><div><br></div><div>Thank you for joining Udemy. We at Udemy (“Udemy”, “we”, “us”) respect your privacy and want you to understand how we collect, use, and share data about you. This Privacy Policy covers our data collection practices and describes your rights regarding your personal data.</div><div><br></div><div>Unless we link to a different policy or state otherwise, this Privacy Policy applies when you visit or use Udemy websites, mobile applications, APIs, or related services (the “Services”). It also applies to prospective customers of our business and enterprise products.</div><div><br></div><div>By using the Services, you agree to the terms of this Privacy Policy. You shouldn’t use the Services if you don’t agree with this Privacy Policy or any other agreement that governs your use of the Services.</div><div><br></div><div>Table of Contents</div><div>1. What Data We Get</div><div>2. How We Get Data About You</div><div>3. What We Use Your Data For</div><div>4. Who We Share Your Data With</div><div>5. Security</div><div>6. Your Rights</div><div>7. Jurisdiction-Specific Rules</div><div>8. Updates & Contact Info</div><div>1. What Data We Get</div><div>We collect certain data from you directly, like information you enter yourself, data about your consumption of content, and data from third-party platforms you connect with Udemy. We also collect some data automatically, like information about your device and what parts of our Services you interact with or spend time using. All data listed in this section is subject to the following processing activities: collecting, recording, structuring, storing, altering, retrieving, encrypting, pseudonymizing, erasing, combining, and transmitting.</div><div><br></div><div>1.1 Data You Provide to Us</div><div>We may collect different data from or about you depending on how you use the Services. Below are some examples to help you better understand the data we collect.</div><div><br></div><div>When you create an account and use the Services, including through a third-party platform, we collect any data you provide directly, including:</div><div><br></div><div>Category of Personal Data<span xss=removed> </span>Description<span xss=removed> </span>Legal Basis for Processing</div><div>Account Data<span xss=removed> </span>In order to use certain features (like accessing content), you need to create a user account, which requires us to collect and store your email address, password, and account settings. To create an instructor account, we collect and store your name, email address, password, and account settings. As you use certain features on the site, you may be prompted to submit additional information including occupation, government ID information, verification photo, date of birth, race/ethnicity, skill interests, and phone number. Upon account creation, we assign you a unique identifying number.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (service provisioning, identity verification, fraud prevention and security, communication)</div><div>Profile Data<span xss=removed> </span>You can also choose to provide profile information like a photo, headline, biography, language, website link, social media profiles, country, or other data. Your Profile Data will be publicly viewable by others.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (enhanced platform functionality, convey content source information)</div><div>Shared Content<span xss=removed> </span>Parts of the Services let you interact with other users or share content publicly, including by uploading courses and other educational content, posting reviews about content, asking or answering questions, sending messages to students or instructors, or posting photos or other work you upload. Such shared content may be publicly viewable by others depending on where it is posted.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (service provisioning, enhanced platform functionality)</div><div>Learning Data<span xss=removed> </span>When you access content, we collect certain data including which courses, assignments, labs, workspaces, and quizzes you’ve started and completed; content and subscription purchases and credits; subscriptions; completion certificates; your exchanges with instructors, teaching assistants, and other students; and essays, answers to questions, and other items submitted to satisfy course and related content requirements.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (service provisioning, enhanced platform functionality)</div><div>Student Payment Data<span xss=removed> </span>If you make purchases, we collect certain data about your purchase (such as your name, billing address, and ZIP code) as necessary to process your order and which may optionally be saved to process future orders. You must provide certain payment and billing data directly to our payment service providers, including your name, credit card information, billing address, and ZIP code. We may also receive limited information, like the fact that you have a new card and the last four digits of that card, from payment service providers to facilitate payments. For security, Udemy does not collect or store sensitive cardholder data, such as full credit card numbers or card authentication data.<span xss=removed> </span></div><div>Performance of contract</div><div>Legal obligation</div><div>Legitimate interests (payment facilitation, fraud prevention and security, compliance)</div><div>Instructor Payment Data<span xss=removed> </span>If you are an instructor, you can link your PayPal, Payoneer, or other payment account to the Services to receive payments. When you link a payment account, we collect and use certain information, including your payment account email address, account ID, physical address, or other data necessary for us to send payments to your account. In some instances, we may collect ACH or wire information to send payments to your account. In order to comply with applicable laws, we also work with trusted third parties who collect tax information as legally required. This tax information may include residency information, tax identification numbers, biographical information, and other personal information necessary for taxation purposes. For security, Udemy does not collect or store sensitive bank account information. The collection, use, and disclosure of your payment, billing, and taxation data is subject to the privacy policy and other terms of your payment account provider.<span xss=removed> </span></div><div>Performance of contract</div><div>Legal obligation</div><div>Legitimate interests (service provisioning, payment facilitation, fraud prevention and security, compliance)</div><div>Data About Your Accounts on Other Services<span xss=removed> </span></div><div>We may obtain certain information through your social media or other online accounts if they are connected to your Udemy account. If you log in to Udemy via Facebook or another third-party platform or service, we ask for your permission to access certain information about that other account. For example, depending on the platform or service we may collect your name, profile picture, account ID number, login email address, location, physical location of your access devices, gender, birthday, and list of friends or contacts.</div><div><br></div><div>Those platforms and services make information available to us through their APIs. The information we receive depends on what information you (via your privacy settings) or the platform or service decide to give us.</div><div><br></div><div>If you access or use our Services through a third-party platform or service, or click on any third-party links, the collection, use, and sharing of your data will also be subject to the privacy policies and other agreements of that third party.</div><div><br></div><div>Legitimate interests (identity verification, user experience improvement)</div><div>Sweepstakes, Promotions, and Surveys<span xss=removed> </span>We may invite you to complete a survey or participate in a promotion (like a contest, sweepstakes, or challenge), either through the Services or a third-party platform. If you participate, we will collect and store the data you provide as part of participating, such as your name, email address, postal address, date of birth, or phone number. That data is subject to this Privacy Policy unless otherwise stated in the official rules of the promotion or in another privacy policy. The data collected will be used to administer the promotion or survey, including for notifying winners and distributing rewards. To receive a reward, you may be required to allow us to post some of your information publicly (like on a winner’s page). Where we use a third-party platform to administer a survey or promotion, the third party’s privacy policy will apply.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (promotions administration, prize delivery, compliance)</div><div>Communications and Support<span xss=removed> </span>If you contact us for support or to report a problem or concern (regardless of whether you have created an account), we collect and store your contact information, messages, and other data about you like your name, email address, messages, location, Udemy user ID, refund transaction IDs, and any other data you provide or that we collect through automated means (which we cover below). We use this data to respond to you and research your question or concern, in accordance with this Privacy Policy.<span xss=removed> </span></div><div>Legitimate interests (customer and technical support)</div><div>The data listed above is stored by us and associated with your account.</div><div><br></div><div>1.2 Data We Collect through Automated Means</div><div>When you access the Services (including browsing content), we collect certain data by automated means, including:</div><div><br></div><div>Category of Personal Data<span xss=removed> </span>Description<span xss=removed> </span>Legal Basis for Processing</div><div>System Data<span xss=removed> </span>Technical data about your computer or device, like your IP address, device type, operating system type and version, unique device identifiers, browser, browser language, domain and other systems data, and platform types.<span xss=removed> </span></div><div>Performance of contract</div><div>Legitimate interests (service provisioning, customer and technical support, fraud prevention and security, communication, product improvement)</div><div>Usage Data<span xss=removed> </span>Usage statistics about your interactions with the Services, including content accessed, time spent on pages or the Service, pages visited, features used, your search queries, click data, date and time, referrer, and other data regarding your use of the Services.<span xss=removed> </span></div><div>Legitimate interests (service provisioning, user experience improvement, product improvement)</div><div>Approximate Geographic Data<span xss=removed> </span>An approximate geographic location, including information like country, city, and geographic coordinates, calculated based on your IP address.<span xss=removed> </span></div><div>Legitimate interests (user experience improvement, fraud prevention and security, compliance)</div><div>The data listed above is collected through the use of server log files and tracking technologies, as detailed in the “Cookies and Data Collection Tools” section below. It is stored by us and associated with your account.</div><div><br></div><div>1.3 Data From Third Parties</div><div>If you are a Udemy Business enterprise or corporate prospect, in addition to information you submit to us, we may collect certain business contact information from third-party commercial sources.</div><div><br></div><div>2. How We Get Data About You</div><div>We use tools like cookies, web beacons, and similar tracking technologies to gather the data listed above. Some of these tools offer you the ability to opt out of data collection.</div><div><br></div><div>2.1 Cookies and Data Collection Tools</div><div>We use cookies, which are small text files stored by your browser, to collect, store, and share data about your activities across websites, including on Udemy. They allow us to remember things about your visits to Udemy, like your preferred language, and to make the site easier to use. To learn more about cookies, visit https://cookiepedia.co.uk/all-about-cookies. We may also use clear pixels in emails to track deliverability and open rates.</div><div><br></div><div>Udemy and service providers acting on our behalf (like Google Analytics and third-party advertisers) use server log files and automated data collection tools like cookies, tags, scripts, customized links, device or browser fingerprints, and web beacons (together, “Data Collection Tools“) when you access and use the Services. These Data Collection Tools automatically track and collect certain System Data and Usage Data (as detailed in Section 1) when you use the Services. In some cases, we tie data gathered through those Data Collection Tools to other data that we collect as described in this Privacy Policy.</div><div><br></div><div>2.2 Why We Use Data Collection Tools</div><div>Udemy uses the following types of Data Collection Tools for the purposes described:</div><div><br></div><div>Strictly Necessary: These Data Collection Tools enable you to access the site, provide basic functionality (like logging in or accessing content), secure the site, protect against fraudulent logins, and detect and prevent abuse or unauthorized use of your account. These are required for the Services to work properly, so if you disable them, parts of the site will break or be unavailable.</div><div>Functional: These Data Collection Tools remember data about your browser and your preferences, provide additional site functionality, customize content to be more relevant to you, and remember settings affecting the appearance and behavior of the Services (like your preferred language or volume level for video playback).</div><div>Performance: These Data Collection Tools help measure and improve the Services by providing usage and performance data, visit counts, traffic sources, or where an application was downloaded from. These tools can help us test different versions of Udemy to see which features or content users prefer and determine which email messages are opened.</div><div>Advertising: These Data Collection Tools are used to deliver relevant ads (on the site and/or other sites) based on things we know about you like your Usage and System Data (as detailed in Section 1), and things that the ad service providers know about you based on their tracking data. The ads can be based on your recent activity or activity over time and across other sites and services. To help deliver tailored advertising, we may provide these service providers with a hashed, anonymized version of your email address (in a non-human-readable form) and content that you share publicly on the Services.</div><div>Social Media: These Data Collection Tools enable social media functionality, like sharing content with friends and networks. These cookies may track a user or device across other sites and build a profile of user interests for targeted advertising purposes.</div><div>You can set your web browser to alert you about attempts to place cookies on your computer, limit the types of cookies you allow, or refuse cookies altogether. If you do, you may not be able to use some or all features of the Services, and your experience may be different or less functional. To learn more about managing Data Collection Tools, refer to Section 6.1 (Your Choices About the Use of Your Data) below.</div><div><br></div><div>3. What We Use Your Data For</div><div>We use your data to do things like provide our Services, communicate with you, troubleshoot issues, secure against fraud and abuse, improve and update our Services, analyze how people use our Services, serve personalized advertising, and as required by law or necessary for safety and integrity. We retain your data for as long as it is needed to serve the purposes for which it was collected.</div><div><br></div><div>We use the data we collect through your use of the Services to:</div><div><br></div><div>Provide and administer the Services, including to facilitate participation in educational content, issue completion certificates, display customized content, and facilitate communication with other users (Account Data; Shared Content; Learning Data; System Data; Usage Data; Approximate Geographic Data);</div><div>Process payments to instructors and other third parties (Student Payment Data; Instructor Payment Data);</div><div>Process your requests and orders for educational content, products, specific services, information, or features (Account Data; Learning Data; Student Payment Data; System Data; Communications and Support);</div><div>Communicate with you about your account by (Account Data; Shared Content; Learning Data; Sweepstakes, Promotions, and Surveys; System Data; Communications and Support):</div><div>Responding to your questions and concerns;</div><div>Sending you administrative messages and information, including messages from instructors, students, and teaching assistants; notifications about changes to our Service; and updates to our agreements;</div><div>Sending you information, such as by email or text messages, about your progress in courses and related content, rewards programs, new services, new features, promotions, newsletters, and other available instructor-created content (which you can opt out of at any time);</div><div>Sending push notifications to your wireless device to provide updates and other relevant messages (which you can manage from the “options” or “settings” page of the mobile app);</div><div>Manage your account and account preferences and personalize your experience (Account Data; Learning Data; Student Payment Data; Instructor Payment Data; System Data, Usage Data, Cookie Data);</div><div>Facilitate the Services’ technical functioning, including troubleshooting and resolving issues, securing the Services, and preventing fraud and abuse (Account Data; Student Payment Data; Instructor Payment Data; Communications and Support; System Data; Approximate Geographic Location);</div><div>Verify the identity of instructors (Account Data; Instructor Payment Data);</div><div>Solicit feedback from users (Account Data; Communications and Support);</div><div>Market products, services, surveys, and promotions (Account Data; Learning Data; Sweepstakes, Promotions, and Surveys; Usage Data; Cookie Data);</div><div>Market Subscription Plans to prospective customers (Account Data; Learning Data; Cookie Data);</div><div>Learn more about you by linking your data with additional data through third-party data providers and/or analyzing the data with the help of analytics service providers (Account Data; Data About Your Accounts on Other Services; Usage Data; Cookie Data);</div><div>Identify unique users across devices (Account Data; System Data; Cookie Data);</div><div>Tailor advertisements across devices (Cookie Data);</div><div>Improve our Services and develop new products, services, and features (all data categories);</div><div>Analyze trends and traffic, track purchases, and track usage data (Account Data; Learning Data; Student Payment Data; Communications and Support; System Data; Usage Data; Approximate Geographic Data; Cookie Data);</div><div>Advertise the Services on third-party websites and applications (Account Data; Cookie Data);</div><div>As required or permitted by law (all data categories); or</div><div>As we, in our sole discretion, otherwise determine to be necessary to ensure the safety or integrity of our users, employees, third parties, the public, or our Services (all data categories).</div><div>4. Who We Share Your Data With</div><div>We share certain data about you with instructors, other students, companies performing services for us, Udemy affiliates, our business partners, analytics and data enrichment providers, your social media providers, companies helping us run promotions and surveys, and advertising companies who help us promote our Services. We may also share your data as needed for security, legal compliance, or as part of a corporate restructuring. Lastly, we can share data in other ways if it is aggregated or de-identified or if we get your consent.</div><div><br></div><div>We may share your data with third parties under the following circumstances or as otherwise described in this Privacy Policy:</div><div><br></div><div>With Your Instructors: We share data that we have about you (except your email address) with instructors or teaching assistants for educational content you access or request information about, so they can improve their content for you and other students. This data may include things like your country, browser language, operating system, device settings, the site that brought you to Udemy, and certain activities on Udemy, like enrolled courses and course review. We will not share your email address with instructors or teaching assistants. (Account Data; System Data; Usage Data; Approximate Geographic Data)</div><div>With Other Students and Instructors: Depending on your settings, your shared content and profile data may be publicly viewable, including to other students and instructors. If you ask a question to an instructor or teaching assistant, your information (including your name) may also be publicly viewable. (Account Data; Profile Data; Shared Content)</div><div>With Service Providers, Contractors, and Agents: We share your data with third-party companies who perform services on our behalf, like payment processing, fraud and abuse prevention, data analysis, marketing and advertising services (including retargeted advertising), email and hosting services, and customer services and support. These service providers may access your personal data and are required to use it solely as we direct, to provide our requested service. (All data categories)</div><div>With Udemy Affiliates: We may share your data within our corporate family of companies that are related by common ownership or control to enable or support us in providing the Services. (All data categories)</div><div>With Business Partners: We have agreements with other websites and platforms to distribute our Services and drive traffic to Udemy. Depending on your location, we may share your data with these trusted partners. (Account Data; Learning Data; Communications and Support; System Data)</div><div>With Credit-Granting Organizations for Continuing Education: If you take a course to fulfill a continuing professional education requirement, we may share that information upon request of the organization granting the continuing education credit. (Account Data; Learning Data)</div><div>With Analytics and Data Enrichment Services: As part of our use of third-party analytics tools like Google Analytics and data enrichment services like ZoomInfo, we share certain contact information or de-identified data. De-identified data means data where we’ve removed things like your name and email address and replaced it with a token ID. This allows these providers to provide analytics services or match your data with publicly-available database information (including contact and social information from other sources). We do this to communicate with you in a more effective and customized manner. (Account Data; System Data; Usage Data; Cookie Data)</div><div>To Power Social Media Features: The social media features in the Services (like the Facebook Like button) may allow the third-party social media provider to collect things like your IP address and which page of the Services you’re visiting, and to set a cookie to enable the feature. Your interactions with these features are governed by the third-party company’s privacy policy. (System Data; Usage Data; Cookie Data)</div><div>To Administer Promotions and Surveys: We may share your data as necessary to administer, market, or sponsor promotions and surveys you choose to participate in, as required by applicable law (like to provide a winners list or make required filings), or in accordance with the rules of the promotion or survey. (Account Data; Sweepstakes, Promotions, and Surveys)</div><div>For Advertising: If we decide to use an advertising-supported revenue model in the future, we may use and share certain System Data and Usage Data with third-party advertisers and networks to show general demographic and preference information among our users. We may also allow advertisers to collect System Data through Data Collection Tools (as detailed in Section 2.1), to use this data to offer you targeted ad delivery to personalize your user experience (through behavioral advertising) and to undertake web analytics. Advertisers may also share with us the data they collect about you. To learn more or opt out from participating ad networks’ behavioral advertising, see Section 6.1 (Your Choices About the Use of Your Data) below. Note that if you opt out, you’ll continue to be served generic ads. (System Data)</div><div>For Security and Legal Compliance: We may disclose your data (all data categories) to third parties if we (in our sole discretion) have a good faith belief that the disclosure is:</div><div>Requested as part of a judicial, governmental, or legal inquiry, order, or proceeding;</div><div>Reasonably necessary as part of a valid subpoena, warrant, or other legally-valid request;</div><div>Reasonably necessary to enforce our Terms of Use, Privacy Policy, and other legal agreements;</div><div>Required to detect, prevent, or address fraud, abuse, misuse, potential violations of law (or rule or regulation), or security or technical issues;</div><div>Reasonably necessary in our discretion to protect against imminent harm to the rights, property, or safety of Udemy, our users, employees, members of the public, or our Services;</div><div>We may also disclose data about you to our auditors and legal advisors in order to assess our disclosure obligations and rights under this Privacy Policy; or</div><div>Required or permitted by law.</div><div>During a Change in Control: If Udemy undergoes a business transaction like a merger, acquisition, corporate divestiture, or dissolution (including bankruptcy), or a sale of all or some of its assets, we may share, disclose, or transfer all of your data to the successor organization during such transition or in contemplation of a transition (including during due diligence). (All data categories)</div><div>After Aggregation/De-identification: We may disclose or use aggregated or de-identified data for any purpose.</div><div>With Your Permission: With your consent, we may share data to third parties outside the scope of this Privacy Policy. (All data categories)</div><div>5. Security</div><div>We use appropriate security based on the type and sensitivity of data being stored. As with any internet-enabled system, there is always a risk of unauthorized access, so it’s important to protect your password and to contact us if you suspect any unauthorized access to your account.</div><div><br></div><div>Udemy takes appropriate security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal data that we collect and store. These measures vary based on the type and sensitivity of the data. Unfortunately, however, no system can be 100% secured, so we cannot guarantee that communications between you and Udemy, the Services, or any information provided to us in connection with the data we collect through the Services will be free from unauthorized access by third parties. Your password is an important part of our security system, and it is your responsibility to protect it. You should not share your password with any third party, and if you believe your password or account has been compromised, you should change it immediately and contact our Support Team with any concerns.</div><div><br></div><div>6. Your Rights</div><div>You have certain rights around the use of your data, including the ability to opt out of promotional emails, cookies, and collection of your data by certain third parties. You can update or terminate your account from within our Services, and can also contact us for individual rights requests about your personal data. Parents who believe we’ve unintentionally collected personal data about their underage child should contact us for help deleting that information.</div><div><br></div><div>6.1 Your Choices About the Use of Your Data</div><div>You can choose not to provide certain data to us, but you may not be able to use certain features of the Services.</div><div><br></div><div>To stop receiving promotional communications from us, you can opt out by using the unsubscribe mechanism in the promotional communication you receive or by changing the email preferences in your account. Note that regardless of your email preference settings, we will send you transactional and relationship messages regarding the Services, including administrative confirmations, order confirmations, important updates about the Services, and notices about our policies.</div><div>If you’re located in the European Economic Area, you may opt out of certain Data Collection Tools by clicking the “Cookie settings“ link at the bottom of any page.</div><div>The browser or device you use may allow you to control cookies and other types of local data storage. To learn more about managing cookies, visit https://cookiepedia.co.uk/how-to-manage-cookies. Your wireless device may also allow you to control whether location or other data is collected and shared.</div><div>To get information and control cookies used for tailored advertising from participating companies, see the consumer opt-out pages for the Network Advertising Initiative and Digital Advertising Alliance, or if you’re located in the European Economic Area, visit the Your Online Choices site. If you’re located in Japan, visit the Digital Advertising Consortium. To opt out of Google’s display advertising or customize Google Display Network ads, visit the Google Ads Settings page. To opt out of Taboola’s targeted ads, see the Opt-out Link in their Cookie Policy.</div><div>To opt out of allowing Google Analytics, Mixpanel, ZoomInfo, or Clearbit to use your data for analytics or enrichment, see the Google Analytics Opt-out Browser Add-on, Mixpanel Opt-Out Cookie, ZoomInfo’s policy, and Clearbit data claiming mechanism.</div><div>Apple iOS, Android OS, and Microsoft Windows each provide their own instructions on how to control in-app tailored advertising. For other devices and operating systems, you should review your privacy settings on that platform.</div><div>If you have any questions about your data, our use of it, or your rights, contact us at privacy@udemy.com.</div><div><br></div><div>6.2 Accessing, Updating, and Deleting Your Personal Data</div><div>You can access and update your personal data that Udemy collects and maintains as follows:</div><div><br></div><div>To update data you provide directly, log into your account and update your account at any time.</div><div>To terminate your account:</div><div>If you are a student, visit your profile settings page and follow the steps detailed here.</div><div>If you are an instructor, follow the steps detailed here.</div><div>If you have any issues terminating your account, please contact our Support Team.</div><div>Please note: even after your account is terminated, some or all of your data may still be visible to others, including without limitation any data that has been (a) copied, stored, or disseminated by other users (including comments on content); (b) shared or disseminated by you or others (including in your shared content); or (c) posted to a third-party platform. Even after your account is terminated, we retain your data for as long as we have a legitimate purpose to do so (and in accordance with applicable law), including to assist with legal obligations, resolve disputes, and enforce our agreements. We may retain and disclose such data pursuant to this Privacy Policy after your account has been terminated.</div><div>To request to access, correct, or delete your personal data, please use our online form here. You can also submit these requests by emailing privacy@udemy.com or writing to us at Udemy, Attn: Privacy/Legal Team, 600 Harrison Street, 3rd floor, San Francisco CA 94107. Please allow up to 30 days for a response. For your protection, we may require that the request be sent through the email address associated with your account, and we may need to verify your identity before implementing your request. Please note that we retain certain data where we have a lawful basis to do so, including for mandatory record-keeping and to complete transactions.</div><div>6.3 Our Policy Concerning Children</div><div>We recognize the privacy interests of children and encourage parents and guardians to take an active role in their children’s online activities and interests. Individuals younger than 18 years of age, but of the required age for consent to use online services where they live (for example, 13 in the US or 16 in Ireland), may not set up an account, but may have a parent or guardian open an account and help them access appropriate content. Individuals younger than the required age for consent to use online services may not use the Services. If we learn that we’ve collected personal data from a child under those ages, we will take reasonable steps to delete it.</div><div><br></div><div>Parents who believe that Udemy may have collected personal data from a child under those ages can submit a request that it be removed to privacy@udemy.com.</div><div><br></div><div>7. Jurisdiction-Specific Rules</div><div>If you live in California, you have certain rights related to accessing and deleting your data, as well as learning who we share your data with. If you live in Australia, you have the right to make a formal complaint with the appropriate government agency. Users outside of the United States should note that we transfer data to the US and other areas outside of the European Economic Area.</div><div><br></div><div>7.1 Users in California</div><div>Users who are California residents have certain rights under the California Consumer Privacy Act, (“CCPA”). If you are an eligible California user, included in these rights are:</div><div><br></div><div>“Right to Know” — You have the right to request to know more about the categories and specific pieces of personal information that we have collected about you and access a copy of your personal information.</div><div>“Right to Correction” — You have the right to have inaccurate personal information about you corrected.</div><div>“Right to Deletion” — You have the right to request deletion of personal information that we have collected about you.</div><div>“Right to Non-Discrimination” — If you choose to exercise any of your rights under CCPA, Udemy will treat you like all other users. In other words, there is no penalty for exercising your rights under CCPA.</div><div>“Right to Opt-Out” - You have the right to opt out of the sale of your personal information.</div><div>CCPA has a specific definition of a “sale” and while Udemy does not, in the traditional sense, sell your personal information or the personal information of any of our users, we do use cookies that make non-personally identifiable information available to select third-parties. To opt out of such a “sale,” click on the “Do Not Sell My Personal Information” link at the bottom of this page.</div><div><br></div><div>To exercise any of these rights under CCPA, please email privacy@udemy.com or write to us at Udemy, Attn: Privacy/Legal Team, 600 Harrison Street, 3rd floor, San Francisco CA 94107. CCPA allows you to designate an authorized agent to make these requests on your behalf. For your protection, we may require that the request be sent through the email address associated with your account, and we may need to verify you and/or your agent’s identity before fulfilling your request.</div><div><br></div><div>Additionally, for more information about the personal information we collect and how we collect it, please see the sections above entitled “What Data We Get” and “How We Get Data About You.”</div><div><br></div><div>To learn about the business and commercial purposes for which your personal information is collected and the categories of service providers who have access to your personal information, please see the sections above entitled “What We Use Your Data For” and “Who We Share Your Data With.”</div><div><br></div><div>As a California resident, you also have the right to request certain details about what personal information we share with third parties for those third parties’ direct marketing purposes. To submit your request, send an email to privacy@udemy.com with the phrase “California Shine the Light” and include your mailing address, state of residence, and email address.</div><div><br></div><div>Since there is no widely accepted standard for the browser-initiated Do Not Track signal, we do not currently recognize or respond to Do Not Track signals.</div><div><br></div><div>7.2 Users in Nevada</div><div>Udemy does not sell its users’ personal information or personal data. Nonetheless, Nevada residents have the right to submit a request that we do not sell your covered personal information, which you can do by emailing privacy@udemy.com or writing to us at Udemy, Attn: Privacy/Legal Team, 600 Harrison Street, 3rd floor, San Francisco CA 94107.</div><div><br></div><div>7.3 Users in Australia</div><div>If you are an Australia resident and you have a complaint, you may refer it to the office of the Australian Information Commissioner (“OAIC”). You can contact OAIC by visiting www.oaic.gov.au; forwarding an email to enquiries@oaic.gov.au; telephoning 1300 363 992; or writing to OAIC at GPO Box 5218, Sydney NSW 2001. You may contact our privacy team at privacy@udemy.com to make a complaint about a breach of the Australian Privacy Principles which will be responded to within 30 days.</div><div><br></div><div>7.4 Users in the European Economic Area (“EEA”) and United Kingdom (“UK”)</div><div>If you are located in the EEA or UK, you have the right to request access to your data in a portable format and to request the rectification, erasure, restriction of processing, or objection to processing of your personal data. You also have the right to obtain a free copy of the Standard Contractual Clauses referenced in Section 7.5. You may use the information in Section 6.2 to submit your request. Additionally, if you are located in the EEA, UK, or Switzerland, you also have the right to lodge a complaint with your supervisory authority.</div><div><br></div><div>Personal data is also processed outside of the UK, Switzerland, and the EEA by our Udemy group companies, or our service providers, including to process transactions, facilitate payments, and provide support services as described in Section 4. We use the Controller-to-Processor Standard Contractual Clauses adopted by the European Commission to facilitate transfers of personal data from the EEA to third countries and have entered into data processing agreements with our service providers and Udemy group companies to restrict and regulate their processing of your data. By submitting your data or using our Services, you consent to this transfer, storage, and processing by Udemy and its processors.</div><div><br></div><div>7.5 Users Outside of the U.S.</div><div>In order to provide the Services to you, we must transfer your data to the United States and process it there. If you are using the Services from outside the United States, you consent to the transfer, storage, and processing of your data in and to the United States or other countries.</div><div><br></div><div>8. Updates & Contact Info</div><div>When we make a material change to this policy, we’ll notify users via email, in-product notice, or another mechanism required by law. Changes become effective the day they’re posted. Please contact us via email or postal mail with any questions, concerns, or disputes.</div><div><br></div><div>8.1 Modifications to This Privacy Policy</div><div>From time to time, we may update this Privacy Policy. If we make any material change to it, we will notify you via email, through a notification posted on the Services, or as required by applicable law. We will also include a summary of the key changes. Unless stated otherwise, modifications will become effective on the day they are posted.</div><div><br></div><div>As permitted by applicable law, if you continue to use the Services after the effective date of any change, then your access and/or use will be deemed an acceptance of (and agreement to follow and be bound by) the revised Privacy Policy. The revised Privacy Policy supersedes all previous Privacy Policies.</div><div><br></div><div>8.2 Interpretation</div><div>Any capitalized terms not defined in this policy are defined as specified in Udemy\'s Terms of Use. Any version of this Privacy Policy in a language other than English is provided for convenience. If there is any conflict with a non-English version, you agree that the English language version will control.</div><div><br></div><div>8.3 Questions</div><div>If you have any questions, concerns, or disputes regarding our Privacy Policy, please feel free to contact our privacy team (including our Data Protection Officer) at privacy@udemy.com. You can also send postal mail to us at Udemy, Attn: Legal, 600 Harrison Street, 3rd Floor, San Francisco, CA 94107.</div>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', 'f466e84e4d899dda09be2bf2d3d7ece3.jpg'),
(18, 'light_logo', '68d3743587f71fbaa5062152985aff40.png'),
(19, 'dark_logo', 'c43339bc7c8f5c3c3462e85d0af32942.png'),
(20, 'small_logo', 'c7b2fb1ea0fd38480989bd7119f5d225.png'),
(21, 'favicon', '2abf2b82c099047f2d089c7e7abe42b1.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'recaptcha-secretkey'),
(24, 'recaptcha_sitekey', 'recaptcha-sitekey');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bengali` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES
(1, 'manage_profile', NULL, NULL),
(3, 'dashboard', NULL, NULL),
(4, 'categories', NULL, NULL),
(5, 'courses', NULL, NULL),
(6, 'students', NULL, NULL),
(7, 'enroll_history', NULL, NULL),
(8, 'message', NULL, NULL),
(9, 'settings', NULL, NULL),
(10, 'system_settings', NULL, NULL),
(11, 'frontend_settings', NULL, NULL),
(12, 'payment_settings', NULL, NULL),
(13, 'manage_language', NULL, NULL),
(14, 'edit_profile', NULL, NULL),
(15, 'log_out', NULL, NULL),
(16, 'first_name', NULL, NULL),
(17, 'last_name', NULL, NULL),
(18, 'email', NULL, NULL),
(19, 'facebook_link', NULL, NULL),
(20, 'twitter_link', NULL, NULL),
(21, 'linkedin_link', NULL, NULL),
(22, 'a_short_title_about_yourself', NULL, NULL),
(23, 'biography', NULL, NULL),
(24, 'photo', NULL, NULL),
(25, 'select_image', NULL, NULL),
(26, 'change', NULL, NULL),
(27, 'remove', NULL, NULL),
(28, 'update_profile', NULL, NULL),
(29, 'change_password', NULL, NULL),
(30, 'current_password', NULL, NULL),
(31, 'new_password', NULL, NULL),
(32, 'confirm_new_password', NULL, NULL),
(33, 'delete', NULL, NULL),
(34, 'cancel', NULL, NULL),
(35, 'are_you_sure_to_update_this_information', NULL, NULL),
(36, 'yes', NULL, NULL),
(37, 'no', NULL, NULL),
(38, 'system settings', NULL, NULL),
(39, 'system_name', NULL, NULL),
(40, 'system_title', NULL, NULL),
(41, 'slogan', NULL, NULL),
(42, 'system_email', NULL, NULL),
(43, 'address', NULL, NULL),
(44, 'phone', NULL, NULL),
(45, 'youtube_api_key', NULL, NULL),
(46, 'get_youtube_api_key', NULL, NULL),
(47, 'vimeo_api_key', NULL, NULL),
(48, 'purchase_code', NULL, NULL),
(49, 'language', NULL, NULL),
(50, 'text-align', NULL, NULL),
(51, 'update_system_settings', NULL, NULL),
(52, 'update_product', NULL, NULL),
(53, 'file', NULL, NULL),
(54, 'install_update', NULL, NULL),
(55, 'system_logo', NULL, NULL),
(56, 'update_logo', NULL, NULL),
(57, 'get_vimeo_api_key', NULL, NULL),
(58, 'add_category', NULL, NULL),
(59, 'category_title', NULL, NULL),
(60, 'sub_categories', NULL, NULL),
(61, 'actions', NULL, NULL),
(62, 'action', NULL, NULL),
(63, 'manage_sub_categories', NULL, NULL),
(64, 'edit', NULL, NULL),
(65, 'add_course', NULL, NULL),
(66, 'select_category', NULL, NULL),
(67, 'title', NULL, NULL),
(68, 'category', NULL, NULL),
(69, '#_section', NULL, NULL),
(70, '#_lesson', NULL, NULL),
(71, '#_enrolled_user', NULL, NULL),
(72, 'view_course_details', NULL, NULL),
(73, 'manage_section', NULL, NULL),
(74, 'manage_lesson', NULL, NULL),
(75, 'student', NULL, NULL),
(76, 'add_student', NULL, NULL),
(77, 'name', NULL, NULL),
(78, 'date_added', NULL, NULL),
(79, 'enrolled_courses', NULL, NULL),
(80, 'view_profile', NULL, NULL),
(81, 'admin_dashboard', NULL, NULL),
(82, 'total_courses', NULL, NULL),
(83, 'number_of_courses', NULL, NULL),
(84, 'total_lessons', NULL, NULL),
(85, 'number_of_lessons', NULL, NULL),
(86, 'total_enrollment', NULL, NULL),
(87, 'number_of_enrollment', NULL, NULL),
(88, 'total_student', NULL, NULL),
(89, 'number_of_student', NULL, NULL),
(90, 'manage_sections', NULL, NULL),
(91, 'manage sections', NULL, NULL),
(92, 'course', NULL, NULL),
(93, 'add_section', NULL, NULL),
(94, 'lessons', NULL, NULL),
(95, 'serialize_sections', NULL, NULL),
(96, 'add_lesson', NULL, NULL),
(97, 'edit_section', NULL, NULL),
(98, 'delete_section', NULL, NULL),
(99, 'course_details', NULL, NULL),
(100, 'course details', NULL, NULL),
(101, 'details', NULL, NULL),
(102, 'instructor', NULL, NULL),
(103, 'sub_category', NULL, NULL),
(104, 'enrolled_user', NULL, NULL),
(105, 'last_modified', NULL, NULL),
(106, 'manage language', NULL, NULL),
(107, 'language_list', NULL, NULL),
(108, 'add_phrase', NULL, NULL),
(109, 'add_language', NULL, NULL),
(110, 'option', NULL, NULL),
(111, 'edit_phrase', NULL, NULL),
(112, 'delete_language', NULL, NULL),
(113, 'phrase', NULL, NULL),
(114, 'value_required', NULL, NULL),
(115, 'frontend settings', NULL, NULL),
(116, 'banner_title', NULL, NULL),
(117, 'banner_sub_title', NULL, NULL),
(118, 'about_us', NULL, NULL),
(119, 'blog', NULL, NULL),
(120, 'update_frontend_settings', NULL, NULL),
(121, 'update_banner', NULL, NULL),
(122, 'banner_image', NULL, NULL),
(123, 'update_banner_image', NULL, NULL),
(124, 'payment settings', NULL, NULL),
(125, 'paypal_settings', NULL, NULL),
(126, 'client_id', NULL, NULL),
(127, 'sandbox', NULL, NULL),
(128, 'production', NULL, NULL),
(129, 'active', NULL, NULL),
(130, 'mode', NULL, NULL),
(131, 'stripe_settings', NULL, NULL),
(132, 'testmode', NULL, NULL),
(133, 'on', NULL, NULL),
(134, 'off', NULL, NULL),
(135, 'test_secret_key', NULL, NULL),
(136, 'test_public_key', NULL, NULL),
(137, 'live_secret_key', NULL, NULL),
(138, 'live_public_key', NULL, NULL),
(139, 'save_changes', NULL, NULL),
(140, 'category_code', NULL, NULL),
(141, 'update_phrase', NULL, NULL),
(142, 'check', NULL, NULL),
(143, 'settings_updated', NULL, NULL),
(144, 'checking', NULL, NULL),
(145, 'phrase_added', NULL, NULL),
(146, 'language_added', NULL, NULL),
(147, 'language_deleted', NULL, NULL),
(148, 'add course', NULL, NULL),
(149, 'add_courses', NULL, NULL),
(150, 'add_course_form', NULL, NULL),
(151, 'basic_info', NULL, NULL),
(152, 'short_description', NULL, NULL),
(153, 'description', NULL, NULL),
(154, 'level', NULL, NULL),
(155, 'beginner', NULL, NULL),
(156, 'advanced', NULL, NULL),
(157, 'intermediate', NULL, NULL),
(158, 'language_made_in', NULL, NULL),
(159, 'is_top_course', NULL, NULL),
(160, 'outcomes', NULL, NULL),
(161, 'category_and_sub_category', NULL, NULL),
(162, 'select_a_category', NULL, NULL),
(163, 'select_a_category_first', NULL, NULL),
(164, 'requirements', NULL, NULL),
(165, 'price_and_discount', NULL, NULL),
(166, 'price', NULL, NULL),
(167, 'has_discount', NULL, NULL),
(168, 'discounted_price', NULL, NULL),
(169, 'course_thumbnail', NULL, NULL),
(170, 'note', NULL, NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL, NULL),
(172, 'course_overview_url', NULL, NULL),
(173, '0%', NULL, NULL),
(174, 'manage profile', NULL, NULL),
(175, 'edit_course', NULL, NULL),
(176, 'edit course', NULL, NULL),
(177, 'edit_courses', NULL, NULL),
(178, 'edit_course_form', NULL, NULL),
(179, 'update_course', NULL, NULL),
(180, 'course_updated', NULL, NULL),
(181, 'number_of_sections', NULL, NULL),
(182, 'number_of_enrolled_users', NULL, NULL),
(183, 'add section', NULL, NULL),
(184, 'section', NULL, NULL),
(185, 'add_section_form', NULL, NULL),
(186, 'update', NULL, NULL),
(187, 'serialize_section', NULL, NULL),
(188, 'serialize section', NULL, NULL),
(189, 'submit', NULL, NULL),
(190, 'sections_have_been_serialized', NULL, NULL),
(191, 'select_course', NULL, NULL),
(192, 'search', NULL, NULL),
(193, 'thumbnail', NULL, NULL),
(194, 'duration', NULL, NULL),
(195, 'provider', NULL, NULL),
(196, 'add lesson', NULL, NULL),
(197, 'add_lesson_form', NULL, NULL),
(198, 'video_type', NULL, NULL),
(199, 'select_a_course', NULL, NULL),
(200, 'select_a_course_first', NULL, NULL),
(201, 'video_url', NULL, NULL),
(202, 'invalid_url', NULL, NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL, NULL),
(204, 'for', NULL, NULL),
(205, 'of', NULL, NULL),
(206, 'edit_lesson', NULL, NULL),
(207, 'edit lesson', NULL, NULL),
(208, 'edit_lesson_form', NULL, NULL),
(209, 'login', NULL, NULL),
(210, 'password', NULL, NULL),
(211, 'forgot_password', NULL, NULL),
(212, 'back_to_website', NULL, NULL),
(213, 'send_mail', NULL, NULL),
(214, 'back_to_login', NULL, NULL),
(215, 'student_add', NULL, NULL),
(216, 'student add', NULL, NULL),
(217, 'add_students', NULL, NULL),
(218, 'student_add_form', NULL, NULL),
(219, 'login_credentials', NULL, NULL),
(220, 'social_information', NULL, NULL),
(221, 'facebook', NULL, NULL),
(222, 'twitter', NULL, NULL),
(223, 'linkedin', NULL, NULL),
(224, 'user_image', NULL, NULL),
(225, 'add_user', NULL, NULL),
(226, 'user_update_successfully', NULL, NULL),
(227, 'user_added_successfully', NULL, NULL),
(228, 'student_edit', NULL, NULL),
(229, 'student edit', NULL, NULL),
(230, 'edit_students', NULL, NULL),
(231, 'student_edit_form', NULL, NULL),
(232, 'update_user', NULL, NULL),
(233, 'enroll history', NULL, NULL),
(234, 'filter', NULL, NULL),
(235, 'user_name', NULL, NULL),
(236, 'enrolled_course', NULL, NULL),
(237, 'enrollment_date', NULL, NULL),
(238, 'biography2', NULL, NULL),
(239, 'home', NULL, NULL),
(240, 'search_for_courses', NULL, NULL),
(241, 'total', NULL, NULL),
(242, 'go_to_cart', NULL, NULL),
(243, 'your_cart_is_empty', NULL, NULL),
(244, 'log_in', NULL, NULL),
(245, 'sign_up', NULL, NULL),
(246, 'what_do_you_want_to_learn', NULL, NULL),
(247, 'online_courses', NULL, NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL, NULL),
(249, 'expert_instruction', NULL, NULL),
(250, 'find_the_right_course_for_you', NULL, NULL),
(251, 'lifetime_access', NULL, NULL),
(252, 'learn_on_your_schedule', NULL, NULL),
(253, 'top_courses', NULL, NULL),
(254, 'last_updater', NULL, NULL),
(255, 'hours', NULL, NULL),
(256, 'add_to_cart', NULL, NULL),
(257, 'top', NULL, NULL),
(258, 'latest_courses', NULL, NULL),
(259, 'added_to_cart', NULL, NULL),
(260, 'admin', NULL, NULL),
(261, 'log_in_to_your_udemy_account', NULL, NULL),
(262, 'by_signing_up_you_agree_to_our', NULL, NULL),
(263, 'terms_of_use', NULL, NULL),
(264, 'and', NULL, NULL),
(265, 'privacy_policy', NULL, NULL),
(266, 'do_not_have_an_account', NULL, NULL),
(267, 'sign_up_and_start_learning', NULL, NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL, NULL),
(269, 'already_have_an_account', NULL, NULL),
(270, 'checkout', NULL, NULL),
(271, 'paypal', NULL, NULL),
(272, 'stripe', NULL, NULL),
(273, 'step', NULL, NULL),
(274, 'how_would_you_rate_this_course_overall', NULL, NULL),
(275, 'write_a_public_review', NULL, NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL, NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL, NULL),
(278, 'next', NULL, NULL),
(279, 'previous', NULL, NULL),
(280, 'publish', NULL, NULL),
(281, 'search_results', NULL, NULL),
(282, 'ratings', NULL, NULL),
(283, 'search_results_for', NULL, NULL),
(284, 'category_page', NULL, NULL),
(285, 'all', NULL, NULL),
(286, 'category_list', NULL, NULL),
(287, 'by', NULL, NULL),
(288, 'go_to_wishlist', NULL, NULL),
(289, 'hi', NULL, NULL),
(290, 'my_courses', NULL, NULL),
(291, 'my_wishlist', NULL, NULL),
(292, 'my_messages', NULL, NULL),
(293, 'purchase_history', NULL, NULL),
(294, 'user_profile', NULL, NULL),
(295, 'already_purchased', NULL, NULL),
(296, 'all_courses', NULL, NULL),
(297, 'wishlists', NULL, NULL),
(298, 'search_my_courses', NULL, NULL),
(299, 'students_enrolled', NULL, NULL),
(300, 'created_by', NULL, NULL),
(301, 'last_updated', NULL, NULL),
(302, 'what_will_i_learn', NULL, NULL),
(303, 'view_more', NULL, NULL),
(304, 'other_related_courses', NULL, NULL),
(305, 'updated', NULL, NULL),
(306, 'curriculum_for_this_course', NULL, NULL),
(307, 'about_the_instructor', NULL, NULL),
(308, 'reviews', NULL, NULL),
(309, 'student_feedback', NULL, NULL),
(310, 'average_rating', NULL, NULL),
(311, 'preview_this_course', NULL, NULL),
(312, 'includes', NULL, NULL),
(313, 'on_demand_videos', NULL, NULL),
(314, 'full_lifetime_access', NULL, NULL),
(315, 'access_on_mobile_and_tv', NULL, NULL),
(316, 'course_preview', NULL, NULL),
(317, 'instructor_page', NULL, NULL),
(318, 'buy_now', NULL, NULL),
(319, 'shopping_cart', NULL, NULL),
(320, 'courses_in_cart', NULL, NULL),
(321, 'student_name', NULL, NULL),
(322, 'amount_to_pay', NULL, NULL),
(323, 'payment_successfully_done', NULL, NULL),
(324, 'filter_by', NULL, NULL),
(325, 'instructors', NULL, NULL),
(326, 'reset', NULL, NULL),
(327, 'your', NULL, NULL),
(328, 'rating', NULL, NULL),
(329, 'course_detail', NULL, NULL),
(330, 'start_lesson', NULL, NULL),
(331, 'show_full_biography', NULL, NULL),
(332, 'terms_and_condition', NULL, NULL),
(333, 'about', NULL, NULL),
(334, 'terms_&_condition', NULL, NULL),
(335, 'sub categories', NULL, NULL),
(336, 'add_sub_category', NULL, NULL),
(337, 'sub_category_title', NULL, NULL),
(338, 'add sub category', NULL, NULL),
(339, 'add_sub_category_form', NULL, NULL),
(340, 'sub_category_code', NULL, NULL),
(341, 'data_deleted', NULL, NULL),
(342, 'edit_category', NULL, NULL),
(343, 'edit category', NULL, NULL),
(344, 'edit_category_form', NULL, NULL),
(345, 'font', NULL, NULL),
(346, 'awesome class', NULL, NULL),
(347, 'update_category', NULL, NULL),
(348, 'data_updated_successfully', NULL, NULL),
(349, 'edit_sub_category', NULL, NULL),
(350, 'edit sub category', NULL, NULL),
(351, 'sub_category_edit', NULL, NULL),
(352, 'update_sub_category', NULL, NULL),
(353, 'course_added', NULL, NULL),
(354, 'user_deleted_successfully', NULL, NULL),
(355, 'private_messaging', NULL, NULL),
(356, 'private messaging', NULL, NULL),
(357, 'messages', NULL, NULL),
(358, 'select_message_to_read', NULL, NULL),
(359, 'new_message', NULL, NULL),
(360, 'email_duplication', NULL, NULL),
(361, 'your_registration_has_been_successfully_done', NULL, NULL),
(362, 'profile', NULL, NULL),
(363, 'account', NULL, NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL, NULL),
(365, 'basics', NULL, NULL),
(366, 'add_your_twitter_link', NULL, NULL),
(367, 'add_your_facebook_link', NULL, NULL),
(368, 'add_your_linkedin_link', NULL, NULL),
(369, 'credentials', NULL, NULL),
(370, 'edit_your_account_settings', NULL, NULL),
(371, 'enter_current_password', NULL, NULL),
(372, 'enter_new_password', NULL, NULL),
(373, 're-type_your_password', NULL, NULL),
(374, 'save', NULL, NULL),
(375, 'update_user_photo', NULL, NULL),
(376, 'update_your_photo', NULL, NULL),
(377, 'upload_image', NULL, NULL),
(378, 'updated_successfully', NULL, NULL),
(379, 'invalid_login_credentials', NULL, NULL),
(380, 'blank_page', NULL, NULL),
(381, 'no_section_found', NULL, NULL),
(382, 'select_a_message_thread_to_read_it_here', NULL, NULL),
(383, 'send', NULL, NULL),
(384, 'type_your_message', NULL, NULL),
(385, 'date', NULL, NULL),
(386, 'total_price', NULL, NULL),
(387, 'payment_type', NULL, NULL),
(388, 'edit section', NULL, NULL),
(389, 'edit_section_form', NULL, NULL),
(390, 'reply_message', NULL, NULL),
(391, 'reply', NULL, NULL),
(392, 'log_in_to_your_account', NULL, NULL),
(393, 'no_result_found', NULL, NULL),
(394, 'enrollment', NULL, NULL),
(395, 'enroll_a_student', NULL, NULL),
(396, 'report', NULL, NULL),
(397, 'admin_revenue', NULL, NULL),
(398, 'instructor_revenue', NULL, NULL),
(399, 'instructor_settings', NULL, NULL),
(400, 'view_frontend', NULL, NULL),
(401, 'number_of_active_courses', NULL, NULL),
(402, 'number_of_pending_courses', NULL, NULL),
(403, 'all_instructor', NULL, NULL),
(404, 'active_courses', NULL, NULL),
(405, 'pending_courses', NULL, NULL),
(406, 'no_data_found', NULL, NULL),
(407, 'view_course_on_frontend', NULL, NULL),
(408, 'mark_as_pending', NULL, NULL),
(409, 'add category', NULL, NULL),
(410, 'add_categories', NULL, NULL),
(411, 'category_add_form', NULL, NULL),
(412, 'icon_picker', NULL, NULL),
(413, 'enroll a student', NULL, NULL),
(414, 'enrollment_form', NULL, NULL),
(415, 'admin revenue', NULL, NULL),
(416, 'total_amount', NULL, NULL),
(417, 'instructor revenue', NULL, NULL),
(418, 'status', NULL, NULL),
(419, 'instructor settings', NULL, NULL),
(420, 'allow_public_instructor', NULL, NULL),
(421, 'instructor_revenue_percentage', NULL, NULL),
(422, 'admin_revenue_percentage', NULL, NULL),
(423, 'update_instructor_settings', NULL, NULL),
(424, 'payment_info', NULL, NULL),
(425, 'required_for_instructors', NULL, NULL),
(426, 'paypal_client_id', NULL, NULL),
(427, 'stripe_public_key', NULL, NULL),
(428, 'stripe_secret_key', NULL, NULL),
(429, 'mark_as_active', NULL, NULL),
(430, 'mail_subject', NULL, NULL),
(431, 'mail_body', NULL, NULL),
(432, 'paid', NULL, NULL),
(433, 'pending', NULL, NULL),
(434, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL, NULL),
(435, 'pay_with_paypal', NULL, NULL),
(436, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL, NULL),
(437, 'pay_with_stripe', NULL, NULL),
(438, 'create_course', NULL, NULL),
(439, 'payment_report', NULL, NULL),
(440, 'instructor_dashboard', NULL, NULL),
(441, 'draft', NULL, NULL),
(442, 'view_lessons', NULL, NULL),
(443, 'course_title', NULL, NULL),
(444, 'update_your_payment_settings', NULL, NULL),
(445, 'edit_course_detail', NULL, NULL),
(446, 'edit_basic_informations', NULL, NULL),
(447, 'publish_this_course', NULL, NULL),
(448, 'save_to_draft', NULL, NULL),
(449, 'update_section', NULL, NULL),
(450, 'analyzing_given_url', NULL, NULL),
(451, 'select_a_section', NULL, NULL),
(452, 'update_lesson', NULL, NULL),
(453, 'website_name', NULL, NULL),
(454, 'website_title', NULL, NULL),
(455, 'website_keywords', NULL, NULL),
(456, 'website_description', NULL, NULL),
(457, 'author', NULL, NULL),
(458, 'footer_text', NULL, NULL),
(459, 'footer_link', NULL, NULL),
(460, 'update_backend_logo', NULL, NULL),
(461, 'update_favicon', NULL, NULL),
(462, 'favicon', NULL, NULL),
(463, 'active courses', NULL, NULL),
(464, 'product_updated_successfully', NULL, NULL),
(465, 'course_overview_provider', NULL, NULL),
(466, 'youtube', NULL, NULL),
(467, 'vimeo', NULL, NULL),
(468, 'html5', NULL, NULL),
(469, 'meta_keywords', NULL, NULL),
(470, 'meta_description', NULL, NULL),
(471, 'lesson_type', NULL, NULL),
(472, 'video', NULL, NULL),
(473, 'select_type_of_lesson', NULL, NULL),
(474, 'text_file', NULL, NULL),
(475, 'pdf_file', NULL, NULL),
(476, 'document_file', NULL, NULL),
(477, 'image_file', NULL, NULL),
(478, 'lesson_provider', NULL, NULL),
(479, 'select_lesson_provider', NULL, NULL),
(480, 'analyzing_the_url', NULL, NULL),
(481, 'attachment', NULL, NULL),
(482, 'summary', NULL, NULL),
(483, 'download', NULL, NULL),
(484, 'system_settings_updated', NULL, NULL),
(485, 'course_updated_successfully', NULL, NULL),
(486, 'please_wait_untill_admin_approves_it', NULL, NULL),
(487, 'pending courses', NULL, NULL),
(488, 'course_status_updated', NULL, NULL),
(489, 'smtp_settings', NULL, NULL),
(490, 'free_course', NULL, NULL),
(491, 'free', NULL, NULL),
(492, 'get_enrolled', NULL, NULL),
(493, 'course_added_successfully', NULL, NULL),
(494, 'update_frontend_logo', NULL, NULL),
(495, 'system_currency_settings', NULL, NULL),
(496, 'select_system_currency', NULL, NULL),
(497, 'currency_position', NULL, NULL),
(498, 'left', NULL, NULL),
(499, 'right', NULL, NULL),
(500, 'left_with_a_space', NULL, NULL),
(501, 'right_with_a_space', NULL, NULL),
(502, 'paypal_currency', NULL, NULL),
(503, 'select_paypal_currency', NULL, NULL),
(504, 'stripe_currency', NULL, NULL),
(505, 'select_stripe_currency', NULL, NULL),
(506, 'heads_up', NULL, NULL),
(507, 'please_make_sure_that', NULL, NULL),
(508, 'system_currency', NULL, NULL),
(509, 'are_same', NULL, NULL),
(510, 'smtp settings', NULL, NULL),
(511, 'protocol', NULL, NULL),
(512, 'smtp_host', NULL, NULL),
(513, 'smtp_port', NULL, NULL),
(514, 'smtp_user', NULL, NULL),
(515, 'smtp_pass', NULL, NULL),
(516, 'update_smtp_settings', NULL, NULL),
(517, 'phrase_updated', NULL, NULL),
(518, 'registered_user', NULL, NULL),
(519, 'provide_your_valid_login_credentials', NULL, NULL),
(520, 'registration_form', NULL, NULL),
(521, 'provide_your_email_address_to_get_password', NULL, NULL),
(522, 'reset_password', NULL, NULL),
(523, 'want_to_go_back', NULL, NULL),
(524, 'message_sent!', NULL, NULL),
(525, 'selected_icon', NULL, NULL),
(526, 'pick_another_icon_picker', NULL, NULL),
(527, 'show_more', NULL, NULL),
(528, 'show_less', NULL, NULL),
(529, 'all_category', NULL, NULL),
(530, 'price_range', NULL, NULL),
(531, 'price_range_withing', NULL, NULL),
(532, 'all_categories', NULL, NULL),
(533, 'all_sub_category', NULL, NULL),
(534, 'number_of_results', NULL, NULL),
(535, 'showing_on_this_page', NULL, NULL),
(536, 'welcome', NULL, NULL),
(537, 'my_account', NULL, NULL),
(538, 'logout', NULL, NULL),
(539, 'visit_website', NULL, NULL),
(540, 'navigation', NULL, NULL),
(541, 'add_new_category', NULL, NULL),
(542, 'enrolment', NULL, NULL),
(543, 'enrol_history', NULL, NULL),
(544, 'enrol_a_student', NULL, NULL),
(545, 'language_settings', NULL, NULL),
(546, 'congratulations', NULL, NULL),
(547, 'oh_snap', NULL, NULL),
(548, 'close', NULL, NULL),
(549, 'parent', NULL, NULL),
(550, 'none', NULL, NULL),
(551, 'category_thumbnail', NULL, NULL),
(552, 'the_image_size_should_be', NULL, NULL),
(553, 'choose_thumbnail', NULL, NULL),
(554, 'data_added_successfully', NULL, NULL),
(555, '', NULL, NULL),
(556, 'update_category_form', NULL, NULL),
(557, 'student_list', NULL, NULL),
(558, 'choose_user_image', NULL, NULL),
(559, 'finish', NULL, NULL),
(560, 'thank_you', NULL, NULL),
(561, 'you_are_almost_there', NULL, NULL),
(562, 'you_are_just_one_click_away', NULL, NULL),
(563, 'country', NULL, NULL),
(564, 'website_settings', NULL, NULL),
(565, 'write_down_facebook_url', NULL, NULL),
(566, 'write_down_twitter_url', NULL, NULL),
(567, 'write_down_linkedin_url', NULL, NULL),
(568, 'google_link', NULL, NULL),
(569, 'write_down_google_url', NULL, NULL),
(570, 'instagram_link', NULL, NULL),
(571, 'write_down_instagram_url', NULL, NULL),
(572, 'pinterest_link', NULL, NULL),
(573, 'write_down_pinterest_url', NULL, NULL),
(574, 'update_settings', NULL, NULL),
(575, 'upload_banner_image', NULL, NULL),
(576, 'update_light_logo', NULL, NULL),
(577, 'upload_light_logo', NULL, NULL),
(578, 'update_dark_logo', NULL, NULL),
(579, 'upload_dark_logo', NULL, NULL),
(580, 'update_small_logo', NULL, NULL),
(581, 'upload_small_logo', NULL, NULL),
(582, 'upload_favicon', NULL, NULL),
(583, 'logo_updated', NULL, NULL),
(584, 'favicon_updated', NULL, NULL),
(585, 'banner_image_update', NULL, NULL),
(586, 'frontend_settings_updated', NULL, NULL),
(587, 'setup_payment_informations', NULL, NULL),
(588, 'update_system_currency', NULL, NULL),
(589, 'setup_paypal_settings', NULL, NULL),
(590, 'update_paypal_keys', NULL, NULL),
(591, 'setup_stripe_settings', NULL, NULL),
(592, 'test_mode', NULL, NULL),
(593, 'update_stripe_keys', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `summary`, `order`, `video_type_for_mobile_application`, `video_url_for_mobile_application`, `duration_for_mobile_application`) VALUES
(2, 'part 1', '00:00:14', 1, 1, 'system', 'http://localhost/GLearning/uploads/lesson_files/videos/73d2ab9319ec4407e5d2c932cc9d2d5d.mp4', 1682373600, NULL, 'video', NULL, 'file', 'test', 0, 'html5', 'http://localhost/GLearning/uploads/lesson_files/videos/73d2ab9319ec4407e5d2c932cc9d2d5d.mp4', '00:00:14'),
(3, 'part 2', '00:00:14', 1, 1, 'system', 'http://localhost/GLearning/uploads/lesson_files/videos/4275eea20efe3ca22f47bef1cb4ab533.mp4', 1682373600, 1682373600, 'video', NULL, 'file', 'test', 0, 'html5', 'http://localhost/GLearning/uploads/lesson_files/videos/4275eea20efe3ca22f47bef1cb4ab533.mp4', '00:00:14'),
(4, 'part 3', NULL, 1, 1, NULL, NULL, 1682373600, NULL, 'other', 'a95c45ee936b7802751784bbeb46c7fe.txt', 'txt', 'test data', 0, NULL, NULL, NULL),
(5, 'Part 4', NULL, 1, 1, NULL, NULL, 1682373600, NULL, 'other', '3e86f28ce30fa307c0c2a4618d06bba4.jpg', 'img', 'test', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES
(1, 'e9f248185d6185e', 'Your course has been reviewed and approved.', '1', '1682407210', NULL),
(2, 'd03e5e051923c10', 'Welcome Ivana', '1', '1682407232', NULL),
(3, 'e9f248185d6185e', 'thank you.', '2', '1682408211', NULL),
(4, 'd03e5e051923c10', 'Thank you', '3', '1682408365', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, 'e9f248185d6185e', '1', '2', NULL),
(2, 'd03e5e051923c10', '1', '3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`) VALUES
(1, 5, 3, 1, 'course', 1682373600, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(1, 'Introduction', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'G Learning'),
(3, 'system_title', 'G Learning'),
(4, 'system_email', 'g@gmail.com'),
(5, 'address', 'Idukki,Kerala, India'),
(6, 'phone', '+91 9998889990'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AY_-L6KttfRzyNieXd07urH4vLHIwpeyfj3zNN5ahTBu2A9N0OUgfjE_KB0Z6ibpbivoOH05YLniPYy1\",\"sandbox_secret_key\":\"EEmsBqTfyBPOCUcJQ4YgfqEeh2NVNTHWnf5GONSgE9yTTwv7otDbUKnqk53an2lHnK24zDZfVUcHt2B3\",\"production_client_id\":\"1234\",\"production_secret_key\":\"1234\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'G'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Nice application'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,demo,hello,How are you'),
(23, 'footer_text', '©G'),
(24, 'footer_link', 'http://g.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', ''),
(29, 'smtp_pass', ''),
(30, 'version', '5.0'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`, `is_instructor`, `image`) VALUES
(1, 'G', 'admin', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(2, 'Aliya', 'Bhatt', 'aliya@gmail.com', '35779711889ba72af6e3adbc28da378998a54c91', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '<p><span xss=removed>Alia Bhatt is</span><span xss=removed> a British actress of Indian descent who predominantly works in Hindi films.</span><span xss=removed> She has received several accolades including four Filmfare Awards. One of India\'s highest-paid actresses, she has appeared in Forbes India\'s Celebrity 100 list since 2014 and was awarded the TIME100 Impact Award in 2022.</span><br></p>', 2, 1682395580, NULL, '[{\"lesson_id\":\"1\",\"progress\":\"1\"}]', '[]', NULL, '[{\"production_client_id\":\"\",\"production_secret_key\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', NULL, 1, 1, 'e58fae245fc928f558c2423337369351'),
(3, 'Ivana', 'Shaji', 'ivana@gmail.com', 'a164db9d5bd30c07ae8dc8f2586b944f6067f0f6', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1682405177, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '155478', 1, 0, '10e5f91ebb0f84d4ba0d7a3a56216c2c'),
(4, 'Ranbir', 'Kapoor', 'ranbir@gmail.com', '467aa564ed6689febd930d538ccfe4f7a06aaa52', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1682408605, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '118470', 1, 1, 'fd3dec46e2fffd946b0f7fffca9737f7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
