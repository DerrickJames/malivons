-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2014 at 10:35 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `malivons`
--

-- --------------------------------------------------------

--
-- Table structure for table `bf_activities`
--

CREATE TABLE IF NOT EXISTS `bf_activities` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `bf_activities`
--

INSERT INTO `bf_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(1, 1, 'logged in from: ::1', 'users', '2014-07-24 10:15:16', 0),
(2, 1, 'logged in from: ::1', 'users', '2014-07-24 10:42:42', 0),
(3, 1, 'logged in from: ::1', 'users', '2014-07-24 10:49:12', 0),
(4, 1, 'logged in from: ::1', 'users', '2014-07-24 10:53:23', 0),
(5, 1, 'logged in from: ::1', 'users', '2014-07-24 10:54:50', 0),
(6, 1, 'App settings saved from: ::1', 'core', '2014-07-24 10:55:14', 0),
(7, 1, 'App settings saved from: ::1', 'core', '2014-07-24 10:55:38', 0),
(8, 1, 'App settings saved from: ::1', 'core', '2014-07-24 10:55:47', 0),
(9, 1, 'logged in from: ::1', 'users', '2014-07-24 11:54:46', 0),
(10, 1, 'Migrate Type: store_ to Version: 1 from: ::1', 'migrations', '2014-07-24 11:58:34', 0),
(11, 1, 'Migrate module: store Version: 1 from: ::1', 'migrations', '2014-07-24 11:58:34', 0),
(12, 1, 'Migrate Type: store_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-24 12:26:20', 0),
(13, 1, 'Migrate module: store Version: 0 from: ::1', 'migrations', '2014-07-24 12:26:20', 0),
(14, 1, 'Migrate Type: store_ to Version: 1 from: ::1', 'migrations', '2014-07-24 12:27:01', 0),
(15, 1, 'Migrate module: store Version: 1 from: ::1', 'migrations', '2014-07-24 12:27:01', 0),
(16, 1, 'logged in from: ::1', 'users', '2014-07-24 13:16:00', 0),
(17, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:17:38', 0),
(18, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:17:47', 0),
(19, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:17:50', 0),
(20, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:18:34', 0),
(21, 1, 'Migrate Type: store_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-24 13:23:20', 0),
(22, 1, 'Migrate module: store Version: 0 from: ::1', 'migrations', '2014-07-24 13:23:20', 0),
(23, 1, 'Migrate Type: store_ to Version: 1 from: ::1', 'migrations', '2014-07-24 13:23:30', 0),
(24, 1, 'Migrate module: store Version: 1 from: ::1', 'migrations', '2014-07-24 13:23:30', 0),
(25, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:23:40', 0),
(26, 1, 'Recorded a new asset : Name -Staff Bus', 'store', '2014-07-24 13:43:52', 0),
(27, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:43:52', 0),
(28, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:44:23', 0),
(29, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:46:02', 0),
(30, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:47:02', 0),
(31, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:47:50', 0),
(32, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:49:08', 0),
(33, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:49:54', 0),
(34, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 13:50:13', 0),
(35, 1, 'Recorded a new asset : Name -Generator', 'store', '2014-07-24 14:10:29', 0),
(36, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:10:29', 0),
(37, 1, 'Attempt to access a restricted area!', 'logbook', '2014-07-24 14:12:52', 0),
(38, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:13:51', 0),
(39, 1, 'Attempt to access a restricted area!', 'logbook', '2014-07-24 14:14:13', 0),
(40, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:15:16', 0),
(41, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:15:19', 0),
(42, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:22:02', 0),
(43, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:25:49', 0),
(44, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:25:52', 0),
(45, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:26:53', 0),
(46, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:28:41', 0),
(47, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:31:27', 0),
(48, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:33:44', 0),
(49, 1, 'Updated an asset : Name - Generator', 'store', '2014-07-24 14:34:20', 0),
(50, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:34:20', 0),
(51, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:35:32', 0),
(52, 1, 'Updated an asset : Name - Generator', 'store', '2014-07-24 14:35:47', 0),
(53, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:35:47', 0),
(54, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:36:59', 0),
(55, 1, 'Updated an asset : Name - Generator', 'store', '2014-07-24 14:38:02', 0),
(56, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:38:02', 0),
(57, 1, 'logged in from: ::1', 'users', '2014-07-24 14:44:38', 0),
(58, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:44:42', 0),
(59, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 14:45:22', 0),
(60, 1, 'logged in from: ::1', 'users', '2014-07-24 15:03:00', 0),
(61, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:03:07', 0),
(62, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:03:43', 0),
(63, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:22:18', 0),
(64, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:22:25', 0),
(65, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:26:16', 0),
(66, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:26:24', 0),
(67, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:28:23', 0),
(68, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:29:40', 0),
(69, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:34:18', 0),
(70, 1, 'Deleted an asset : Name -Staff Bus', 'store', '2014-07-24 15:34:21', 0),
(71, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:34:21', 0),
(72, 1, 'Recorded a new asset : Name -Staff Bus', 'store', '2014-07-24 15:34:52', 0),
(73, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:34:52', 0),
(74, 1, 'Deleted an asset : Name -Generator', 'store', '2014-07-24 15:34:55', 0),
(75, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:34:55', 0),
(76, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:35:08', 0),
(77, 1, 'Recorded a new asset : Name -Generator', 'store', '2014-07-24 15:35:30', 0),
(78, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:35:31', 0),
(79, 1, 'Deleted an asset : Name -Staff Bus', 'store', '2014-07-24 15:35:37', 0),
(80, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:35:37', 0),
(81, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:39:12', 0),
(82, 1, 'Recorded a new asset : Name -Matatu', 'store', '2014-07-24 15:39:37', 0),
(83, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:39:37', 0),
(84, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:39:40', 0),
(85, 1, 'Deleted an asset : Name -', 'store', '2014-07-24 15:39:45', 0),
(86, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:39:45', 0),
(87, 1, 'Recorded a new asset : Name -Generator', 'store', '2014-07-24 15:40:07', 0),
(88, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:40:07', 0),
(89, 1, 'Deleted an asset : Name -', 'store', '2014-07-24 15:40:10', 0),
(90, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:40:10', 0),
(91, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:40:29', 0),
(92, 1, 'Deleted an asset : Name -Generator', 'store', '2014-07-24 15:40:38', 0),
(93, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:40:39', 0),
(94, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:41:27', 0),
(95, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:55:00', 0),
(96, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:55:52', 0),
(97, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:57:25', 0),
(98, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 15:59:14', 0),
(99, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 16:00:36', 0),
(100, 1, 'Recorded a new asset : Name -Generator', 'store', '2014-07-24 16:01:24', 0),
(101, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 16:01:24', 0),
(102, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 16:06:52', 0),
(103, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 16:16:26', 0),
(104, 1, 'Accessed the Assets Book!', 'store', '2014-07-24 16:16:27', 0),
(105, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 16:21:46', 0),
(106, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 16:22:05', 0),
(107, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 16:49:41', 0),
(108, 1, 'Migrate Type: maintenances_ to Version: 0 from: ::1', 'migrations', '2014-07-24 16:50:19', 0),
(109, 1, 'Migrate module: maintenances Version: 0 from: ::1', 'migrations', '2014-07-24 16:50:19', 0),
(110, 1, 'Migrate Type: maintenances_ to Version: 1 from: ::1', 'migrations', '2014-07-24 16:50:29', 0),
(111, 1, 'Migrate module: maintenances Version: 1 from: ::1', 'migrations', '2014-07-24 16:50:29', 0),
(112, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 16:50:40', 0),
(113, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 16:54:10', 0),
(114, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 16:58:39', 0),
(115, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 17:03:23', 0),
(116, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 17:05:29', 0),
(117, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 17:06:15', 0),
(118, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 17:19:00', 0),
(119, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 17:19:03', 0),
(120, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 17:19:30', 0),
(121, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:37:16', 0),
(122, 1, 'Recorded a new maintenance record', 'maintenances', '2014-07-24 20:42:02', 0),
(123, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:42:03', 0),
(124, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:45:17', 0),
(125, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:47:04', 0),
(126, 1, 'Deleted a maintenance record', 'maintenances', '2014-07-24 20:48:13', 0),
(127, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:48:13', 0),
(128, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 20:51:13', 0),
(129, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:07:26', 0),
(130, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:08:01', 0),
(131, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:08:06', 0),
(132, 1, 'Recorded a new maintenance record', 'maintenances', '2014-07-24 21:09:00', 0),
(133, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:09:01', 0),
(134, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:10:22', 0),
(135, 1, 'Deleted a maintenance record', 'maintenances', '2014-07-24 21:10:36', 0),
(136, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:10:36', 0),
(137, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:11:58', 0),
(138, 1, 'Recorded a new maintenance record', 'maintenances', '2014-07-24 21:16:11', 0),
(139, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:16:11', 0),
(140, 1, 'Updated a maintenance record', 'maintenances', '2014-07-24 21:17:05', 0),
(141, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:17:06', 0),
(142, 1, 'Updated a maintenance record', 'maintenances', '2014-07-24 21:17:23', 0),
(143, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-24 21:17:23', 0),
(144, 1, 'Migrate Type: assets_ to Version: 0 from: ::1', 'migrations', '2014-07-24 21:27:32', 0),
(145, 1, 'Migrate module: assets Version: 0 from: ::1', 'migrations', '2014-07-24 21:27:32', 0),
(146, 1, 'Migrate Type: maintenances_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-24 21:27:42', 0),
(147, 1, 'Migrate module: maintenances Version: 0 from: ::1', 'migrations', '2014-07-24 21:27:42', 0),
(148, 1, 'Migrate Type: assets_ to Version: 1 from: ::1', 'migrations', '2014-07-24 21:29:20', 0),
(149, 1, 'Migrate module: assets Version: 1 from: ::1', 'migrations', '2014-07-24 21:29:20', 0),
(150, 1, 'Migrate module: depreciations Version: 1 from: ::1', 'migrations', '2014-07-24 21:29:29', 0),
(151, 1, 'Migrate Type: depreciations_ to Version: 1 from: ::1', 'migrations', '2014-07-24 21:30:47', 0),
(152, 1, 'Migrate module: depreciations Version: 1 from: ::1', 'migrations', '2014-07-24 21:30:47', 0),
(153, 1, 'Migrate Type: maintenances_ to Version: 1 from: ::1', 'migrations', '2014-07-24 21:31:11', 0),
(154, 1, 'Migrate module: maintenances Version: 1 from: ::1', 'migrations', '2014-07-24 21:31:11', 0),
(155, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 21:31:42', 0),
(156, 1, 'Accessed the Assets Book!', 'assets', '2014-07-24 21:50:55', 0),
(157, 1, 'Accessed the Depreciations Book!', 'depreciations', '2014-07-24 21:51:17', 0),
(158, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 09:39:16', 0),
(159, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 20:55:14', 0),
(160, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 20:57:53', 0),
(161, 1, 'Migrate Type: assets_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-25 20:58:33', 0),
(162, 1, 'Migrate module: assets Version: 0 from: ::1', 'migrations', '2014-07-25 20:58:33', 0),
(163, 1, 'Migrate Type: assets_ to Version: 1 from: ::1', 'migrations', '2014-07-25 20:58:43', 0),
(164, 1, 'Migrate module: assets Version: 1 from: ::1', 'migrations', '2014-07-25 20:58:43', 0),
(165, 1, 'Migrate Type: depreciations_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-25 20:58:50', 0),
(166, 1, 'Migrate module: depreciations Version: 0 from: ::1', 'migrations', '2014-07-25 20:58:50', 0),
(167, 1, 'Migrate Type: depreciations_ to Version: 1 from: ::1', 'migrations', '2014-07-25 20:58:56', 0),
(168, 1, 'Migrate module: depreciations Version: 1 from: ::1', 'migrations', '2014-07-25 20:58:56', 0),
(169, 1, 'Migrate Type: maintenances_ Uninstalled Version: 0 from: ::1', 'migrations', '2014-07-25 20:59:02', 0),
(170, 1, 'Migrate module: maintenances Version: 0 from: ::1', 'migrations', '2014-07-25 20:59:02', 0),
(171, 1, 'Migrate Type: maintenances_ to Version: 1 from: ::1', 'migrations', '2014-07-25 20:59:07', 0),
(172, 1, 'Migrate module: maintenances Version: 1 from: ::1', 'migrations', '2014-07-25 20:59:07', 0),
(173, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 20:59:45', 0),
(174, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:00:10', 0),
(175, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:00:58', 0),
(176, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-25 21:01:16', 0),
(177, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:01:23', 0),
(178, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-25 21:01:31', 0),
(179, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:01:37', 0),
(180, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:02:08', 0),
(181, 1, 'Recorded a new asset : Name -Generator', 'assets', '2014-07-25 21:03:18', 0),
(182, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:03:19', 0),
(183, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:03:43', 0),
(184, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:03:53', 0),
(185, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-25 21:04:56', 0),
(186, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:08:39', 0),
(187, 1, 'Recorded a new asset : Name -Staff Bus', 'assets', '2014-07-25 21:09:11', 0),
(188, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:09:11', 0),
(189, 1, 'Accessed the Assets Book!', 'assets', '2014-07-25 21:09:45', 0),
(190, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-25 21:40:32', 0),
(191, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 05:46:17', 0),
(192, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:03:05', 0),
(193, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:20:02', 0),
(194, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:20:48', 0),
(195, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:21:22', 0),
(196, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:21:42', 0),
(197, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:55:46', 0),
(198, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:55:54', 0),
(199, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 06:57:56', 0),
(200, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:09:42', 0),
(201, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:37:51', 0),
(202, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:49:20', 0),
(203, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:50:32', 0),
(204, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:52:28', 0),
(205, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:53:05', 0),
(206, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:56:13', 0),
(207, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:56:24', 0),
(208, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 08:56:27', 0),
(209, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:08:41', 0),
(210, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:10:03', 0),
(211, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:12:10', 0),
(212, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 09:27:10', 0),
(213, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 09:27:19', 0),
(214, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:28:22', 0),
(215, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:28:31', 0),
(216, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 09:28:48', 0),
(217, 1, 'Depreciation on Generator calculated.', 'assets', '2014-07-26 09:28:52', 0),
(218, 1, 'Depreciation on Generator has reached maximum.', 'assets', '2014-07-26 09:28:55', 0),
(219, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:39:14', 0),
(220, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:39:21', 0),
(221, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:39:50', 0),
(222, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:40:19', 0),
(223, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:41:30', 0),
(224, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:45:42', 0),
(225, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 09:46:50', 0),
(226, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:09:05', 0),
(227, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:09:52', 0),
(228, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:09:59', 0),
(229, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:10:34', 0),
(230, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:12:03', 0),
(231, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:12:24', 0),
(232, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:12:33', 0),
(233, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:14:17', 0),
(234, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:14:26', 0),
(235, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:14:29', 0),
(236, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:14:34', 0),
(237, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:15:15', 0),
(238, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:15:54', 0),
(239, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:17:24', 0),
(240, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:17:50', 0),
(241, 1, 'Accessed the Depreciations Book!', 'depreciations', '2014-07-26 10:18:38', 0),
(242, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:18:43', 0),
(243, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:19:22', 0),
(244, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 10:19:43', 0),
(245, 1, 'Accessed the Depreciations Book!', 'assets', '2014-07-26 10:23:19', 0),
(246, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 10:28:57', 0),
(247, 1, 'Deleted a depreciation record : ID - ', 'assets', '2014-07-26 10:29:07', 0),
(248, 1, 'Deleted a depreciation record : ID - 12', 'assets', '2014-07-26 10:30:59', 0),
(249, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 10:31:57', 0),
(250, 1, 'Recorded a new maintenance record', 'maintenances', '2014-07-26 10:32:54', 0),
(251, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 10:32:54', 0),
(252, 1, 'Deleted a maintenance record', 'maintenances', '2014-07-26 10:33:03', 0),
(253, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 10:33:03', 0),
(254, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 10:35:21', 0),
(255, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 10:35:48', 0),
(256, 1, 'logged in from: ::1', 'users', '2014-07-26 10:37:04', 0),
(257, 1, 'modified user: admin', 'users', '2014-07-26 10:41:51', 0),
(258, 1, 'logged in from: ::1', 'users', '2014-07-26 12:22:24', 0),
(259, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 12:24:58', 0),
(260, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 12:25:16', 0),
(261, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 12:27:19', 0),
(262, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 12:29:53', 0),
(263, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 12:30:48', 0),
(264, 1, 'Accessed the Assets Book!', 'assets', '2014-07-26 12:31:23', 0),
(265, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-07-26 12:31:42', 0),
(266, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 12:32:55', 0),
(267, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 12:34:03', 0),
(268, 1, 'Accessed the assets reports book!', 'assets', '2014-07-26 13:01:20', 0),
(269, 1, 'logged in from: ::1', 'users', '2014-07-28 08:29:49', 0),
(270, 1, 'Accessed the Assets Book!', 'assets', '2014-07-28 08:29:56', 0),
(271, 1, 'Accessed the assets reports book!', 'assets', '2014-07-28 08:30:15', 0),
(272, 1, 'Accessed the Assets Book!', 'assets', '2014-07-28 08:30:50', 0),
(273, 1, 'logged in from: ::1', 'users', '2014-08-02 22:44:04', 0),
(274, 1, 'Accessed the Assets Book!', 'assets', '2014-08-02 22:44:13', 0),
(275, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-08-02 22:44:23', 0),
(276, 1, 'Accessed the Assets Book!', 'assets', '2014-08-02 22:44:29', 0),
(277, 1, 'Accessed the assets reports book!', 'assets', '2014-08-02 22:44:37', 0),
(278, 1, 'logged in from: ::1', 'users', '2014-08-05 01:17:18', 0),
(279, 1, 'logged in from: ::1', 'users', '2014-08-13 10:05:25', 0),
(280, 1, 'Accessed the Assets Book!', 'assets', '2014-08-13 10:05:39', 0),
(281, 1, 'Accessed the assets reports book!', 'assets', '2014-08-13 10:05:57', 0),
(282, 1, 'Depreciation on Generator calculated.', 'assets', '2014-08-13 10:06:11', 0),
(283, 1, 'logged in from: ::1', 'users', '2014-08-15 09:56:06', 0),
(284, 1, 'Accessed the Assets Book!', 'assets', '2014-08-15 09:56:17', 0),
(285, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-08-15 09:56:32', 0),
(286, 1, 'Accessed the assets reports book!', 'assets', '2014-08-15 09:56:41', 0),
(287, 1, 'logged in from: ::1', 'users', '2014-09-04 16:26:13', 0),
(288, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-09-04 16:26:22', 0),
(289, 1, 'Accessed the Assets Book!', 'assets', '2014-09-04 16:26:26', 0),
(290, 1, 'Accessed the Maintenance Book!', 'maintenances', '2014-09-04 16:26:34', 0),
(291, 1, 'Accessed the assets reports book!', 'assets', '2014-09-04 16:26:38', 0),
(292, 1, 'logged in from: ::1', 'users', '2014-09-30 08:12:31', 0),
(293, 1, 'logged in from: ::1', 'users', '2014-09-30 08:13:57', 0),
(294, 1, 'logged in from: ::1', 'users', '2014-09-30 08:17:35', 0),
(295, 1, 'modified user: admin', 'users', '2014-09-30 08:18:32', 0),
(296, 1, 'logged in from: ::1', 'users', '2014-09-30 08:26:32', 0),
(297, 1, 'created a new User: Ricky', 'users', '2014-09-30 08:40:15', 0),
(298, 2, 'logged in from: ::1', 'users', '2014-09-30 08:40:42', 0),
(299, 1, 'logged in from: ::1', 'users', '2014-09-30 08:48:30', 0),
(300, 1, 'created a new User: Ricky', 'users', '2014-09-30 08:51:00', 0),
(301, 3, 'logged in from: ::1', 'users', '2014-09-30 08:51:23', 0),
(302, 1, 'logged in from: ::1', 'users', '2014-09-30 09:50:14', 0),
(303, 1, 'logged in from: ::1', 'users', '2014-09-30 09:54:44', 0),
(304, 3, 'logged in from: ::1', 'users', '2014-09-30 10:10:55', 0),
(305, 1, 'logged in from: ::1', 'users', '2014-09-30 10:12:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_assets`
--

