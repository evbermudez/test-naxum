-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2018 at 09:18 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testnxm`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sponsorid` int(10) UNSIGNED DEFAULT NULL,
  `site` varchar(24) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT '',
  `dayphone` varchar(25) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sponsorid`, `site`, `address`, `email`, `dayphone`, `fname`, `lname`) VALUES
(1, 1, 'admin', '1 Main', 'rodd@naxum.com', '', 'Admin', 'Account'),
(2, 1, 'owner', '1 Success St.', 'owner@somewhere.com', '555-555-5555', 'Owner', 'Admin'),
(3, 1, 'master', '1602 Rustic Knolls Drive', 'rodd@naxum.com', '713-867-7999', 'Master', 'Account'),
(4, 2, 'craigbennett', '1165 Greenhill Rd', '', '555-555-5555', 'Craig', 'Bennett'),
(5, 2, 'progtest', '3535 Linda Vista Dr # 127', 'prog@naxum.com', '555-555-5555', 'Programmer', 'Testing'),
(6, 2, 'fadmin', '1 Main', 'german@naxum.com', '555-555-5555', 'German', 'Admin'),
(8, 1, 'leadimport', '1 Main', 'rodd@naxum.com', '', 'NaXum', 'LLC'),
(9, 2, 'naxum', '1602 Rustic Knolls Drive', 'rodd@naxum.com', '281-647-0775', 'Rodd', 'Kirby'),
(10, 1, 'demo', '1111 Hollywood', 'rodd@naxum.com', '2816470775', 'Demo', 'Site'),
(12, 1, 'cemleads', '', '', '', 'CEM', 'Leads'),
(13, 2, 'holding', '1 Main', 'rodd@naxum.com', '5555555555', 'Holding', 'Account'),
(14, 2, 'news', '', 'news@somewhere.com', '', 'News', 'Letter'),
(15, 6, 'trainer', '2835 Torrance Drive', 'mark@naxum.com', '813-406-6034', 'Mark McIntyre,', 'NaXum Trainer'),
(16, 6, 'madmin', '2835 Torrance Drive', 'supportteam@naxum.com', '727-537-0756', 'Mark', 'Admin'),
(17, 6, 'awadmin', '123 Main Street', 'niskey@naxum.com', '123456-7890', 'Alan', 'Wyble'),
(18, 6, 'justin', '123 Main Street', 'justin@naxum.com', NULL, 'Justin', 'User'),
(19, 6, 'badmin', '123 Main Street', 'ben@naxum.com', NULL, 'Ben', 'Admin'),
(20, 6, 'ben', '123 Main Street', 'ben@bendixon.com', NULL, 'Ben', 'User'),
(21, 6, 'openadmin', '123 Main Street', 'craig@naxum.com', NULL, 'Criag', 'Admin'),
(22, 6, 'german', '10348 Spy Glass Hill Road', 'german@germanchale.com', NULL, 'German', 'User'),
(23, 6, 'sadmin', '123 Main Street', 'customerservice@naxum.com', NULL, 'Steve', 'Admin'),
(24, 6, 'steve', '310 NW 1st Ave', 'steve@naxum.com', NULL, 'Steve', 'User'),
(25, 6, 'robuser', '123 Main Street', 'rob@bittysites.com', NULL, 'Rob', 'User'),
(26, 6, 'robadmin', '123 Main Street', 'rob@naxum.com', NULL, 'Rob', 'Admin'),
(27, 6, 'beka', '123 Main Street', 'customerservice2@naxum.com', NULL, 'Beka', 'User'),
(28, 6, 'bkadmin', '123 Main Street', 'beka@naxum.com', NULL, 'Beka', 'Admin'),
(31, 24, 'jojo', '', '', '', 'Jojo', 'User'),
(32, 24, 'solomon', '', '', '', 'solomon', 'User'),
(34, 50, 'odessa', '', '', '', 'odessa', 'User'),
(35, 50, 'jackie', '', '', '', 'jackie', 'User'),
(36, 50, 'jv', '', '', '', 'jv', 'User'),
(37, 50, 'angelo', '', '', '', 'angelo', 'User'),
(38, 20, 'ken', '', '', '', 'ken', 'User'),
(39, 31, 'registrant39', '', '', '', 'Registrant39', 'User'),
(40, 31, 'registrant40', '', '', '', 'Registrant41', 'User'),
(41, 31, 'registrant41', '', '', '', 'Registrant42', 'User'),
(42, 31, 'registrant42', '', '', '', 'Registrant43', 'User'),
(43, 31, 'registrant44', '', '', '', 'Registrant44', 'User'),
(44, 31, 'registrant45', '', '', '', 'Registrant45', 'User'),
(45, 32, 'registrant46', '', '', '', 'Registrant46', 'User'),
(46, 32, 'registrant47', '', '', '', 'Registrant47', 'User'),
(47, 32, 'registrant48', '', '', '', 'Registrant48', 'User'),
(48, 32, 'registrant49', '', '', '', 'Registrant49', 'User'),
(49, 32, 'registrant50', '', '', '', 'Registrant50', 'User'),
(50, 3, 'rodd', '', '', '', 'rodd', 'User'),
(51, 34, 'registrant51', '', '', '', 'Registrant51', 'User'),
(52, 34, 'registrant52', '', '', '', 'Registrant52', 'User'),
(53, 34, 'registrant53', '', '', '', 'Registrant53', 'User'),
(54, 34, 'registrant54', '', '', '', 'Registrant54', 'User'),
(55, 34, 'registrant55', '', '', '', 'Registrant55', 'User'),
(56, 35, 'registrant56', '', '', '', 'Registrant56', 'User'),
(57, 50, 'registrant57', '', '', '', 'Registrant57', 'User'),
(58, 50, 'registrant58', '', '', '', 'Registrant58', 'User'),
(59, 50, 'registrant59', '', '', '', 'Registrant59', 'User'),
(60, 50, 'registrant60', '', '', '', 'Registrant60', 'User'),
(61, 35, 'registrant601', '', '', '', 'Registrant601', 'User'),
(62, 35, 'registrant61', '', '', '', 'Registrant61', 'User'),
(63, 35, 'registrant62', '', '', '', 'Registrant62', 'User'),
(64, 35, 'registrant63', '', '', '', 'Registrant63', 'User'),
(65, 35, 'registrant64', '', '', '', 'Registrant64', 'User'),
(66, 35, 'registrant65', '', '', '', 'Registrant65', 'User'),
(67, 35, 'registrant66', '', '', '', 'Registrant66', 'User'),
(68, 35, 'registrant67', '', '', '', 'Registrant67', 'User'),
(69, 36, 'registrant69', '', '', '', 'Registrant69', 'User'),
(70, 36, 'registrant70', '', '', '', 'Registrant70', 'User'),
(71, 36, 'registrant71', '', '', '', 'Registrant71', 'User'),
(72, 36, 'registrant72', '', '', '', 'Registrant72', 'User'),
(73, 36, 'registrant73', '', '', '', 'Registrant73', 'User'),
(74, 36, 'registrant74', '', '', '', 'Registrant74', 'User'),
(75, 36, 'registrant75', '', '', '', 'Registrant75', 'User'),
(76, 36, 'registrant76', '', '', '', 'Registrant76', 'User'),
(77, 36, 'registrant77', '', '', '', 'Registrant77', 'User'),
(78, 36, 'registrant78', '', '', '', 'Registrant78', 'User'),
(79, 36, 'registrant79', '', '', '', 'Registrant79', 'User'),
(80, 36, 'registrant80', '', '', '', 'Registrant80', 'User'),
(81, 37, 'registrant81', '', '', '', 'Registrant81', 'User'),
(82, 37, 'registrant82', '', '', '', 'Registrant82', 'User'),
(83, 37, 'registrant83', '', '', '', 'Registrant83', 'User'),
(84, 37, 'registrant84', '', '', '', 'Registrant84', 'User'),
(85, 37, 'registrant85', '', '', '', 'Registrant85', 'User'),
(86, 37, 'registrant86', '', '', '', 'Registrant86', 'User'),
(87, 37, 'registrant87', '', '', '', 'Registrant87', 'User'),
(88, 37, 'registrant88', '', '', '', 'Registrant88', 'User'),
(89, 37, 'registrant89', '', '', '', 'Registrant89', 'User'),
(90, 38, 'registrant90', '', '', '', 'Registrant90', 'User'),
(91, 38, 'registrant91', '', '', '', 'Registrant91', 'User'),
(92, 38, 'registrant92', '', '', '', 'Registrant92', 'User'),
(93, 38, 'registrant93', '', '', '', 'Registrant93', 'User'),
(94, 38, 'registrant94', '', '', '', 'Registrant94', 'User'),
(95, 38, 'registrant95', '', '', '', 'Registrant95', 'User'),
(96, 38, 'registrant96', '', '', '', 'Registrant96', 'User'),
(97, 31, 'registrant97', '', '', '', 'Registrant97', 'User'),
(98, 31, 'registrant98', '', '', '', 'Registrant98', 'User'),
(99, 31, 'registrant99', '', '', '', 'Registrant99', 'User'),
(100, 32, 'registrant100', '', '', '', 'Registrant100', 'User'),
(101, 35, 'registrant101', '', '', '', 'Registrant101', 'User'),
(102, 35, 'registrant102', '', '', '', 'Registrant102', 'User'),
(103, 35, 'registrant103', '', '', '', 'Registrant103', 'User'),
(104, 35, 'registrant104', '', '', '', 'Registrant104', 'User'),
(105, 35, 'registrant105', '', '', '', 'Registrant105', 'User'),
(106, 32, 'registrant106', '', '', '', 'Registrant106', 'User'),
(107, 32, 'registrant107', '', '', '', 'Registrant107', 'User'),
(108, 32, 'registrant108', '', '', '', 'Registrant108', 'User'),
(109, 32, 'registrant109', '', '', '', 'Registrant109', 'User'),
(110, 36, 'registrant110', '', '', '', 'Registrant110', 'User'),
(111, 36, 'registrant111', '', '', '', 'Registrant111', 'User'),
(112, 36, 'registrant112', '', '', '', 'Registrant112', 'User'),
(113, 50, 'registrant113', '', '', '', 'Registrant113', 'User'),
(114, 50, 'registrant114', '', '', '', 'Registrant114', 'User'),
(115, 50, 'registrant115', '', '', '', 'Registrant115', 'User'),
(116, 50, 'registrant116', '', '', '', 'Registrant116', 'User'),
(117, 50, 'registrant117', '', '', '', 'Registrant117', 'User'),
(118, 50, 'jana', '', 'gg@rs.com', '', 'Jana', 'jama'),
(121, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(123, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(124, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(125, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(126, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(127, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(129, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(130, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(131, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(132, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(133, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(134, 20, '', 'There is no cow level', 'sample.email@gmail.com', '631231468979', 'John', 'Doe'),
(135, 20, '', 'The world ends with you', 'sample.email@gmail.com', '12345678900', 'John', 'Doe'),
(136, 20, '', 'The world ends with you', 'john.doe@gmail.com', '12345678900', 'John', 'Doe'),
(137, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456123456', 'John', 'Doe'),
(138, 20, '', 'The world ends with you', 'john.doe@gmail.com', '1234567890', 'John', 'Doe'),
(139, 20, '', 'The world ends with you', 'john.doe@gmail.com', '1234567890', 'John', 'Doe'),
(140, 20, '', 'The world ends with you', 'john.doe@gmail.com', '', 'John', 'Doe'),
(141, 20, '', 'The world ends with you', 'john.doe@gmail.com', '123456123222', 'John', 'Doe'),
(142, 3, '', 'The world ends with you', 'hello.world123@gmail.com', '123456789100', 'Hello', 'World'),
(143, 3, '', 'The world ends with you', 'hello.world123@gmail.com', '123456789100', 'Hello', 'World'),
(144, 3, '', 'The world ends with you', 'hello.world123@gmail.com', '123456789100', 'Hello', 'World'),
(145, 3, '', 'The world ends with you', 'hello.world123@gmail.com', '123456789100', 'Hello', 'World'),
(146, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(147, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(148, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(149, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(150, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(151, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(152, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(153, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789100', 'John', 'Doe'),
(154, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(155, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789000', 'John', 'Doe'),
(156, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789000', 'John', 'Doe'),
(157, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789000', 'John', 'Doe'),
(158, 3, '', 'The world ends with you', 'john.doe@gmail.com', '123456789000', 'John', 'Doe'),
(159, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(160, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(161, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(162, 3, '', '', 'john.doe@gmail.com', '', 'John', 'Doe'),
(163, 3, '', 'The world ends with you', 'john.doe@gmail.com', '1234567897897980', 'John', 'Doe'),
(164, 3, '', 'The world ends with you', 'john.doe@gmail.com', '1234567897897980', 'John', 'Doe'),
(165, 3, '', 'The world ends with you', 'john.doe@gmail.com', '1234567897897980', 'John', 'Doe'),
(166, 3, '', 'The world ends with you', 'john.doe@gmail.com', '1234567897897980', 'John', 'Doe'),
(167, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(168, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(169, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(170, 234432, 'test', '', 'test@test.com', '', 'Test', 'Testerson'),
(173, 24, 'clint', '', 'clintonrex@gmail.com', '', 'Clint', 'Sanderson'),
(174, 234432, 'test', '', 'test@test.com', '', 'Test', 'Testerson'),
(175, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(176, 3216120, 'diego', '', 'ddancourt@nudge.com', '', 'Diego', 'Test'),
(177, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(178, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(179, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(180, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(181, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(182, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(183, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(184, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(185, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(186, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(187, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(188, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(189, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(190, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(191, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(192, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(193, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(194, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(195, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(196, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(197, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(198, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(199, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(200, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(201, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(202, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(203, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(204, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(205, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(206, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(207, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(208, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(209, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(210, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(211, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(212, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(213, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(214, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(215, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(216, 24, 'tom', '', 'steve_russell@hotmail.com', '', 'Tom', 'Tester'),
(217, 234432, 'test', '', 'test@test.com', '', 'Test', 'Testerson'),
(218, 3, '', '', 'iekcajarana@gmail.com', '', 'jackie lou', 'arana'),
(219, 3, '', '', 'aranajackie@gmail.com', '', 'jackie', 'arana'),
(220, 20, '', 'There is no cow level', 'lorem.ipsum@rocketmail.com', '123456789123456', 'Lorem', 'Ipsum'),
(221, 20, '', '', 'lorem.ipsum@rocketmail.com', '', 'Lorem', 'Ipsum'),
(222, 234432, 'test', '', 'test@test.com', '', 'Test', 'Testerson'),
(223, 3, '', '', 'gailkingsbury@gmail.com', '', 'gail', 'kingsbury'),
(224, 3, '', '', 'ben22@bendixon.com', '', 'ben', 'dixon'),
(225, 20, '', 'sdfsadfsdfa', 'lorem.ipsum123@rocketmail.com', 'a', 'Lorem', 'Ipsum'),
(226, 20, '', 'fjsdklajfsdkl', 'fjdskfjklasdjflsk@rocketmail.com', 'fjdsklafjsdlkfja', 'jfdsklafjsdlkj', 'fjdsklfjsadlkfjalk'),
(227, 20, '', '', 'asdffda@rocketmail.com', '', 'asdf', 'fdaa'),
(228, 20, '', '', 'lorem.ipsum123@rocketmail.com', '123456789', 'Lorem', 'Ipsum'),
(229, 20, '', '', 'ewqw@gmail.com', '123456798520', 'qwewasd', 'ewq'),
(230, 20, '', '', 'ewqw@gmail.com', '123456798520', 'qwewasd', 'ewq'),
(231, 20, '', '', 'ewqw@gmail.com', '123456798520', 'qwewasd', 'ewq'),
(232, 20, '', '', 'lorem.ipsum@gmail.com', '123456789520', 'lorem', 'Ipsum'),
(233, 20, '', '', 'lorem.ipsum@gmail.com', '123456789520', 'lorem', 'Ipsum'),
(234, 3, '', '', 'final.end@kennethmail.com', '12345678520', 'This is Final', 'The End'),
(235, 3, '', '', 'testxast@gmail.com', '', 'test', 'tester'),
(236, 3, '', '', '123@gmail.com', '', '', ''),
(237, 3, '', '', '123@gmail.com', '', '', ''),
(238, 3, '', '', '123@gmail.com', '', '', ''),
(239, 3, '', '', '123@gmail.com', '', '', ''),
(240, 20, 'lorem', '', 'lorem@123.com', '123456789', 'Lorem', 'Ipsum'),
(241, 20, 'Lorem_Inc', '', 'lorem@123.com', '123456789', 'Qwerty', 'Yuiop'),
(242, 20, 'Zodiac123', 'The REquired Address', 'business123@email.com', '12345678900', 'The Name', 'The Last Name'),
(243, 20, 'Omega_321', 'The REquired Address', 'business123@email.com', '234567898520', 'The First Name', 'The Last Name'),
(244, 20, 'TheBusinessName', 'The REquired Address', 'lorem@123.com', '12345678900', 'The First Name', 'The Last Name'),
(245, 20, 'zxcvb_nmlkj', 'This field is required', 'qwerty@yuiop.cm.ph', '9876543210', 'zxcvb', 'nmlkj'),
(246, 20, 'Azeroth_Wingdale', 'Middle Earth', 'qwerty@yuiop.cm.ph', '1234567898888', 'Azeroth', 'Wingdale'),
(247, 20, 'Food_for_thought', 'This is an address', 'lorem@123.com', '1234567898520', 'Food', 'for thought'),
(248, 3, '', '', 'tae@lubot.com', '', 'tae', 'tae'),
(249, 3, '', '', 'tae@tae.com', '', 'tae', 'tae'),
(250, 3, '', '', 'red@yosi.com', '', 'Malboro', 'Lights'),
(251, 3, '', '', 'yosi@yosi.com', '8035', 'Winston', 'Black'),
(252, 3, '', '', 'chill@chill.com', '8036', 'Red', 'Horse'),
(253, 3, '', '', 'acheche@che.com', '12345', 'acer', 'laptop'),
(254, 20, 'february', 'There is no cow level', 'feb16@naxum.com', '123456123456852', 'February', 'Sixteen'),
(255, 20, 'blah_1988', 'There is no cow level', 'this.is.email@naxum.com', '1234568520', 'March', 'December'),
(258, 3, '', '', 'ben2@bendixon.com', '1231231234', 'ben', 'dixon'),
(259, 3, '', '', 'ben3@bendixon.com', '1231231234', 'ben', 'dixon'),
(260, 3, '', '', 'ben4@bendixon.com', '1231231234', 'ben', 'dixon'),
(261, 3, '', '', 'email@email.com', '1234567890', 'first-test', 'last-test'),
(262, 3, '', '', 'email1@email1.com', '1234567890', 'first-test', 'last-test'),
(263, 20, '', '', 'john-30@yahoo.com', '1234567890', 'john-30', 'chan-30'),
(266, 20, 'johnmartin911', 'Km.6 Gumamela St. Buhangin ', 'johnmartin.chan09@gmail.com', '9474591311', 'John Martin', 'Chan'),
(267, 3, '', '', 'clint@nudge.com', '8013580138', 'Clint', 'Sanderson'),
(268, 24, 'stephen', 'There is no cow level', 'steve.stephenson@email.com', '1234567898520', 'Steve', 'Stephenson'),
(269, 24, 'stephen12', 'There is no cow level', 'steve.stephenson@email.com', '1234567898520', 'Steve', 'Stephenson'),
(270, 3, '', '', 'benmas@bendixon.com', '1231231234', 'ben', 'dixon'),
(271, 3, '', '', 'test@Gmail.com', '11111111111111', 'jackielou', 'arana'),
(272, 20, '', '', 'solomon@naxum.com', '', 'test', 'solomon'),
(285, 24, '', '', 'russell12552@gmail.com', '5555555555', 'steve', 'russell'),
(286, 3, 'testingevttech2', '310 NW 1st Ave ', 's.russell@yahoo.com', '555555555555555', 'Steve', 'Russell'),
(287, 3, 'fr3em1nd', '#11-5 door 3 a pichon sr st', 'solomon.monotilla@gmail.com', '639277193193', 'solomon', 'monotilla');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;