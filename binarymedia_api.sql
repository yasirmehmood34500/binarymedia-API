-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 07:32 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binarymedia_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `login_id`, `description`, `createAt`, `update_at`, `status`) VALUES
(1, 1, '', '2021-07-14', '2021-07-14 08:13:35', 1),
(2, 1, '', '2021-07-14', '2021-07-14 08:47:08', 0),
(3, 1, '', '2021-07-14', '2021-07-14 08:47:08', 1),
(4, 1, '', '2021-07-14', '2021-07-14 08:47:33', 1),
(5, 8, 'tes', '2021-07-14', '2021-09-08 05:44:48', 1),
(6, 8, 'ok', '2021-09-08', '2021-09-08 05:44:46', 1),
(7, 8, 'View Profile', '2021-09-08', '2021-09-08 05:54:33', 1),
(8, 8, 'View Profile', '2021-09-08', '2021-09-08 05:54:39', 1),
(9, 8, 'Delete Accounting', '2021-09-08', '2021-09-08 06:26:13', 1),
(10, 8, 'Change Loan Status', '2021-09-29', '2021-09-29 06:52:13', 1),
(11, 8, 'Create Loan Transaction', '2021-09-29', '2021-09-29 06:53:58', 1),
(12, 8, 'Create Loan Transaction', '2021-09-29', '2021-09-29 11:47:59', 1),
(13, 8, 'Create Loan Transaction', '2021-09-29', '2021-09-29 12:40:14', 1),
(14, 1, 'Create Loan Transaction', '2021-09-29', '2021-09-29 12:44:33', 1),
(15, 1, 'Create Loan Transaction', '2021-09-29', '2021-09-29 14:07:00', 1),
(16, 1, 'Create Loan Transaction', '2021-09-29', '2021-09-29 14:07:06', 1),
(17, 1, 'Create Loan Transaction', '2021-09-29', '2021-09-29 14:07:15', 1),
(18, 1, 'Create Loan Product', '2021-09-30', '2021-09-30 11:24:01', 1),
(19, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:24:19', 1),
(20, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:25:03', 1),
(21, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:26:05', 1),
(22, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:26:35', 1),
(23, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:26:52', 1),
(24, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:27:16', 1),
(25, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:27:32', 1),
(26, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:27:42', 1),
(27, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:28:01', 1),
(28, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:41:04', 1),
(29, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:41:07', 1),
(30, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:41:11', 1),
(31, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:43:01', 1),
(32, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:43:03', 1),
(33, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:43:08', 1),
(34, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:43:29', 1),
(35, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:43:41', 1),
(36, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:43:43', 1),
(37, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:54:28', 1),
(38, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:54:31', 1),
(39, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:55:01', 1),
(40, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:55:56', 1),
(41, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:55:59', 1),
(42, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:56:02', 1),
(43, 1, 'Create Loan', '2021-09-30', '2021-09-30 11:58:11', 1),
(44, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:58:14', 1),
(45, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 11:58:17', 1),
(46, 1, 'Create Loan', '2021-09-30', '2021-09-30 12:00:22', 1),
(47, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:00:25', 1),
(48, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:00:28', 1),
(49, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:00:31', 1),
(50, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:00:34', 1),
(51, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:00:52', 1),
(52, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:00:55', 1),
(53, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:01:00', 1),
(54, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:01:04', 1),
(55, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:01:22', 1),
(56, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:01:25', 1),
(57, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:01:28', 1),
(58, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:01:53', 1),
(59, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:01:56', 1),
(60, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:03:15', 1),
(61, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:03:17', 1),
(62, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:05:12', 1),
(63, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:07:23', 1),
(64, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:09:15', 1),
(65, 1, 'Create Loan', '2021-09-30', '2021-09-30 12:19:11', 1),
(66, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:19:50', 1),
(67, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:31:38', 1),
(68, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:31:41', 1),
(69, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:31:43', 1),
(70, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:32:17', 1),
(71, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:32:18', 1),
(72, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:32:21', 1),
(73, 1, 'Undo Loan Status', '2021-09-30', '2021-09-30 12:33:00', 1),
(74, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:33:03', 1),
(75, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:33:12', 1),
(76, 1, 'Create Loan', '2021-09-30', '2021-09-30 12:34:25', 1),
(77, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:34:28', 1),
(78, 1, 'Change Loan Status', '2021-09-30', '2021-09-30 12:34:30', 1),
(79, 1, 'Create Loan', '2021-10-02', '2021-10-02 06:40:42', 1),
(80, 1, 'Change Loan Status', '2021-10-02', '2021-10-02 06:41:00', 1),
(81, 1, 'Change Loan Status', '2021-10-02', '2021-10-02 06:41:10', 1),
(82, 1, 'Create Loan Transaction', '2021-10-02', '2021-10-02 07:33:24', 1),
(83, 1, 'Create Loan', '2021-10-08', '2021-10-08 10:31:44', 1),
(84, 1, 'Change Loan Status', '2021-11-22', '2021-11-22 11:17:43', 1),
(85, 1, 'Change Loan Status', '2021-11-22', '2021-11-22 11:17:46', 1),
(86, 1, 'Create Loan', '2021-12-31', '2021-12-31 06:41:54', 1),
(87, 1, 'Create Loan', '2021-12-31', '2021-12-31 06:42:16', 1),
(88, 1, 'Create Loan', '2022-05-31', '2022-05-31 12:31:38', 1),
(89, 1, 'Change Loan Status', '2022-05-31', '2022-05-31 12:32:04', 1),
(90, 1, 'Change Loan Status', '2022-05-31', '2022-05-31 12:32:15', 1),
(91, 1, 'Create Loan Transaction', '2022-05-31', '2022-05-31 12:33:21', 1),
(92, 1, 'Create Loan', '2022-06-16', '2022-06-16 08:48:08', 1),
(93, 1, 'Change Loan Status', '2022-06-16', '2022-06-16 08:48:15', 1),
(94, 1, 'Change Loan Status', '2022-06-16', '2022-06-16 08:48:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `purchaseDate` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `lifeSpan` varchar(100) NOT NULL,
  `salvageValue` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `branch_id`, `asset_type_id`, `name`, `purchaseDate`, `cost`, `lifeSpan`, `salvageValue`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 1, 1, 'update', '', '', '', '', '', '2021-07-14', '2021-07-14 13:24:27', 1),
(2, 1, 1, '', '', '', '', '', '', '2021-07-14', '2021-07-14 13:24:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_type`
--

CREATE TABLE `asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cashAccount` varchar(100) NOT NULL,
  `fixedAssetAccount` varchar(100) NOT NULL,
  `expenseAccount` varchar(100) NOT NULL,
  `AccumulatedDepreciationAccount` varchar(100) NOT NULL,
  `incomeAccount` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset_type`
--

INSERT INTO `asset_type` (`id`, `name`, `cashAccount`, `fixedAssetAccount`, `expenseAccount`, `AccumulatedDepreciationAccount`, `incomeAccount`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 'Assets Update', '', '', '', '', '', '', '2021-07-14', '2021-07-14 13:12:12', 1),
(2, 'New Assets', '', '', '', '', '', '', '2021-07-14', '2021-07-14 13:12:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `openDate` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `openDate`, `active`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 'update branch', '', 1, '0', '2021-07-13', '2021-07-15 11:23:42', 0),
(2, 'branches', '', 1, '0', '2021-07-13', '2021-07-13 10:11:15', 0),
(3, 'branches', '', 1, '0', '2021-07-13', '2021-07-15 11:27:19', 0),
(4, 'branches', '', 1, '0', '2021-07-14', '2021-07-15 11:27:24', 0),
(5, 'branches', '', 1, '0', '2021-07-14', '2021-07-15 11:56:07', 0),
(6, 'branches', '', 1, '0', '2021-07-14', '2021-07-15 11:56:04', 0),
(7, 'Issue 1', 'undefined', 0, 'undefined', '2021-07-15', '2021-07-15 11:56:01', 0),
(8, 'Issue 1', 'undefined', 0, 'undefined', '2021-07-15', '2021-07-15 11:55:58', 0),
(9, 'Testing', '2021-07-30', 1, 'notes', '2021-07-15', '2021-07-15 12:06:11', 1),
(10, 'Issue 1', '2021-08-20', 0, 'jk', '2021-08-03', '2021-08-03 14:41:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch_user`
--

CREATE TABLE `branch_user` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_user`
--

INSERT INTO `branch_user` (`id`, `branch_id`, `user_id`, `createAt`, `update_at`, `status`) VALUES
(1, 1, 1, '2021-07-15', '2021-07-15 14:09:02', 0),
(2, 1, 1, '2021-07-15', '2021-07-17 10:05:31', 0),
(3, 1, 1, '2021-07-15', '2021-07-15 12:15:45', 1),
(4, 1, 1, '2021-07-15', '2021-07-15 12:38:28', 0),
(5, 1, 1, '2021-07-15', '2021-07-15 12:38:25', 0),
(6, 9, 1, '2021-07-15', '2021-07-15 12:38:21', 0),
(7, 9, 1, '2021-07-15', '2021-07-15 12:38:17', 0),
(8, 9, 1, '2021-07-15', '2021-07-15 12:38:13', 0),
(9, 9, 1, '2021-07-15', '2021-07-15 12:38:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `charges_on_loan`
--

CREATE TABLE `charges_on_loan` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `loan_charges_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges_on_loan`
--

INSERT INTO `charges_on_loan` (`id`, `loan_id`, `loan_charges_id`, `createAt`, `update_at`, `status`) VALUES
(1, 1, 2, '0000-00-00', '2021-08-02 11:06:09', 1),
(2, 1, 1, '2021-08-02', '2021-08-02 11:05:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `charges_on_saving`
--

CREATE TABLE `charges_on_saving` (
  `id` int(11) NOT NULL,
  `saving_id` int(11) NOT NULL,
  `saving_charges_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charges_on_saving`
--

INSERT INTO `charges_on_saving` (`id`, `saving_id`, `saving_charges_id`, `createAt`, `update_at`, `status`) VALUES
(1, 1, 2, '0000-00-00', '2021-08-02 11:06:09', 1),
(2, 1, 1, '2021-08-02', '2021-08-02 11:05:53', 1),
(3, 1, 2, '2021-08-02', '2021-08-02 11:53:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` int(11) NOT NULL,
  `accountType` varchar(100) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `glCode` varchar(100) NOT NULL,
  `activeOrNot` int(11) NOT NULL,
  `mannualEntryStatus` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `accountType`, `parent`, `name`, `glCode`, `activeOrNot`, `mannualEntryStatus`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 'Assets', 'Form', 'Update', '123', 0, 1, 'notes', '2021-07-13', '2021-07-15 08:24:11', 0),
(2, 'Assets', 'Form', 'Testing', '123', 1, 1, 'notes', '2021-07-13', '2021-07-15 07:22:34', 0),
(3, 'Assets', 'Form', 'Testing', '123', 1, 1, 'notes', '2021-07-14', '2021-07-15 08:40:41', 0),
(4, 'Assets', 'Form', 'Testing', '123', 1, 1, 'notes', '2021-07-14', '2021-07-15 07:22:39', 0),
(5, 'Assets', 'Form', 'Testing', '123', 1, 1, 'notes', '2021-07-14', '2021-08-03 14:41:35', 0),
(6, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:45:06', 0),
(7, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:45:09', 0),
(8, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:49:53', 0),
(9, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:49:57', 0),
(10, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:50:00', 0),
(11, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:50:03', 0),
(12, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:50:06', 0),
(13, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 07:50:46', 0),
(14, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 08:15:39', 0),
(15, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 08:15:42', 0),
(16, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 08:15:46', 0),
(17, 'undefined', 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', '2021-07-15', '2021-07-15 08:15:50', 0),
(18, 'asset', 'MPESA Repayment', 'Issue 1', 'kk', 0, 0, '', '2021-07-15', '2021-07-15 08:03:55', 1),
(19, 'expense', 'Group Loan', 'Acc', '83095823094', 1, 0, 'notes ', '2021-07-15', '2021-09-08 06:26:13', 0),
(20, 'asset', 'MPESA Repayment', 'Issue 1', 'kk', 0, 0, 'ok', '2021-08-03', '2021-08-03 14:41:31', 1),
(21, 'asset', 'MPESA Repayment', '80', '809', 0, 0, '', '2021-08-05', '2021-08-05 06:05:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `external_Id` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `maritalStatus` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `dateOfBirth` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `professions_id` int(11) NOT NULL,
  `client_type_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `submittedOn` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `branch_id`, `external_Id`, `country_id`, `user_id`, `title_id`, `firstName`, `lastName`, `gender`, `maritalStatus`, `mobile`, `dateOfBirth`, `email`, `professions_id`, `client_type_id`, `photo`, `address`, `notes`, `submittedOn`, `createAt`, `updateAt`, `status`) VALUES
(1, 9, '11111', 1, 2, 0, 'New', 'L Name', 'male', 'single', '0301', '2021-07-20', 'email@gmail.com', 1, 0, '', 'Address', 'Notes', '2021-07-28', '2021-07-17', '2021-08-03 14:42:07', 0),
(2, 9, 'Testing', 1, 2, 0, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-20', 'email@gmail.com', 0, 0, '', 'Address', 'Notes', '2021-07-28', '2021-07-17', '2021-08-03 14:42:11', 0),
(3, 9, '11111', 1, 2, 0, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-20', 'email@gmail.com', 0, 0, '', 'Address', 'Notes', '2021-07-28', '2021-07-17', '2021-08-03 14:42:13', 0),
(4, 1, '', 1, 1, 1, '', '', '', '', '', '', '', 1, 1, '', '', '0', '', '2021-07-26', '2021-07-26 08:14:35', 0),
(5, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-13', 'email@gmail.com', 0, 2, '', 'Address', 'Notes', '2021-07-17', '2021-07-26', '2021-07-26 08:14:29', 1),
(6, 9, '23432', 2, 3, 2, 'Final', 'Ok', 'male', 'married', '0300', '2021-07-16', 'email@gmail.com', 0, 2, '', 'FSD', 'Notes ok', '2021-07-24', '2021-07-26', '2021-07-26 08:15:34', 1),
(7, 9, '123123123', 1, 2, 2, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-15', 'email@gmail.com', 0, 2, '', 'Address', 'Notes', '2021-07-22', '2021-07-26', '2021-07-26 08:18:05', 1),
(8, 1, '', 1, 1, 1, '', '', '', '', '', '', '', 1, 1, '', '', '0', '', '2021-07-26', '2021-07-26 08:20:20', 0),
(9, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-27', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-07-24', '2021-07-26', '2021-07-26 08:20:15', 1),
(10, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-07-22', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-07-16', '2021-07-26', '2021-07-26 08:20:32', 1),
(11, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-20', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-21', '2021-08-03', '2021-08-03 14:42:26', 1),
(12, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-24', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-20', '2021-08-16', '2021-08-16 07:48:21', 1),
(13, 1, '', 1, 1, 1, '', '', '', '', '', '', '', 1, 1, '', '', '0', '', '2021-08-16', '2021-08-16 07:50:48', 1),
(14, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-20', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-24', '2021-08-16', '2021-08-16 07:52:38', 1),
(15, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-13', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-20', '2021-08-16', '2021-08-16 07:53:08', 1),
(16, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-13', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-20', '2021-08-16', '2021-08-16 07:53:21', 1),
(17, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-20', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-26', '2021-08-16', '2021-08-16 07:53:40', 1),
(18, 9, '23432', 1, 2, 1, 'F Name', 'L Name', 'male', 'single', '0301', '2021-08-20', 'email@gmail.com', 2, 2, '', 'Address', 'Notes', '2021-08-26', '2021-08-16', '2021-08-16 07:53:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_identification`
--

CREATE TABLE `client_identification` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `identificationNo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_next _of_kin`
--

CREATE TABLE `client_next _of_kin` (
  `id` int(11) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `dateOfBirth` varchar(100) NOT NULL,
  `staff` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `notes` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_type`
--

CREATE TABLE `client_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_type`
--

INSERT INTO `client_type` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'update', '2021-07-14', '2021-07-19 14:08:28', 0),
(2, 'Non-Member', '2021-07-14', '2021-07-19 12:38:08', 1),
(3, 'Other', '2021-07-19', '2021-07-19 12:59:40', 0),
(4, 'Issue 1 ok', '2021-07-19', '2021-07-19 14:12:15', 0),
(5, 'Issue 1', '2021-07-19', '2021-07-19 14:22:50', 0),
(6, 'Other', '2021-09-07', '2021-09-07 06:02:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `collateral_type`
--

CREATE TABLE `collateral_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collateral_type`
--

INSERT INTO `collateral_type` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'update', '2021-07-14', '2021-08-16 11:13:07', 0),
(2, 'Mrs', '2021-07-14', '2021-08-16 11:13:10', 0),
(3, 'Other', '2021-07-19', '2021-07-19 13:03:48', 0),
(4, 'Issue 1 ok', '2021-07-19', '2021-07-19 14:24:51', 0),
(5, 'Other', '2021-08-16', '2021-08-16 11:13:13', 0),
(6, 'Coll 1', '2021-08-16', '2021-08-16 11:13:18', 1),
(7, 'Coll 2', '2021-08-16', '2021-08-16 11:13:23', 1),
(8, 'Coll 3', '2021-08-16', '2021-08-16 11:13:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'US', '2021-07-17', '2021-07-26 09:00:37', 1),
(2, 'PK', '2021-07-17', '2021-07-26 09:00:30', 1),
(3, 'UK', '2021-07-26', '2021-07-26 09:00:16', 1),
(4, 'CA', '2021-07-26', '2021-07-26 09:00:19', 1),
(5, 'IN', '2021-07-26', '2021-07-26 09:00:23', 1),
(6, 'Issue 1', '2021-07-26', '2021-07-26 11:21:03', 1),
(7, 'Issue 1', '2021-07-26', '2021-07-26 11:21:40', 1),
(8, 'Issue 1', '2021-07-26', '2021-07-26 11:21:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `rate` float NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `symbol`, `code`, `rate`, `createAt`, `update_at`, `status`) VALUES
(1, 'US Dollar', '$', 'US', 163, '2021-07-14', '2021-07-26 09:17:25', 1),
(2, 'Mrs', '', '', 0, '2021-07-14', '2021-07-26 07:33:51', 0),
(3, 'Other', 's', 'c', 0.1, '2021-07-19', '2021-07-19 13:13:38', 0),
(4, 'insu', '78', '70', 1, '2021-07-26', '2021-07-26 07:38:55', 0),
(5, 'PKR', 'PKR', 'PKR', 1, '2021-07-26', '2021-07-26 09:17:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `expenseType_id` int(11) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `expenseAccount` varchar(100) NOT NULL,
  `assetAccount` varchar(100) NOT NULL,
  `recurring` varchar(100) NOT NULL,
  `recurFrequency` varchar(100) NOT NULL,
  `recurType` varchar(100) NOT NULL,
  `recurStartDate` varchar(100) NOT NULL,
  `recurEndDate` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `branch_id`, `expenseType_id`, `currency`, `amount`, `date`, `expenseAccount`, `assetAccount`, `recurring`, `recurFrequency`, `recurType`, `recurStartDate`, `recurEndDate`, `description`, `createAt`, `updateAt`, `status`) VALUES
(1, 0, 0, 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2021-07-14', '2021-07-14 08:47:07', 1),
(2, 0, 0, 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2021-07-14', '2021-07-14 07:54:19', 0),
(3, 0, 0, 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2021-07-14', '2021-07-14 08:47:07', 1),
(4, 0, 0, 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2021-07-14', '2021-07-14 08:47:32', 1),
(5, 0, 0, 'undefined', 'undefined', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2021-07-14', '2021-07-14 08:47:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `expenseAccount` varchar(100) NOT NULL,
  `assetAccount` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `name`, `expenseAccount`, `assetAccount`, `createAt`, `updateAt`, `status`) VALUES
(1, 'new', '', '', '2021-07-14', '2021-07-14 07:44:32', 1),
(2, '', '', '', '2021-07-14', '2021-07-14 07:44:52', 0),
(3, 'ok', '', '', '2021-07-14', '2021-07-14 07:44:17', 1),
(4, 'ok', '', '', '2021-07-14', '2021-07-14 08:47:07', 1),
(5, 'ok', '', '', '2021-07-14', '2021-07-14 08:47:32', 1),
(6, 'ok', '', '', '2021-07-14', '2021-07-14 08:47:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'Funds1', '2021-07-14', '2021-08-05 06:05:24', 0),
(2, 'Funds2', '2021-07-14', '2021-08-05 06:05:20', 1),
(3, 'Funds1', '2021-08-05', '2021-08-05 06:05:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `companyAddress` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `time_zone_id` int(11) NOT NULL,
  `companyEmail` varchar(200) NOT NULL,
  `companyLogo` varchar(200) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `user_id`, `companyName`, `companyAddress`, `country_id`, `time_zone_id`, `companyEmail`, `companyLogo`, `createAt`, `update_at`, `status`) VALUES
(12, 1, 'Millat Chowk', 'Main Road', 3, 2, 'timetechsolution@gmail.com', '', '2021-07-26', '2021-07-26 11:50:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `incomeType_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `incomeAccount` varchar(100) NOT NULL,
  `assetAccount` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `branch_id`, `incomeType_id`, `currency_id`, `amount`, `date`, `incomeAccount`, `assetAccount`, `description`, `createAt`, `update_at`, `status`) VALUES
(1, 1, 1, 1, '', '', '', '', '', '0000-00-00', '2021-07-26 09:13:22', 1),
(2, 0, 0, 1, 'undefined', 'undefined', '', '', 'undefined', '2021-07-19', '2021-07-26 09:13:24', 0),
(3, 1, 1, 1, '', '', '', '', '', '2021-07-19', '2021-07-26 09:13:26', 0),
(4, 9, 7, 1, '123', '2021-07-13', 'MemberShip', 'Asset', 'des', '2021-07-19', '2021-07-26 09:13:28', 1),
(5, 9, 7, 9, '2417.00', '2021-07-12', 'MemberShip', 'Asset', 'k\r\n\r\n', '2021-07-26', '2021-07-26 09:15:34', 1),
(6, 9, 7, 1, '2417.00', '2021-08-13', 'MemberShip', 'Asset', '', '2021-08-03', '2021-08-03 14:44:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_types`
--

CREATE TABLE `income_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `incomeAccount` varchar(100) NOT NULL,
  `assetAccount` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_types`
--

INSERT INTO `income_types` (`id`, `name`, `incomeAccount`, `assetAccount`, `createAt`, `updateAt`, `status`) VALUES
(1, 'income Update', '', '', '2021-07-14', '2021-07-19 05:35:04', 0),
(2, 'incomeAccount', '', '', '2021-07-14', '2021-07-14 08:02:55', 0),
(3, 'incomeAccount', '', '', '2021-07-14', '2021-07-19 05:35:07', 0),
(4, 'incomeAccount', '', '', '2021-07-14', '2021-07-19 05:35:09', 0),
(5, 'incomeAccount', '', '', '2021-07-14', '2021-07-19 05:35:11', 0),
(6, 'incomeAccount', 'MemberShip', 'Asset', '2021-07-14', '2021-07-19 05:44:45', 0),
(7, 'Issue 1', 'Income', 'Other', '2021-07-19', '2021-07-19 05:47:36', 1),
(8, 'ok', 'Income', 'Other', '2021-07-19', '2021-07-19 05:47:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `paymentType_id` int(11) NOT NULL,
  `accountNo` varchar(100) NOT NULL,
  `chequeNo` varchar(100) NOT NULL,
  `routingCode` varchar(100) NOT NULL,
  `receiptNo` int(11) NOT NULL,
  `bankNo` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `branch_id`, `country_id`, `user_id`, `amount`, `debit`, `credit`, `date`, `reference`, `paymentType_id`, `accountNo`, `chequeNo`, `routingCode`, `receiptNo`, `bankNo`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 1, 1, 1, '', '', '', '', '', 1, '', '', '', 0, 0, 'notes', '2021-07-13', '2021-08-05 06:18:26', 1),
(2, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-13', '2021-07-13 09:58:48', 0),
(3, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-13', '2021-07-13 09:59:11', 0),
(4, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-13', '2021-07-13 09:58:55', 1),
(5, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-14', '2021-07-14 08:47:04', 1),
(6, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-14', '2021-07-14 08:47:30', 1),
(7, 1, 0, 0, '', '', '', '', '', 0, '', '', '', 0, 0, 'notes', '2021-07-14', '2021-07-14 08:47:30', 1),
(8, 1, 1, 0, '', '', '', '', '', 1, '', '', '', 0, 0, 'notes', '2021-08-05', '2021-08-05 06:12:00', 1),
(9, 1, 1, 1, '', '', '', '', '', 1, '', '', '', 0, 0, 'notes', '2021-08-05', '2021-08-05 06:18:33', 1),
(10, 9, 0, 1, '98098', '17', '14', '2021-08-25', '809', 2, '98', 'undefined', '09808', 98, 9, '808', '2021-08-05', '2021-08-05 06:37:12', 1),
(11, 1, 1, 1, '', '', '', '', '', 1, '', '', '', 0, 0, 'notes', '2021-08-05', '2021-08-05 06:43:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cnic` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `direction` varchar(100) NOT NULL,
  `bill` varchar(100) NOT NULL,
  `tuition` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`id`, `name`, `cnic`, `phone_no`, `mobile_no`, `direction`, `bill`, `tuition`, `gender`, `createAt`, `update_at`, `status`) VALUES
(1, 'testing', '3310', '0303', '0301', 'PAK', '300', '800', 'Male', '0000-00-00', '2021-10-08 10:20:15', 0),
(2, 'testing good', '3310', '0303', '0301', 'PAK', '300', '800', 'Male', '2021-10-08', '2021-10-08 10:20:56', 0),
(3, 'TTS Software House', '123', '0415216584', '03341703739', '89', '79', '7897', 'male', '2021-10-08', '2021-10-08 10:21:00', 0),
(4, 'TTS Software House', '123', '0415216584', '0415216584', 'ok\r\n', '79', '7897', 'male', '2021-10-08', '2021-10-08 10:31:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `clientType` varchar(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lawyer_id` int(11) NOT NULL,
  `loanProduct_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `loan_status_id` int(11) NOT NULL DEFAULT '1',
  `loanOfficer_user_id` int(11) NOT NULL,
  `loanPurpose_id` int(11) NOT NULL,
  `funds_id` int(11) NOT NULL,
  `own_amount_percentage` int(11) NOT NULL,
  `own_interest_per_transaction` int(11) NOT NULL,
  `own_per_transaction_amount` int(11) NOT NULL,
  `own_no_of_transaction` int(11) NOT NULL,
  `principal` varchar(100) NOT NULL,
  `minimumPrincipal` int(11) NOT NULL,
  `maximumPrincipal` int(11) NOT NULL,
  `loanTerm` varchar(100) NOT NULL,
  `minimumLoanTerm` int(11) NOT NULL,
  `maximumLoanTerm` int(11) NOT NULL,
  `repaymentFrequency` varchar(100) NOT NULL,
  `repaymentType` varchar(100) NOT NULL,
  `interestRate` varchar(100) NOT NULL,
  `minimumInterestRate` float NOT NULL,
  `maximumInterestRate` float NOT NULL,
  `interestRateType` varchar(20) NOT NULL,
  `interestMethodology` varchar(30) NOT NULL,
  `expectedDisbursementDate` varchar(100) NOT NULL,
  `expectedFirstRepaymentDate` varchar(20) NOT NULL,
  `approvedAmount` varchar(10) NOT NULL,
  `approvedDate` varchar(20) NOT NULL,
  `approvedNotes` varchar(500) NOT NULL,
  `disburseAmount` varchar(10) NOT NULL,
  `disburseAccount` varchar(50) NOT NULL,
  `disburseCheque` varchar(50) NOT NULL,
  `disburseRoutingCode` varchar(50) NOT NULL,
  `disburseReceipt` varchar(50) NOT NULL,
  `disburseBank` varchar(50) NOT NULL,
  `disburseDate` varchar(20) NOT NULL,
  `disburseNotes` varchar(500) NOT NULL,
  `writeOffNote` varchar(500) NOT NULL,
  `writeOffDate` varchar(20) NOT NULL,
  `rejectNote` varchar(500) NOT NULL,
  `withdrawNotes` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `clientType`, `client_id`, `lawyer_id`, `loanProduct_id`, `payment_type_id`, `loan_status_id`, `loanOfficer_user_id`, `loanPurpose_id`, `funds_id`, `own_amount_percentage`, `own_interest_per_transaction`, `own_per_transaction_amount`, `own_no_of_transaction`, `principal`, `minimumPrincipal`, `maximumPrincipal`, `loanTerm`, `minimumLoanTerm`, `maximumLoanTerm`, `repaymentFrequency`, `repaymentType`, `interestRate`, `minimumInterestRate`, `maximumInterestRate`, `interestRateType`, `interestMethodology`, `expectedDisbursementDate`, `expectedFirstRepaymentDate`, `approvedAmount`, `approvedDate`, `approvedNotes`, `disburseAmount`, `disburseAccount`, `disburseCheque`, `disburseRoutingCode`, `disburseReceipt`, `disburseBank`, `disburseDate`, `disburseNotes`, `writeOffNote`, `writeOffDate`, `rejectNote`, `withdrawNotes`, `createAt`, `updateAt`, `status`) VALUES
(42, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-09-03', '2021-10-03', '10000', '2021-09-03', '', '10000', '', '', '', '', '', '2021-09-03', '', '', '', '', '', '2021-09-03', '2021-09-03 08:07:26', 1),
(43, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-09-03', '2021-10-03', '10000', '2021-09-03', '', '10000', '', '', '', '', '', '2021-09-03', '', '', '', '', '', '2021-09-03', '2021-09-03 08:10:39', 1),
(44, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-09-03', '2021-10-03', '10000', '2021-09-03', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-03', '2021-09-04 05:48:22', 1),
(45, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:35:44', 1),
(46, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:36:50', 1),
(47, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:40:04', 1),
(48, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:51', 1),
(49, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:50:10', 1),
(50, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:51:48', 1),
(51, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:52:58', 1),
(52, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(53, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-29', '', '', '', '', '', '2021-09-04', '2021-09-29 06:52:13', 1),
(54, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-09-04', '2021-10-04', '10000', '2021-09-04', '', '10000', '', '', '', '', '', '2021-09-04', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(55, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:24:19', 1),
(56, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:25:03', 1),
(57, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:26:05', 1),
(58, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:26:35', 1),
(59, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:26:52', 1),
(60, 'client', 5, 0, 14, 0, 1, 2, 1, 2, 0, 0, 0, 0, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:27:16', 1),
(61, 'client', 5, 0, 14, 0, 3, 2, 1, 2, 100, 3, 83, 12, '1000', 100, 2000, '12', 1, 12, '1', 'days', '10.5', 9, 15.5, 'month', 'flat', '2021-09-30', '2021-10-30', '1000', '2021-09-30', '', '1000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:28:01', 1),
(62, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:41:11', 1),
(63, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:08', 1),
(64, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:43', 1),
(65, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:55:01', 1),
(66, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:56:02', 1),
(67, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 11:58:17', 1),
(68, 'client', 5, 0, 10, 0, 2, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 12:09:15', 1),
(69, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1050, 1050, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 12:33:12', 1),
(70, 'client', 5, 0, 10, 0, 3, 2, 1, 2, 1050, 1050, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'months', '10.5', 1, 30, 'month', 'flat', '2021-09-30', '2021-10-30', '10000', '2021-09-30', '', '10000', '', '', '', '', '', '2021-09-30', '', '', '', '', '', '2021-09-30', '2021-09-30 12:34:30', 1),
(71, 'client', 18, 0, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-10-02', '2021-11-02', '10000', '2021-10-02', '', '10000', '', '', '', '', '', '2021-10-02', '', '', '', '', '', '2021-10-02', '2021-10-02 06:41:10', 1),
(72, 'client', 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-10-08', '2021-10-08 10:30:00', 1),
(73, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-10-08', '2021-10-08 10:30:11', 1),
(74, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-10-08', '2021-10-08 10:30:12', 1),
(75, 'client', 5, 4, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2021-10-08', '2021-11-08', '10000', '2021-11-22', '', '10000', '', '', '', '', '', '2021-11-22', '', '', '', '', '', '2021-10-08', '2021-11-22 11:17:46', 1),
(76, 'client', 5, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'undefined', 0, 0, 'undefined', 0, 0, 'undefined', 'undefined', 'undefined', 0, 0, 'undefined', 'undefined', 'undefined', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:41:54', 1),
(77, 'client', 5, 4, 11, 0, 1, 2, 1, 2, 0, 0, 0, 0, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'year', 'flat', '2021-12-31', '2022-12-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:42:16', 1),
(78, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:50:46', 1),
(79, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:50:50', 1),
(80, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:50:51', 1),
(81, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:50:52', 1),
(82, 'client', 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, '0', 0, 0, '', 0, 0, '', '', '', 0, 0, '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-12-31', '2021-12-31 06:50:53', 1),
(83, 'client', 9, 4, 10, 0, 3, 2, 1, 2, 1000, 33, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'month', 'flat', '2022-05-31', '2022-05-27', '10000', '2022-05-31', 'yes app', '10000', '', '', '', '', '', '2022-05-31', 'dcd', '', '', '', '', '2022-05-31', '2022-05-31 12:32:15', 1),
(84, 'client', 6, 4, 12, 0, 3, 2, 1, 2, 1000, 1000, 833, 12, '10000', 1000, 50000, '12', 1, 36, '1', 'days', '10', 1, 30, 'year', 'declining_balance', '2022-06-16', '2022-07-16', '10000', '2022-06-16', '', '10000', '', '', '', '', '', '2022-06-16', '', '', '', '', '', '2022-06-16', '2022-06-16 08:48:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_charges`
--

CREATE TABLE `loan_charges` (
  `id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chargeType` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `chargeOption` varchar(100) NOT NULL,
  `penalty` varchar(100) NOT NULL,
  `override` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_charges`
--

INSERT INTO `loan_charges` (`id`, `currency_id`, `name`, `chargeType`, `amount`, `chargeOption`, `penalty`, `override`, `active`, `createAt`, `updateAt`, `status`) VALUES
(1, 1, 'Loan Chagres Name 1', 'Installment Fee', 100, 'Flat', '0', '0', 0, '2021-08-24', '2021-09-03 06:08:58', 0),
(2, 1, 'Loan Chagres Name 2', 'OverDue Installment Fee', 50, 'Original Loan Principal', '0', '0', 0, '2021-08-24', '2021-09-03 06:08:55', 0),
(3, 1, 'My-D-F', 'Disbursement', 10, 'Flat', '0', '0', 0, '2021-09-03', '2021-09-03 06:09:01', 0),
(4, 1, 'My-D-F', 'Disbursement', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:09:29', 1),
(5, 1, 'My-D-PDOI', 'Disbursement', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:09:44', 1),
(6, 1, 'My-D-PIDOI', 'Disbursement', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:10:05', 1),
(7, 1, 'My-D-IDOI', 'Disbursement', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:10:32', 1),
(8, 1, 'My-IF-F', 'Installment Fee', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:14:12', 1),
(9, 1, 'My-IF-PDOI', 'Installment Fee', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:14:44', 1),
(10, 1, 'My-LRF-F', 'Loan Rescheduling Fee', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:15:24', 1),
(11, 1, 'My-LRF-PDOI', 'Loan Rescheduling Fee', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:16:16', 1),
(12, 1, 'My-LRF-PIDOI', 'Loan Rescheduling Fee', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:16:53', 1),
(13, 1, 'My-IF-PIDOI', 'Installment Fee', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:17:01', 1),
(14, 1, 'My-OIF-F', 'Overdue Installment Fee', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:18:16', 1),
(15, 1, 'My-LRF-IDOI', 'Loan Rescheduling Fee', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:18:24', 1),
(16, 1, 'My-OIF-PDOI', 'Overdue Installment Fee', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:03', 1),
(17, 1, 'My-LRF-TOLP', 'Loan Rescheduling Fee', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:25', 1),
(18, 1, 'My-D-TOLP', 'Disbursement', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:25', 1),
(19, 1, 'My-OIF-PIDOI', 'Overdue Installment Fee', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:39', 1),
(20, 1, 'My-D-POOLPPI', 'Disbursement', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:42', 1),
(21, 1, 'My-D-OLP', 'Disbursement', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:19:57', 1),
(22, 1, 'My-LRF-OOOLPI', 'Loan Rescheduling Fee', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:10', 1),
(23, 1, 'My-SDD-F', 'Specified Due Date', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:17', 1),
(24, 1, 'My-SDD-PDOI', 'Specified Due Date', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:28', 1),
(25, 1, 'My-SDD-PIDOI', 'Specified Due Date', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:43', 1),
(26, 1, 'My-LRF-OLP', 'Loan Rescheduling Fee', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:45', 1),
(27, 1, 'My-DPWR-F', 'Disbursement Paid with Repayment', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:52', 1),
(28, 1, 'My-SDD-IDOI', 'Specified Due Date', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:20:56', 1),
(29, 1, 'My-SDD-TOLP', 'Specified Due Date', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:21:09', 1),
(30, 1, 'My-SDD-POOLPPI', 'Specified Due Date', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:21:22', 1),
(31, 1, 'My-SDD-OLP', 'Specified Due Date', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:21:41', 1),
(32, 1, 'My-DPWR-PDOI', 'Disbursement Paid with Repayment', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:21:52', 1),
(33, 1, 'My-DPWR-PIDOI', 'Disbursement Paid with Repayment', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:22:26', 1),
(34, 1, ' My-OOLM-f', 'Overdue On Loan Maturity', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:23:00', 1),
(35, 1, 'My-OOLM-PDOI', 'Overdue On Loan Maturity', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:24:11', 1),
(36, 1, 'My-OOLM-PIDOI', 'Overdue On Loan Maturity', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:25:15', 1),
(37, 1, 'My-OOLM-IDOI', 'Overdue On Loan Maturity', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:26:00', 1),
(38, 1, 'My-OOLM-TOLP', 'Overdue On Loan Maturity', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:26:50', 1),
(39, 1, 'My-OOLM-POOLPPI', 'Overdue On Loan Maturity', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:27:29', 1),
(40, 1, 'My-OOLM-OLP', 'Overdue On Loan Maturity', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:28:04', 1),
(41, 1, 'My-LIF-F', 'Last Installment Fee', 10, 'Flat', '0', '0', 1, '2021-09-03', '2021-09-03 06:28:44', 1),
(42, 1, 'My-LIF-PDOI', 'Last Installment Fee', 10, 'Principal Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:29:12', 1),
(43, 1, 'My-IF-IDOI', 'Installment Fee', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:29:41', 1),
(44, 1, 'My-IF-TOLP', 'Installment Fee', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:30:09', 1),
(45, 1, 'My-LIF-PIDOI', 'Last Installment Fee', 10, 'Principal + Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:30:27', 1),
(46, 1, 'My-IF-POOLPPI', 'Disbursement', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:37:28', 0),
(47, 1, 'My-LIF-IDOI', 'Last Installment Fee', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:31:00', 1),
(48, 1, 'My-IF-OLP', 'Installment Fee', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:31:06', 1),
(49, 1, 'My-LRF-POOLPI', 'Last Installment Fee', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:32:19', 1),
(50, 1, 'My-OIF-IDOI', 'Overdue Installment Fee', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:32:27', 1),
(51, 1, 'My-OIF-TOLP', 'Overdue Installment Fee', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:32:45', 1),
(52, 1, 'My-LIF-OLP', 'Last Installment Fee', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:32:47', 1),
(53, 1, 'My-OIF-POOLPPI', 'Overdue Installment Fee', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:33:19', 1),
(54, 1, 'My-OIF-OLP', 'Overdue Installment Fee', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:33:38', 1),
(55, 1, 'My-DPWR-IDOI', 'Disbursement Paid with Repayment', 10, 'Interest Due On Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:34:10', 1),
(56, 1, 'My-DPWR-TOLP', 'Disbursement', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:37:38', 0),
(57, 1, 'My-DPWR-POOLPPI', 'Disbursement Paid with Repayment', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:35:01', 1),
(58, 1, 'My-DPWR-OLP', 'Disbursement Paid with Repayment', 10, 'Original Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:35:25', 1),
(59, 1, 'My-IF-POOLPPI', 'Installment Fee', 10, 'Percentage Of Original Loan Principal Per Installment', '0', '0', 1, '2021-09-03', '2021-09-03 06:38:16', 1),
(60, 1, 'My-DPWR-TOLP', 'Disbursement Paid with Repayment', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:39:08', 1),
(61, 1, 'My-LIF-TOLP', 'Last Installment Fee', 10, 'Total Outstanding Loan Principal', '0', '0', 1, '2021-09-03', '2021-09-03 06:43:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_charge_list`
--

CREATE TABLE `loan_charge_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chargeType` varchar(100) NOT NULL,
  `valuee` float NOT NULL,
  `payableAmount` float NOT NULL,
  `collectedOn` varchar(100) NOT NULL,
  `action` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_charge_list`
--

INSERT INTO `loan_charge_list` (`id`, `loan_id`, `name`, `chargeType`, `valuee`, `payableAmount`, `collectedOn`, `action`, `createAt`, `update_at`, `status`) VALUES
(1, 1, '', '', 0, 0, '', 2, '2021-08-24', '2021-09-04 13:17:24', 1),
(2, 1, '', '', 0, 0, '', 0, '2021-08-24', '2021-08-24 14:08:56', 1),
(3, 1, '', '', 0, 0, '', 1, '2021-09-03', '2021-09-03 04:51:54', 1),
(4, 42, 'My-D-F', 'Disbursement', 0, 0, 'Flat', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(5, 42, 'My-OIF-F', 'Overdue Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(6, 42, 'My-D-PIDOI', 'Disbursement', 0, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(7, 42, 'My-D-PDOI', 'Disbursement', 0, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(8, 42, 'My-D-IDOI', 'Disbursement', 0, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(9, 42, 'My-IF-F', 'Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(10, 42, 'My-IF-PDOI', 'Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(11, 42, 'My-LRF-F', 'Loan Rescheduling Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(12, 42, 'My-LRF-PDOI', 'Loan Rescheduling Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(13, 42, 'My-LRF-PIDOI', 'Loan Rescheduling Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(14, 42, 'My-IF-PIDOI', 'Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(15, 42, 'My-LRF-IDOI', 'Loan Rescheduling Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(16, 42, 'My-OIF-PDOI', 'Overdue Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(17, 42, 'My-LRF-TOLP', 'Loan Rescheduling Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(18, 42, 'My-OIF-PIDOI', 'Overdue Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(19, 42, 'My-D-TOLP', 'Disbursement', 0, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(20, 42, 'My-D-POOLPPI', 'Disbursement', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(21, 42, 'My-D-OLP', 'Disbursement', 0, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(22, 42, 'My-SDD-F', 'Specified Due Date', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(23, 42, 'My-LRF-OOOLPI', 'Loan Rescheduling Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(24, 42, 'My-SDD-PDOI', 'Specified Due Date', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(25, 42, 'My-SDD-PIDOI', 'Specified Due Date', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(26, 42, 'My-LRF-OLP', 'Loan Rescheduling Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(27, 42, 'My-DPWR-F', 'Disbursement Paid with Repayment', 0, 0, 'Flat', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(28, 42, 'My-SDD-IDOI', 'Specified Due Date', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(29, 42, 'My-SDD-TOLP', 'Specified Due Date', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(30, 42, 'My-SDD-POOLPPI', 'Specified Due Date', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(31, 42, 'My-SDD-OLP', 'Specified Due Date', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(32, 42, 'My-DPWR-PDOI', 'Disbursement Paid with Repayment', 0, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(33, 42, 'My-DPWR-PIDOI', 'Disbursement Paid with Repayment', 0, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(34, 42, ' My-OOLM-f', 'Overdue On Loan Maturity', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(35, 42, 'My-OOLM-PDOI', 'Overdue On Loan Maturity', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(36, 42, 'My-OOLM-PIDOI', 'Overdue On Loan Maturity', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(37, 42, 'My-OOLM-IDOI', 'Overdue On Loan Maturity', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(38, 42, 'My-OOLM-TOLP', 'Overdue On Loan Maturity', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(39, 42, 'My-OOLM-POOLPPI', 'Overdue On Loan Maturity', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(40, 42, 'My-OOLM-OLP', 'Overdue On Loan Maturity', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(41, 42, 'My-LIF-F', 'Last Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(42, 42, 'My-LIF-PDOI', 'Last Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(43, 42, 'My-IF-IDOI', 'Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(44, 42, 'My-IF-TOLP', 'Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(45, 42, 'My-LIF-PIDOI', 'Last Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(46, 42, 'My-LIF-IDOI', 'Last Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(47, 42, 'My-IF-OLP', 'Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(48, 42, 'My-OIF-IDOI', 'Overdue Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(49, 42, 'My-LRF-POOLPI', 'Last Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(50, 42, 'My-OIF-TOLP', 'Overdue Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(51, 42, 'My-LIF-OLP', 'Last Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(52, 42, 'My-OIF-POOLPPI', 'Overdue Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(53, 42, 'My-DPWR-IDOI', 'Disbursement Paid with Repayment', 0, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(54, 42, 'My-DPWR-POOLPPI', 'Disbursement Paid with Repayment', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(55, 42, 'My-DPWR-OLP', 'Disbursement Paid with Repayment', 0, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(56, 42, 'My-IF-POOLPPI', 'Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(57, 42, 'My-DPWR-TOLP', 'Disbursement Paid with Repayment', 0, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 06:49:07', 1),
(58, 42, 'My-OIF-OLP', 'Overdue Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(59, 42, 'My-LIF-TOLP', 'Last Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 06:49:07', 1),
(60, 43, 'My-D-F', 'Disbursement', 0, 0, 'Flat', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(61, 43, 'My-D-PDOI', 'Disbursement', 0, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(62, 43, 'My-OIF-F', 'Overdue Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(63, 43, 'My-IF-PIDOI', 'Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(64, 43, 'My-D-PIDOI', 'Disbursement', 0, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(65, 43, 'My-D-IDOI', 'Disbursement', 0, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(66, 43, 'My-IF-F', 'Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(67, 43, 'My-IF-PDOI', 'Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(68, 43, 'My-LRF-F', 'Loan Rescheduling Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(69, 43, 'My-LRF-PIDOI', 'Loan Rescheduling Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(70, 43, 'My-LRF-PDOI', 'Loan Rescheduling Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(71, 43, 'My-LRF-IDOI', 'Loan Rescheduling Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(72, 43, 'My-OIF-PDOI', 'Overdue Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(73, 43, 'My-LRF-TOLP', 'Loan Rescheduling Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(74, 43, 'My-D-TOLP', 'Disbursement', 0, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(75, 43, 'My-D-POOLPPI', 'Disbursement', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(76, 43, 'My-D-OLP', 'Disbursement', 0, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(77, 43, 'My-LRF-OOOLPI', 'Loan Rescheduling Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(78, 43, 'My-OIF-PIDOI', 'Overdue Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(79, 43, 'My-SDD-F', 'Specified Due Date', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(80, 43, 'My-SDD-PDOI', 'Specified Due Date', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(81, 43, 'My-SDD-PIDOI', 'Specified Due Date', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(82, 43, 'My-LRF-OLP', 'Loan Rescheduling Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(83, 43, 'My-DPWR-F', 'Disbursement Paid with Repayment', 0, 0, 'Flat', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(84, 43, 'My-SDD-IDOI', 'Specified Due Date', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(85, 43, 'My-SDD-TOLP', 'Specified Due Date', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(86, 43, 'My-SDD-POOLPPI', 'Specified Due Date', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(87, 43, 'My-SDD-OLP', 'Specified Due Date', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(88, 43, 'My-DPWR-PDOI', 'Disbursement Paid with Repayment', 0, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(89, 43, 'My-DPWR-PIDOI', 'Disbursement Paid with Repayment', 0, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(90, 43, ' My-OOLM-f', 'Overdue On Loan Maturity', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(91, 43, 'My-OOLM-PDOI', 'Overdue On Loan Maturity', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(92, 43, 'My-OOLM-PIDOI', 'Overdue On Loan Maturity', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(93, 43, 'My-OOLM-IDOI', 'Overdue On Loan Maturity', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(94, 43, 'My-OOLM-POOLPPI', 'Overdue On Loan Maturity', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(95, 43, 'My-OOLM-OLP', 'Overdue On Loan Maturity', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(96, 43, 'My-LIF-F', 'Last Installment Fee', 0, 0, 'Flat', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(97, 43, 'My-LIF-PDOI', 'Last Installment Fee', 0, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(98, 43, 'My-IF-IDOI', 'Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(99, 43, 'My-OOLM-TOLP', 'Overdue On Loan Maturity', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(100, 43, 'My-IF-TOLP', 'Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(101, 43, 'My-LIF-PIDOI', 'Last Installment Fee', 0, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(102, 43, 'My-LIF-IDOI', 'Last Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(103, 43, 'My-IF-OLP', 'Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(104, 43, 'My-OIF-IDOI', 'Overdue Installment Fee', 0, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(105, 43, 'My-LRF-POOLPI', 'Last Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(106, 43, 'My-OIF-TOLP', 'Overdue Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(107, 43, 'My-OIF-POOLPPI', 'Overdue Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(108, 43, 'My-OIF-OLP', 'Overdue Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(109, 43, 'My-DPWR-IDOI', 'Disbursement Paid with Repayment', 0, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(110, 43, 'My-DPWR-POOLPPI', 'Disbursement Paid with Repayment', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(111, 43, 'My-DPWR-OLP', 'Disbursement Paid with Repayment', 0, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(112, 43, 'My-IF-POOLPPI', 'Installment Fee', 0, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(113, 43, 'My-LIF-OLP', 'Last Installment Fee', 0, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(114, 43, 'My-DPWR-TOLP', 'Disbursement Paid with Repayment', 0, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 08:08:51', 1),
(115, 43, 'My-LIF-TOLP', 'Last Installment Fee', 0, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 08:08:51', 1),
(116, 44, 'My-D-F', 'Disbursement', 10, 0, 'Flat', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(117, 44, 'My-IF-PIDOI', 'Installment Fee', 10, 1040, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-04 05:20:27', 1),
(118, 44, 'My-IF-PDOI', 'Installment Fee', 10, 1000, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 13:09:38', 1),
(119, 44, 'My-LRF-IDOI', 'Loan Rescheduling Fee', 10, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(120, 44, 'My-OIF-F', 'Overdue Installment Fee', 10, 0, 'Flat', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(121, 44, 'My-D-PDOI', 'Disbursement', 10, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(122, 44, 'My-D-PIDOI', 'Disbursement', 10, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(123, 44, 'My-D-IDOI', 'Disbursement', 10, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(124, 44, 'My-IF-F', 'Installment Fee', 10, 120, 'Flat', 1, '2021-09-03', '2021-09-03 13:04:07', 1),
(125, 44, 'My-LRF-F', 'Loan Rescheduling Fee', 10, 0, 'Flat', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(126, 44, 'My-LRF-PDOI', 'Loan Rescheduling Fee', 10, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(127, 44, 'My-LRF-PIDOI', 'Loan Rescheduling Fee', 10, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(128, 44, 'My-OIF-PDOI', 'Overdue Installment Fee', 10, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(129, 44, 'My-LRF-TOLP', 'Loan Rescheduling Fee', 10, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(130, 44, 'My-D-TOLP', 'Disbursement', 10, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(131, 44, 'My-OIF-PIDOI', 'Overdue Installment Fee', 10, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(132, 44, 'My-D-POOLPPI', 'Disbursement', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(133, 44, 'My-D-OLP', 'Disbursement', 10, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(134, 44, 'My-LRF-OOOLPI', 'Loan Rescheduling Fee', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(135, 44, 'My-SDD-F', 'Specified Due Date', 10, 0, 'Flat', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(136, 44, 'My-SDD-PDOI', 'Specified Due Date', 10, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(137, 44, 'My-SDD-PIDOI', 'Specified Due Date', 10, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(138, 44, 'My-LRF-OLP', 'Loan Rescheduling Fee', 10, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(139, 44, 'My-DPWR-F', 'Disbursement Paid with Repayment', 10, 0, 'Flat', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(140, 44, 'My-SDD-IDOI', 'Specified Due Date', 10, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(141, 44, 'My-SDD-TOLP', 'Specified Due Date', 10, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(142, 44, 'My-SDD-POOLPPI', 'Specified Due Date', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(143, 44, 'My-SDD-OLP', 'Specified Due Date', 10, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(144, 44, 'My-DPWR-PDOI', 'Disbursement Paid with Repayment', 10, 0, 'Principal Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(145, 44, 'My-DPWR-PIDOI', 'Disbursement Paid with Repayment', 10, 0, 'Principal + Interest Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(146, 44, ' My-OOLM-f', 'Overdue On Loan Maturity', 10, 0, 'Flat', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(147, 44, 'My-OOLM-PDOI', 'Overdue On Loan Maturity', 10, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(148, 44, 'My-OOLM-PIDOI', 'Overdue On Loan Maturity', 10, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(149, 44, 'My-OOLM-IDOI', 'Overdue On Loan Maturity', 10, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(150, 44, 'My-OOLM-TOLP', 'Overdue On Loan Maturity', 10, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(151, 44, 'My-OOLM-POOLPPI', 'Overdue On Loan Maturity', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(152, 44, 'My-OOLM-OLP', 'Overdue On Loan Maturity', 10, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(153, 44, 'My-LIF-F', 'Last Installment Fee', 10, 0, 'Flat', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(154, 44, 'My-LIF-PDOI', 'Last Installment Fee', 10, 0, 'Principal Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(155, 44, 'My-IF-IDOI', 'Installment Fee', 10, 40, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-04 05:48:22', 1),
(156, 44, 'My-IF-TOLP', 'Installment Fee', 10, 12000, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 13:09:38', 1),
(157, 44, 'My-LIF-PIDOI', 'Last Installment Fee', 10, 0, 'Principal + Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(158, 44, 'My-LIF-IDOI', 'Last Installment Fee', 10, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(159, 44, 'My-IF-OLP', 'Installment Fee', 10, 12000, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 13:09:38', 1),
(160, 44, 'My-LRF-POOLPI', 'Last Installment Fee', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(161, 44, 'My-OIF-IDOI', 'Overdue Installment Fee', 10, 0, 'Interest Due On Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(162, 44, 'My-OIF-TOLP', 'Overdue Installment Fee', 10, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(163, 44, 'My-LIF-OLP', 'Last Installment Fee', 10, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(164, 44, 'My-OIF-POOLPPI', 'Overdue Installment Fee', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(165, 44, 'My-OIF-OLP', 'Overdue Installment Fee', 10, 0, 'Original Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(166, 44, 'My-DPWR-IDOI', 'Disbursement Paid with Repayment', 10, 0, 'Interest Due On Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(167, 44, 'My-DPWR-POOLPPI', 'Disbursement Paid with Repayment', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(168, 44, 'My-DPWR-OLP', 'Disbursement Paid with Repayment', 10, 0, 'Original Loan Principal', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(169, 44, 'My-IF-POOLPPI', 'Installment Fee', 10, 12000, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-03', '2021-09-03 13:09:38', 1),
(170, 44, 'My-DPWR-TOLP', 'Disbursement Paid with Repayment', 10, 0, 'Total Outstanding Loan Principal', 0, '2021-09-03', '2021-09-03 09:42:07', 1),
(171, 44, 'My-LIF-TOLP', 'Last Installment Fee', 10, 0, 'Total Outstanding Loan Principal', 1, '2021-09-03', '2021-09-03 09:42:07', 1),
(172, 45, 'My-IF-F', 'Installment Fee', 10, 120, 'Flat', 1, '2021-09-04', '2021-09-04 05:35:44', 1),
(173, 46, 'My-IF-PDOI', 'Installment Fee', 10, 1000, 'Principal Due On Installment', 1, '2021-09-04', '2021-09-04 05:36:51', 1),
(174, 47, 'My-IF-PIDOI', 'Installment Fee', 10, 2200, 'Principal + Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:40:04', 1),
(175, 48, 'My-IF-IDOI', 'Installment Fee', 10, 1200, 'Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:46:52', 1),
(176, 49, 'My-IF-TOLP', 'Installment Fee', 10, 12000, 'Total Outstanding Loan Principal', 1, '2021-09-04', '2021-09-04 05:50:10', 1),
(177, 50, 'My-IF-POOLPPI', 'Installment Fee', 10, 12000, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-04', '2021-09-04 05:51:48', 1),
(178, 51, 'My-IF-OLP', 'Installment Fee', 10, 12000, 'Original Loan Principal', 1, '2021-09-04', '2021-09-04 05:52:58', 1),
(179, 52, 'My-IF-OLP', 'Installment Fee', 10, 12000, 'Original Loan Principal', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(180, 52, 'My-IF-F', 'Installment Fee', 10, 120, 'Flat', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(181, 52, 'My-IF-PIDOI', 'Installment Fee', 10, 2200, 'Principal + Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(182, 52, 'My-IF-PDOI', 'Installment Fee', 10, 1000, 'Principal Due On Installment', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(183, 52, 'My-IF-IDOI', 'Installment Fee', 10, 1200, 'Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(184, 52, 'My-IF-TOLP', 'Installment Fee', 10, 12000, 'Total Outstanding Loan Principal', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(185, 52, 'My-IF-POOLPPI', 'Installment Fee', 10, 12000, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-04', '2021-09-04 05:54:29', 1),
(186, 53, 'My-D-F', 'Disbursement', 10, 0, 'Flat', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(187, 53, 'My-D-PDOI', 'Disbursement', 10, 0, 'Principal Due On Installment', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(188, 53, 'My-D-PIDOI', 'Disbursement', 10, 0, 'Principal + Interest Due On Installment', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(189, 53, 'My-IF-F', 'Installment Fee', 10, 120, 'Flat', 2, '2021-09-04', '2021-09-04 11:58:55', 1),
(190, 53, 'My-D-IDOI', 'Disbursement', 10, 0, 'Interest Due On Installment', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(191, 53, 'My-IF-PDOI', 'Installment Fee', 10, 1000, 'Principal Due On Installment', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(192, 53, 'My-IF-PIDOI', 'Installment Fee', 10, 2200, 'Principal + Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(193, 53, 'My-D-TOLP', 'Disbursement', 10, 0, 'Total Outstanding Loan Principal', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(194, 53, 'My-D-POOLPPI', 'Disbursement', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(195, 53, 'My-IF-OLP', 'Installment Fee', 10, 12000, 'Original Loan Principal', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(196, 53, 'My-IF-TOLP', 'Installment Fee', 10, 12000, 'Total Outstanding Loan Principal', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(197, 53, 'My-IF-POOLPPI', 'Installment Fee', 10, 12000, 'Percentage Of Original Loan Principal Per Installment', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(198, 53, 'My-D-OLP', 'Disbursement', 10, 0, 'Original Loan Principal', 0, '2021-09-04', '2021-09-04 05:56:45', 1),
(199, 53, 'My-IF-IDOI', 'Installment Fee', 10, 1200, 'Interest Due On Installment', 1, '2021-09-04', '2021-09-04 05:56:53', 1),
(200, 54, 'My-D-F', 'Disbursement', 10, 0, 'Flat', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(201, 54, 'My-IF-IDOI', 'Installment Fee', 10, 40, 'Interest Due On Installment', 2, '2021-09-04', '2021-09-04 14:04:26', 1),
(202, 54, 'My-D-PDOI', 'Disbursement', 10, 0, 'Principal Due On Installment', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(203, 54, 'My-IF-F', 'Installment Fee', 10, 120, 'Flat', 2, '2021-09-04', '2021-09-04 14:03:57', 1),
(204, 54, 'My-IF-PDOI', 'Installment Fee', 10, 1000, 'Principal Due On Installment', 1, '2021-09-04', '2021-09-04 13:28:10', 1),
(205, 54, 'My-D-PIDOI', 'Disbursement', 10, 0, 'Principal + Interest Due On Installment', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(206, 54, 'My-D-IDOI', 'Disbursement', 10, 0, 'Interest Due On Installment', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(207, 54, 'My-IF-PIDOI', 'Installment Fee', 10, 1040, 'Principal + Interest Due On Installment', 1, '2021-09-04', '2021-09-04 13:28:10', 1),
(208, 54, 'My-D-TOLP', 'Disbursement', 10, 0, 'Total Outstanding Loan Principal', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(209, 54, 'My-D-POOLPPI', 'Disbursement', 10, 0, 'Percentage Of Original Loan Principal Per Installment', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(210, 54, 'My-D-OLP', 'Disbursement', 10, 0, 'Original Loan Principal', 0, '2021-09-04', '2021-09-04 13:23:58', 1),
(211, 54, 'My-IF-TOLP', 'Installment Fee', 10, 12000, 'Total Outstanding Loan Principal', 1, '2021-09-04', '2021-09-04 13:28:10', 1),
(212, 54, 'My-IF-OLP', 'Installment Fee', 10, 12000, 'Original Loan Principal', 2, '2021-09-04', '2021-09-04 14:05:09', 1),
(213, 54, 'My-IF-POOLPPI', 'Installment Fee', 10, 12000, 'Percentage Of Original Loan Principal Per Installment', 2, '2021-09-04', '2021-09-04 14:06:00', 1),
(214, 56, 'My-D-F', 'Disbursement', 10, 0, 'Flat', 0, '2021-09-30', '2021-09-30 11:25:03', 1),
(215, 83, 'My-D-PDOI', 'Disbursement', 10, 0, 'Principal Due On Installment', 0, '2022-05-31', '2022-05-31 12:31:38', 1),
(216, 83, 'My-D-F', 'Disbursement', 10, 0, 'Flat', 0, '2022-05-31', '2022-05-31 12:31:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_collateral_list`
--

CREATE TABLE `loan_collateral_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `collateral_type_id` int(11) NOT NULL,
  `valuee` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_files_list`
--

CREATE TABLE `loan_files_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_guarantor_list`
--

CREATE TABLE `loan_guarantor_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_note_list`
--

CREATE TABLE `loan_note_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_products`
--

CREATE TABLE `loan_products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shortName` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `funds_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `decimalPlaces` varchar(100) NOT NULL,
  `defaultPrincipal` varchar(100) NOT NULL,
  `minimumPrincipal` varchar(100) NOT NULL,
  `maximumPrincipal` varchar(100) NOT NULL,
  `defaultLoanTerm` varchar(100) NOT NULL,
  `minimumLoanTerm` varchar(100) NOT NULL,
  `maximumLoanTerm` varchar(100) NOT NULL,
  `repaymentFrequency` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `defaultInterestRate` varchar(100) NOT NULL,
  `minimumInterestRate` varchar(100) NOT NULL,
  `maximumInterestRate` varchar(100) NOT NULL,
  `interestRateType` varchar(100) NOT NULL,
  `graceOnPrincipalPayment` varchar(100) NOT NULL,
  `graceOnInterestPayment` varchar(100) NOT NULL,
  `graceOnInterestCharged` varchar(100) NOT NULL,
  `interestMethodology` varchar(100) NOT NULL,
  `amortizationMethod` varchar(100) NOT NULL,
  `loanTransactionProcessingStrategy` varchar(100) NOT NULL,
  `creditCheck` varchar(100) NOT NULL,
  `accountingRule` varchar(100) NOT NULL,
  `fundSource` varchar(100) NOT NULL,
  `loanPortfolio` varchar(100) NOT NULL,
  `overpayments` varchar(100) NOT NULL,
  `suspendedIncome` varchar(100) NOT NULL,
  `incomeFromInterest` varchar(100) NOT NULL,
  `incomeFromPenalties` varchar(100) NOT NULL,
  `incomeFromFees` varchar(100) NOT NULL,
  `incomeFromRecovery` varchar(100) NOT NULL,
  `lossesWrittenOff` varchar(100) NOT NULL,
  `interestWrittenOff` varchar(100) NOT NULL,
  `autoDisburse` varchar(100) NOT NULL,
  `graceOnPrincipalPay` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_products`
--

INSERT INTO `loan_products` (`id`, `name`, `shortName`, `description`, `funds_id`, `currency_id`, `decimalPlaces`, `defaultPrincipal`, `minimumPrincipal`, `maximumPrincipal`, `defaultLoanTerm`, `minimumLoanTerm`, `maximumLoanTerm`, `repaymentFrequency`, `type`, `defaultInterestRate`, `minimumInterestRate`, `maximumInterestRate`, `interestRateType`, `graceOnPrincipalPayment`, `graceOnInterestPayment`, `graceOnInterestCharged`, `interestMethodology`, `amortizationMethod`, `loanTransactionProcessingStrategy`, `creditCheck`, `accountingRule`, `fundSource`, `loanPortfolio`, `overpayments`, `suspendedIncome`, `incomeFromInterest`, `incomeFromPenalties`, `incomeFromFees`, `incomeFromRecovery`, `lossesWrittenOff`, `interestWrittenOff`, `autoDisburse`, `graceOnPrincipalPay`, `active`, `createAt`, `updateAt`, `status`) VALUES
(5, 'Dec Month', 'Dec Month', 'Dec Month', 2, 1, '0', '100', '10', '10000', '12', '1', '24', '2', 'days', '2', '1', '20', 'month', '0', '0', '0', 'declining_balance', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-08-25', '2021-09-03 06:43:40', 0),
(6, 'Dec Year', 'Dec Year', 'Dec Year', 3, 1, '0', '1000', '1000', '20000', '12', '2', '36', '1', 'days', '2', '2', '20', 'year', '0', '0', '0', 'declining_balance', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-08-25', '2021-09-03 06:43:43', 0),
(7, 'Flat Month', 'Flat Month', 'Flat Month', 2, 0, '0', '1000', '1000', '20000', '12', '6', '24', '2', 'days', '2', '2', '20', 'month', '0', '0', '0', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-08-25', '2021-09-03 06:43:46', 0),
(8, 'Flat Year', 'Flat Year', 'Flat Year', 2, 1, '0', '1000', '1000', '20000', '24', '6', '30', '4', 'days', '2', '2', '20', 'year', '0', '0', '0', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-08-25', '2021-09-03 06:43:49', 0),
(9, '678', '6876', '876', 2, 1, '687', '6', '6', '687', '6', '3', '768', '2', 'days', '1', '1', '20', 'month', '8', '8', '6', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-08-27', '2021-09-03 06:43:53', 0),
(10, 'All Charges F-M', 'All Charges F-M', 'All Charges F-M', 2, 1, '20', '10000', '1000', '50000', '12', '1', '36', '1', 'days', '10', '1', '30', 'month', '0', '0', '0', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-09-03', '2021-09-03 06:45:34', 1),
(11, 'All Charges F-Y', 'All Charges F-Y', 'All Charges F-Y', 2, 1, '20', '10000', '1000', '50000', '12', '1', '36', '1', 'days', '10', '1', '30', 'year', '0', '0', '0', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-09-03', '2021-09-03 06:46:31', 1),
(12, 'All Charges D-Y', 'All Charges D-Y', 'All Charges D-Y', 2, 1, '20', '10000', '1000', '50000', '12', '1', '36', '1', 'days', '10', '1', '30', 'year', '0', '0', '0', 'declining_balance', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-09-03', '2021-09-03 06:47:23', 1),
(13, 'All Charges D-M', 'All Charges D-M', 'All Charges D-M', 2, 1, '20', '10000', '1000', '50000', '12', '1', '36', '1', 'days', '10', '1', '30', 'month', '0', '0', '0', 'declining_balance', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-09-03', '2021-09-03 06:48:09', 1),
(14, 'Issue 1', '8977', 'New', 2, 1, '0', '1000', '100', '2000', '12', '1', '12', '1', 'days', '10.5', '9', '15.5', 'month', '0', '0', '0', 'flat', 'equal_installments', 'Fees, Intrest, Principal', '', 'accountingRule', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Motor Vehicle', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 'Utalities', 'Loan App Fees', '0', 'undefined', 1, '2021-09-30', '2021-09-30 11:24:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_product_charges`
--

CREATE TABLE `loan_product_charges` (
  `id` int(11) NOT NULL,
  `loan_charges_id` int(11) NOT NULL,
  `loan_products_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_product_charges`
--

INSERT INTO `loan_product_charges` (`id`, `loan_charges_id`, `loan_products_id`, `createAt`, `update_at`, `status`) VALUES
(1, 2, 1, '2021-08-24', '2021-08-24 13:37:29', 1),
(2, 1, 1, '2021-08-24', '2021-08-24 13:37:29', 1),
(3, 1, 2, '2021-08-25', '2021-08-25 11:20:58', 1),
(4, 2, 2, '2021-08-25', '2021-08-25 11:20:58', 1),
(5, 1, 3, '2021-08-25', '2021-08-25 12:33:29', 1),
(6, 2, 3, '2021-08-25', '2021-08-25 12:33:29', 1),
(7, 1, 5, '2021-08-25', '2021-08-25 13:35:00', 1),
(8, 2, 5, '2021-08-25', '2021-08-25 13:35:00', 1),
(9, 1, 8, '2021-08-25', '2021-08-25 14:02:18', 1),
(10, 2, 8, '2021-08-25', '2021-08-25 14:02:18', 1),
(11, 1, 9, '2021-08-27', '2021-08-27 11:18:19', 1),
(12, 4, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(13, 14, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(14, 5, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(15, 6, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(16, 7, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(17, 8, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(18, 9, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(19, 10, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(20, 11, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(21, 12, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(22, 13, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(23, 15, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(24, 16, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(25, 17, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(26, 18, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(27, 19, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(28, 20, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(29, 21, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(30, 22, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(31, 23, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(32, 24, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(33, 25, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(34, 26, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(35, 27, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(36, 28, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(37, 29, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(38, 30, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(39, 31, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(40, 32, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(41, 33, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(42, 34, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(43, 35, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(44, 36, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(45, 37, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(46, 38, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(47, 39, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(48, 40, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(49, 41, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(50, 42, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(51, 43, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(52, 44, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(53, 45, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(54, 47, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(55, 48, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(56, 49, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(57, 50, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(58, 51, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(59, 52, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(60, 53, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(61, 54, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(62, 55, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(63, 57, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(64, 58, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(65, 59, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(66, 60, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(67, 61, 10, '2021-09-03', '2021-09-03 06:45:34', 1),
(68, 4, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(69, 5, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(70, 6, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(71, 7, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(72, 8, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(73, 9, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(74, 10, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(75, 11, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(76, 12, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(77, 13, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(78, 14, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(79, 15, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(80, 16, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(81, 17, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(82, 18, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(83, 19, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(84, 20, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(85, 21, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(86, 22, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(87, 23, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(88, 24, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(89, 25, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(90, 26, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(91, 27, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(92, 28, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(93, 29, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(94, 30, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(95, 31, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(96, 32, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(97, 33, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(98, 34, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(99, 35, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(100, 36, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(101, 37, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(102, 38, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(103, 39, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(104, 40, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(105, 41, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(106, 42, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(107, 43, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(108, 44, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(109, 45, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(110, 47, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(111, 48, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(112, 49, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(113, 50, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(114, 51, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(115, 52, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(116, 53, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(117, 54, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(118, 55, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(119, 57, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(120, 59, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(121, 60, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(122, 58, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(123, 61, 11, '2021-09-03', '2021-09-03 06:46:31', 1),
(124, 4, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(125, 5, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(126, 6, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(127, 7, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(128, 8, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(129, 9, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(130, 10, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(131, 11, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(132, 12, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(133, 13, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(134, 14, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(135, 15, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(136, 16, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(137, 17, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(138, 18, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(139, 19, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(140, 20, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(141, 21, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(142, 22, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(143, 23, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(144, 24, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(145, 25, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(146, 26, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(147, 27, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(148, 28, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(149, 30, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(150, 31, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(151, 32, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(152, 33, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(153, 29, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(154, 34, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(155, 35, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(156, 36, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(157, 38, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(158, 39, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(159, 40, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(160, 41, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(161, 42, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(162, 37, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(163, 43, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(164, 44, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(165, 45, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(166, 47, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(167, 48, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(168, 49, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(169, 50, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(170, 51, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(171, 52, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(172, 53, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(173, 54, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(174, 55, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(175, 57, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(176, 58, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(177, 59, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(178, 60, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(179, 61, 12, '2021-09-03', '2021-09-03 06:47:23', 1),
(180, 4, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(181, 5, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(182, 6, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(183, 7, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(184, 8, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(185, 9, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(186, 10, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(187, 11, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(188, 12, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(189, 13, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(190, 14, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(191, 15, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(192, 16, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(193, 17, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(194, 18, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(195, 19, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(196, 20, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(197, 21, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(198, 22, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(199, 23, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(200, 24, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(201, 25, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(202, 26, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(203, 27, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(204, 28, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(205, 29, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(206, 30, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(207, 31, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(208, 32, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(209, 33, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(210, 34, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(211, 35, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(212, 36, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(213, 37, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(214, 38, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(215, 39, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(216, 40, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(217, 41, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(218, 42, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(219, 43, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(220, 44, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(221, 45, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(222, 47, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(223, 48, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(224, 49, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(225, 50, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(226, 51, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(227, 52, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(228, 53, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(229, 54, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(230, 55, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(231, 57, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(232, 58, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(233, 59, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(234, 60, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(235, 61, 13, '2021-09-03', '2021-09-03 06:48:09', 1),
(236, 4, 14, '2021-09-30', '2021-09-30 11:24:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_purpose`
--

CREATE TABLE `loan_purpose` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_purpose`
--

INSERT INTO `loan_purpose` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'Vehicle', '2021-08-24', '2021-08-24 13:38:24', 1),
(2, 'Personal', '2021-08-24', '2021-08-24 13:38:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_repayment_schedule`
--

CREATE TABLE `loan_repayment_schedule` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `ddate` varchar(20) NOT NULL,
  `ddays` int(11) NOT NULL,
  `payDate` varchar(20) NOT NULL,
  `disbursement` int(11) NOT NULL,
  `principalDue` int(11) NOT NULL,
  `principalBalance` int(11) NOT NULL,
  `interestDue` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `penalties` int(11) NOT NULL,
  `totalPaid` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_repayment_schedule`
--

INSERT INTO `loan_repayment_schedule` (`id`, `loan_id`, `ddate`, `ddays`, `payDate`, `disbursement`, `principalDue`, `principalBalance`, `interestDue`, `fees`, `penalties`, `totalPaid`, `createAt`, `update_at`, `status`) VALUES
(246, 15, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(247, 15, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(248, 15, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(249, 15, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(250, 15, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(251, 15, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(252, 15, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:33', 0),
(253, 15, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(254, 15, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(255, 15, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(256, 15, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(257, 15, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(258, 15, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(259, 15, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:04:58', 1),
(260, 16, '2021-08-25', 0, '', 2000, 0, 2000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(261, 16, '2021-09-25', 31, '', 0, 333, 1667, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(262, 16, '2021-10-03', 4, '', 0, 333, 1334, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(263, 16, '2021-10-07', 4, '', 0, 333, 1001, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(264, 16, '2021-10-11', 4, '', 0, 333, 668, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(265, 16, '2021-10-15', 4, '', 0, 333, 335, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(266, 16, '2021-10-19', 4, '', 0, 333, 2, 10, 0, 0, 0, '2021-08-25', '2021-08-25 14:06:11', 1),
(267, 17, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(268, 17, '2021-09-25', 31, '', 0, 167, 833, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(269, 17, '2021-10-03', 4, '', 0, 167, 666, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(270, 17, '2021-10-07', 4, '', 0, 167, 499, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(271, 17, '2021-10-11', 4, '', 0, 167, 332, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(272, 17, '2021-10-15', 4, '', 0, 167, 165, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(273, 17, '2021-10-19', 4, '', 0, 167, -2, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:10:38', 1),
(274, 18, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(275, 18, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(276, 18, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(277, 18, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(278, 18, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(279, 18, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(280, 18, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:11:28', 1),
(281, 19, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(282, 19, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(283, 19, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(284, 19, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(285, 19, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(286, 19, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(287, 19, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:02', 1),
(288, 20, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(289, 20, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(290, 20, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(291, 20, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(292, 20, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(293, 20, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(294, 20, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:12:53', 1),
(295, 21, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(296, 21, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(297, 21, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(298, 21, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(299, 21, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(300, 21, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(301, 21, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:13:45', 1),
(302, 22, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(303, 22, '2021-09-25', 31, '', 0, 167, 833, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(304, 22, '2021-09-29', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(305, 22, '2021-10-01', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(306, 22, '2021-10-03', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(307, 22, '2021-10-05', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(308, 22, '2021-10-07', 2, '', 0, 167, -2, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:14:17', 1),
(309, 23, '2021-08-25', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(310, 23, '2021-09-25', 31, '', 0, 82, 835, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(311, 23, '2021-09-27', 1, '', 0, 82, 753, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(312, 23, '2021-09-28', 1, '', 0, 82, 670, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(313, 23, '2021-09-29', 1, '', 0, 83, 588, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(314, 23, '2021-09-30', 1, '', 0, 83, 505, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(315, 23, '2021-10-01', 1, '', 0, 83, 423, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(316, 23, '2021-10-02', 1, '', 0, 83, 340, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(317, 23, '2021-10-03', 1, '', 0, 83, 257, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(318, 23, '2021-10-04', 1, '', 0, 83, 174, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(319, 23, '2021-10-05', 1, '', 0, 83, 91, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(320, 23, '2021-10-06', 1, '', 0, 83, 8, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(321, 23, '2021-10-07', 1, '', 0, 83, -75, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:15:52', 1),
(322, 24, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(323, 24, '2021-09-25', 31, '', 0, 829, 8341, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(324, 24, '2021-09-27', 1, '', 0, 830, 7511, 6, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(325, 24, '2021-09-28', 1, '', 0, 831, 6680, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(326, 24, '2021-09-29', 1, '', 0, 832, 5848, 4, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(327, 24, '2021-09-30', 1, '', 0, 832, 5016, 4, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(328, 24, '2021-10-01', 1, '', 0, 833, 4184, 3, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(329, 24, '2021-10-02', 1, '', 0, 833, 3350, 3, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(330, 24, '2021-10-03', 1, '', 0, 834, 2517, 2, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(331, 24, '2021-10-04', 1, '', 0, 834, 1682, 2, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(332, 24, '2021-10-05', 1, '', 0, 835, 847, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(333, 24, '2021-10-06', 1, '', 0, 835, 12, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(334, 24, '2021-10-07', 1, '', 0, 836, -824, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:19:18', 1),
(335, 25, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(336, 25, '2021-09-25', 31, '', 0, 8326, -6653, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(337, 25, '2021-09-27', 1, '', 0, 8337, -14990, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(338, 25, '2021-09-28', 1, '', 0, 8343, -23333, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(339, 25, '2021-09-29', 1, '', 0, 8349, -31682, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(340, 25, '2021-09-30', 1, '', 0, 8354, -40036, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(341, 25, '2021-10-01', 1, '', 0, 8360, -48395, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(342, 25, '2021-10-02', 1, '', 0, 8365, -56761, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(343, 25, '2021-10-03', 1, '', 0, 8371, -65132, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(344, 25, '2021-10-04', 1, '', 0, 8376, -73508, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(345, 25, '2021-10-05', 1, '', 0, 8382, -81890, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(346, 25, '2021-10-06', 1, '', 0, 8388, -90278, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(347, 25, '2021-10-07', 1, '', 0, 8393, -98671, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:26:52', 1),
(348, 26, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(349, 26, '2021-09-25', 31, '', 0, 8326, -6653, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(350, 26, '2021-09-27', 1, '', 0, 8337, -14990, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(351, 26, '2021-09-28', 1, '', 0, 8343, -23333, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(352, 26, '2021-09-29', 1, '', 0, 8349, -31682, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(353, 26, '2021-09-30', 1, '', 0, 8354, -40036, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(354, 26, '2021-10-01', 1, '', 0, 8360, -48395, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(355, 26, '2021-10-02', 1, '', 0, 8365, -56761, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(356, 26, '2021-10-03', 1, '', 0, 8371, -65132, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(357, 26, '2021-10-04', 1, '', 0, 8376, -73508, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(358, 26, '2021-10-05', 1, '', 0, 8382, -81890, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(359, 26, '2021-10-06', 1, '', 0, 8388, -90278, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(360, 26, '2021-10-07', 1, '', 0, 8393, -98671, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:29:21', 1),
(361, 27, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(362, 27, '2021-09-25', 31, '', 0, 8327, -6654, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(363, 27, '2021-09-27', 1, '', 0, 8338, -14992, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(364, 27, '2021-09-28', 1, '', 0, 8344, -23336, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(365, 27, '2021-09-29', 1, '', 0, 8350, -31686, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(366, 27, '2021-09-30', 1, '', 0, 8355, -40041, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:55', 1),
(367, 27, '2021-10-01', 1, '', 0, 8361, -48402, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(368, 27, '2021-10-02', 1, '', 0, 8366, -56768, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(369, 27, '2021-10-03', 1, '', 0, 8372, -65140, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(370, 27, '2021-10-04', 1, '', 0, 8377, -73517, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(371, 27, '2021-10-05', 1, '', 0, 8383, -81900, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(372, 27, '2021-10-06', 1, '', 0, 8389, -90289, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(373, 27, '2021-10-07', 1, '', 0, 8394, -98683, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:32:56', 1),
(374, 28, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(375, 28, '2021-09-25', 31, '', 0, 8327, -6654, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(376, 28, '2021-09-27', 1, '', 0, 8338, -14992, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(377, 28, '2021-09-28', 1, '', 0, 8344, -23336, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(378, 28, '2021-09-29', 1, '', 0, 8350, -31686, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(379, 28, '2021-09-30', 1, '', 0, 8355, -40041, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(380, 28, '2021-10-01', 1, '', 0, 8361, -48402, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(381, 28, '2021-10-02', 1, '', 0, 8366, -56768, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(382, 28, '2021-10-03', 1, '', 0, 8372, -65140, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(383, 28, '2021-10-04', 1, '', 0, 8377, -73517, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(384, 28, '2021-10-05', 1, '', 0, 8383, -81900, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(385, 28, '2021-10-06', 1, '', 0, 8389, -90289, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(386, 28, '2021-10-07', 1, '', 0, 8394, -98683, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:34:22', 1),
(387, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:36:35', 0),
(388, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:36:35', 0),
(389, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:36:35', 0),
(390, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:38:05', 0),
(391, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:38:05', 0),
(392, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(393, 29, '2021-09-25', 31, '', 0, 8327, -6654, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(394, 29, '2021-09-27', 1, '', 0, 8338, -14992, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(395, 29, '2021-09-28', 1, '', 0, 8344, -23336, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(396, 29, '2021-09-29', 1, '', 0, 8350, -31686, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(397, 29, '2021-09-30', 1, '', 0, 8355, -40041, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(398, 29, '2021-10-01', 1, '', 0, 8361, -48402, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(399, 29, '2021-10-02', 1, '', 0, 8366, -56768, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(400, 29, '2021-10-03', 1, '', 0, 8372, -65140, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(401, 29, '2021-10-04', 1, '', 0, 8377, -73517, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(402, 29, '2021-10-05', 1, '', 0, 8383, -81900, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(403, 29, '2021-10-06', 1, '', 0, 8389, -90289, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(404, 29, '2021-10-07', 1, '', 0, 8394, -98683, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:39:10', 0),
(405, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(406, 29, '2021-09-25', 31, '', 0, 8327, -6654, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(407, 29, '2021-09-27', 1, '', 0, 8338, -14992, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(408, 29, '2021-09-28', 1, '', 0, 8344, -23336, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(409, 29, '2021-09-29', 1, '', 0, 8350, -31686, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(410, 29, '2021-09-30', 1, '', 0, 8355, -40041, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(411, 29, '2021-10-01', 1, '', 0, 8361, -48402, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(412, 29, '2021-10-02', 1, '', 0, 8366, -56768, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(413, 29, '2021-10-03', 1, '', 0, 8372, -65140, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(414, 29, '2021-10-04', 1, '', 0, 8377, -73517, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(415, 29, '2021-10-05', 1, '', 0, 8383, -81900, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(416, 29, '2021-10-06', 1, '', 0, 8389, -90289, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(417, 29, '2021-10-07', 1, '', 0, 8394, -98683, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:41:44', 0),
(418, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(419, 29, '2021-09-25', 31, '', 0, 8327, -6654, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(420, 29, '2021-09-27', 1, '', 0, 8338, -14992, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(421, 29, '2021-09-28', 1, '', 0, 8344, -23336, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(422, 29, '2021-09-29', 1, '', 0, 8350, -31686, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(423, 29, '2021-09-30', 1, '', 0, 8355, -40041, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(424, 29, '2021-10-01', 1, '', 0, 8361, -48402, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(425, 29, '2021-10-02', 1, '', 0, 8366, -56768, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(426, 29, '2021-10-03', 1, '', 0, 8372, -65140, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(427, 29, '2021-10-04', 1, '', 0, 8377, -73517, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(428, 29, '2021-10-05', 1, '', 0, 8383, -81900, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(429, 29, '2021-10-06', 1, '', 0, 8389, -90289, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(430, 29, '2021-10-07', 1, '', 0, 8394, -98683, -60, 0, 0, 0, '2021-08-25', '2021-08-25 14:43:02', 0),
(431, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(432, 29, '2021-09-25', 31, '', 0, 8327, 1673, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(433, 29, '2021-09-27', 1, '', 0, 8333, -6660, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(434, 29, '2021-09-28', 1, '', 0, 8338, -14998, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(435, 29, '2021-09-29', 1, '', 0, 8344, -23342, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(436, 29, '2021-09-30', 1, '', 0, 8350, -31692, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(437, 29, '2021-10-01', 1, '', 0, 8355, -40047, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(438, 29, '2021-10-02', 1, '', 0, 8361, -48408, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(439, 29, '2021-10-03', 1, '', 0, 8366, -56774, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(440, 29, '2021-10-04', 1, '', 0, 8372, -65146, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(441, 29, '2021-10-05', 1, '', 0, 8377, -73523, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(442, 29, '2021-10-06', 1, '', 0, 8383, -81906, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(443, 29, '2021-10-07', 1, '', 0, 8389, -90295, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:45:23', 0),
(444, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(445, 29, '2021-09-25', 31, '', 0, 8327, 1673, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(446, 29, '2021-09-27', 1, '', 0, 8333, -6660, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(447, 29, '2021-09-28', 1, '', 0, 8338, -14998, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(448, 29, '2021-09-29', 1, '', 0, 8344, -23342, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(449, 29, '2021-09-30', 1, '', 0, 8350, -31692, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(450, 29, '2021-10-01', 1, '', 0, 8355, -40047, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(451, 29, '2021-10-02', 1, '', 0, 8361, -48408, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(452, 29, '2021-10-03', 1, '', 0, 8366, -56774, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(453, 29, '2021-10-04', 1, '', 0, 8372, -65146, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(454, 29, '2021-10-05', 1, '', 0, 8377, -73523, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(455, 29, '2021-10-06', 1, '', 0, 8383, -81906, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(456, 29, '2021-10-07', 1, '', 0, 8389, -90295, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:48:02', 0),
(457, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(458, 29, '2021-09-25', 31, '', 0, 8327, 1673, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(459, 29, '2021-09-27', 1, '', 0, 8333, -6660, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(460, 29, '2021-09-28', 1, '', 0, 8338, -14998, -4, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(461, 29, '2021-09-29', 1, '', 0, 8344, -23342, -10, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(462, 29, '2021-09-30', 1, '', 0, 8350, -31692, -16, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(463, 29, '2021-10-01', 1, '', 0, 8355, -40047, -21, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(464, 29, '2021-10-02', 1, '', 0, 8361, -48408, -27, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(465, 29, '2021-10-03', 1, '', 0, 8366, -56774, -32, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(466, 29, '2021-10-04', 1, '', 0, 8372, -65146, -38, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(467, 29, '2021-10-05', 1, '', 0, 8377, -73523, -43, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(468, 29, '2021-10-06', 1, '', 0, 8383, -81906, -49, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(469, 29, '2021-10-07', 1, '', 0, 8389, -90295, -55, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:33', 0),
(470, 29, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(471, 29, '2021-09-25', 31, '', 0, 830, 9170, 7, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(472, 29, '2021-09-27', 1, '', 0, 831, 8339, 6, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(473, 29, '2021-09-28', 1, '', 0, 831, 7508, 6, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(474, 29, '2021-09-29', 1, '', 0, 832, 6676, 5, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(475, 29, '2021-09-30', 1, '', 0, 833, 5843, 4, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(476, 29, '2021-10-01', 1, '', 0, 833, 5010, 4, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(477, 29, '2021-10-02', 1, '', 0, 834, 4176, 3, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(478, 29, '2021-10-03', 1, '', 0, 834, 3342, 3, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(479, 29, '2021-10-04', 1, '', 0, 835, 2507, 2, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(480, 29, '2021-10-05', 1, '', 0, 835, 1672, 2, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(481, 29, '2021-10-06', 1, '', 0, 836, 836, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(482, 29, '2021-10-07', 1, '', 0, 836, 0, 1, 0, 0, 0, '2021-08-25', '2021-08-25 14:49:36', 1),
(483, 30, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(484, 30, '2021-09-25', 31, '', 0, 833, 9167, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(485, 30, '2021-09-27', 1, '', 0, 833, 8334, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(486, 30, '2021-09-28', 1, '', 0, 833, 7501, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(487, 30, '2021-09-29', 1, '', 0, 833, 6668, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(488, 30, '2021-09-30', 1, '', 0, 833, 5835, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(489, 30, '2021-10-01', 1, '', 0, 833, 5002, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(490, 30, '2021-10-02', 1, '', 0, 833, 4169, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(491, 30, '2021-10-03', 1, '', 0, 833, 3336, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(492, 30, '2021-10-04', 1, '', 0, 833, 2503, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(493, 30, '2021-10-05', 1, '', 0, 833, 1670, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(494, 30, '2021-10-06', 1, '', 0, 833, 837, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(495, 30, '2021-10-07', 1, '', 0, 833, 4, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:01', 1),
(496, 31, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(497, 31, '2021-09-25', 31, '', 0, 833, 9167, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(498, 31, '2021-09-27', 1, '', 0, 833, 8334, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(499, 31, '2021-09-28', 1, '', 0, 833, 7501, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(500, 31, '2021-09-29', 1, '', 0, 833, 6668, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(501, 31, '2021-09-30', 1, '', 0, 833, 5835, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(502, 31, '2021-10-01', 1, '', 0, 833, 5002, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(503, 31, '2021-10-02', 1, '', 0, 833, 4169, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(504, 31, '2021-10-03', 1, '', 0, 833, 3336, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(505, 31, '2021-10-04', 1, '', 0, 833, 2503, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(506, 31, '2021-10-05', 1, '', 0, 833, 1670, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(507, 31, '2021-10-06', 1, '', 0, 833, 837, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(508, 31, '2021-10-07', 1, '', 0, 833, 4, 200, 0, 0, 0, '2021-08-25', '2021-08-25 14:51:50', 1),
(509, 32, '2021-08-25', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(510, 32, '2021-09-25', 31, '', 0, 733, 9267, 0, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(511, 32, '2021-09-27', 1, '', 0, 748, 8519, 145, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(512, 32, '2021-09-28', 1, '', 0, 763, 7756, 170, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(513, 32, '2021-09-29', 1, '', 0, 778, 6978, 155, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(514, 32, '2021-09-30', 1, '', 0, 793, 6185, 140, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(515, 32, '2021-10-01', 1, '', 0, 809, 5376, 124, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(516, 32, '2021-10-02', 1, '', 0, 825, 4551, 108, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(517, 32, '2021-10-03', 1, '', 0, 842, 3709, 91, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(518, 32, '2021-10-04', 1, '', 0, 859, 2850, 74, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(519, 32, '2021-10-05', 1, '', 0, 876, 1974, 57, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(520, 32, '2021-10-06', 1, '', 0, 894, 1080, 39, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(521, 32, '2021-10-07', 1, '', 0, 911, 169, 22, 0, 0, 0, '2021-08-25', '2021-08-26 05:10:01', 0),
(522, 32, '2021-08-26', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(523, 32, '2021-09-26', 31, '', 0, 733, 9267, 200, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(524, 32, '2021-09-28', 1, '', 0, 748, 8519, 185, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(525, 32, '2021-09-29', 1, '', 0, 763, 7756, 170, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(526, 32, '2021-09-30', 1, '', 0, 778, 6978, 155, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(527, 32, '2021-10-01', 1, '', 0, 793, 6185, 140, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(528, 32, '2021-10-02', 1, '', 0, 809, 5376, 124, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(529, 32, '2021-10-03', 1, '', 0, 825, 4551, 108, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(530, 32, '2021-10-04', 1, '', 0, 842, 3709, 91, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(531, 32, '2021-10-05', 1, '', 0, 859, 2850, 74, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(532, 32, '2021-10-06', 1, '', 0, 876, 1974, 57, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(533, 32, '2021-10-07', 1, '', 0, 894, 1080, 39, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(534, 32, '2021-10-08', 1, '', 0, 911, 0, 22, 0, 0, 0, '2021-08-26', '2021-08-26 05:12:28', 0),
(535, 32, '2021-08-26', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(536, 32, '2021-09-26', 31, '', 0, 733, 9267, 200, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(537, 32, '2021-09-28', 1, '', 0, 748, 8519, 185, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(538, 32, '2021-09-29', 1, '', 0, 763, 7756, 170, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(539, 32, '2021-09-30', 1, '', 0, 778, 6978, 155, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(540, 32, '2021-10-01', 1, '', 0, 793, 6185, 140, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(541, 32, '2021-10-02', 1, '', 0, 809, 5376, 124, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(542, 32, '2021-10-03', 1, '', 0, 825, 4551, 108, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(543, 32, '2021-10-04', 1, '', 0, 842, 3709, 91, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(544, 32, '2021-10-05', 1, '', 0, 859, 2850, 74, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(545, 32, '2021-10-06', 1, '', 0, 876, 1974, 57, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(546, 32, '2021-10-07', 1, '', 0, 894, 1080, 39, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(547, 32, '2021-10-08', 1, '', 0, 911, 0, 22, 0, 0, 0, '2021-08-26', '2021-08-26 05:13:02', 0),
(548, 32, '2021-08-26', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(549, 32, '2021-09-26', 31, '', 0, 733, 9267, 200, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(550, 32, '2021-09-28', 1, '', 0, 748, 8519, 185, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(551, 32, '2021-09-29', 1, '', 0, 763, 7756, 170, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(552, 32, '2021-09-30', 1, '', 0, 778, 6978, 155, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(553, 32, '2021-10-01', 1, '', 0, 793, 6185, 140, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(554, 32, '2021-10-02', 1, '', 0, 809, 5376, 124, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(555, 32, '2021-10-03', 1, '', 0, 825, 4551, 108, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(556, 32, '2021-10-04', 1, '', 0, 842, 3709, 91, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(557, 32, '2021-10-05', 1, '', 0, 859, 2850, 74, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(558, 32, '2021-10-06', 1, '', 0, 876, 1974, 57, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(559, 32, '2021-10-07', 1, '', 0, 894, 1080, 39, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(560, 32, '2021-10-08', 1, '', 0, 911, 0, 22, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:05', 0),
(561, 32, '2021-08-26', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(562, 32, '2021-09-26', 31, '', 0, 733, 9267, 200, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(563, 32, '2021-09-28', 1, '', 0, 748, 8519, 185, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(564, 32, '2021-09-29', 1, '', 0, 763, 7756, 170, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(565, 32, '2021-09-30', 1, '', 0, 778, 6978, 155, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(566, 32, '2021-10-01', 1, '', 0, 793, 6185, 140, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(567, 32, '2021-10-02', 1, '', 0, 809, 5376, 124, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(568, 32, '2021-10-03', 1, '', 0, 825, 4551, 108, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(569, 32, '2021-10-04', 1, '', 0, 842, 3709, 91, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(570, 32, '2021-10-05', 1, '', 0, 859, 2850, 74, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(571, 32, '2021-10-06', 1, '', 0, 876, 1974, 57, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(572, 32, '2021-10-07', 1, '', 0, 894, 1080, 39, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(573, 32, '2021-10-08', 1, '', 0, 1080, 0, 22, 0, 0, 0, '2021-08-26', '2021-08-26 05:14:08', 1),
(574, 33, '2021-08-26', 0, '', 5000, 0, 5000, 0, 0, 0, 0, '2021-08-26', '2021-08-26 05:53:27', 1),
(575, 33, '2021-09-26', 31, '', 0, 1604, 3396, 125, 0, 0, 0, '2021-08-26', '2021-08-26 05:53:27', 1),
(576, 33, '2021-10-04', 4, '', 0, 1644, 1752, 85, 0, 0, 0, '2021-08-26', '2021-08-26 05:53:27', 1),
(577, 33, '2021-10-08', 4, '', 0, 1752, 0, 44, 0, 0, 0, '2021-08-26', '2021-08-26 05:53:27', 1),
(578, 34, '2021-09-02', 0, '', 5000, 0, 5000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(579, 34, '2021-10-02', 30, '', 0, 833, 4167, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(580, 34, '2021-10-06', 2, '', 0, 833, 3334, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(581, 34, '2021-10-08', 2, '', 0, 833, 2501, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(582, 34, '2021-10-10', 2, '', 0, 833, 1668, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(583, 34, '2021-10-12', 2, '', 0, 833, 835, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(584, 34, '2021-10-14', 2, '', 0, 8332, 0, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:44:36', 0),
(585, 34, '2021-09-02', 0, '', 5000, 0, 5000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(586, 34, '2021-10-02', 30, '', 0, 833, 4167, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(587, 34, '2021-10-06', 2, '', 0, 833, 3334, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(588, 34, '2021-10-08', 2, '', 0, 833, 2501, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(589, 34, '2021-10-10', 2, '', 0, 833, 1668, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(590, 34, '2021-10-12', 2, '', 0, 833, 835, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(591, 34, '2021-10-14', 2, '', 0, 8332, 0, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:12', 0),
(592, 34, '2021-09-02', 0, '', 5000, 0, 5000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(593, 34, '2021-10-02', 30, '', 0, 833, 4167, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(594, 34, '2021-10-06', 2, '', 0, 833, 3334, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(595, 34, '2021-10-08', 2, '', 0, 833, 2501, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(596, 34, '2021-10-10', 2, '', 0, 833, 1668, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(597, 34, '2021-10-12', 2, '', 0, 833, 835, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(598, 34, '2021-10-14', 2, '', 0, 835, 0, 3, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:33', 0),
(599, 34, '2021-09-02', 0, '', 6000, 0, 6000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(600, 34, '2021-10-02', 30, '', 0, 1000, 5000, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(601, 34, '2021-10-06', 2, '', 0, 1000, 4000, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(602, 34, '2021-10-08', 2, '', 0, 1000, 3000, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(603, 34, '2021-10-10', 2, '', 0, 1000, 2000, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(604, 34, '2021-10-12', 2, '', 0, 1000, 1000, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(605, 34, '2021-10-14', 2, '', 0, 1000, 0, 4, 0, 0, 0, '2021-09-02', '2021-09-02 04:45:47', 1),
(606, 35, '2021-09-02', 0, '', 6000, 0, 6000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(607, 35, '2021-10-02', 30, '', 0, 500, 5500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(608, 35, '2021-12-02', 30, '', 0, 500, 5000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(609, 35, '2022-01-02', 31, '', 0, 500, 4500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(610, 35, '2022-02-02', 31, '', 0, 500, 4000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(611, 35, '2022-03-02', 28, '', 0, 500, 3500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(612, 35, '2022-04-02', 31, '', 0, 500, 3000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(613, 35, '2022-05-02', 30, '', 0, 500, 2500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(614, 35, '2022-06-02', 31, '', 0, 500, 2000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(615, 35, '2022-07-02', 30, '', 0, 500, 1500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(616, 35, '2022-08-02', 31, '', 0, 500, 1000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(617, 35, '2022-09-02', 31, '', 0, 500, 500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(618, 35, '2022-10-02', 30, '', 0, 5000, 0, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:07', 0),
(619, 35, '2021-09-02', 0, '', 6000, 0, 6000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(620, 35, '2021-10-02', 30, '', 0, 500, 5500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(621, 35, '2021-12-02', 30, '', 0, 500, 5000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(622, 35, '2022-01-02', 31, '', 0, 500, 4500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(623, 35, '2022-02-02', 31, '', 0, 500, 4000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(624, 35, '2022-03-02', 28, '', 0, 500, 3500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(625, 35, '2022-04-02', 31, '', 0, 500, 3000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(626, 35, '2022-05-02', 30, '', 0, 500, 2500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(627, 35, '2022-06-02', 31, '', 0, 500, 2000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(628, 35, '2022-07-02', 30, '', 0, 500, 1500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(629, 35, '2022-08-02', 31, '', 0, 500, 1000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(630, 35, '2022-09-02', 31, '', 0, 500, 500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(631, 35, '2022-10-02', 30, '', 0, 500, 0, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:35', 0),
(632, 35, '2021-09-02', 0, '', 6000, 0, 6000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(633, 35, '2021-10-02', 30, '', 0, 500, 5500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(634, 35, '2021-12-02', 30, '', 0, 500, 5000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(635, 35, '2022-01-02', 31, '', 0, 500, 4500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(636, 35, '2022-02-02', 31, '', 0, 500, 4000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(637, 35, '2022-03-02', 28, '', 0, 500, 3500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(638, 35, '2022-04-02', 31, '', 0, 500, 3000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(639, 35, '2022-05-02', 30, '', 0, 500, 2500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(640, 35, '2022-06-02', 31, '', 0, 500, 2000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(641, 35, '2022-07-02', 30, '', 0, 500, 1500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(642, 35, '2022-08-02', 31, '', 0, 500, 1000, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(643, 35, '2022-09-02', 31, '', 0, 500, 500, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(644, 35, '2022-10-02', 30, '', 0, 500, 0, 120, 0, 0, 0, '2021-09-02', '2021-09-02 04:48:41', 1),
(645, 36, '2021-09-02', 0, '', 6000, 0, 6000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(646, 36, '2021-10-02', 30, '', 0, 500, 5500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(647, 36, '2021-12-02', 30, '', 0, 500, 5000, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(648, 36, '2022-01-02', 31, '', 0, 500, 4500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(649, 36, '2022-02-02', 31, '', 0, 500, 4000, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(650, 36, '2022-03-02', 28, '', 0, 500, 3500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(651, 36, '2022-04-02', 31, '', 0, 500, 3000, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(652, 36, '2022-05-02', 30, '', 0, 500, 2500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(653, 36, '2022-06-02', 31, '', 0, 500, 2000, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(654, 36, '2022-07-02', 30, '', 0, 500, 1500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(655, 36, '2022-08-02', 31, '', 0, 500, 1000, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(656, 36, '2022-09-02', 31, '', 0, 500, 500, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(657, 36, '2022-10-02', 30, '', 0, 500, 0, 180, 0, 0, 0, '2021-09-02', '2021-09-02 04:49:18', 1),
(658, 37, '2021-09-02', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(659, 37, '2021-10-02', 30, '', 0, 167, 833, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(660, 37, '2021-10-06', 2, '', 0, 167, 666, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(661, 37, '2021-10-08', 2, '', 0, 167, 499, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(662, 37, '2021-10-10', 2, '', 0, 167, 332, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(663, 37, '2021-10-12', 2, '', 0, 167, 165, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(664, 37, '2021-10-14', 2, '', 0, 165, 0, 1, 0, 0, 0, '2021-09-02', '2021-09-02 13:33:00', 1),
(665, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(666, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(667, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(668, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(669, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(670, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(671, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(672, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(673, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(674, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(675, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(676, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(677, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:03:54', 0),
(678, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(679, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(680, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(681, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(682, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(683, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(684, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(685, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(686, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(687, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(688, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(689, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(690, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:04:06', 0),
(691, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(692, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(693, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(694, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(695, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(696, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(697, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(698, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(699, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(700, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(701, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(702, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(703, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:05:31', 0),
(704, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(705, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(706, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(707, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(708, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(709, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(710, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(711, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(712, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(713, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(714, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(715, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(716, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:06:34', 0),
(717, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(718, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(719, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(720, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(721, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(722, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(723, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(724, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(725, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(726, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(727, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(728, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(729, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:23', 0),
(730, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(731, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(732, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(733, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(734, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(735, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(736, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(737, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(738, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(739, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(740, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(741, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(742, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:07:26', 1),
(743, 42, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(744, 42, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(745, 42, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(746, 42, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(747, 42, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(748, 42, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(749, 42, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(750, 42, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(751, 42, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(752, 42, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(753, 42, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1);
INSERT INTO `loan_repayment_schedule` (`id`, `loan_id`, `ddate`, `ddays`, `payDate`, `disbursement`, `principalDue`, `principalBalance`, `interestDue`, `fees`, `penalties`, `totalPaid`, `createAt`, `update_at`, `status`) VALUES
(754, 42, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(755, 42, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:08:09', 1),
(756, 43, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(757, 43, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(758, 43, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(759, 43, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(760, 43, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(761, 43, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(762, 43, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(763, 43, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(764, 43, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(765, 43, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(766, 43, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(767, 43, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(768, 43, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:09:28', 0),
(769, 43, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(770, 43, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(771, 43, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(772, 43, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(773, 43, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(774, 43, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(775, 43, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(776, 43, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(777, 43, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(778, 43, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(779, 43, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(780, 43, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(781, 43, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:36', 0),
(782, 43, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 08:10:39', 1),
(783, 43, '2021-10-03', 30, '2021-10-02', 0, 833, 9167, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(784, 43, '2021-10-05', 1, '2021-10-02', 0, 833, 8334, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(785, 43, '2021-10-06', 1, '2021-10-02', 0, 833, 7501, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(786, 43, '2021-10-07', 1, '2021-10-02', 0, 833, 6668, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(787, 43, '2021-10-08', 1, '2021-10-02', 0, 833, 5835, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(788, 43, '2021-10-09', 1, '2021-10-02', 0, 833, 5002, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(789, 43, '2021-10-10', 1, '2021-10-02', 0, 833, 4169, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(790, 43, '2021-10-11', 1, '2021-10-02', 0, 833, 3336, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(791, 43, '2021-10-12', 1, '2021-10-02', 0, 833, 2503, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(792, 43, '2021-10-13', 1, '2021-10-02', 0, 833, 1670, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(793, 43, '2021-10-14', 1, '2021-10-02', 0, 833, 837, 33, 0, 0, 866, '2021-09-03', '2021-10-02 07:33:24', 1),
(794, 43, '2021-10-15', 1, '2021-10-02', 0, 837, 0, 33, 0, 0, 870, '2021-09-03', '2021-10-02 07:33:24', 1),
(795, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(796, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(797, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(798, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(799, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(800, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(801, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(802, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(803, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(804, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(805, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(806, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(807, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:45:48', 0),
(808, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(809, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(810, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(811, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(812, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(813, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(814, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(815, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(816, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(817, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(818, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(819, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(820, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:47:16', 0),
(821, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(822, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(823, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(824, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(825, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(826, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(827, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(828, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(829, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(830, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(831, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(832, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(833, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:50:18', 0),
(834, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(835, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(836, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(837, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(838, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(839, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(840, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(841, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(842, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(843, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(844, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(845, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(846, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:53:20', 0),
(847, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 1004088, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(848, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(849, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(850, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(851, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(852, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(853, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(854, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(855, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(856, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(857, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(858, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(859, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 09:58:30', 0),
(860, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 16088, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(861, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(862, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(863, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(864, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(865, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(866, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(867, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(868, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(869, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(870, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(871, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(872, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:03:11', 0),
(873, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 14039, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(874, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(875, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(876, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(877, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(878, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(879, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(880, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(881, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(882, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(883, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(884, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(885, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:06:34', 0),
(886, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 3039, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(887, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(888, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(889, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(890, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(891, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(892, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(893, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(894, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(895, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(896, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(897, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(898, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:07:33', 0),
(899, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(900, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(901, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(902, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(903, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(904, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(905, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(906, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(907, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(908, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(909, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(910, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(911, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 10:10:43', 0),
(912, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(913, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(914, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(915, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(916, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(917, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(918, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(919, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(920, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(921, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(922, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(923, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(924, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:03:16', 0),
(925, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(926, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(927, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(928, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(929, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(930, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(931, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(932, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(933, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(934, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(935, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(936, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(937, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:10:04', 0),
(938, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(939, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(940, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(941, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(942, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(943, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(944, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(945, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(946, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(947, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(948, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(949, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(950, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:22:55', 0),
(951, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(952, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(953, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(954, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(955, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(956, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(957, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(958, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(959, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(960, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(961, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(962, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(963, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 11:32:45', 0),
(964, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(965, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(966, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(967, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(968, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(969, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(970, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(971, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(972, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(973, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(974, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(975, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(976, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 277, 0, 0, '2021-09-03', '2021-09-03 11:33:22', 0),
(977, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(978, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(979, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(980, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(981, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(982, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(983, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(984, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(985, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(986, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(987, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(988, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(989, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:00:48', 0),
(990, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(991, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(992, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(993, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(994, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(995, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(996, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(997, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(998, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(999, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(1000, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(1001, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(1002, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:04:04', 0),
(1003, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1004, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1005, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1006, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1007, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1008, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1009, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1010, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1011, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1012, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1013, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1014, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1015, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 277, 0, 0, '2021-09-03', '2021-09-03 13:09:33', 0),
(1016, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1017, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1018, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1019, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1020, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1021, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1022, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1023, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1024, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1025, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1026, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1027, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1028, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:13', 0),
(1029, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1030, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1031, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1032, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1033, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1034, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1035, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1036, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1037, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1038, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1039, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1040, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1041, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:14:48', 0),
(1042, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1043, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1044, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1045, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1046, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1047, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1048, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1049, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1050, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1051, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1052, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1053, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1054, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:20:38', 0),
(1055, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1056, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1057, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1058, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1059, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1060, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1061, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1062, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1063, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1064, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1065, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1066, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1067, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-03', '2021-09-03 13:21:17', 0),
(1068, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1069, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1070, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1071, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1072, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1073, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1074, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1075, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1076, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1077, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1078, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1079, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 3219, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1080, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 3218, 0, 0, '2021-09-03', '2021-09-03 13:22:21', 0),
(1081, 44, '2021-09-03', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1082, 44, '2021-10-03', 30, '', 0, 833, 9167, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1083, 44, '2021-10-05', 1, '', 0, 833, 8334, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1084, 44, '2021-10-06', 1, '', 0, 833, 7501, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1085, 44, '2021-10-07', 1, '', 0, 833, 6668, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1086, 44, '2021-10-08', 1, '', 0, 833, 5835, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1087, 44, '2021-10-09', 1, '', 0, 833, 5002, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1088, 44, '2021-10-10', 1, '', 0, 833, 4169, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1089, 44, '2021-10-11', 1, '', 0, 833, 3336, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1090, 44, '2021-10-12', 1, '', 0, 833, 2503, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1091, 44, '2021-10-13', 1, '', 0, 833, 1670, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1092, 44, '2021-10-14', 1, '', 0, 833, 837, 33, 3218, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1093, 44, '2021-10-15', 1, '', 0, 837, 0, 33, 3229, 0, 0, '2021-09-03', '2021-09-04 05:20:22', 0),
(1094, 44, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1095, 44, '2021-10-04', 30, '', 0, 833, 9167, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1096, 44, '2021-10-06', 1, '', 0, 833, 8334, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1097, 44, '2021-10-07', 1, '', 0, 833, 7501, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1098, 44, '2021-10-08', 1, '', 0, 833, 6668, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1099, 44, '2021-10-09', 1, '', 0, 833, 5835, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1100, 44, '2021-10-10', 1, '', 0, 833, 5002, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1101, 44, '2021-10-11', 1, '', 0, 833, 4169, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1102, 44, '2021-10-12', 1, '', 0, 833, 3336, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1103, 44, '2021-10-13', 1, '', 0, 833, 2503, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1104, 44, '2021-10-14', 1, '', 0, 833, 1670, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1105, 44, '2021-10-15', 1, '', 0, 833, 837, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1106, 44, '2021-10-16', 1, '', 0, 837, 0, 33, 3219, 0, 0, '2021-09-04', '2021-09-04 05:22:13', 0),
(1107, 44, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1108, 44, '2021-10-04', 30, '', 0, 833, 9167, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1109, 44, '2021-10-06', 1, '', 0, 833, 8334, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1110, 44, '2021-10-07', 1, '', 0, 833, 7501, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1111, 44, '2021-10-08', 1, '', 0, 833, 6668, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1112, 44, '2021-10-09', 1, '', 0, 833, 5835, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1113, 44, '2021-10-10', 1, '', 0, 833, 5002, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1114, 44, '2021-10-11', 1, '', 0, 833, 4169, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1115, 44, '2021-10-12', 1, '', 0, 833, 3336, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1116, 44, '2021-10-13', 1, '', 0, 833, 2503, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1117, 44, '2021-10-14', 1, '', 0, 833, 1670, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1118, 44, '2021-10-15', 1, '', 0, 833, 837, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1119, 44, '2021-10-16', 1, '', 0, 837, 0, 33, 3220, 0, 0, '2021-09-04', '2021-09-04 05:48:20', 0),
(1120, 45, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1121, 45, '2021-10-04', 30, '', 0, 833, 9167, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1122, 45, '2021-12-04', 30, '', 0, 833, 8334, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1123, 45, '2022-01-04', 31, '', 0, 833, 7501, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1124, 45, '2022-02-04', 31, '', 0, 833, 6668, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1125, 45, '2022-03-04', 28, '', 0, 833, 5835, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1126, 45, '2022-04-04', 31, '', 0, 833, 5002, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1127, 45, '2022-05-04', 30, '', 0, 833, 4169, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1128, 45, '2022-06-04', 31, '', 0, 833, 3336, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1129, 45, '2022-07-04', 30, '', 0, 833, 2503, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1130, 45, '2022-08-04', 31, '', 0, 833, 1670, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1131, 45, '2022-09-04', 31, '', 0, 833, 837, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1132, 45, '2022-10-04', 30, '', 0, 837, 0, 1000, 10, 0, 0, '2021-09-04', '2021-09-04 05:35:44', 1),
(1133, 46, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:36:50', 1),
(1134, 46, '2021-10-04', 30, '', 0, 833, 9167, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1135, 46, '2021-12-04', 30, '', 0, 833, 8334, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1136, 46, '2022-01-04', 31, '', 0, 833, 7501, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1137, 46, '2022-02-04', 31, '', 0, 833, 6668, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1138, 46, '2022-03-04', 28, '', 0, 833, 5835, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1139, 46, '2022-04-04', 31, '', 0, 833, 5002, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1140, 46, '2022-05-04', 30, '', 0, 833, 4169, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1141, 46, '2022-06-04', 31, '', 0, 833, 3336, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1142, 46, '2022-07-04', 30, '', 0, 833, 2503, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1143, 46, '2022-08-04', 31, '', 0, 833, 1670, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1144, 46, '2022-09-04', 31, '', 0, 833, 837, 1000, 83, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1145, 46, '2022-10-04', 30, '', 0, 837, 0, 1000, 87, 0, 0, '2021-09-04', '2021-09-04 05:36:51', 1),
(1146, 47, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1147, 47, '2021-10-04', 30, '', 0, 833, 9167, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1148, 47, '2021-12-04', 30, '', 0, 833, 8334, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1149, 47, '2022-01-04', 31, '', 0, 833, 7501, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1150, 47, '2022-02-04', 31, '', 0, 833, 6668, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1151, 47, '2022-03-04', 28, '', 0, 833, 5835, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1152, 47, '2022-04-04', 31, '', 0, 833, 5002, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1153, 47, '2022-05-04', 30, '', 0, 833, 4169, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1154, 47, '2022-06-04', 31, '', 0, 833, 3336, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1155, 47, '2022-07-04', 30, '', 0, 833, 2503, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1156, 47, '2022-08-04', 31, '', 0, 833, 1670, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1157, 47, '2022-09-04', 31, '', 0, 833, 837, 1000, 183, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1158, 47, '2022-10-04', 30, '', 0, 837, 0, 1000, 187, 0, 0, '2021-09-04', '2021-09-04 05:40:04', 1),
(1159, 48, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1160, 48, '2021-10-04', 30, '', 0, 833, 9167, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1161, 48, '2021-12-04', 30, '', 0, 833, 8334, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1162, 48, '2022-01-04', 31, '', 0, 833, 7501, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1163, 48, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1164, 48, '2022-03-04', 28, '', 0, 833, 5835, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1165, 48, '2022-04-04', 31, '', 0, 833, 5002, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1166, 48, '2022-05-04', 30, '', 0, 833, 4169, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1167, 48, '2022-06-04', 31, '', 0, 833, 3336, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1168, 48, '2022-07-04', 30, '', 0, 833, 2503, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1169, 48, '2022-08-04', 31, '', 0, 833, 1670, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1170, 48, '2022-09-04', 31, '', 0, 833, 837, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1171, 48, '2022-10-04', 30, '', 0, 837, 0, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:45:02', 0),
(1172, 48, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1173, 48, '2021-10-04', 30, '', 0, 833, 9167, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1174, 48, '2021-12-04', 30, '', 0, 833, 8334, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1175, 48, '2022-01-04', 31, '', 0, 833, 7501, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1176, 48, '2022-02-04', 31, '', 0, 833, 6668, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1177, 48, '2022-03-04', 28, '', 0, 833, 5835, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1178, 48, '2022-04-04', 31, '', 0, 833, 5002, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1179, 48, '2022-05-04', 30, '', 0, 833, 4169, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1180, 48, '2022-06-04', 31, '', 0, 833, 3336, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1181, 48, '2022-07-04', 30, '', 0, 833, 2503, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1182, 48, '2022-08-04', 31, '', 0, 833, 1670, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1183, 48, '2022-09-04', 31, '', 0, 833, 837, 1000, 8, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1184, 48, '2022-10-04', 30, '', 0, 837, 0, 1000, 12, 0, 0, '2021-09-04', '2021-09-04 05:46:01', 0),
(1185, 48, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1186, 48, '2021-10-04', 30, '', 0, 833, 9167, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1187, 48, '2021-12-04', 30, '', 0, 833, 8334, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1188, 48, '2022-01-04', 31, '', 0, 833, 7501, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1189, 48, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1190, 48, '2022-03-04', 28, '', 0, 833, 5835, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1191, 48, '2022-04-04', 31, '', 0, 833, 5002, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1192, 48, '2022-05-04', 30, '', 0, 833, 4169, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1193, 48, '2022-06-04', 31, '', 0, 833, 3336, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1194, 48, '2022-07-04', 30, '', 0, 833, 2503, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1195, 48, '2022-08-04', 31, '', 0, 833, 1670, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1196, 48, '2022-09-04', 31, '', 0, 833, 837, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1197, 48, '2022-10-04', 30, '', 0, 837, 0, 1000, 1200, 0, 0, '2021-09-04', '2021-09-04 05:46:49', 0),
(1198, 48, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1199, 48, '2021-10-04', 30, '', 0, 833, 9167, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1200, 48, '2021-12-04', 30, '', 0, 833, 8334, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1201, 48, '2022-01-04', 31, '', 0, 833, 7501, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1202, 48, '2022-02-04', 31, '', 0, 833, 6668, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1203, 48, '2022-03-04', 28, '', 0, 833, 5835, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1204, 48, '2022-04-04', 31, '', 0, 833, 5002, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1205, 48, '2022-05-04', 30, '', 0, 833, 4169, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1206, 48, '2022-06-04', 31, '', 0, 833, 3336, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1207, 48, '2022-07-04', 30, '', 0, 833, 2503, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1208, 48, '2022-08-04', 31, '', 0, 833, 1670, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1209, 48, '2022-09-04', 31, '', 0, 833, 837, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1210, 48, '2022-10-04', 30, '', 0, 837, 0, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:49', 0),
(1211, 44, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1212, 44, '2021-10-04', 30, '', 0, 833, 9167, 33, 3183, 0, 4000, '2021-09-04', '2021-09-04 09:34:16', 1),
(1213, 44, '2021-10-06', 1, '', 0, 833, 8334, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1214, 44, '2021-10-07', 1, '', 0, 833, 7501, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1215, 44, '2021-10-08', 1, '', 0, 833, 6668, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1216, 44, '2021-10-09', 1, '', 0, 833, 5835, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1217, 44, '2021-10-10', 1, '', 0, 833, 5002, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1218, 44, '2021-10-11', 1, '', 0, 833, 4169, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1219, 44, '2021-10-12', 1, '', 0, 833, 3336, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1220, 44, '2021-10-13', 1, '', 0, 833, 2503, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1221, 44, '2021-10-14', 1, '', 0, 833, 1670, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1222, 44, '2021-10-15', 1, '', 0, 833, 837, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1223, 44, '2021-10-16', 1, '', 0, 837, 0, 33, 3187, 0, 0, '2021-09-04', '2021-09-04 05:48:23', 1),
(1224, 48, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:48:51', 1),
(1225, 48, '2021-10-04', 30, '', 0, 833, 9167, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1226, 48, '2021-12-04', 30, '', 0, 833, 8334, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1227, 48, '2022-01-04', 31, '', 0, 833, 7501, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1228, 48, '2022-02-04', 31, '', 0, 833, 6668, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1229, 48, '2022-03-04', 28, '', 0, 833, 5835, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1230, 48, '2022-04-04', 31, '', 0, 833, 5002, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1231, 48, '2022-05-04', 30, '', 0, 833, 4169, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1232, 48, '2022-06-04', 31, '', 0, 833, 3336, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1233, 48, '2022-07-04', 30, '', 0, 833, 2503, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1234, 48, '2022-08-04', 31, '', 0, 833, 1670, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1235, 48, '2022-09-04', 31, '', 0, 833, 837, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1236, 48, '2022-10-04', 30, '', 0, 837, 0, 1000, 100, 0, 0, '2021-09-04', '2021-09-04 05:48:52', 1),
(1237, 49, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1238, 49, '2021-10-04', 30, '', 0, 833, 9167, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1239, 49, '2021-12-04', 30, '', 0, 833, 8334, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1240, 49, '2022-01-04', 31, '', 0, 833, 7501, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1241, 49, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1242, 49, '2022-03-04', 28, '', 0, 833, 5835, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1243, 49, '2022-04-04', 31, '', 0, 833, 5002, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1244, 49, '2022-05-04', 30, '', 0, 833, 4169, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1245, 49, '2022-06-04', 31, '', 0, 833, 3336, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1246, 49, '2022-07-04', 30, '', 0, 833, 2503, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1247, 49, '2022-08-04', 31, '', 0, 833, 1670, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1248, 49, '2022-09-04', 31, '', 0, 833, 837, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1249, 49, '2022-10-04', 30, '', 0, 837, 0, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:50:10', 1),
(1250, 50, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1251, 50, '2021-10-04', 30, '', 0, 833, 9167, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1252, 50, '2021-12-04', 30, '', 0, 833, 8334, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1);
INSERT INTO `loan_repayment_schedule` (`id`, `loan_id`, `ddate`, `ddays`, `payDate`, `disbursement`, `principalDue`, `principalBalance`, `interestDue`, `fees`, `penalties`, `totalPaid`, `createAt`, `update_at`, `status`) VALUES
(1253, 50, '2022-01-04', 31, '', 0, 833, 7501, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1254, 50, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1255, 50, '2022-03-04', 28, '', 0, 833, 5835, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1256, 50, '2022-04-04', 31, '', 0, 833, 5002, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1257, 50, '2022-05-04', 30, '', 0, 833, 4169, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1258, 50, '2022-06-04', 31, '', 0, 833, 3336, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1259, 50, '2022-07-04', 30, '', 0, 833, 2503, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1260, 50, '2022-08-04', 31, '', 0, 833, 1670, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1261, 50, '2022-09-04', 31, '', 0, 833, 837, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1262, 50, '2022-10-04', 30, '', 0, 837, 0, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:51:48', 1),
(1263, 51, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1264, 51, '2021-10-04', 30, '', 0, 833, 9167, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1265, 51, '2021-12-04', 30, '', 0, 833, 8334, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1266, 51, '2022-01-04', 31, '', 0, 833, 7501, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1267, 51, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1268, 51, '2022-03-04', 28, '', 0, 833, 5835, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1269, 51, '2022-04-04', 31, '', 0, 833, 5002, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1270, 51, '2022-05-04', 30, '', 0, 833, 4169, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1271, 51, '2022-06-04', 31, '', 0, 833, 3336, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1272, 51, '2022-07-04', 30, '', 0, 833, 2503, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1273, 51, '2022-08-04', 31, '', 0, 833, 1670, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1274, 51, '2022-09-04', 31, '', 0, 833, 837, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1275, 51, '2022-10-04', 30, '', 0, 837, 0, 1000, 1000, 0, 0, '2021-09-04', '2021-09-04 05:52:58', 1),
(1276, 52, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1277, 52, '2021-10-04', 30, '', 0, 833, 9167, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1278, 52, '2021-12-04', 30, '', 0, 833, 8334, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1279, 52, '2022-01-04', 31, '', 0, 833, 7501, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1280, 52, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1281, 52, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1282, 52, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1283, 52, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1284, 52, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1285, 52, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1286, 52, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1287, 52, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1288, 52, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 05:54:29', 1),
(1289, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1290, 53, '2021-10-04', 30, '', 0, 833, 9167, 1000, 3376, 0, 2000, '2021-09-04', '2021-09-04 11:29:41', 0),
(1291, 53, '2021-12-04', 30, '', 0, 833, 8334, 500, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1292, 53, '2022-01-04', 31, '', 0, 833, 7501, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1293, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1294, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1295, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1296, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1297, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1298, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1299, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1300, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1301, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 11:29:41', 0),
(1302, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1303, 53, '2021-10-04', 30, '', 0, 833, 9167, 1000, 3376, 0, 3000, '2021-09-04', '2021-09-04 11:40:03', 0),
(1304, 53, '2021-12-04', 30, '', 0, 833, 8334, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1305, 53, '2022-01-04', 31, '', 0, 833, 7501, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1306, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1307, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1308, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1309, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1310, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1311, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1312, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1313, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1314, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 11:40:03', 0),
(1315, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1316, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 11:48:12', 0),
(1317, 53, '2021-12-04', 30, '', 0, 833, 8334, 1000, 3376, 0, 1002, '2021-09-04', '2021-09-04 11:48:12', 0),
(1318, 53, '2022-01-04', 31, '', 0, 833, 7501, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1319, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1320, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1321, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1322, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1323, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1324, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1325, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1326, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1327, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 11:48:12', 0),
(1328, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1329, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 11:52:41', 0),
(1330, 53, '2021-12-04', 30, '', 0, 833, 8334, 2, 3376, 0, 2, '2021-09-04', '2021-09-04 11:52:41', 0),
(1331, 53, '2022-01-04', 31, '', 0, 833, 7501, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1332, 53, '2022-02-04', 31, '', 0, 833, 6668, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1333, 53, '2022-03-04', 28, '', 0, 833, 5835, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1334, 53, '2022-04-04', 31, '', 0, 833, 5002, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1335, 53, '2022-05-04', 30, '', 0, 833, 4169, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1336, 53, '2022-06-04', 31, '', 0, 833, 3336, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1337, 53, '2022-07-04', 30, '', 0, 833, 2503, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1338, 53, '2022-08-04', 31, '', 0, 833, 1670, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1339, 53, '2022-09-04', 31, '', 0, 833, 837, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1340, 53, '2022-10-04', 30, '', 0, 837, 0, 0, 3384, 0, 0, '2021-09-04', '2021-09-04 11:52:41', 0),
(1341, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1342, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 11:54:50', 0),
(1343, 53, '2021-12-04', 30, '2021-09-04', 0, 833, 8334, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 11:54:50', 0),
(1344, 53, '2022-01-04', 31, '', 0, 833, 7501, 1000, 3376, 0, 1582, '2021-09-04', '2021-09-04 11:54:50', 0),
(1345, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1346, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1347, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1348, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1349, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1350, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1351, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1352, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1353, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 11:54:50', 0),
(1354, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1355, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:07:23', 0),
(1356, 53, '2021-12-04', 30, '2021-09-04', 0, 833, 8334, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:07:23', 0),
(1357, 53, '2022-01-04', 31, '2021-09-04', 0, 833, 7501, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:07:23', 0),
(1358, 53, '2022-02-04', 31, '', 0, 833, 6668, 0, 3376, 0, 168, '2021-09-04', '2021-09-04 13:07:23', 0),
(1359, 53, '2022-03-04', 28, '', 0, 833, 5835, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1360, 53, '2022-04-04', 31, '', 0, 833, 5002, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1361, 53, '2022-05-04', 30, '', 0, 833, 4169, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1362, 53, '2022-06-04', 31, '', 0, 833, 3336, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1363, 53, '2022-07-04', 30, '', 0, 833, 2503, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1364, 53, '2022-08-04', 31, '', 0, 833, 1670, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1365, 53, '2022-09-04', 31, '', 0, 833, 837, 0, 3376, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1366, 53, '2022-10-04', 30, '', 0, 837, 0, 0, 3384, 0, 0, '2021-09-04', '2021-09-04 13:07:23', 0),
(1367, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1368, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, -1933, 0, 5209, '2021-09-04', '2021-09-04 13:12:33', 0),
(1369, 53, '2021-12-04', 30, '2021-09-04', 0, 833, 8334, 1000, -1933, 0, 5209, '2021-09-04', '2021-09-04 13:12:33', 0),
(1370, 53, '2022-01-04', 31, '2021-09-04', 0, 833, 7501, 1000, -1933, 0, 5209, '2021-09-04', '2021-09-04 13:12:33', 0),
(1371, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 3376, 0, 373, '2021-09-04', '2021-09-04 13:12:33', 0),
(1372, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1373, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1374, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1375, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1376, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1377, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1378, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3376, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1379, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3384, 0, 0, '2021-09-04', '2021-09-04 13:12:33', 0),
(1380, 53, '2021-09-04', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1381, 53, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:22:57', 0),
(1382, 53, '2021-12-04', 30, '2021-09-04', 0, 833, 8334, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:22:57', 0),
(1383, 53, '2022-01-04', 31, '2021-09-04', 0, 833, 7501, 1000, 3376, 0, 5209, '2021-09-04', '2021-09-04 13:22:57', 0),
(1384, 53, '2022-02-04', 31, '', 0, 833, 6668, 1000, 1903, 0, 1373, '2021-09-04', '2021-09-04 13:22:57', 0),
(1385, 53, '2022-03-04', 28, '', 0, 833, 5835, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1386, 53, '2022-04-04', 31, '', 0, 833, 5002, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1387, 53, '2022-05-04', 30, '', 0, 833, 4169, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1388, 53, '2022-06-04', 31, '', 0, 833, 3336, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1389, 53, '2022-07-04', 30, '', 0, 833, 2503, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1390, 53, '2022-08-04', 31, '', 0, 833, 1670, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1391, 53, '2022-09-04', 31, '', 0, 833, 837, 1000, 3276, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1392, 53, '2022-10-04', 30, '', 0, 837, 0, 1000, 3284, 0, 0, '2021-09-04', '2021-09-04 13:22:57', 0),
(1393, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1394, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1395, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1396, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1397, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1398, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1399, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1400, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1401, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1402, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1403, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1404, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3183, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1405, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3187, 0, 0, '2021-09-04', '2021-09-04 13:29:18', 0),
(1406, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1407, 54, '2021-10-04', 30, '2021-09-04', 0, 833, 9167, 33, 3183, 0, 4049, '2021-09-04', '2021-09-04 13:37:08', 0),
(1408, 54, '2021-10-06', 1, '2021-09-04', 0, 833, 8334, 33, 3183, 0, 4049, '2021-09-04', '2021-09-04 13:37:08', 0),
(1409, 54, '2021-10-07', 1, '2021-09-04', 0, 833, 7501, 33, 3183, 0, 4049, '2021-09-04', '2021-09-04 13:37:08', 0),
(1410, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 2620, 0, 553, '2021-09-04', '2021-09-04 13:37:08', 0),
(1411, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1412, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1413, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1414, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1415, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1416, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1417, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1418, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 13:37:08', 0),
(1419, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1420, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1421, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1422, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1423, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1424, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1425, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1426, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1427, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1428, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1429, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1430, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1431, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 13:42:26', 0),
(1432, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1433, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1434, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1435, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1436, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1437, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1438, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1439, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1440, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1441, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1442, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1443, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1444, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 13:44:21', 0),
(1445, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1446, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1447, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1448, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1449, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1450, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1451, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1452, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1453, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1454, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1455, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1456, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1457, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 14:01:10', 0),
(1458, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1459, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1460, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1461, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1462, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1463, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1464, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1465, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1466, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1467, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1468, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1469, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1470, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 14:02:56', 0),
(1471, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1472, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1473, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1474, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1475, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1476, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1477, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1478, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1479, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1480, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1481, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1482, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1483, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 14:03:51', 0),
(1484, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1485, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1486, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1487, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1488, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1489, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1490, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1491, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1492, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1493, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1494, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1495, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3173, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1496, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3177, 0, 0, '2021-09-04', '2021-09-04 14:04:19', 0),
(1497, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1498, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1499, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1500, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1501, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1502, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1503, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1504, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1505, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1506, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1507, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1508, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 3170, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1509, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 3174, 0, 0, '2021-09-04', '2021-09-04 14:04:35', 0),
(1510, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1511, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1512, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1513, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1514, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1515, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1516, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1517, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1518, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1519, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1520, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1521, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1522, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:18', 0),
(1523, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1524, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1525, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1526, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1527, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1528, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1529, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1530, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1531, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1532, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1533, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1534, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1535, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 2170, 0, 0, '2021-09-04', '2021-09-04 14:05:52', 0),
(1536, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1537, 54, '2021-10-04', 30, '', 0, 833, 9167, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1538, 54, '2021-10-06', 1, '', 0, 833, 8334, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1539, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1540, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1541, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1542, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1543, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1544, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1545, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1546, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1547, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1548, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:03', 0),
(1549, 54, '2021-09-04', 0, '', 10000, 0, 10000, 0, 5088, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1550, 54, '2021-10-04', 30, '2021-09-29', 0, 833, 9167, 33, 1170, 0, 2036, '2021-09-04', '2021-09-29 14:07:00', 1),
(1551, 54, '2021-10-06', 1, '2021-09-29', 0, 833, 8334, 33, 1170, 0, 224, '2021-09-04', '2021-09-30 09:38:42', 1),
(1552, 54, '2021-10-07', 1, '', 0, 833, 7501, 33, 1170, 0, 0, '2021-09-04', '2021-09-30 09:38:42', 1),
(1553, 54, '2021-10-08', 1, '', 0, 833, 6668, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1554, 54, '2021-10-09', 1, '', 0, 833, 5835, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1555, 54, '2021-10-10', 1, '', 0, 833, 5002, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1556, 54, '2021-10-11', 1, '', 0, 833, 4169, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1557, 54, '2021-10-12', 1, '', 0, 833, 3336, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1558, 54, '2021-10-13', 1, '', 0, 833, 2503, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1559, 54, '2021-10-14', 1, '', 0, 833, 1670, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1560, 54, '2021-10-15', 1, '', 0, 833, 837, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1561, 54, '2021-10-16', 1, '', 0, 837, 0, 33, 1170, 0, 0, '2021-09-04', '2021-09-04 14:06:06', 1),
(1562, 53, '2021-09-29', 0, '', 10000, 0, 10000, 0, 7410, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1563, 53, '2021-10-29', 30, '', 0, 833, 9167, 1000, 3366, 0, 100, '2021-09-29', '2021-09-29 06:53:58', 1),
(1564, 53, '2021-12-29', 30, '', 0, 833, 8334, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1565, 53, '2022-01-29', 31, '', 0, 833, 7501, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1566, 53, '2022-03-01', 31, '', 0, 833, 6668, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1567, 53, '2022-04-01', 31, '', 0, 833, 5835, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1568, 53, '2022-05-01', 30, '', 0, 833, 5002, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1569, 53, '2022-06-01', 31, '', 0, 833, 4169, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1570, 53, '2022-07-01', 30, '', 0, 833, 3336, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1571, 53, '2022-08-01', 31, '', 0, 833, 2503, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1572, 53, '2022-09-01', 31, '', 0, 833, 1670, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1573, 53, '2022-10-01', 30, '', 0, 833, 837, 1000, 3366, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1574, 53, '2022-11-01', 31, '', 0, 837, 0, 1000, 3374, 0, 0, '2021-09-29', '2021-09-29 06:52:14', 1),
(1575, 61, '2021-09-30', 0, '', 1000, 0, 1000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1576, 61, '2021-10-30', 30, '', 0, 83, 917, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1577, 61, '2021-11-01', 1, '', 0, 83, 834, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1578, 61, '2021-11-02', 1, '', 0, 83, 751, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1579, 61, '2021-11-03', 1, '', 0, 83, 668, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1580, 61, '2021-11-04', 1, '', 0, 83, 585, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1581, 61, '2021-11-05', 1, '', 0, 83, 502, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1582, 61, '2021-11-06', 1, '', 0, 83, 419, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1583, 61, '2021-11-07', 1, '', 0, 83, 336, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1584, 61, '2021-11-08', 1, '', 0, 83, 253, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1585, 61, '2021-11-09', 1, '', 0, 83, 170, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1586, 61, '2021-11-10', 1, '', 0, 83, 87, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1587, 61, '2021-11-11', 1, '', 0, 87, 0, 3, 0, 0, 0, '2021-09-30', '2021-09-30 11:28:01', 1),
(1588, 62, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1589, 62, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1590, 62, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1591, 62, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1592, 62, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1593, 62, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1594, 62, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1595, 62, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1596, 62, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1597, 62, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1598, 62, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1599, 62, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1600, 62, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:41:11', 1),
(1601, 63, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1602, 63, '2021-10-30', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1603, 63, '2021-11-01', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1604, 63, '2021-11-02', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1605, 63, '2021-11-03', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1606, 63, '2021-11-04', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1607, 63, '2021-11-05', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1608, 63, '2021-11-06', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1609, 63, '2021-11-07', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1610, 63, '2021-11-08', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1611, 63, '2021-11-09', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1612, 63, '2021-11-10', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1613, 63, '2021-11-11', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:08', 1),
(1614, 64, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1615, 64, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1616, 64, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1617, 64, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1618, 64, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1619, 64, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1620, 64, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1621, 64, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1622, 64, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1623, 64, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1624, 64, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1625, 64, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1626, 64, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:43:43', 1),
(1627, 65, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1628, 65, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1629, 65, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1630, 65, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1631, 65, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1632, 65, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1633, 65, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1634, 65, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1635, 65, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1636, 65, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1637, 65, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1638, 65, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1639, 65, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:55:01', 1),
(1640, 66, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1641, 66, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1642, 66, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1643, 66, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1644, 66, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1645, 66, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1646, 66, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1647, 66, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1648, 66, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1649, 66, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1650, 66, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1651, 66, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1652, 66, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:56:02', 1),
(1653, 67, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1654, 67, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1655, 67, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1656, 67, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1657, 67, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1658, 67, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1659, 67, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1660, 67, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1661, 67, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1662, 67, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1663, 67, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1664, 67, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1665, 67, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 11:58:17', 1),
(1666, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:00', 0),
(1667, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:00', 0),
(1668, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:00', 0),
(1669, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:00', 0),
(1670, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1671, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1672, 68, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1673, 68, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1674, 68, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1675, 68, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1676, 68, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1677, 68, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1678, 68, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1679, 68, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1680, 68, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1681, 68, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1682, 68, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1683, 68, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:25', 0),
(1684, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1685, 68, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1686, 68, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1687, 68, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1688, 68, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1689, 68, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1690, 68, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1691, 68, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1692, 68, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1693, 68, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1694, 68, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1695, 68, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1696, 68, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:01:53', 0),
(1697, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1698, 68, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1699, 68, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1700, 68, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1701, 68, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1702, 68, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1703, 68, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1704, 68, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1705, 68, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1706, 68, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1707, 68, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1708, 68, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1709, 68, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:03:15', 0),
(1710, 68, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1711, 68, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1712, 68, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1713, 68, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1714, 68, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1715, 68, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1716, 68, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1717, 68, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1718, 68, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1719, 68, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1720, 68, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1721, 68, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1722, 68, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:05:12', 0),
(1723, 69, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1724, 69, '2021-10-30', 30, '', 0, 833, 9167, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1725, 69, '2021-12-30', 30, '', 0, 833, 8334, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1726, 69, '2022-01-30', 31, '', 0, 833, 7501, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1727, 69, '2022-03-02', 31, '', 0, 833, 6668, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1728, 69, '2022-04-02', 31, '', 0, 833, 5835, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1729, 69, '2022-05-02', 30, '', 0, 833, 5002, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1730, 69, '2022-06-02', 31, '', 0, 833, 4169, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1731, 69, '2022-07-02', 30, '', 0, 833, 3336, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1732, 69, '2022-08-02', 31, '', 0, 833, 2503, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1733, 69, '2022-09-02', 31, '', 0, 833, 1670, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1734, 69, '2022-10-02', 30, '', 0, 833, 837, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1735, 69, '2022-11-02', 31, '', 0, 837, 0, 1000, 0, 0, 0, '2021-09-30', '2021-09-30 12:32:17', 0),
(1736, 69, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1737, 69, '2021-10-30', 30, '', 0, 833, 9167, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1738, 69, '2021-12-30', 30, '', 0, 833, 8334, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1739, 69, '2022-01-30', 31, '', 0, 833, 7501, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1740, 69, '2022-03-02', 31, '', 0, 833, 6668, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1);
INSERT INTO `loan_repayment_schedule` (`id`, `loan_id`, `ddate`, `ddays`, `payDate`, `disbursement`, `principalDue`, `principalBalance`, `interestDue`, `fees`, `penalties`, `totalPaid`, `createAt`, `update_at`, `status`) VALUES
(1741, 69, '2022-04-02', 31, '', 0, 833, 5835, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1742, 69, '2022-05-02', 30, '', 0, 833, 5002, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1743, 69, '2022-06-02', 31, '', 0, 833, 4169, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1744, 69, '2022-07-02', 30, '', 0, 833, 3336, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1745, 69, '2022-08-02', 31, '', 0, 833, 2503, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1746, 69, '2022-09-02', 31, '', 0, 833, 1670, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1747, 69, '2022-10-02', 30, '', 0, 833, 837, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1748, 69, '2022-11-02', 31, '', 0, 837, 0, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:33:12', 1),
(1749, 70, '2021-09-30', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1750, 70, '2021-10-30', 30, '', 0, 833, 9167, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1751, 70, '2021-12-30', 30, '', 0, 833, 8334, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1752, 70, '2022-01-30', 31, '', 0, 833, 7501, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1753, 70, '2022-03-02', 31, '', 0, 833, 6668, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1754, 70, '2022-04-02', 31, '', 0, 833, 5835, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1755, 70, '2022-05-02', 30, '', 0, 833, 5002, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1756, 70, '2022-06-02', 31, '', 0, 833, 4169, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1757, 70, '2022-07-02', 30, '', 0, 833, 3336, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1758, 70, '2022-08-02', 31, '', 0, 833, 2503, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1759, 70, '2022-09-02', 31, '', 0, 833, 1670, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1760, 70, '2022-10-02', 30, '', 0, 833, 837, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1761, 70, '2022-11-02', 31, '', 0, 837, 0, 1050, 0, 0, 0, '2021-09-30', '2021-09-30 12:34:30', 1),
(1762, 71, '2021-10-02', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1763, 71, '2021-11-02', 31, '', 0, 833, 9167, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1764, 71, '2021-11-04', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1765, 71, '2021-11-05', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1766, 71, '2021-11-06', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1767, 71, '2021-11-07', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1768, 71, '2021-11-08', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1769, 71, '2021-11-09', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1770, 71, '2021-11-10', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1771, 71, '2021-11-11', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1772, 71, '2021-11-12', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1773, 71, '2021-11-13', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1774, 71, '2021-11-14', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-10-02', '2021-10-02 06:41:10', 1),
(1775, 75, '2021-11-22', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1776, 75, '2021-12-22', 30, '', 0, 833, 9167, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1777, 75, '2021-12-24', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1778, 75, '2021-12-25', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1779, 75, '2021-12-26', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1780, 75, '2021-12-27', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1781, 75, '2021-12-28', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1782, 75, '2021-12-29', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1783, 75, '2021-12-30', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1784, 75, '2021-12-31', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1785, 75, '2022-01-01', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1786, 75, '2022-01-02', 1, '', 0, 833, 837, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1787, 75, '2022-01-03', 1, '', 0, 837, 0, 33, 0, 0, 0, '2021-11-22', '2021-11-22 11:17:46', 1),
(1788, 83, '2022-05-31', 0, '', 10000, 0, 10000, 0, 1010, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1789, 83, '2022-07-01', 31, '', 0, 833, 9167, 33, 0, 0, 10, '2022-05-31', '2022-05-31 12:33:21', 1),
(1790, 83, '2022-07-03', 1, '', 0, 833, 8334, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1791, 83, '2022-07-04', 1, '', 0, 833, 7501, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1792, 83, '2022-07-05', 1, '', 0, 833, 6668, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1793, 83, '2022-07-06', 1, '', 0, 833, 5835, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1794, 83, '2022-07-07', 1, '', 0, 833, 5002, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1795, 83, '2022-07-08', 1, '', 0, 833, 4169, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1796, 83, '2022-07-09', 1, '', 0, 833, 3336, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1797, 83, '2022-07-10', 1, '', 0, 833, 2503, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1798, 83, '2022-07-11', 1, '', 0, 833, 1670, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1799, 83, '2022-07-12', 1, '', 0, 833, 837, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1800, 83, '2022-07-13', 1, '', 0, 837, 0, 33, 0, 0, 0, '2022-05-31', '2022-05-31 12:32:15', 1),
(1801, 84, '2022-06-16', 0, '', 10000, 0, 10000, 0, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1802, 84, '2022-07-16', 30, '', 0, 333, 9667, 1000, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1803, 84, '2022-07-18', 1, '', 0, 366, 9301, 967, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1804, 84, '2022-07-19', 1, '', 0, 403, 8898, 930, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1805, 84, '2022-07-20', 1, '', 0, 443, 8455, 890, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1806, 84, '2022-07-21', 1, '', 0, 487, 7968, 846, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1807, 84, '2022-07-22', 1, '', 0, 536, 7432, 797, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1808, 84, '2022-07-23', 1, '', 0, 590, 6842, 743, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1809, 84, '2022-07-24', 1, '', 0, 649, 6193, 684, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1810, 84, '2022-07-25', 1, '', 0, 714, 5479, 619, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1811, 84, '2022-07-26', 1, '', 0, 785, 4694, 548, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1812, 84, '2022-07-27', 1, '', 0, 864, 3830, 469, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1),
(1813, 84, '2022-07-28', 1, '', 0, 3830, 0, 383, 0, 0, 0, '2022-06-16', '2022-06-16 08:48:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_status`
--

CREATE TABLE `loan_status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_status`
--

INSERT INTO `loan_status` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'Pending Approval', '2021-08-10', '2021-08-10 11:06:12', 1),
(2, 'Awaiting Disbursement', '2021-08-10', '2021-08-10 11:25:50', 1),
(3, 'Active', '2021-08-10', '2021-08-10 11:07:25', 1),
(4, 'Reject', '2021-08-10', '2021-08-10 11:06:12', 1),
(5, 'Withdrawn', '2021-08-10', '2021-08-10 11:07:04', 1),
(6, 'Write off Loan', '2021-08-17', '2021-08-17 09:19:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_transaction_list`
--

CREATE TABLE `loan_transaction_list` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `submittedOn` varchar(20) NOT NULL,
  `transactionType` varchar(100) NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `cP` float NOT NULL,
  `cI` float NOT NULL,
  `cF` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `account` varchar(100) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `routingCode` varchar(100) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_transaction_list`
--

INSERT INTO `loan_transaction_list` (`id`, `loan_id`, `payment_type_id`, `submittedOn`, `transactionType`, `debit`, `credit`, `cP`, `cI`, `cF`, `type`, `account`, `cheque`, `routingCode`, `receipt`, `bank`, `detail`, `createAt`, `update_at`, `status`) VALUES
(84, 15, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:04:58', 1),
(85, 15, 2, '2021-08-25', 'Interest Applied Yes Imran', 195, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:04:58', 1),
(86, 16, 2, '2021-08-25', 'Disbursement', 2000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:06:11', 1),
(87, 16, 2, '2021-08-25', 'Interest Applied Yes Imran', 195, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:06:12', 1),
(88, 17, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:10:38', 1),
(89, 17, 2, '2021-08-25', 'Interest Applied Yes Imran', 41, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:10:38', 1),
(90, 18, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:11:28', 1),
(91, 18, 2, '2021-08-25', 'Interest Applied Yes Imran', 195, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:11:28', 1),
(92, 19, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:12:02', 1),
(93, 19, 2, '2021-08-25', 'Interest Applied Yes Imran', 195, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:12:02', 1),
(94, 20, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:12:53', 1),
(95, 20, 2, '2021-08-25', 'Interest Applied Yes Imran', 45, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:12:53', 1),
(96, 21, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:13:45', 1),
(97, 21, 2, '2021-08-25', 'Interest Applied Yes Imran', 303, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:13:45', 1),
(98, 22, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:14:17', 1),
(99, 22, 2, '2021-08-25', 'Interest Applied Yes Imran', 6, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:14:17', 1),
(100, 23, 2, '2021-08-25', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:15:52', 1),
(101, 23, 2, '2021-08-25', 'Interest Applied Yes Imran', 0.00561635, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:15:52', 1),
(102, 24, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:19:18', 1),
(103, 24, 2, '2021-08-25', 'Interest Applied Yes Imran', 0.00798981, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:19:18', 1),
(104, 25, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:26:52', 1),
(105, 25, 2, '2021-08-25', 'Interest Applied', -341.771, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:26:52', 1),
(106, 26, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:29:21', 1),
(107, 26, 2, '2021-08-25', 'Interest Applied', -341.771, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:29:21', 1),
(108, 27, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:32:56', 1),
(109, 27, 2, '2021-08-25', 'Interest Applied', 77, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:32:56', 1),
(110, 28, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:34:22', 1),
(111, 28, 2, '2021-08-25', 'Interest Applied', 77, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:34:23', 1),
(112, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:39:10', 0),
(113, 29, 2, '2021-08-25', 'Interest Applied', 77, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:39:10', 0),
(114, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:41:44', 0),
(115, 29, 2, '2021-08-25', 'Interest Applied', 77, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:41:44', 0),
(116, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:43:02', 0),
(117, 29, 2, '2021-08-25', 'Interest Applied', -341, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:43:02', 0),
(118, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:45:23', 0),
(119, 29, 2, '2021-08-25', 'Interest Applied', -287, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:45:23', 0),
(120, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:48:02', 0),
(121, 29, 2, '2021-08-25', 'Interest Applied', -287, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:48:02', 0),
(122, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:49:33', 0),
(123, 29, 2, '2021-08-25', 'Interest Applied', -287, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:49:33', 0),
(124, 29, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:49:36', 1),
(125, 29, 2, '2021-08-25', 'Interest Applied', 44, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:49:36', 1),
(126, 30, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:51:01', 1),
(127, 30, 2, '2021-08-25', 'Interest Applied', 2400, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:51:01', 1),
(128, 31, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:51:50', 1),
(129, 31, 2, '2021-08-25', 'Interest Applied', 2400, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-25 14:51:50', 1),
(130, 32, 2, '2021-08-25', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-25', '2021-08-26 05:10:01', 0),
(131, 32, 2, '2021-08-25', 'Interest Applied', 1365, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-25', '2021-08-26 05:10:01', 0),
(132, 32, 0, '2021-08-25', 'Waive Interest', 0, 200, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-08-25', '2021-08-26 05:10:01', 0),
(133, 32, 0, '2021-08-25', 'Waive Interest', 0, 40, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-08-25', '2021-08-26 05:10:01', 0),
(134, 32, 2, '2021-08-26', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:12:28', 0),
(135, 32, 2, '2021-08-26', 'Interest Applied', 1365, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:12:28', 0),
(136, 32, 2, '2021-08-26', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:13:02', 0),
(137, 32, 2, '2021-08-26', 'Interest Applied', 1365, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:13:02', 0),
(138, 32, 2, '2021-08-26', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:14:05', 0),
(139, 32, 2, '2021-08-26', 'Interest Applied', 1365, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:14:05', 0),
(140, 32, 2, '2021-08-26', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:14:08', 1),
(141, 32, 2, '2021-08-26', 'Interest Applied', 1365, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:14:08', 1),
(142, 33, 2, '2021-08-26', 'Disbursement', 5000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:53:27', 1),
(143, 33, 2, '2021-08-26', 'Interest Applied', 254, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-08-26', '2021-08-26 05:53:27', 1),
(144, 34, 2, '2021-09-02', 'Disbursement', 5000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:44:36', 0),
(145, 34, 2, '2021-09-02', 'Interest Applied', 18, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:44:36', 0),
(146, 34, 2, '2021-09-02', 'Disbursement', 5000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:12', 0),
(147, 34, 2, '2021-09-02', 'Interest Applied', 18, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:12', 0),
(148, 34, 2, '2021-09-02', 'Disbursement', 5000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:33', 0),
(149, 34, 2, '2021-09-02', 'Interest Applied', 18, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:33', 0),
(150, 34, 2, '2021-09-02', 'Disbursement', 6000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:47', 1),
(151, 34, 2, '2021-09-02', 'Interest Applied', 24, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:45:47', 1),
(152, 35, 2, '2021-09-02', 'Disbursement', 6000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:07', 0),
(153, 35, 2, '2021-09-02', 'Interest Applied', 1440, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:07', 0),
(154, 35, 2, '2021-09-02', 'Disbursement', 6000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:35', 0),
(155, 35, 2, '2021-09-02', 'Interest Applied', 1440, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:35', 0),
(156, 35, 2, '2021-09-02', 'Disbursement', 6000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:41', 1),
(157, 35, 2, '2021-09-02', 'Interest Applied', 1440, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:48:41', 1),
(158, 36, 2, '2021-09-02', 'Disbursement', 6000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:49:18', 1),
(159, 36, 2, '2021-09-02', 'Interest Applied', 2160, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 04:49:18', 1),
(160, 37, 2, '2021-09-02', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-02', '2021-09-02 13:33:01', 1),
(161, 37, 2, '2021-09-02', 'Interest Applied', 6, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-02', '2021-09-02 13:33:01', 1),
(162, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:03:54', 0),
(163, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:03:54', 0),
(164, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:04:06', 0),
(165, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:04:06', 0),
(166, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:05:31', 0),
(167, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:05:31', 0),
(168, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:06:34', 0),
(169, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:06:34', 0),
(170, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:07:23', 0),
(171, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:07:23', 0),
(172, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:07:26', 1),
(173, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:07:26', 1),
(174, 42, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:08:09', 1),
(175, 42, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:08:09', 1),
(176, 43, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:09:28', 0),
(177, 43, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:09:28', 0),
(178, 43, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:10:36', 0),
(179, 43, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:10:36', 0),
(180, 43, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:10:39', 1),
(181, 43, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 08:10:39', 1),
(182, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:45:48', 0),
(183, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:45:48', 0),
(184, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:45:48', 0),
(185, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:47:16', 0),
(186, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:47:16', 0),
(187, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:47:16', 0),
(188, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:50:18', 0),
(189, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:50:18', 0),
(190, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:50:18', 0),
(191, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:53:20', 0),
(192, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:53:20', 0),
(193, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:53:20', 0),
(194, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:58:30', 0),
(195, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:58:30', 0),
(196, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 1004090, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 09:58:30', 0),
(197, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:03:11', 0),
(198, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:03:11', 0),
(199, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 16088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:03:11', 0),
(200, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:06:34', 0),
(201, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:06:34', 0),
(202, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 14039, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:06:34', 0),
(203, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:07:33', 0),
(204, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:07:33', 0),
(205, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 3039, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:07:33', 0),
(206, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:10:43', 0),
(207, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:10:43', 0),
(208, 44, 2, '2021-09-03', 'Repayment At Disbursement', 0, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 10:10:43', 0),
(209, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:03:16', 0),
(210, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:03:16', 0),
(211, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:03:16', 0),
(212, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(213, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(214, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(215, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(216, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(217, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(218, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(219, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(220, 44, 2, '2021-09-03', 'Fee Applied', 86.5833, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(221, 44, 2, '2021-09-03', 'Fee Applied', 83.3333, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:10:04', 0),
(222, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(223, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(224, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(225, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(226, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(227, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(228, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(229, 44, 2, '2021-09-03', 'Fee Applied', 86.5833, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(230, 44, 2, '2021-09-03', 'Fee Applied', 83.3333, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(231, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:22:55', 0),
(232, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(233, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(234, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(235, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(236, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(237, 44, 2, '2021-09-03', 'Fee Applied', 86, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(238, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(239, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(240, 44, 2, '2021-09-03', 'Fee Applied', 83, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(241, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:32:45', 0),
(242, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(243, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(244, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(245, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(246, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(247, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(248, 44, 2, '2021-09-03', 'Fee Applied', 86, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(249, 44, 2, '2021-09-03', 'Fee Applied', 83, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(250, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(251, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 11:33:22', 0),
(252, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(253, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(254, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(255, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(256, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(257, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(258, 44, 2, '2021-09-03', 'Fee Applied', 86, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(259, 44, 2, '2021-09-03', 'Fee Applied', 83, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(260, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(261, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:00:48', 0),
(262, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(263, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(264, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(265, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(266, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(267, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(268, 44, 2, '2021-09-03', 'Fee Applied', 86, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(269, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(270, 44, 2, '2021-09-03', 'Fee Applied', 83, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(271, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:04:04', 0),
(272, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(273, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(274, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(275, 44, 2, '2021-09-03', 'Fee Applied', 39, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(276, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(277, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(278, 44, 2, '2021-09-03', 'Fee Applied', 86, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(279, 44, 2, '2021-09-03', 'Fee Applied', 83, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(280, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(281, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:09:33', 0),
(282, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(283, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(284, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(285, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(286, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(287, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(288, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(289, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(290, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(291, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:13', 0),
(292, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(293, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(294, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(295, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(296, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(297, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(298, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(299, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(300, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(301, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:14:48', 0),
(302, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(303, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(304, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(305, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(306, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(307, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(308, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(309, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(310, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(311, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:20:38', 0),
(312, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(313, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(314, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(315, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(316, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(317, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(318, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(319, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(320, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(321, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:21:17', 0),
(322, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(323, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(324, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(325, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(326, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(327, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(328, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(329, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(330, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(331, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-03 13:22:21', 0),
(332, 44, 2, '2021-09-03', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(333, 44, 2, '2021-09-03', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(334, 44, 2, '2021-09-03', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(335, 44, 2, '2021-09-03', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(336, 44, 2, '2021-09-03', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(337, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(338, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(339, 44, 2, '2021-09-03', 'Fee Applied', 1039, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(340, 44, 2, '2021-09-03', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(341, 44, 2, '2021-09-03', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-03', '2021-09-04 05:20:22', 0),
(342, 44, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(343, 44, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(344, 44, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(345, 44, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(346, 44, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(347, 44, 2, '2021-09-04', 'Fee Applied', 468, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(348, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(349, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(350, 44, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(351, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:22:13', 0),
(352, 44, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(353, 44, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(354, 44, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(355, 44, 2, '2021-09-04', 'Fee Applied', 480, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(356, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(357, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(358, 44, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(359, 44, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(360, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(361, 44, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:20', 0),
(362, 45, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:35:44', 1),
(363, 45, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:35:44', 1),
(364, 45, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:35:44', 1),
(365, 45, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:35:44', 1),
(366, 46, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:36:51', 1),
(367, 46, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:36:51', 1),
(368, 46, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:36:51', 1),
(369, 46, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:36:51', 1),
(370, 47, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:40:04', 1),
(371, 47, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:40:04', 1),
(372, 47, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:40:04', 1),
(373, 47, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:40:04', 1),
(374, 48, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:45:02', 0),
(375, 48, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:45:02', 0),
(376, 48, 2, '2021-09-04', 'Fee Applied', 14400, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:45:02', 0),
(377, 48, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:45:02', 0),
(378, 48, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:01', 0),
(379, 48, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:01', 0),
(380, 48, 2, '2021-09-04', 'Fee Applied', 100, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:01', 0),
(381, 48, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:01', 0),
(382, 48, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:49', 0),
(383, 48, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:49', 0),
(384, 48, 2, '2021-09-04', 'Fee Applied', 14400, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:49', 0),
(385, 48, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:46:49', 0),
(386, 48, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:49', 0),
(387, 48, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:49', 0),
(388, 48, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:49', 0),
(389, 48, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:49', 0),
(390, 44, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(391, 44, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(392, 44, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(393, 44, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(394, 44, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(395, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(396, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(397, 44, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:22', 1),
(398, 44, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:23', 1),
(399, 44, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:23', 1),
(400, 48, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:51', 1),
(401, 48, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:51', 1),
(402, 48, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:51', 1),
(403, 48, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:48:51', 1),
(404, 49, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:50:10', 1),
(405, 49, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:50:10', 1),
(406, 49, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:50:10', 1),
(407, 49, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:50:10', 1),
(408, 50, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:51:48', 1),
(409, 50, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:51:48', 1),
(410, 50, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:51:48', 1),
(411, 50, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:51:48', 1),
(412, 51, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:52:58', 1),
(413, 51, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:52:58', 1),
(414, 51, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:52:58', 1),
(415, 51, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:52:58', 1),
(416, 52, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(417, 52, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(418, 52, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(419, 52, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(420, 52, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(421, 52, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(422, 52, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(423, 52, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(424, 52, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(425, 52, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 05:54:29', 1),
(426, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(427, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(428, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(429, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(430, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(431, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(432, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(433, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(434, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(435, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(436, 44, 2, '2021-09-04', 'Repayment', 0, 2000, 1967, 33, 0, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 09:33:17', 1),
(437, 44, 2, '2021-09-04', 'Repayment', 0, 2000, 2000, 0, 0, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 09:34:16', 1),
(438, 53, 2, '2021-09-04', 'Repayment', 0, 2000, 1000, 1000, 0, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(439, 53, 0, '2021-09-04', 'Waive Interest', 0, 500, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:29:41', 0),
(440, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(441, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(442, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(443, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(444, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(445, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(446, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(447, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(448, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(449, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(450, 53, 2, '2021-09-04', 'Repayment', 0, 3000, 0, 0, 3000, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:40:03', 0),
(451, 1, 0, '', '', 10, 0, 1, 1, 1, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:30:30', 1),
(452, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(453, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(454, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(455, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(456, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(457, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(458, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(459, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0);
INSERT INTO `loan_transaction_list` (`id`, `loan_id`, `payment_type_id`, `submittedOn`, `transactionType`, `debit`, `credit`, `cP`, `cI`, `cF`, `type`, `account`, `cheque`, `routingCode`, `receipt`, `bank`, `detail`, `createAt`, `update_at`, `status`) VALUES
(460, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(461, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(462, 53, 2, '2021-09-04', 'Repayment', 0, 3000, 0, 0, 3000, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(463, 53, 2, '2021-09-04', 'Repayment', 0, 400, 0, 24, 376, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(464, 53, 2, '2021-09-04', 'Repayment', 0, 1000, 24, 976, 0, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(465, 53, 2, '2021-09-04', 'Repayment', 0, 811, 809, 0, 2, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(466, 53, 2, '2021-09-04', 'Repayment', 0, 1000, 0, 0, 1000, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:48:12', 0),
(467, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(468, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(469, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(470, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(471, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(472, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(473, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(474, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(475, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(476, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(477, 53, 2, '2021-09-04', 'Repayment', 0, 3000, 0, 0, 3000, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(478, 53, 2, '2021-09-04', 'Repayment', 0, 400, 0, 24, 376, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(479, 53, 2, '2021-09-04', 'Repayment', 0, 811, 0, 811, 0, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(480, 53, 2, '2021-09-04', 'Repayment', 0, 1000, 833, 165, 2, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(481, 53, 0, '2021-09-04', 'Waive Interest', 0, 10000, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(482, 53, 0, '2021-09-04', 'Waive Interest', 0, 1000, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:52:41', 0),
(483, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(484, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(485, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(486, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(487, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(488, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(489, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(490, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(491, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(492, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(493, 53, 2, '2021-09-04', 'Repayment', 0, 5000, 624, 1000, 3376, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(494, 53, 2, '2021-09-04', 'Repayment', 0, 7000, 1042, 1000, 4958, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 11:54:50', 0),
(495, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(496, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(497, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(498, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(499, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(500, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(501, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(502, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(503, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(504, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(505, 53, 2, '2021-09-04', 'Repayment', 0, 5000, 624, 1000, 3376, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(506, 53, 2, '2021-09-04', 'Repayment', 0, 7000, 1042, 1000, 4958, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(507, 53, 2, '2021-09-04', 'Repayment', 0, 1795, 0, 1, 1794, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(508, 53, 0, '2021-09-04', 'Waive Interest', 0, 1000, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(509, 53, 0, '2021-09-04', 'Waive Interest', 0, 8999, 0, 0, 0, 'WI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(510, 53, 2, '2021-09-04', 'Repayment', 0, 2000, 833, 999, 168, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:07:23', 0),
(511, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(512, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(513, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(514, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(515, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(516, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(517, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(518, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(519, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(520, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(521, 53, 2, '2021-09-04', 'Repayment', 0, 14000, 1666, 2206, 10128, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(522, 53, 2, '2021-09-04', 'Repayment', 0, 2000, 833, 794, 373, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(523, 53, 0, '2021-09-04', 'Waive Charge', 0, -5799, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:12:33', 0),
(524, 53, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(525, 53, 2, '2021-09-04', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(526, 53, 2, '2021-09-04', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(527, 53, 2, '2021-09-04', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(528, 53, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(529, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(530, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(531, 53, 2, '2021-09-04', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(532, 53, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(533, 53, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(534, 53, 2, '2021-09-04', 'Repayment', 0, 17000, 2499, 3000, 11501, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(535, 53, 0, '2021-09-04', 'Waive Charge', 0, 28119, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:22:57', 0),
(536, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(537, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(538, 54, 2, '2021-09-04', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(539, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(540, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(541, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(542, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(543, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(544, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(545, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:29:18', 0),
(546, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(547, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(548, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(549, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(550, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(551, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(552, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(553, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(554, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(555, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(556, 54, 2, '2021-09-04', 'Repayment', 0, 1700, 0, 0, 1700, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(557, 54, 2, '2021-09-04', 'Repayment', 0, 1000, 0, 0, 1000, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(558, 54, 2, '2021-09-04', 'Repayment', 0, 10000, 2499, 99, 7402, 'Paid', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(559, 54, 0, '2021-09-04', 'Waive Charge', 0, 28008, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:37:08', 0),
(560, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(561, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(562, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(563, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(564, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(565, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(566, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(567, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(568, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(569, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(570, 54, 0, '2021-09-04', 'Waive Charge', 0, 38080, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:42:26', 0),
(571, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(572, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(573, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(574, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(575, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(576, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(577, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(578, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(579, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(580, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(581, 54, 0, '2021-09-04', 'Waive Charge', 0, 38200, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 13:44:21', 0),
(582, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(583, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(584, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(585, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(586, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(587, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(588, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(589, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(590, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(591, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(592, 54, 0, '2021-09-04', 'Waive Charge', 0, 38200, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:01:10', 0),
(593, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(594, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(595, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(596, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(597, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(598, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(599, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(600, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(601, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(602, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(603, 54, 0, '2021-09-04', 'Waive Charge', 0, 120, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:02:56', 0),
(604, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(605, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(606, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(607, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(608, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(609, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(610, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(611, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(612, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(613, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(614, 54, 0, '2021-09-04', 'Waive Charge', 0, 120, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:03:51', 0),
(615, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(616, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(617, 54, 2, '2021-09-04', 'Fee Applied', 120, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(618, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(619, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(620, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(621, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(622, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(623, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(624, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(625, 54, 0, '2021-09-04', 'Waive Charge', 0, 120, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:19', 0),
(626, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(627, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(628, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(629, 54, 2, '2021-09-04', 'Fee Applied', 40, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(630, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(631, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(632, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(633, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(634, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(635, 54, 0, '2021-09-04', 'Waive Charge', 0, 40, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:04:35', 0),
(636, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(637, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(638, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(639, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(640, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(641, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(642, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(643, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(644, 54, 0, '2021-09-04', 'Waive Charge', 0, 12000, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:18', 0),
(645, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(646, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(647, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(648, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(649, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(650, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(651, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:05:52', 0),
(652, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(653, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(654, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(655, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(656, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(657, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(658, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(659, 54, 0, '2021-09-04', 'Waive Charge', 0, 12000, 0, 0, 0, 'WF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:03', 0),
(660, 54, 2, '2021-09-04', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(661, 54, 2, '2021-09-04', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(662, 54, 2, '2021-09-04', 'Repayment At Disbursement', 5088, 5088, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(663, 54, 2, '2021-09-04', 'Fee Applied', 1040, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(664, 54, 2, '2021-09-04', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(665, 54, 2, '2021-09-04', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-04', '2021-09-04 14:06:06', 1),
(666, 53, 2, '2021-09-29', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(667, 53, 2, '2021-09-29', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(668, 53, 2, '2021-09-29', 'Fee Applied', 1200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(669, 53, 2, '2021-09-29', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(670, 53, 2, '2021-09-29', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(671, 53, 2, '2021-09-29', 'Fee Applied', 1000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(672, 53, 2, '2021-09-29', 'Fee Applied', 12000, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(673, 53, 2, '2021-09-29', 'Fee Applied', 2200, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(674, 53, 2, '2021-09-29', 'Repayment At Disbursement', 7410, 7410, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-29', '2021-09-29 06:52:14', 1),
(675, 53, 2, '2021-09-29', 'Repayment', 0, 100, 0, 0, 100, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-29 12:08:08', 0),
(676, 43, 2, '2021-09-29', 'Repayment', 0, 500, 467, 33, 0, 'Paid', '809', '809', '80', '098', '09', 'dea', '2021-09-29', '2021-09-29 11:47:59', 1),
(677, 54, 2, '2021-09-29', 'Repayment', 0, 10, 0, 0, 10, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-29 12:40:14', 1),
(678, 54, 2, '2021-09-29', 'Repayment', 0, 50, 0, 0, 50, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-29 12:44:33', 1),
(679, 54, 2, '2021-09-29', 'Repayment', 0, 2000, 833, 33, 1134, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-30 09:38:42', 0),
(680, 54, 2, '2021-09-29', 'Repayment', 0, 1200, 21, 33, 1146, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-29 14:07:06', 1),
(681, 54, 2, '2021-09-29', 'Repayment', 0, 1000, 812, 0, 188, 'Paid', '', '', '', '', '', '', '2021-09-29', '2021-09-29 14:07:15', 1),
(682, 61, 2, '2021-09-30', 'Disbursement', 1000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:28:01', 1),
(683, 61, 2, '2021-09-30', 'Interest Applied', 36, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:28:01', 1),
(684, 61, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:28:01', 1),
(685, 62, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:41:11', 1),
(686, 62, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:41:11', 1),
(687, 62, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:41:11', 1),
(688, 63, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:08', 1),
(689, 63, 2, '2021-09-30', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:08', 1),
(690, 63, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:08', 1),
(691, 64, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:43', 1),
(692, 64, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:43', 1),
(693, 64, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:43:43', 1),
(694, 65, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:55:01', 1),
(695, 65, 2, '2021-09-30', 'Interest Applied', 0, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:55:01', 1),
(696, 65, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:55:01', 1),
(697, 66, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:56:02', 1),
(698, 66, 2, '2021-09-30', 'Interest Applied', 0, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:56:02', 1),
(699, 66, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:56:02', 1),
(700, 67, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:58:17', 1),
(701, 67, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:58:17', 1),
(702, 67, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 11:58:17', 1),
(703, 68, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:25', 0),
(704, 68, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:25', 0),
(705, 68, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:25', 0),
(706, 68, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:53', 0),
(707, 68, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:53', 0),
(708, 68, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:01:53', 0),
(709, 68, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:03:15', 0),
(710, 68, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:03:15', 0),
(711, 68, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:03:15', 0),
(712, 68, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:05:12', 0),
(713, 68, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:05:12', 0),
(714, 68, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:05:12', 0),
(715, 69, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:32:17', 0),
(716, 69, 2, '2021-09-30', 'Interest Applied', 12000, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:32:17', 0),
(717, 69, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:32:17', 0),
(718, 69, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:33:12', 1),
(719, 69, 2, '2021-09-30', 'Interest Applied', 12600, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:33:12', 1),
(720, 69, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:33:12', 1),
(721, 70, 2, '2021-09-30', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:34:30', 1),
(722, 70, 2, '2021-09-30', 'Interest Applied', 12600, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:34:30', 1),
(723, 70, 2, '2021-09-30', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-09-30', '2021-09-30 12:34:30', 1),
(724, 71, 2, '2021-10-02', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-10-02', '2021-10-02 06:41:10', 1),
(725, 71, 2, '2021-10-02', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-10-02', '2021-10-02 06:41:10', 1),
(726, 71, 2, '2021-10-02', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-10-02', '2021-10-02 06:41:10', 1),
(727, 43, 3, '2021-10-02', 'Repayment', 0, 9896, 9533, 363, 0, 'Paid', '', '', '', '', '', '', '2021-10-02', '2021-10-02 07:33:24', 1),
(728, 75, 2, '2021-11-22', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2021-11-22', '2021-11-22 11:17:46', 1),
(729, 75, 2, '2021-11-22', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2021-11-22', '2021-11-22 11:17:46', 1),
(730, 75, 2, '2021-11-22', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2021-11-22', '2021-11-22 11:17:46', 1),
(731, 83, 2, '2022-05-31', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2022-05-31', '2022-05-31 12:32:15', 1),
(732, 83, 2, '2022-05-31', 'Interest Applied', 396, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2022-05-31', '2022-05-31 12:32:15', 1),
(733, 83, 2, '2022-05-31', 'Repayment At Disbursement', 1010, 1010, 0, 0, 0, 'CF', '', '', '', '', '', '', '2022-05-31', '2022-05-31 12:32:15', 1),
(734, 83, 2, '2022-05-31', 'Repayment', 0, 10, 0, 10, 0, 'Paid', '', '', '', '', '', '', '2022-05-31', '2022-05-31 12:33:21', 1),
(735, 84, 2, '2022-06-16', 'Disbursement', 10000, 0, 0, 0, 0, 'CP', '', '', '', '', '', '', '2022-06-16', '2022-06-16 08:48:19', 1),
(736, 84, 2, '2022-06-16', 'Interest Applied', 8876, 0, 0, 0, 0, 'CI', '', '', '', '', '', '', '2022-06-16', '2022-06-16 08:48:19', 1),
(737, 84, 2, '2022-06-16', 'Repayment At Disbursement', 0, 0, 0, 0, 0, 'CF', '', '', '', '', '', '', '2022-06-16', '2022-06-16 08:48:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `img` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `branch_id`, `fName`, `lName`, `img`, `gender`, `phone`, `address`, `email`, `password`, `createAt`, `update_at`, `status`) VALUES
(1, 0, 'TTS', 'Software House', '', 'male', '0415216584', 'Main Road', 'email@gmail.com', '123', '2021-09-07', '2021-09-08 04:59:15', 1),
(2, 0, 'undefined', 'undefined', '', 'undefined', 'undefined', 'undefined', 'u@gmail.com', '123', '2021-09-07', '2021-09-07 10:11:19', 1),
(3, 0, 'undefined', 'undefined', '', 'undefined', 'undefined', 'undefined', 'y@gmail.com', '123', '2021-09-07', '2021-09-07 10:11:33', 1),
(4, 0, 'undefined', 'undefined', '', 'undefined', 'undefined', 'undefined', 'test@gmail.com', '123', '2021-09-07', '2021-09-07 10:11:50', 1),
(5, 0, 'Other', '', '', '', '', '', 'email@gmail.com', 'undefined', '2021-09-07', '2021-09-07 09:33:55', 1),
(6, 0, 'Other', '', '', '', '', '', 'email1@gmail.com', 'undefined', '2021-09-08', '2021-09-08 05:06:07', 1),
(7, 0, 'Other', '', '', '', '', '', 'emais1@gmail.com', '123', '2021-09-08', '2021-09-08 05:16:10', 1),
(8, 9, 'TTS', 'Soft', '', 'male', '0415216584', 'undefined', 'timetechsolution@gmail.com', '123', '2021-09-08', '2021-09-08 05:21:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `routeName` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `routeName`, `createAt`, `update_at`, `status`) VALUES
(1, 'Accounting', '2021-07-14', '2021-07-14 08:36:35', 1),
(2, 'Income', '2021-07-14', '2021-07-14 08:36:35', 1),
(3, 'Expense', '2021-07-14', '2021-07-14 10:01:04', 1),
(4, 'Loan', '2021-07-14', '2021-07-14 10:01:04', 1),
(5, 'User', '2021-07-14', '2021-07-14 10:01:19', 1),
(6, 'Payroll', '2021-07-14', '2021-07-14 10:01:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `activeOrNot` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`, `activeOrNot`, `description`, `createAt`, `update_at`, `status`) VALUES
(1, 'undefined', 1, 'd', '2021-07-14', '2021-07-19 14:38:19', 0),
(2, 'MPSA', 0, 'ok', '2021-07-14', '2021-07-19 14:43:11', 1),
(3, 'USD', 1, 'd', '2021-07-19', '2021-07-19 14:43:18', 1),
(4, 'Mrs', 1, 'Mrs', '2021-07-19', '2021-07-19 14:43:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `payroll_template_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `workDuration` float NOT NULL,
  `durationUnit` varchar(100) NOT NULL,
  `amountPerDuration` float NOT NULL,
  `totalDurationAmount` float NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `accountName` varchar(20) NOT NULL,
  `recuring` varchar(100) NOT NULL,
  `recurFrequency` varchar(100) NOT NULL,
  `recurType` varchar(100) NOT NULL,
  `recurStartDate` varchar(100) NOT NULL,
  `recurEndDate` varchar(20) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `branch_id`, `user_id`, `date`, `payroll_template_id`, `currency_id`, `workDuration`, `durationUnit`, `amountPerDuration`, `totalDurationAmount`, `bankName`, `accountName`, `recuring`, `recurFrequency`, `recurType`, `recurStartDate`, `recurEndDate`, `createAt`, `updateAt`, `status`) VALUES
(20, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, 'HBL', '789', '1', '87', 'day', '2021-01-01', '2021-01-01', '2021-08-27', '2021-08-27 06:50:03', 0),
(21, 9, 2, '2021-08-27', 20, 1, 67, 'Day', 10, 670, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 10:40:02', 1),
(22, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 3, 120, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 08:02:58', 1),
(23, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 11:02:29', 0),
(24, 9, 2, '2021-08-27', 20, 1, 10, 'Day', 350, 3500, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 10:51:14', 1),
(25, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 11:02:32', 0),
(26, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 09:47:25', 1),
(27, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 11:02:34', 0),
(28, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 09:48:34', 1),
(29, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 09:49:13', 1),
(30, 9, 2, '2021-08-27', 20, 1, 40, 'Day', 5, 200, '', '', '0', '', 'day', '', '', '2021-08-27', '2021-08-27 09:49:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items`
--

CREATE TABLE `payroll_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amountType` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `description` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_items`
--

INSERT INTO `payroll_items` (`id`, `name`, `type`, `amountType`, `amount`, `description`, `createAt`, `updateAt`, `status`) VALUES
(10, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 'Payroll Item 1 - Allowance - Fixed - 200', '2021-08-26', '2021-08-26 06:29:15', 1),
(11, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 'Payroll Item 1 - Deduction - Fixed - 50', '2021-08-26', '2021-08-26 06:29:38', 1),
(12, 'Payroll Item 1 - Deduction - Percentage - 70', 'allowance', 'percentage', 70, 'Payroll Item 1 - Deduction - Percentage - 70', '2021-08-26', '2021-08-26 06:30:22', 1),
(13, 'Payroll Item 1 - Allowance - Percentage - 80', 'allowance', 'percentage', 80, 'Payroll Item 1 - Allowance - Percentage - 80', '2021-08-26', '2021-08-26 06:30:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_payment`
--

CREATE TABLE `payroll_payment` (
  `id` int(11) NOT NULL,
  `payroll_id` int(11) NOT NULL,
  `paymentType_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amountType` varchar(20) NOT NULL,
  `amount` float NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `date` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `cheque` varchar(20) NOT NULL,
  `routingCode` varchar(15) NOT NULL,
  `receipt` varchar(200) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_payment`
--

INSERT INTO `payroll_payment` (`id`, `payroll_id`, `paymentType_id`, `name`, `type`, `amountType`, `amount`, `debit`, `credit`, `date`, `account`, `cheque`, `routingCode`, `receipt`, `bank`, `description`, `createAt`, `update_at`, `status`) VALUES
(5, 20, 0, 'first class', 'allowance', 'fixed', 3, 3, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 06:47:03', 1),
(6, 20, 0, 'last ', 'allowance', 'percentage', 8, 16, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 06:47:03', 1),
(7, 20, 0, 'loss', 'deduction', 'fixed', 30, 0, 30, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 06:47:03', 1),
(8, 21, 0, 'allowance val', 'allowance', 'fixed', 7, 7, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 0),
(9, 21, 0, 'allowance val', 'allowance', 'fixed', 2, 2, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 0),
(10, 21, 0, 'first class', 'allowance', 'percentage', 50, 10, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 0),
(11, 21, 0, 'dec', 'deduction', 'percentage', 2, 0, 0.4, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 0),
(12, 21, 0, 'loss', 'deduction', 'fixed', 30, 0, 30, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 0),
(13, 21, 3, 'undefined', 'undefined', 'undefined', 5, 0, 0, '2021-08-27', '809', '789', '7987', '7879', 'HBL', 'ok', '2021-08-27', '2021-08-27 10:40:02', 0),
(14, 21, 2, '', 'paid', 'paid', 7, 0, 7, '2021-08-27', '7777', '77777', '77777', '77777', '7777', '7777', '2021-08-27', '2021-08-27 10:40:02', 0),
(15, 22, 0, '9', 'allowance', 'percentage', 9, 11, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 08:02:58', 1),
(16, 22, 0, '4', 'deduction', 'percentage', 4, 0, 5, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 08:02:58', 1),
(17, 22, 2, '', 'paid', 'paid', 40, 0, 40, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 08:03:45', 1),
(18, 26, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:47:25', 1),
(19, 26, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:47:25', 1),
(20, 28, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:48:34', 1),
(21, 28, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:48:34', 1),
(22, 29, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:49:13', 1),
(23, 29, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:49:13', 1),
(24, 30, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:49:33', 1),
(25, 30, 0, 'ok', 'allowance', 'fixed', 700, 700, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:49:33', 1),
(26, 30, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:49:33', 1),
(27, 30, 2, '', 'paid', 'paid', 105, 0, 105, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 09:50:05', 1),
(28, 21, 0, 'first class', 'allowance', 'percentage', 50, 335, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 1),
(29, 21, 0, 'loss', 'deduction', 'fixed', 30, 0, 30, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:40:02', 1),
(30, 24, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:44:33', 0),
(31, 24, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:44:33', 0),
(32, 24, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:51:14', 0),
(33, 24, 0, '', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:51:14', 0),
(34, 24, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 10:51:14', 0),
(35, 24, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 0),
(36, 24, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 0),
(37, 24, 0, '', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 0),
(38, 24, 0, '', 'deduction', 'fixed', 40, 0, 40, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 0),
(39, 24, 0, 'Payroll Item 1 - Allowance - Fixed - 200', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(40, 24, 0, '', 'allowance', 'percentage', 10, 350, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(41, 24, 0, '', 'deduction', 'fixed', 40, 0, 40, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(42, 24, 0, '', 'allowance', 'fixed', 200, 200, 0, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(43, 24, 0, 'Payroll Item 1 - Deduction - Fixed - 50', 'deduction', 'fixed', 50, 0, 50, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(44, 24, 0, '', 'deduction', 'percentage', 20, 0, 700, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:01:01', 1),
(45, 24, 2, '', 'paid', 'paid', 3460, 0, 3460, '2021-08-27', '', '', '', '', '', '', '2021-08-27', '2021-08-27 11:02:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_templates`
--

CREATE TABLE `payroll_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `workDuration` varchar(100) NOT NULL,
  `durationUnit` varchar(100) NOT NULL,
  `amountPerDuration` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll_templates`
--

INSERT INTO `payroll_templates` (`id`, `name`, `workDuration`, `durationUnit`, `amountPerDuration`, `description`, `createAt`, `updateAt`, `status`) VALUES
(20, 'Payroll Template 1', '40', 'Day', '5', 'working', '2021-08-26', '2021-08-26 08:28:16', 1),
(21, 'All ', '67', 'Day', '9', 'ok', '2021-08-27', '2021-08-27 09:52:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_templates_items_list`
--

CREATE TABLE `payroll_templates_items_list` (
  `id` int(11) NOT NULL,
  `payroll_items_id` int(11) NOT NULL,
  `payroll_templates_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_templates_items_list`
--

INSERT INTO `payroll_templates_items_list` (`id`, `payroll_items_id`, `payroll_templates_id`, `createAt`, `update_at`, `status`) VALUES
(14, 10, 20, '2021-08-26', '2021-08-26 08:28:16', 1),
(15, 11, 20, '2021-08-26', '2021-08-26 08:28:16', 1),
(16, 10, 21, '2021-08-27', '2021-08-27 09:52:32', 1),
(17, 12, 21, '2021-08-27', '2021-08-27 09:52:32', 1),
(18, 11, 21, '2021-08-27', '2021-08-27 09:52:32', 1),
(19, 13, 21, '2021-08-27', '2021-08-27 09:52:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'update ok', '2021-07-14', '2021-07-19 14:27:12', 0),
(2, 'Un Employee', '2021-07-14', '2021-07-19 12:39:15', 1),
(3, 'Other', '2021-07-19', '2021-07-19 13:07:24', 1),
(4, 'Yasir Mehmood', '2021-07-19', '2021-07-19 14:27:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'admin', '2021-07-14', '2021-07-14 10:01:45', 1),
(2, 'accounter', '2021-07-14', '2021-07-14 10:02:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_pages`
--

CREATE TABLE `role_pages` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `pages_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_pages`
--

INSERT INTO `role_pages` (`id`, `role_id`, `pages_id`, `createAt`, `update_at`, `status`) VALUES
(1, 1, 1, '2021-07-14', '2021-07-14 10:01:45', 1),
(2, 1, 2, '2021-07-14', '2021-07-14 10:01:45', 1),
(3, 1, 3, '2021-07-14', '2021-07-14 10:01:45', 1),
(4, 1, 4, '2021-07-14', '2021-07-14 10:01:45', 1),
(5, 1, 5, '2021-07-14', '2021-07-14 10:01:45', 1),
(6, 1, 6, '2021-07-14', '2021-07-14 10:01:45', 1),
(7, 2, 1, '2021-07-14', '2021-07-14 10:06:32', 0),
(8, 2, 2, '2021-07-14', '2021-07-14 10:06:32', 0),
(9, 2, 3, '2021-07-14', '2021-07-14 10:06:32', 0),
(10, 2, 4, '2021-07-14', '2021-07-14 10:06:32', 0),
(11, 2, 5, '2021-07-14', '2021-07-14 10:06:32', 0),
(12, 2, 6, '2021-07-14', '2021-07-14 10:06:32', 0),
(13, 2, 1, '2021-07-14', '2021-07-14 10:06:32', 0),
(14, 2, 2, '2021-07-14', '2021-07-14 10:06:32', 0),
(15, 2, 1, '2021-07-14', '2021-07-14 10:06:32', 1),
(16, 2, 2, '2021-07-14', '2021-07-14 10:06:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving`
--

CREATE TABLE `saving` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `savingProduct_id` int(11) NOT NULL,
  `savingOfficer_user_id` int(11) NOT NULL,
  `saving_status_id` int(11) NOT NULL DEFAULT '1',
  `accountNumber` varchar(20) NOT NULL,
  `externalId` varchar(20) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `compoundingPeriod` varchar(200) NOT NULL,
  `interestPostingPeriodType` varchar(200) NOT NULL,
  `interestCalculationType` varchar(200) NOT NULL,
  `interest` float NOT NULL,
  `automaticOpeningBalance` varchar(100) NOT NULL,
  `lockinPeriodFrequency` varchar(100) NOT NULL,
  `lockinPeriodFrequencyType` varchar(100) NOT NULL,
  `withdrawLockDate` date NOT NULL,
  `approveDate` varchar(20) NOT NULL,
  `approveNote` varchar(500) NOT NULL,
  `activationDate` varchar(20) NOT NULL,
  `activationNote` varchar(500) NOT NULL,
  `rejectNote` varchar(500) NOT NULL,
  `withdrawNote` varchar(500) NOT NULL,
  `closeNote` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving`
--

INSERT INTO `saving` (`id`, `client_id`, `savingProduct_id`, `savingOfficer_user_id`, `saving_status_id`, `accountNumber`, `externalId`, `currency_id`, `category`, `compoundingPeriod`, `interestPostingPeriodType`, `interestCalculationType`, `interest`, `automaticOpeningBalance`, `lockinPeriodFrequency`, `lockinPeriodFrequencyType`, `withdrawLockDate`, `approveDate`, `approveNote`, `activationDate`, `activationNote`, `rejectNote`, `withdrawNote`, `closeNote`, `createAt`, `updateAt`, `status`) VALUES
(16, 5, 4, 2, 1, 'account num', 'exter', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 04:36:51', 1),
(17, 5, 4, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '1', 'weeks', '2021-09-07', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 04:37:29', 1),
(18, 5, 4, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '2', 'months', '2021-10-30', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 05:01:20', 1),
(19, 0, 0, 0, 3, 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', '2021-08-30', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-09-01 10:26:55', 1),
(20, 1, 1, 1, 1, '', '', 0, '', '', '', '', 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 05:37:29', 1),
(21, 5, 4, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '1', 'weeks', '2021-09-08', '2021-09-01', '', '2021-09-01', '', '', '', '', '2021-08-31', '2021-09-01 10:35:02', 1),
(22, 5, 4, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '1', 'weeks', '2021-09-07', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 05:43:40', 1),
(23, 5, 4, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '1', 'weeks', '2021-09-07', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 05:43:56', 1),
(24, 5, 4, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 5, '100', '1', 'months', '2021-09-30', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 05:55:37', 1),
(25, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:17:35', 1),
(26, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:20:18', 1),
(27, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:29:09', 1),
(28, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:30:33', 1),
(29, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:31:04', 1),
(30, 5, 2, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 0, '1000', '5', 'days', '2021-09-05', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:32:08', 1),
(31, 5, 5, 2, 1, '4723498237', '723984', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 10:58:32', 1),
(32, 5, 5, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 11:02:18', 1),
(33, 5, 5, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 11:05:00', 1),
(34, 5, 5, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 11:05:24', 1),
(35, 5, 5, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 11:06:07', 1),
(36, 5, 5, 2, 1, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '', '', '', '', '', '', '', '2021-08-31', '2021-08-31 11:08:56', 1),
(37, 5, 5, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 12:10:10', 1),
(38, 5, 5, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 12:17:31', 1),
(39, 5, 5, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-08-30', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 12:31:38', 1),
(40, 5, 5, 2, 3, '', '', 1, 'voluntary', 'daily', 'monthly', 'daily_balance', 15, '1000', '10', 'days', '2021-09-10', '2021-08-31', '', '2021-08-31', '', '', '', '', '2021-08-31', '2021-08-31 14:09:36', 1),
(41, 0, 0, 0, 1, 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', '2021-09-01', '', '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:25:11', 1),
(42, 0, 0, 0, 1, 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', '2021-09-01', '', '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:25:43', 1),
(43, 0, 0, 0, 1, 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', 'undefined', 0, 'undefined', 'undefined', 'undefined', '2021-09-01', '', '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:26:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_charges`
--

CREATE TABLE `saving_charges` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chargeType` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `chargeOption` varchar(100) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `override` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving_charges`
--

INSERT INTO `saving_charges` (`id`, `name`, `chargeType`, `amount`, `chargeOption`, `currency_id`, `override`, `active`, `createAt`, `updateAt`, `status`) VALUES
(1, 'update charges ', 'update', 0, '', 0, '', 0, '2021-08-02', '2021-08-30 04:47:09', 0),
(2, 'Issue 1', 'Anual Fee', 2417, 'Percentage of savings balance', 1, '0', 0, '2021-08-03', '2021-08-03 10:43:48', 0),
(3, 'Yasir Mehmood', 'Anual Fee', 0, 'Percentage of savings balance', 0, '0', 1, '2021-08-03', '2021-08-30 04:47:05', 0),
(4, 'Issue 1', 'Anual Fee', 100, 'Percentage of savings balance', 1, '0', 0, '2021-08-30', '2021-08-30 04:47:13', 0),
(5, 'Issue 1', 'Anual Fee', 8, 'Percentage of savings balance', 1, '0', 0, '2021-08-30', '2021-08-30 04:47:16', 0),
(6, 'AF-PoSB-200', 'Anual Fee', 200, 'Percentage of savings balance', 0, '0', 1, '2021-08-30', '2021-08-31 10:45:23', 0),
(7, 'WF-PoSB-100', 'Withdrawal Fee', 100, 'Percentage of savings balance', 1, '0', 1, '2021-08-30', '2021-08-30 04:50:45', 0),
(8, 'SA-PoSB-40', 'Savings Activation', 40, 'Percentage of savings balance', 1, '0', 1, '2021-08-30', '2021-08-31 11:33:21', 0),
(9, 'AF-PoA-90', 'Anual Fee', 90, 'Percentage of amount', 1, '0', 1, '2021-08-30', '2021-08-30 04:50:30', 0),
(10, 'AF-PoA-70', 'Anual Fee', 70, 'Percentage of amount', 1, '0', 1, '2021-08-30', '2021-08-31 10:45:29', 0),
(11, 'AF-F-30', 'Anual Fee', 30, 'Flat', 1, '0', 1, '2021-08-30', '2021-08-31 10:46:01', 0),
(12, 'WF-PoSB-50', 'Withdrawal Fee', 50, 'Percentage of savings balance', 1, '0', 1, '2021-08-30', '2021-08-31 10:55:10', 1),
(13, 'WF-PoA-60', 'Withdrawal Fee', 60, 'Percentage of amount', 1, '0', 1, '2021-08-30', '2021-08-31 10:55:25', 1),
(14, 'WF-F-20', 'Withdrawal Fee', 20, 'Flat', 1, '0', 1, '2021-08-30', '2021-08-31 10:55:39', 1),
(15, 'SA-PoSB-30', 'Savings Activation', 30, 'Percentage of savings balance', 1, '0', 1, '2021-08-30', '2021-08-31 11:33:24', 1),
(16, 'SA-PoA-45', 'Savings Activation', 45, 'Percentage of amount', 1, '0', 1, '2021-08-30', '2021-08-31 11:33:27', 1),
(17, 'SA-F-35', 'Savings Activation', 35, 'Flat', 1, '0', 1, '2021-08-30', '2021-08-31 11:33:29', 1),
(18, 'Sdd-30-PoSB', 'Specified due date', 30, 'Percentage of savings balance', 1, '0', 1, '2021-08-31', '2021-08-31 10:56:18', 1),
(19, 'Sdd-40-F', 'Specified due date', 40, 'Flat', 1, '0', 1, '2021-08-31', '2021-08-31 10:56:29', 1),
(20, 'MF-50-PoSB', 'Monthly Fee', 50, 'Percentage of savings balance', 1, '0', 1, '2021-08-31', '2021-08-31 10:56:40', 1),
(21, 'MF-70-F', 'Monthly Fee', 70, 'Flat', 1, '0', 1, '2021-08-31', '2021-08-31 10:56:48', 1),
(22, 'QF-60-PoSB', 'Quarterly Fee', 60, 'Percentage of savings balance', 1, '0', 1, '2021-08-31', '2021-08-31 10:50:03', 1),
(23, 'QF-55-F', 'Quarterly Fee', 55, 'Flat', 1, '0', 1, '2021-08-31', '2021-08-31 10:50:22', 1),
(24, 'AF-30-PoSB', 'Annual Fee', 30, 'Percentage of savings balance', 1, '0', 1, '2021-08-31', '2021-08-31 10:50:45', 1),
(25, 'AF-45-F', 'Annual Fee', 45, 'Flat', 1, '0', 1, '2021-08-31', '2021-08-31 10:51:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_charge_list`
--

CREATE TABLE `saving_charge_list` (
  `id` int(11) NOT NULL,
  `saving_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `valuee` float NOT NULL,
  `chargeType` varchar(30) NOT NULL,
  `collectedOn` varchar(30) NOT NULL,
  `paidStatus` varchar(10) NOT NULL,
  `nextPayDate` varchar(10) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saving_charge_list`
--

INSERT INTO `saving_charge_list` (`id`, `saving_id`, `name`, `valuee`, `chargeType`, `collectedOn`, `paidStatus`, `nextPayDate`, `createAt`, `update_at`, `status`) VALUES
(67, 37, 'MF-70-F', 70, 'Monthly Fee', 'Flat', 'Paid', '2021-10-01', '2021-08-31', '2021-08-31 13:58:03', 1),
(68, 37, 'WF-PoSB-50', 50, 'Withdrawal Fee', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(69, 37, 'QF-60-PoSB', 60, 'Quarterly Fee', 'Percentage of savings balance', 'Paid', '2021-12-01', '2021-08-31', '2021-08-31 14:08:17', 1),
(70, 37, 'WF-PoA-60', 60, 'Withdrawal Fee', 'Percentage of amount', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(71, 37, 'WF-F-20', 20, 'Withdrawal Fee', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(72, 37, 'SA-PoSB-30', 30, 'Savings Activation', 'Percentage of savings balance', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:00:45', 1),
(73, 37, 'SA-PoA-45', 45, 'Savings Activation', 'Percentage of amount', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:00:45', 1),
(74, 37, 'AF-30-PoSB', 30, 'Annual Fee', 'Percentage of savings balance', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(75, 37, 'AF-45-F', 45, 'Annual Fee', 'Flat', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(76, 37, 'QF-55-F', 55, 'Quarterly Fee', 'Flat', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 11:11:02', 1),
(77, 37, 'SA-F-35', 35, 'Savings Activation', 'Flat', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:00:45', 1),
(78, 37, 'Sdd-30-PoSB', 30, 'Specified due date', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(79, 37, 'Sdd-40-F', 40, 'Specified due date', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 11:11:02', 1),
(80, 37, 'MF-50-PoSB', 50, 'Monthly Fee', 'Percentage of savings balance', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 11:11:02', 1),
(81, 38, 'QF-55-F', 55, 'Quarterly Fee', 'Flat', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 12:17:21', 1),
(82, 38, 'WF-PoSB-50', 50, 'Withdrawal Fee', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(83, 38, 'QF-60-PoSB', 60, 'Quarterly Fee', 'Percentage of savings balance', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 12:17:21', 1),
(84, 38, 'WF-PoA-60', 60, 'Withdrawal Fee', 'Percentage of amount', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(85, 38, 'WF-F-20', 20, 'Withdrawal Fee', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(86, 38, 'SA-PoSB-30', 30, 'Savings Activation', 'Percentage of savings balance', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:31', 1),
(87, 38, 'SA-PoA-45', 45, 'Savings Activation', 'Percentage of amount', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:31', 1),
(88, 38, 'MF-70-F', 70, 'Monthly Fee', 'Flat', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 12:17:21', 1),
(89, 38, 'AF-30-PoSB', 30, 'Annual Fee', 'Percentage of savings balance', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(90, 38, 'AF-45-F', 45, 'Annual Fee', 'Flat', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(91, 38, 'SA-F-35', 35, 'Savings Activation', 'Flat', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:31', 1),
(92, 38, 'Sdd-30-PoSB', 30, 'Specified due date', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(93, 38, 'MF-50-PoSB', 50, 'Monthly Fee', 'Percentage of savings balance', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 12:17:21', 1),
(94, 38, 'Sdd-40-F', 40, 'Specified due date', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:17:21', 1),
(95, 39, 'QF-55-F', 55, 'Quarterly Fee', 'Flat', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 12:28:44', 1),
(96, 39, 'WF-PoSB-50', 50, 'Withdrawal Fee', 'Percentage of savings balance', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:44:11', 1),
(97, 39, 'QF-60-PoSB', 60, 'Quarterly Fee', 'Percentage of savings balance', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 12:28:44', 1),
(98, 39, 'WF-PoA-60', 60, 'Withdrawal Fee', 'Percentage of amount', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:44:11', 1),
(99, 39, 'WF-F-20', 20, 'Withdrawal Fee', 'Flat', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:44:11', 1),
(100, 39, 'SA-PoSB-30', 30, 'Savings Activation', 'Percentage of savings balance', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:29:00', 1),
(101, 39, 'SA-PoA-45', 45, 'Savings Activation', 'Percentage of amount', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:29:00', 1),
(102, 39, 'MF-70-F', 70, 'Monthly Fee', 'Flat', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 12:28:44', 1),
(103, 39, 'AF-30-PoSB', 30, 'Annual Fee', 'Percentage of savings balance', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 12:28:44', 1),
(104, 39, 'AF-45-F', 45, 'Annual Fee', 'Flat', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 12:28:44', 1),
(105, 39, 'SA-F-35', 35, 'Savings Activation', 'Flat', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 12:29:00', 1),
(106, 39, 'Sdd-30-PoSB', 30, 'Specified due date', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:28:44', 1),
(107, 39, 'MF-50-PoSB', 50, 'Monthly Fee', 'Percentage of savings balance', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 12:28:44', 1),
(108, 39, 'Sdd-40-F', 40, 'Specified due date', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 12:28:44', 1),
(109, 40, 'WF-PoSB-50', 50, 'Withdrawal Fee', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(110, 40, 'QF-60-PoSB', 60, 'Quarterly Fee', 'Percentage of savings balance', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 14:09:26', 1),
(111, 40, 'WF-PoA-60', 60, 'Withdrawal Fee', 'Percentage of amount', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(112, 40, 'WF-F-20', 20, 'Withdrawal Fee', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(113, 40, 'SA-PoSB-30', 30, 'Savings Activation', 'Percentage of savings balance', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:36', 1),
(114, 40, 'SA-PoA-45', 45, 'Savings Activation', 'Percentage of amount', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:36', 1),
(115, 40, 'MF-70-F', 70, 'Monthly Fee', 'Flat', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 14:09:26', 1),
(116, 40, 'AF-30-PoSB', 30, 'Annual Fee', 'Percentage of savings balance', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(117, 40, 'Sdd-30-PoSB', 30, 'Specified due date', 'Percentage of savings balance', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(118, 40, 'QF-55-F', 55, 'Quarterly Fee', 'Flat', 'unPaid', '2021-12-01', '2021-08-31', '2021-08-31 14:09:26', 1),
(119, 40, 'Sdd-40-F', 40, 'Specified due date', 'Flat', 'unPaid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(120, 40, 'SA-F-35', 35, 'Savings Activation', 'Flat', 'Paid', '2021-08-31', '2021-08-31', '2021-08-31 14:09:36', 1),
(121, 40, 'AF-45-F', 45, 'Annual Fee', 'Flat', 'unPaid', '2022-08-31', '2021-08-31', '2021-08-31 14:09:26', 1),
(122, 40, 'MF-50-PoSB', 50, 'Monthly Fee', 'Percentage of savings balance', 'unPaid', '2021-10-01', '2021-08-31', '2021-08-31 14:09:26', 1),
(123, 40, 'WF-PoSB-50', 500, 'Withdrawal Fee', 'Percentage of savings balance', 'unPaid', '2021-09-01', '2021-09-01', '2021-09-01 10:04:19', 1),
(124, 40, 'MF-50-PoSB', 36, 'Monthly Fee', 'Percentage of savings balance', 'unPaid', '2021-10-01', '2021-09-01', '2021-09-01 10:04:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_product`
--

CREATE TABLE `saving_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shortName` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `decimalPlaces` varchar(100) NOT NULL,
  `interest` float NOT NULL,
  `category` varchar(100) NOT NULL,
  `autoCreate` varchar(100) NOT NULL,
  `compoundingPeriod` varchar(100) NOT NULL,
  `interestPostingPeriodType` varchar(100) NOT NULL,
  `interestCalculationType` varchar(100) NOT NULL,
  `lockinPeriodFrequency` varchar(100) NOT NULL,
  `lockinPeriodFrequencyType` varchar(100) NOT NULL,
  `automaticOpeningBalance` varchar(100) NOT NULL,
  `minimumBalanceForInterestCalculation` varchar(100) NOT NULL,
  `AllowOverdraft` varchar(100) NOT NULL,
  `accountingRule` varchar(100) NOT NULL,
  `savingsReference` varchar(100) NOT NULL,
  `overdraftPortfolio` varchar(100) NOT NULL,
  `savingsControl` varchar(100) NOT NULL,
  `interestOnSavings` varchar(100) NOT NULL,
  `writeOffSavings` varchar(100) NOT NULL,
  `incomeFromFees` varchar(100) NOT NULL,
  `incomeFromPenalties` varchar(100) NOT NULL,
  `incomeFromInterest` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saving_product`
--

INSERT INTO `saving_product` (`id`, `name`, `shortName`, `description`, `currency_id`, `decimalPlaces`, `interest`, `category`, `autoCreate`, `compoundingPeriod`, `interestPostingPeriodType`, `interestCalculationType`, `lockinPeriodFrequency`, `lockinPeriodFrequencyType`, `automaticOpeningBalance`, `minimumBalanceForInterestCalculation`, `AllowOverdraft`, `accountingRule`, `savingsReference`, `overdraftPortfolio`, `savingsControl`, `interestOnSavings`, `writeOffSavings`, `incomeFromFees`, `incomeFromPenalties`, `incomeFromInterest`, `active`, `createAt`, `updateAt`, `status`) VALUES
(1, '', '', '', 0, '', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-08-30', '2021-08-30 06:28:46', 0),
(2, 'P 1', 'P1', 'P1', 1, '2', 0, 'voluntary', '1', 'daily', 'monthly', 'daily_balance', '5', 'days', '1000', 'undefined', '0', 'none', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Utalities', 'Utalities', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 1, '2021-08-30', '2021-08-30 05:44:24', 1),
(3, '', '', '', 0, '', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2021-08-30', '2021-08-30 06:37:32', 0),
(4, 'P2', 'P2', 'P2', 1, '0', 5, 'voluntary', '0', 'daily', 'monthly', 'daily_balance', '1', 'days', '100', 'undefined', '0', 'none', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Utalities', 'Utalities', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 1, '2021-08-30', '2021-08-30 06:37:25', 1),
(5, 'All Charges', 'All Charges', 'All Charges', 1, '20', 15, 'voluntary', '0', 'daily', 'monthly', 'daily_balance', '10', 'days', '1000', 'undefined', '0', 'none', 'Motor Vehicle', 'Motor Vehicle', 'Other Payables', 'Utalities', 'Utalities', 'Loan App Fees', 'Loan App Fees', 'Loan App Fees', 1, '2021-08-31', '2021-08-31 10:57:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_product_charges`
--

CREATE TABLE `saving_product_charges` (
  `id` int(11) NOT NULL,
  `saving_charges_id` int(11) NOT NULL,
  `saving_products_id` int(11) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saving_product_charges`
--

INSERT INTO `saving_product_charges` (`id`, `saving_charges_id`, `saving_products_id`, `createAt`, `update_at`, `status`) VALUES
(1, 10, 2, '2021-08-30', '2021-08-30 05:44:24', 1),
(2, 13, 2, '2021-08-30', '2021-08-30 05:44:24', 1),
(3, 12, 2, '2021-08-30', '2021-08-30 05:44:24', 1),
(4, 10, 4, '2021-08-30', '2021-08-30 06:37:25', 1),
(5, 12, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(6, 22, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(7, 13, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(8, 14, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(9, 15, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(10, 16, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(11, 21, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(12, 24, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(13, 25, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(14, 23, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(15, 17, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(16, 18, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(17, 20, 5, '2021-08-31', '2021-08-31 10:57:43', 1),
(18, 19, 5, '2021-08-31', '2021-08-31 10:57:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_status`
--

CREATE TABLE `saving_status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saving_status`
--

INSERT INTO `saving_status` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'Pending Approval', '2021-08-10', '2021-08-10 11:06:12', 1),
(2, 'Awaiting Activation', '2021-08-10', '2021-08-30 10:11:14', 1),
(3, 'Active', '2021-08-10', '2021-08-10 11:07:25', 1),
(4, 'Reject', '2021-08-10', '2021-08-10 11:06:12', 1),
(5, 'Withdrawn', '2021-08-10', '2021-08-10 11:07:04', 1),
(6, 'Closed', '2021-08-17', '2021-08-30 10:59:28', 1),
(7, 'test', '2021-08-17', '2021-08-30 10:59:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saving_transaction_list`
--

CREATE TABLE `saving_transaction_list` (
  `id` int(11) NOT NULL,
  `saving_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `submittedOn` date NOT NULL,
  `transactionType` varchar(30) NOT NULL,
  `debit` float NOT NULL,
  `credit` float NOT NULL,
  `account` varchar(50) NOT NULL,
  `cheque` varchar(50) NOT NULL,
  `routingCode` varchar(50) NOT NULL,
  `receipt` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saving_transaction_list`
--

INSERT INTO `saving_transaction_list` (`id`, `saving_id`, `payment_type_id`, `submittedOn`, `transactionType`, `debit`, `credit`, `account`, `cheque`, `routingCode`, `receipt`, `bank`, `description`, `createAt`, `update_at`, `status`) VALUES
(46, 38, 0, '2021-09-10', 'Main Deposit', 0, 1000, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:17:21', 1),
(47, 38, 0, '2021-08-31', 'Pay Charge', 0, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:17:31', 1),
(48, 38, 0, '2021-08-31', 'Pay Charge', 35, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:17:31', 1),
(49, 38, 0, '2021-08-31', 'Pay Charge', 0, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:17:31', 1),
(50, 39, 0, '2021-09-10', 'Main Deposit', 0, 1000, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:28:44', 1),
(51, 39, 0, '2021-08-31', 'Pay Charge', 300, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:29:00', 1),
(52, 39, 0, '2021-08-31', 'Pay Charge', 450, 450, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:36:51', 1),
(53, 39, 0, '2021-08-31', 'Pay Charge', 35, 35, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:34:34', 1),
(54, 39, 2, '2021-08-31', 'Withdraw', 30, 30, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:32:36', 1),
(55, 39, 2, '2021-08-31', 'Withdraw', 300, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:37:04', 1),
(56, 39, 2, '2021-08-31', 'Deposit', 0, 300, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:37:22', 1),
(57, 39, 2, '2021-08-31', 'Withdraw', 30, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:42:44', 1),
(58, 39, 2, '2021-08-31', 'Withdraw', 30, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:43:09', 1),
(59, 39, 2, '2021-08-31', 'Withdraw', 50, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:44:11', 1),
(60, 39, 0, '2021-08-31', 'Pay Charge', 650, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:44:11', 1),
(61, 39, 0, '2021-08-31', 'Pay Charge', 20, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:44:11', 1),
(62, 39, 0, '2021-08-31', 'Pay Charge', 780, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 12:44:11', 1),
(63, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:35:01', 1),
(64, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:35:47', 1),
(65, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:36:19', 1),
(66, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:36:53', 1),
(67, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:37:48', 1),
(68, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:49:27', 1),
(69, 37, 0, '2021-10-01', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:52:07', 1),
(70, 37, 0, '2021-08-31', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:54:55', 1),
(71, 37, 0, '2021-08-31', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:56:12', 1),
(72, 37, 0, '2021-08-31', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:56:39', 1),
(73, 37, 0, '2021-08-31', 'Pay Charge', 70, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 13:58:03', 1),
(74, 37, 0, '2021-08-31', 'Pay Charge', 600, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 14:08:17', 1),
(75, 40, 0, '2021-09-10', 'Main Deposit', 0, 1000, '', '', '', '', '', '', '2021-08-31', '2021-08-31 14:09:26', 1),
(76, 40, 0, '2021-08-31', 'Pay Charge', 300, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 14:09:36', 1),
(77, 40, 0, '2021-08-31', 'Pay Charge', 450, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 14:09:36', 1),
(78, 40, 0, '2021-08-31', 'Pay Charge', 35, 0, '', '', '', '', '', '', '2021-08-31', '2021-08-31 14:09:36', 1),
(79, 19, 2, '2021-09-01', 'Withdraw', 10, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:25:11', 1),
(80, 19, 2, '2021-09-01', 'Withdraw', 100, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:25:43', 1),
(81, 19, 2, '2021-09-01', 'Deposit', 0, 809, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:25:55', 1),
(82, 19, 2, '2021-09-01', 'Withdraw', 200, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:26:01', 1),
(83, 19, 2, '2021-09-01', 'Withdraw', 100, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:26:55', 1),
(84, 19, 2, '2021-09-01', 'Withdraw', 50, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:27:17', 1),
(85, 19, 2, '2021-09-01', 'Withdraw', 20, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:28:04', 1),
(86, 19, 2, '2021-09-01', 'Withdraw', 50, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:28:23', 1),
(87, 19, 2, '2021-09-01', 'Withdraw', 20, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:28:56', 1),
(88, 21, 2, '2021-09-01', 'Withdraw', 20, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:34:59', 0),
(89, 21, 2, '2021-09-01', 'Withdraw', 30, 0, '', '', '', '', '', '', '2021-09-01', '2021-09-01 10:34:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_zone`
--

INSERT INTO `time_zone` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'Update', '2021-07-14', '2021-07-26 10:04:40', 1),
(2, 'Africa', '2021-07-14', '2021-07-26 09:37:04', 1),
(3, 'Australia', '2021-07-19', '2021-07-26 09:37:14', 1),
(4, 'Issue 1 ok', '2021-07-19', '2021-07-19 14:12:15', 0),
(5, 'Issue 1', '2021-07-19', '2021-07-19 14:22:50', 0),
(6, 'Add Time Zone', '2021-07-26', '2021-07-26 10:04:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createAt` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `name`, `createAt`, `update_at`, `status`) VALUES
(1, 'update', '2021-07-14', '2021-07-19 13:03:38', 1),
(2, 'Mrs', '2021-07-14', '2021-07-19 12:38:38', 1),
(3, 'Other', '2021-07-19', '2021-07-19 13:03:48', 0),
(4, 'Issue 1 ok', '2021-07-19', '2021-07-19 14:24:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `createAt` date NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `gender`, `mobile`, `role_id`, `email`, `password`, `address`, `notes`, `createAt`, `updateAt`, `status`) VALUES
(1, 'Yasir', '', '', '', 2, 'yasr@gmail.com', 'undefined', '', '', '2021-07-14', '2021-07-19 11:55:08', 0),
(2, 'Mehmood', '', '', '', 1, '', 'undefined', '', '', '2021-07-14', '2021-07-17 08:10:37', 1),
(3, 'TTS', 'Software House', 'male', '', 1, 'timetechsolution@gmail.com', 'undefined', 'Main Road', 'ok', '2021-07-19', '2021-07-19 12:07:09', 1),
(4, 'TTS', 'Software House', 'male', '0415216584', 1, 'timetechsolution@gmail.com', '123', 'FSD\r\nFSD', 'good', '2021-07-19', '2021-07-19 12:14:50', 1),
(5, 'Mehmood', '', '', '', 1, '', '', '', '', '2021-07-19', '2021-07-19 12:16:09', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_type`
--
ALTER TABLE `asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_user`
--
ALTER TABLE `branch_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges_on_loan`
--
ALTER TABLE `charges_on_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges_on_saving`
--
ALTER TABLE `charges_on_saving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_identification`
--
ALTER TABLE `client_identification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_next _of_kin`
--
ALTER TABLE `client_next _of_kin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_type`
--
ALTER TABLE `client_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collateral_type`
--
ALTER TABLE `collateral_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_types`
--
ALTER TABLE `income_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_charges`
--
ALTER TABLE `loan_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_charge_list`
--
ALTER TABLE `loan_charge_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_collateral_list`
--
ALTER TABLE `loan_collateral_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_files_list`
--
ALTER TABLE `loan_files_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_guarantor_list`
--
ALTER TABLE `loan_guarantor_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_note_list`
--
ALTER TABLE `loan_note_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_products`
--
ALTER TABLE `loan_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_product_charges`
--
ALTER TABLE `loan_product_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_purpose`
--
ALTER TABLE `loan_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_repayment_schedule`
--
ALTER TABLE `loan_repayment_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_status`
--
ALTER TABLE `loan_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_transaction_list`
--
ALTER TABLE `loan_transaction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_items`
--
ALTER TABLE `payroll_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_payment`
--
ALTER TABLE `payroll_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_templates_items_list`
--
ALTER TABLE `payroll_templates_items_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_pages`
--
ALTER TABLE `role_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving`
--
ALTER TABLE `saving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_charges`
--
ALTER TABLE `saving_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_charge_list`
--
ALTER TABLE `saving_charge_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_product`
--
ALTER TABLE `saving_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_product_charges`
--
ALTER TABLE `saving_product_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_status`
--
ALTER TABLE `saving_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saving_transaction_list`
--
ALTER TABLE `saving_transaction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asset_type`
--
ALTER TABLE `asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branch_user`
--
ALTER TABLE `branch_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `charges_on_loan`
--
ALTER TABLE `charges_on_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charges_on_saving`
--
ALTER TABLE `charges_on_saving`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `client_identification`
--
ALTER TABLE `client_identification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_next _of_kin`
--
ALTER TABLE `client_next _of_kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_type`
--
ALTER TABLE `client_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `collateral_type`
--
ALTER TABLE `collateral_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `income_types`
--
ALTER TABLE `income_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lawyer`
--
ALTER TABLE `lawyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `loan_charges`
--
ALTER TABLE `loan_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `loan_charge_list`
--
ALTER TABLE `loan_charge_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `loan_collateral_list`
--
ALTER TABLE `loan_collateral_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_files_list`
--
ALTER TABLE `loan_files_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_guarantor_list`
--
ALTER TABLE `loan_guarantor_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_note_list`
--
ALTER TABLE `loan_note_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_products`
--
ALTER TABLE `loan_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loan_product_charges`
--
ALTER TABLE `loan_product_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `loan_purpose`
--
ALTER TABLE `loan_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_repayment_schedule`
--
ALTER TABLE `loan_repayment_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1814;

--
-- AUTO_INCREMENT for table `loan_status`
--
ALTER TABLE `loan_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan_transaction_list`
--
ALTER TABLE `loan_transaction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payroll_items`
--
ALTER TABLE `payroll_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payroll_payment`
--
ALTER TABLE `payroll_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payroll_templates_items_list`
--
ALTER TABLE `payroll_templates_items_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_pages`
--
ALTER TABLE `role_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `saving`
--
ALTER TABLE `saving`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `saving_charges`
--
ALTER TABLE `saving_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `saving_charge_list`
--
ALTER TABLE `saving_charge_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `saving_product`
--
ALTER TABLE `saving_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `saving_product_charges`
--
ALTER TABLE `saving_product_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `saving_status`
--
ALTER TABLE `saving_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saving_transaction_list`
--
ALTER TABLE `saving_transaction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