CREATE TABLE IF NOT EXISTS `bf_assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cost_price` float NOT NULL,
  `purchase_date` datetime NOT NULL,
  `vendors_name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `depreciation_rate` int(11) NOT NULL,
  `depreciation_time` int(5) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(11) unsigned DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bf_assets`
--

INSERT INTO `bf_assets` (`id`, `name`, `cost_price`, `purchase_date`, `vendors_name`, `branch`, `department`, `depreciation_rate`, `depreciation_time`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted`, `deleted_by`) VALUES
(1, 'Generator', 10000, '1970-02-01 00:00:00', 'Car & General', 'Mombasa', 'Transport', 10, 24, '2014-07-25 21:03:18', 1, NULL, NULL, 0, NULL),
(2, 'Staff Bus', 500000, '1970-02-01 00:00:00', 'DT Dobie', 'Mombasa', 'Transport', 10, 24, '2014-07-25 21:09:11', 1, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_countries`
--

CREATE TABLE IF NOT EXISTS `bf_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_countries`
--

INSERT INTO `bf_countries` (`iso`, `name`, `printable_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `bf_depreciations`
--

CREATE TABLE IF NOT EXISTS `bf_depreciations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `depreciation_amount` float NOT NULL,
  `net_book_value` float NOT NULL,
  `asset_id` int(11) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `asset_id` (`asset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bf_depreciations`
--

INSERT INTO `bf_depreciations` (`id`, `depreciation_amount`, `net_book_value`, `asset_id`, `created_on`) VALUES
(11, 1000, 9000, 1, '2014-07-26 09:28:48'),
(12, 900, 8100, 1, '2014-08-13 10:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `bf_email_queue`
--

CREATE TABLE IF NOT EXISTS `bf_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(128) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bf_login_attempts`
--

CREATE TABLE IF NOT EXISTS `bf_login_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `bf_maintenances`
--

CREATE TABLE IF NOT EXISTS `bf_maintenances` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `provider` varchar(50) NOT NULL,
  `commence_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `cost` float NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `asset_id` int(11) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(11) unsigned DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asset_id` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bf_permissions`
--

CREATE TABLE IF NOT EXISTS `bf_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `bf_permissions`
--

INSERT INTO `bf_permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(2, 'Site.Content.View', 'Allow users to view the Content Context', 'active'),
(3, 'Site.Reports.View', 'Allow users to view the Reports Context', 'active'),
(4, 'Site.Settings.View', 'Allow users to view the Settings Context', 'active'),
(5, 'Site.Developer.View', 'Allow users to view the Developer Context', 'active'),
(6, 'Bonfire.Roles.Manage', 'Allow users to manage the user Roles', 'active'),
(7, 'Bonfire.Users.Manage', 'Allow users to manage the site Users', 'active'),
(8, 'Bonfire.Users.View', 'Allow users access to the User Settings', 'active'),
(9, 'Bonfire.Users.Add', 'Allow users to add new Users', 'active'),
(10, 'Bonfire.Database.Manage', 'Allow users to manage the Database settings', 'active'),
(11, 'Bonfire.Emailer.Manage', 'Allow users to manage the Emailer settings', 'active'),
(12, 'Bonfire.Logs.View', 'Allow users access to the Log details', 'active'),
(13, 'Bonfire.Logs.Manage', 'Allow users to manage the Log files', 'active'),
(14, 'Bonfire.Emailer.View', 'Allow users access to the Emailer settings', 'active'),
(15, 'Site.Signin.Offline', 'Allow users to login to the site when the site is offline', 'active'),
(16, 'Bonfire.Permissions.View', 'Allow access to view the Permissions menu unders Settings Context', 'active'),
(17, 'Bonfire.Permissions.Manage', 'Allow access to manage the Permissions in the system', 'active'),
(18, 'Bonfire.Roles.Delete', 'Allow users to delete user Roles', 'active'),
(19, 'Bonfire.Modules.Add', 'Allow creation of modules with the builder.', 'active'),
(20, 'Bonfire.Modules.Delete', 'Allow deletion of modules.', 'active'),
(21, 'Permissions.Administrator.Manage', 'To manage the access control permissions for the Administrator role.', 'active'),
(22, 'Permissions.Editor.Manage', 'To manage the access control permissions for the Editor role.', 'active'),
(24, 'Permissions.User.Manage', 'To manage the access control permissions for the User role.', 'active'),
(25, 'Permissions.Developer.Manage', 'To manage the access control permissions for the Developer role.', 'active'),
(27, 'Activities.Own.View', 'To view the users own activity logs', 'active'),
(28, 'Activities.Own.Delete', 'To delete the users own activity logs', 'active'),
(29, 'Activities.User.View', 'To view the user activity logs', 'active'),
(30, 'Activities.User.Delete', 'To delete the user activity logs, except own', 'active'),
(31, 'Activities.Module.View', 'To view the module activity logs', 'active'),
(32, 'Activities.Module.Delete', 'To delete the module activity logs', 'active'),
(33, 'Activities.Date.View', 'To view the users own activity logs', 'active'),
(34, 'Activities.Date.Delete', 'To delete the dated activity logs', 'active'),
(35, 'Bonfire.UI.Manage', 'Manage the Bonfire UI settings', 'active'),
(36, 'Bonfire.Settings.View', 'To view the site settings page.', 'active'),
(37, 'Bonfire.Settings.Manage', 'To manage the site settings.', 'active'),
(38, 'Bonfire.Activities.View', 'To view the Activities menu.', 'active'),
(39, 'Bonfire.Database.View', 'To view the Database menu.', 'active'),
(40, 'Bonfire.Migrations.View', 'To view the Migrations menu.', 'active'),
(41, 'Bonfire.Builder.View', 'To view the Modulebuilder menu.', 'active'),
(42, 'Bonfire.Roles.View', 'To view the Roles menu.', 'active'),
(43, 'Bonfire.Sysinfo.View', 'To view the System Information page.', 'active'),
(44, 'Bonfire.Translate.Manage', 'To manage the Language Translation.', 'active'),
(45, 'Bonfire.Translate.View', 'To view the Language Translate menu.', 'active'),
(46, 'Bonfire.UI.View', 'To view the UI/Keyboard Shortcut menu.', 'active'),
(49, 'Bonfire.Profiler.View', 'To view the Console Profiler Bar.', 'active'),
(50, 'Bonfire.Roles.Add', 'To add New Roles', 'active'),
(51, 'Bonfire.Assets.View', 'To view the assets menu.', 'active'),
(52, 'Bonfire.Assets.Add', 'Allow users to add new records.', 'active'),
(53, 'Bonfire.Assets.Delete', 'Allow users to delete records.', 'active'),
(54, 'Bonfire.Assets.Manage', 'Allow users to update records.', 'active'),
(55, 'Bonfire.Maintenances.View', 'To view the maintenances menu.', 'active'),
(56, 'Bonfire.Maintenances.Manage', 'Allow users to update records.', 'active'),
(57, 'Bonfire.Maintenances.Add', 'Allow users to add new records.', 'active'),
(58, 'Bonfire.Maintenances.Delete', 'Allow users to delete records.', 'active'),
(59, 'Bonfire.Assets.View', 'To view the assets menu.', 'active'),
(60, 'Bonfire.Assets.View', 'To view the assets menu.', 'active'),
(61, 'Bonfire.Depreciations.View', 'To view the depreciations menu.', 'active'),
(62, 'Bonfire.Maintenances.View', 'To view the maintenances menu.', 'active'),
(63, 'Bonfire.Maintenances.View', 'To view the maintenances menu.', 'active'),
(64, 'Bonfire.Depreciations.View', 'Allow users to view the depreciations menu.', 'active'),
(65, 'Bonfire.Depreciations.Manage', 'Allow users to update records.', 'active'),
(66, 'Bonfire.Depreciations.Add', 'Allow users to add new records.', 'active'),
(67, 'Bonfire.Depreciations.Delete', 'Allow user to delete records.', 'active'),
(68, 'Bonfire.Assets.View', 'To view the assets menu.', 'active'),
(69, 'Bonfire.Depreciations.View', 'To view the depreciations menu.', 'active'),
(70, 'Bonfire.Maintenances.View', 'To view the maintenances menu.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bf_role_permissions`
--

CREATE TABLE IF NOT EXISTS `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_role_permissions`
--

INSERT INTO `bf_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 24),
(1, 25),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 49),
(1, 50),
(1, 52),
(1, 53),
(1, 54),
(1, 56),
(1, 57),
(1, 58),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(2, 2),
(2, 3),
(4, 2),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 49);

-- --------------------------------------------------------

--
-- Table structure for table `bf_roles`
--

CREATE TABLE IF NOT EXISTS `bf_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bf_roles`
--

INSERT INTO `bf_roles` (`role_id`, `role_name`, `description`, `default`, `can_delete`, `login_destination`, `deleted`, `default_context`) VALUES
(1, 'Administrator', 'Has full control over every aspect of the site.', 0, 0, '', 0, 'content'),
(2, 'Editor', 'Can handle day-to-day management, but does not have full power.', 0, 1, '', 0, 'content'),
(4, 'User', 'This is the default user with access to login.', 1, 0, '', 0, 'content'),
(6, 'Developer', 'Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.', 0, 1, '', 0, 'content');

-- --------------------------------------------------------

--
-- Table structure for table `bf_schema_version`
--

CREATE TABLE IF NOT EXISTS `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_schema_version`
--

INSERT INTO `bf_schema_version` (`type`, `version`) VALUES
('assets_', 1),
('core', 37),
('depreciations_', 1),
('maintenances_', 1),
('store_', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bf_sessions`
--

CREATE TABLE IF NOT EXISTS `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_settings`
--

CREATE TABLE IF NOT EXISTS `bf_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_settings`
--

INSERT INTO `bf_settings` (`name`, `module`, `value`) VALUES
('auth.allow_name_change', 'core', '1'),
('auth.allow_register', 'core', '0'),
('auth.allow_remember', 'core', '1'),
('auth.do_login_redirect', 'core', '1'),
('auth.login_type', 'core', 'email'),
('auth.name_change_frequency', 'core', '1'),
('auth.name_change_limit', 'core', '1'),
('auth.password_force_mixed_case', 'core', '0'),
('auth.password_force_numbers', 'core', '0'),
('auth.password_force_symbols', 'core', '0'),
('auth.password_min_length', 'core', '8'),
('auth.password_show_labels', 'core', '0'),
('auth.remember_length', 'core', '1209600'),
('auth.user_activation_method', 'core', '0'),
('auth.use_extended_profile', 'core', '0'),
('auth.use_usernames', 'core', '1'),
('ext.country', 'core', 'US'),
('ext.state', 'core', 'CA'),
('ext.street_name', 'core', ''),
('ext.type', 'core', 'small'),
('form_save', 'core.ui', 'ctrl+s/⌘+s'),
('goto_content', 'core.ui', 'alt+c'),
('mailpath', 'email', '/usr/sbin/sendmail'),
('mailtype', 'email', 'html'),
('password_iterations', 'users', '8'),
('protocol', 'email', 'smtp'),
('sender_email', 'email', 'dmushangi@gmail.com'),
('site.languages', 'core', 'a:3:{i:0;s:7:"english";i:1;s:7:"persian";i:2;s:10:"portuguese";}'),
('site.list_limit', 'core', '25'),
('site.show_front_profiler', 'core', '0'),
('site.show_profiler', 'core', '0'),
('site.status', 'core', '1'),
('site.system_email', 'core', 'admin@mybonfire.com'),
('site.title', 'core', 'Malivons'),
('smtp_host', 'email', 'ssl://smtp.googlemail.com'),
('smtp_pass', 'email', 'armyner1992'),
('smtp_port', 'email', '465'),
('smtp_timeout', 'email', '4'),
('smtp_user', 'email', 'dmushangi@gmail.com'),
('updates.bleeding_edge', 'core', '0'),
('updates.do_check', 'core', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bf_states`
--

CREATE TABLE IF NOT EXISTS `bf_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `bf_states`
--

INSERT INTO `bf_states` (`id`, `name`, `abbrev`) VALUES
(1, 'Alaska', 'AK'),
(2, 'Alabama', 'AL'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Columbia', 'DC'),
(11, 'Florida', 'FL'),
(12, 'Georgia', 'GA'),
(13, 'Guam', 'GU'),
(14, 'Hawaii', 'HI'),
(15, 'Idaho', 'ID'),
(16, 'Illinois', 'IL'),
(17, 'Indiana', 'IN'),
(18, 'Iowa', 'IA'),
(19, 'Kansas', 'KS'),
(20, 'Kentucky', 'KY'),
(21, 'Louisiana', 'LA'),
(22, 'Maine', 'ME'),
(23, 'Marshall Islands', 'MH'),
(24, 'Maryland', 'MD'),
(25, 'Massachusetts', 'MA'),
(26, 'Michigan', 'MI'),
(27, 'Minnesota', 'MN'),
(28, 'Mississippi', 'MS'),
(29, 'Missouri', 'MO'),
(30, 'Montana', 'MT'),
(31, 'Nebraska', 'NE'),
(32, 'Nevada', 'NV'),
(33, 'New Hampshire', 'NH'),
(34, 'New Jersey', 'NJ'),
(35, 'New Mexico', 'NM'),
(36, 'New York', 'NY'),
(37, 'North Carolina', 'NC'),
(38, 'North Dakota', 'ND'),
(39, 'Northern Mariana Islands', 'MP'),
(40, 'Ohio', 'OH'),
(41, 'Oklahoma', 'OK'),
(42, 'Oregon', 'OR'),
(43, 'Palau', 'PW'),
(44, 'Pennsylvania', 'PA'),
(45, 'Puerto Rico', 'PR'),
(46, 'Rhode Island', 'RI'),
(47, 'South Carolina', 'SC'),
(48, 'South Dakota', 'SD'),
(49, 'Tennessee', 'TN'),
(50, 'Texas', 'TX'),
(51, 'Utah', 'UT'),
(52, 'Vermont', 'VT'),
(53, 'Virgin Islands', 'VI'),
(54, 'Virginia', 'VA'),
(55, 'Washington', 'WA'),
(56, 'West Virginia', 'WV'),
(57, 'Wisconsin', 'WI'),
(58, 'Wyoming', 'WY'),
(59, 'Armed Forces Africa', 'AE'),
(60, 'Armed Forces Canada', 'AE'),
(61, 'Armed Forces Europe', 'AE'),
(62, 'Armed Forces Middle East', 'AE'),
(63, 'Armed Forces Pacific', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_cookies`
--

CREATE TABLE IF NOT EXISTS `bf_user_cookies` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL,
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_user_cookies`
--

INSERT INTO `bf_user_cookies` (`user_id`, `token`, `created_on`) VALUES
(1, '1Rr3wDkWkJSq0yzAJfReMvZAdni1RCtLBbOUMELwpC07ruAmTBq1sEmTGG6OKX5OwQUABYIUS1aPlefTPgXOM0DCXE1QZ2n8IezavviBuygyu09qDwySuvLIarV8toEW', '2014-07-24 11:54:46'),
(1, 'RKHNc9OHAqXzZh3NPFJX8BRnzQqK1uZzkbpbCJBrBLrbxCmO2Q7sjyA60Z5DLeYeEpxfgAxxaMbKecy80nLSNXIf5lZx5atgcaAubm747zFDkBMsL4lY7hS7MnHOmkNn', '2014-07-24 13:38:27'),
(1, 'kPyNI2WLaXtr76bd7wQZgBkHDH5tqOL6eECUsyKOJbOu6KCVhp3twrdpbSd6h2d5Yzoebf8P4jXx2Z0v3yf3OP2g1NGKXbtyEKvDeCIqUO9GCOt6uZxdYbzznwTn6J87', '2014-09-04 16:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_meta`
--

CREATE TABLE IF NOT EXISTS `bf_user_meta` (
  `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bf_user_meta`
--

INSERT INTO `bf_user_meta` (`meta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'street_name', ''),
(2, 1, 'state', 'SC'),
(3, 1, 'country', 'US'),
(4, 1, 'type', 'small'),
(5, 2, 'street_name', ''),
(6, 2, 'state', 'SC'),
(7, 2, 'country', 'US'),
(8, 2, 'type', 'small'),
(9, 3, 'street_name', ''),
(10, 3, 'state', 'SC'),
(11, 3, 'country', 'US'),
(12, 3, 'type', 'small');

-- --------------------------------------------------------

--
-- Table structure for table `bf_users`
--

CREATE TABLE IF NOT EXISTS `bf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(120) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` char(4) NOT NULL DEFAULT 'UM6',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `password_iterations` int(4) NOT NULL,
  `force_password_reset` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bf_users`
--

INSERT INTO `bf_users` (`id`, `role_id`, `email`, `username`, `password_hash`, `reset_hash`, `last_login`, `last_ip`, `created_on`, `deleted`, `reset_by`, `banned`, `ban_message`, `display_name`, `display_name_changed`, `timezone`, `language`, `active`, `activate_hash`, `password_iterations`, `force_password_reset`) VALUES
(1, 1, 'dmushangi@gmail.com', 'admin', '$2a$08$r3mhh8WRPAJz.jV1ZAnWteZt9nTTPDATadvdgySUtQpMJA1Ry2LYW', 'e983f485d184caa324925257f8e120163a654367', '2014-09-30 10:12:15', '::1', '2014-07-24 10:14:38', 0, 1412144717, 0, NULL, 'admin', NULL, 'UM6', 'english', 1, '', 0, 0),
(3, 4, 'rassermon@yahoo.com', 'rassermon@yahoo.com', '$2a$08$g0X6rxUFTJpHOmsLsUdBp.EH3/6iUdS/mPxtbT5AWbOcHn2AvlmtW', '', '2014-09-30 10:10:55', '::1', '2014-09-30 08:51:00', 0, 0, 0, NULL, 'Ricky', NULL, 'UM6', 'english', 1, '', 8, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
