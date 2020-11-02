-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 11:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_legal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(306, 'Luke.COLLINS', '2020-02-02 15:16:17', 'Made By MPIIMA lname'),
(307, 'Luke.COLLINS', '2020-02-02 21:09:57', 'Added document THis'),
(308, 'Luke.COLLINS', '2020-02-02 21:10:02', 'Deleted  document THis'),
(309, 'Luke.COLLINS', '2020-02-02 21:10:27', 'Made By MPIIMA lname'),
(310, 'Luke.COLLINS', '2020-02-02 21:10:34', 'Deleted request by  '),
(311, 'Luke.COLLINS', '2020-02-02 21:10:43', 'Request edited  By MPIIMA lname'),
(312, 'Luke.COLLINS', '2020-02-02 21:10:51', 'Request edited  By MPIIMA lname'),
(313, 'Luke.COLLINS', '2020-02-02 21:17:34', 'Add User Luke.Musa'),
(314, 'Luke.COLLINS', '2020-02-02 21:21:27', 'Add User Nicholas.COLLINS'),
(315, 'Luke.COLLINS', '2020-02-02 22:00:17', 'Deleted  user Luke.Musa'),
(316, 'a.b', '2020-02-02 22:56:40', 'Made By MPIIMA lname'),
(317, 'a.b', '2020-02-02 23:03:40', 'Request edited  By MPIIMA lname'),
(318, 'a.b', '2020-02-02 23:03:49', 'Request edited  By MPIIMA lname'),
(319, 'a.b', '2020-02-02 23:04:05', 'Request edited  By MPIIMA lname'),
(320, 'a.b', '2020-02-02 23:04:20', 'Request edited  By MPIIMA mwmwmwm lname'),
(321, 'a.b', '2020-02-02 23:04:59', 'Request edited  By MPIIMA  lname'),
(322, 'a.b', '2020-02-02 23:06:29', 'Request edited  By MPIIMA  lname'),
(323, 'a.b', '2020-02-02 23:07:18', 'Request edited  By MPIIMA  lname'),
(324, 'a.b', '2020-02-02 23:07:32', 'Request edited  By MPIIMA  lname'),
(325, 'a.b', '2020-02-02 23:14:25', 'Request edited  By MPIIMA ggg lname'),
(326, 'a.b', '2020-02-02 23:15:02', 'Request edited  By MPIIMA  lname'),
(327, 'a.b', '2020-02-02 23:15:49', 'Request edited  By MPIIMA  lname'),
(328, 'a.b', '2020-02-02 23:17:15', 'Request edited  By MPIIMA  lname'),
(329, 'a.b', '2020-02-02 23:18:15', 'Deleted request by  '),
(330, 'a.b', '2020-02-02 23:18:37', 'Request edited  By MPIIMA  lname'),
(331, 'a.b', '2020-02-02 23:53:37', 'Made By MPIIMA lname'),
(332, 'a.b', '2020-02-03 01:12:44', 'Request edited  By  lname'),
(333, 'a.b', '2020-02-03 01:13:25', 'Request edited  By  lname'),
(334, 'a.b', '2020-02-03 01:14:05', 'Request edited  By  lname'),
(335, 'a.b', '2020-02-03 02:35:39', 'Request edited  By  lname'),
(336, 'a.b', '2020-02-03 02:36:42', 'Request edited  By  lname'),
(337, 'a.b', '2020-02-03 12:41:15', 'Made By Nicholas lname'),
(338, 'a.b', '2020-02-03 12:54:24', 'Deleted request by  '),
(339, 'a.b', '2020-02-03 15:30:33', 'Deleted request by  '),
(340, 'a.b', '2020-02-03 20:38:56', 'Made By Musa lname'),
(341, 'a.b', '2020-02-04 10:36:53', 'Made By Nicholas lname'),
(342, 'a.b', '2020-02-04 11:40:38', 'Made By Nicholas lname'),
(343, 'a.b', '2020-02-04 12:38:09', 'Request edited  By Musa lname'),
(344, 'a.b', '2020-02-04 13:33:25', 'Made By MPIIMA lname'),
(345, 'a.b', '2020-02-04 20:12:39', 'Deleted request by  '),
(346, 'Luke.COLLINS', '2020-02-04 20:31:51', 'Request edited  By Musa lname'),
(347, 'Luke.COLLINS', '2020-02-04 20:44:01', 'Made By Peae lname'),
(348, 'Luke.COLLINS', '2020-02-04 21:27:24', 'Deleted request by  '),
(349, 'Luke.COLLINS', '2020-02-04 21:27:24', 'Deleted request by  '),
(350, 'Luke.COLLINS', '2020-02-04 21:27:24', 'Deleted request by  '),
(351, 'Luke.COLLINS', '2020-02-04 21:27:24', 'Deleted request by  '),
(352, 'Denis.Muhiire', '2020-02-04 21:31:12', 'Add User Makayi.Ian'),
(353, 'Denis.Muhiire', '2020-02-04 21:35:07', 'Made By Makayi lname'),
(354, 'Denis.Muhiire', '2020-02-21 10:23:55', 'Made By Petrereg lname'),
(355, 'Denis.Muhiire', '2020-02-21 12:42:10', 'Made By hghhhhh lname'),
(356, 'Denis.Muhiire', '2020-02-21 12:42:34', 'Made By eeeeeeeee lname'),
(357, 'Denis.Muhiire', '2020-02-21 21:05:40', 'Deleted request by  '),
(358, 'Denis.Muhiire', '2020-02-21 23:06:13', 'Request edited  By MPIIMA  lname'),
(359, 'Denis.Muhiire', '2020-02-21 23:06:27', 'Request edited  By Mpiima lname'),
(360, 'Denis.Muhiire', '2020-02-21 23:15:25', 'Request edited  By eeeeeeeee lname'),
(361, 'Denis.Muhiire', '2020-02-21 23:15:41', 'Request edited  By hghhhhh lname'),
(362, 'Denis.Muhiire', '2020-02-21 23:15:49', 'Request edited  By p lname'),
(363, 'Denis.Muhiire', '2020-02-21 23:44:11', 'Made By Issaac lname'),
(364, 'Denis.Muhiire', '2020-02-21 23:50:12', 'Request edited  By h lname'),
(365, 'Denis.Muhiire', '2020-02-21 23:56:30', 'Made By Mpiima lname'),
(366, 'Denis.Muhiire', '2020-02-22 00:03:30', 'Deleted request by  '),
(367, 'Denis.Muhiire', '2020-02-22 00:05:51', 'Made By dddddddd lname'),
(368, 'Denis.Muhiire', '2020-02-22 00:19:05', 'Deleted request by  '),
(369, 'Denis.Muhiire', '2020-02-22 00:19:23', 'Made By chjascgdahjf lname'),
(370, 'Denis.Muhiire', '2020-02-22 00:19:51', 'Made By wdef lname'),
(371, 'Denis.Muhiire', '2020-02-22 03:18:41', 'Made By aus7dyweuiofjkmf lname'),
(372, 'Denis.Muhiire', '2020-02-24 16:17:06', 'Made By Mpiimabbbbbbbbbbbbbb lname'),
(373, 'Denis.Muhiire', '2020-02-24 16:17:51', 'Made By Mppppppppppppppppppppppppppppppppppppp lna'),
(374, 'Denis.Muhiire', '2020-02-24 16:56:15', 'Made By MPIIMA COLLINS  lname'),
(375, 'Denis.Muhiire', '2020-02-24 17:25:16', 'Made By Luke lname'),
(376, 'Denis.Muhiire', '2020-05-14 20:10:22', 'Deleted  document private Members'),
(377, 'admin', '2020-07-28 11:08:15', 'Made By MPIIMA  lname'),
(378, 'admin', '2020-07-28 11:21:28', 'Made By Mpiima lname'),
(379, 'admin', '2020-07-28 11:22:03', 'Request edited  By Mpiima lname'),
(380, 'admin', '2020-07-28 11:22:53', 'Made By Muhiire lname'),
(381, 'admin', '2020-07-28 13:12:10', 'Made By Hon Rebecca lname'),
(382, 'admin', '2020-07-29 09:08:47', 'Made By RT Hon Jacob lname'),
(383, 'admin', '2020-07-29 09:27:22', 'Added document Court Matter'),
(384, 'admin', '2020-07-29 09:28:43', 'Add User Sitnah.Cherotich'),
(385, 'admin', '2020-07-29 09:34:03', 'Add User Solomon.Kirunda'),
(386, 'admin', '2020-07-29 09:34:49', 'Add User Angura.James'),
(387, 'admin', '2020-07-29 10:26:43', 'Made By Mpiima lname'),
(388, 'admin', '2020-07-29 10:40:12', 'Made By Muhiire lname'),
(389, 'admin', '2020-07-29 10:53:35', 'Made By Mpiima Colins lname'),
(390, 'admin', '2020-07-29 10:55:56', 'Made By Mpiima  lname'),
(391, 'admin', '2020-07-29 10:58:22', 'Made By Mpiima lname'),
(392, 'admin', '2020-07-29 11:00:14', 'Made By Mpiima lname'),
(393, 'admin', '2020-07-29 11:04:20', 'Made By Mpiima lname'),
(394, 'admin', '2020-07-29 11:06:11', 'Made By Mpiima lname'),
(395, 'admin', '2020-07-29 11:07:18', 'Made By Hon Rebecca lname'),
(396, 'staffmember', '2020-07-29 11:11:48', 'Made By Muhiire lname'),
(397, 'admin', '2020-07-29 11:14:23', 'Made By Hon Nankabirwa lname'),
(398, 'staffmember', '2020-07-31 07:25:57', 'Made By guhj;k lname'),
(399, 'admin', '2020-07-31 13:00:10', 'Request edited  By Hon Rebecca3 lname'),
(400, 'admin', '2020-07-31 15:57:29', 'Made By MPIIMA COLLINS  lname'),
(401, 'admin', '2020-07-31 16:06:34', 'Made By eeeeeeeee lname'),
(402, 'admin', '2020-07-31 18:09:43', 'Made By Mpiima lname'),
(403, 'admin', '2020-07-31 18:29:10', 'Made By Muhiire lname'),
(404, 'admin', '2020-08-02 19:08:57', 'Request edited  By Muhiire lname'),
(405, '', '2020-08-02 19:24:18', 'Made By Mpiima lname'),
(406, '', '2020-08-02 19:36:07', 'Made By Mpiima lname'),
(407, '', '2020-08-02 19:41:57', 'Made By Mpiima lname'),
(408, 'admin', '2020-08-02 20:10:10', 'Made By Mpiima lname'),
(409, 'admin', '2020-08-02 20:14:16', 'Made By Muhiire lname'),
(410, 'admin', '2020-08-02 20:32:59', 'Made By MPIIMA  lname'),
(411, 'admin', '2020-08-02 20:35:02', 'Made By Mpiima lname'),
(412, 'staffmember', '2020-10-06 07:46:16', 'Made By MPIIMA COLLINS  lname'),
(413, 'staffmember', '2020-10-06 07:49:24', 'Made By hdffjfhg  lname'),
(414, 'admin', '2020-10-06 07:50:47', 'Made By vvgjv vnnjv lname'),
(415, 'admin', '2020-10-06 22:35:13', 'Deleted  user Angura.James');

-- --------------------------------------------------------

--
-- Table structure for table `casetype`
--

CREATE TABLE `casetype` (
  `CaseType_Id` int(11) NOT NULL,
  `CaseTypeName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `casetype`
--

INSERT INTO `casetype` (`CaseType_Id`, `CaseTypeName`) VALUES
(1, 'casetype1'),
(2, 'casetype2'),
(3, 'Type3'),
(4, 'Type4');

-- --------------------------------------------------------

--
-- Table structure for table `case_table`
--

CREATE TABLE `case_table` (
  `case_id` int(11) NOT NULL,
  `Court_Id` int(100) NOT NULL,
  `Case_name` varchar(200) NOT NULL,
  `Case_type` int(100) NOT NULL,
  `Expected_Response_date` date NOT NULL,
  `Attached_document` text DEFAULT NULL,
  `Assigned_to` int(100) NOT NULL DEFAULT -1,
  `Assigned_by_comments` text DEFAULT NULL,
  `status` int(100) NOT NULL DEFAULT -1,
  `assigned_status` int(100) NOT NULL DEFAULT 0,
  `upload_status` int(100) NOT NULL,
  `assigned_on` date NOT NULL,
  `assignedby` int(100) NOT NULL,
  `reponseId` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `case_table`
--

INSERT INTO `case_table` (`case_id`, `Court_Id`, `Case_name`, `Case_type`, `Expected_Response_date`, `Attached_document`, `Assigned_to`, `Assigned_by_comments`, `status`, `assigned_status`, `upload_status`, `assigned_on`, `assignedby`, `reponseId`) VALUES
(1, 1, 'Corruption in Uganda ', 1, '2020-10-15', 'upload_cases_doc/news sites.rtf', 26, '\r\nRequired as soon as possible', 0, 1, 0, '2013-10-20', 24, 0),
(2, 2, 'Bududa murder Case', 2, '2020-10-23', 'upload_cases_doc/test.html', 26, '\r\nThis is required as soon as possiblw', 1, 1, 2, '2010-10-20', 24, 2),
(3, 2, 'Fighting in Parliament', 2, '2020-10-15', 'upload_cases_doc/preface.html', 29, '\r\nPlease do the needful', 0, 1, 0, '2010-10-20', 24, 0),
(4, 2, 'Vote rigging in uganda', 2, '2020-10-16', 'upload_cases_doc/Hope_for_Each_Day_Morning_and_E_Billy_Gr-html.html', 24, '\r\nThis is required', 1, 1, 2, '2010-10-20', 24, 1),
(5, 2, 'Police shoting at civilian', 2, '2020-11-07', NULL, -1, NULL, -1, 0, 0, '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `court_tbl`
--

CREATE TABLE `court_tbl` (
  `court_id` int(11) NOT NULL,
  `Court_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `court_tbl`
--

INSERT INTO `court_tbl` (`court_id`, `Court_name`) VALUES
(1, 'court1'),
(2, 'court2'),
(3, 'court3');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `bid` int(11) NOT NULL,
  `booktype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`bid`, `booktype`) VALUES
(9, 'Legal Opinion'),
(14, 'Court Matter');

-- --------------------------------------------------------

--
-- Table structure for table `nature_of_request`
--

CREATE TABLE `nature_of_request` (
  `nid` int(11) NOT NULL,
  `nature` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nature_of_request`
--

INSERT INTO `nature_of_request` (`nid`, `nature`) VALUES
(1, 'individual'),
(2, 'committee');

-- --------------------------------------------------------

--
-- Table structure for table `replytype`
--

CREATE TABLE `replytype` (
  `Reply_id` int(11) NOT NULL,
  `ReplyName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replytype`
--

INSERT INTO `replytype` (`Reply_id`, `ReplyName`) VALUES
(1, 'Type one'),
(2, 'Type two'),
(3, 'Type4');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(11) NOT NULL,
  `Name_of_requestor` varchar(1000) NOT NULL,
  `Date_of_request` timestamp NOT NULL DEFAULT current_timestamp(),
  `Nature_of_request` varchar(1000) NOT NULL,
  `committee_name` varchar(1000) NOT NULL,
  `Topic` varchar(1000) NOT NULL,
  `Objective` varchar(1000) NOT NULL,
  `purposes` varchar(1000) NOT NULL,
  `type_of_document` varchar(1000) NOT NULL,
  `assign_to` int(100) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `coment` varchar(1000) NOT NULL,
  `draft_date` text DEFAULT NULL,
  `final_date` text DEFAULT NULL,
  `assigned_by` int(100) DEFAULT NULL,
  `date_setby` int(100) DEFAULT NULL,
  `state` int(100) NOT NULL,
  `draftdate` text DEFAULT NULL,
  `fdate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `Name_of_requestor`, `Date_of_request`, `Nature_of_request`, `committee_name`, `Topic`, `Objective`, `purposes`, `type_of_document`, `assign_to`, `title`, `coment`, `draft_date`, `final_date`, `assigned_by`, `date_setby`, `state`, `draftdate`, `fdate`) VALUES
(19, 'Mpiima Collins', '2019-11-22 04:30:30', '2', 'journalism', 'chaos in parliament', 'how to reduce chaos', 'to get variable info', '7', 15, '', '              \r\n            NEEDED AURGENTLY', 'uploads/legalandlegislativedb (1).sql', 'uploads/legalandlegislativedb (1).sql', 18, 15, 0, 'Friday, November 22nd, 2019 ', 'Friday, November 22nd, 2019 '),
(20, 'Kaweesi David', '2019-11-22 05:01:40', '1', '', 'ghxgcjd', 'vfg', 'rtttt', '9', 15, '', '              \r\n            dddddddd', 'uploads/legalandlegislativedb (1).sql', 'uploads/Database1.accdb', 18, 15, 0, 'Friday, November 22nd, 2019 ', 'Friday, November 22nd, 2019 '),
(21, 'colly', '2020-01-31 09:48:02', '1', '', 'makerere', 'to reduce strikes', 'strikes', '7', NULL, '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `response_tbl`
--

CREATE TABLE `response_tbl` (
  `Response_id` int(11) NOT NULL,
  `Type_of_Reply` int(100) NOT NULL,
  `Response_document` text NOT NULL,
  `Additional_documents` text NOT NULL,
  `Assigned_staff` int(100) NOT NULL,
  `CaseID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response_tbl`
--

INSERT INTO `response_tbl` (`Response_id`, `Type_of_Reply`, `Response_document`, `Additional_documents`, `Assigned_staff`, `CaseID`) VALUES
(1, 1, '../upload_cases_doc/test.html', '../upload_cases_doc/preface.html', 24, 4),
(2, 2, '../upload_cases_doc/preface.html', '../upload_cases_doc/test.html', 26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requests`
--

CREATE TABLE `tbl_requests` (
  `r_id` int(200) NOT NULL,
  `f_name_requestor` varchar(200) NOT NULL,
  `l_name_requestor` varchar(200) NOT NULL,
  `nature_of_document` varchar(200) NOT NULL,
  `type_of_document` varchar(200) NOT NULL,
  `purpose` text NOT NULL,
  `objectives` text NOT NULL,
  `staff_assigned_id` int(200) NOT NULL DEFAULT -1,
  `status` int(200) DEFAULT -1,
  `requested_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `topic` text NOT NULL,
  `committee` text DEFAULT NULL,
  `assigned_on` date NOT NULL,
  `assignedby` int(200) DEFAULT NULL,
  `assigned_status` int(200) NOT NULL DEFAULT 0,
  `upload` varchar(200) DEFAULT NULL,
  `upload_status` int(100) NOT NULL,
  `completedby` int(11) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `expected_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_requests`
--

INSERT INTO `tbl_requests` (`r_id`, `f_name_requestor`, `l_name_requestor`, `nature_of_document`, `type_of_document`, `purpose`, `objectives`, `staff_assigned_id`, `status`, `requested_on`, `topic`, `committee`, `assigned_on`, `assignedby`, `assigned_status`, `upload`, `upload_status`, `completedby`, `cdate`, `comment`, `expected_date`) VALUES
(53, 'Muhiire', 'Collins', '1', '9', 'hzxujsk', 'gyuhjnm', 24, 0, '2020-08-02 17:14:16', 'uyt8auxikl', '', '2002-08-20', 24, 1, NULL, 0, NULL, '2002-08-20', '    	iok \r\n    ', '2020-09-04'),
(56, 'MPIIMA COLLINS ', 'Collinsghbbjjjjjjjjjjjjjjjjj', '1', '9', 'bnm ', 'bjn nnmm, nmnm ', 29, 0, '2020-10-06 04:46:16', 'nnkn n m ', '', '2006-10-20', 24, 1, NULL, 0, NULL, NULL, '    	this \r\n    ', '2020-10-14'),
(57, 'hdffjfhg ', 'mv ', '1', '14', 'vsdkvsdikmn ', 'mvk,', -1, -1, '2020-10-06 04:49:24', 'bdvib dnvbvhdv', '', '0000-00-00', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL),
(58, 'vvgjv vnnjv', 'vkofpiokg ', '1', '9', 'nmhvo vnmnmv', 'vnvios  v', -1, -1, '2020-10-06 04:50:47', ' vbvn vnv', '', '0000-00-00', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `office` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `position`, `email`, `office`) VALUES
(-1, 'not assigned', '12345', 'not', 'assigned', NULL, NULL, NULL),
(24, 'admin', '12345', 'admin', 'director', 'administrator', 'deno@gmail.com', 'E307'),
(26, 'staffmember', '12345', 'staff', 'member', 'Staff', 'collinsmpiima@gmail.com', 'E306'),
(29, 'Solomon.Kirunda', '12345', 'Solomon', 'Kirunda', 'administrator', 'skirinda@parliament.go.ug', 'E02');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `login_date` varchar(50) NOT NULL,
  `logout_date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'Mpiima.Collins', '2020-02-18 17:26:44', '2020-10-13 10:49:52', 26),
(2, 'Denis.Muhiire', '2020-02-18 17:27:23', '2020-10-13 11:13:48', 24),
(3, 'Denis.Muhiire', '2020-02-18 21:05:10', '2020-10-13 11:13:48', 24),
(4, 'Denis.Muhiire', '2020-02-20 12:17:56', '2020-10-13 11:13:48', 24),
(5, 'Denis.Muhiire', '2020-02-20 12:17:57', '2020-10-13 11:13:48', 24),
(6, 'Denis.Muhiire', '2020-02-20 15:15:17', '2020-10-13 11:13:48', 24),
(7, 'Denis.Muhiire', '2020-02-20 21:09:21', '2020-10-13 11:13:48', 24),
(8, 'Denis.Muhiire', '2020-02-21 00:01:52', '2020-10-13 11:13:48', 24),
(9, 'Denis.Muhiire', '2020-02-21 10:00:18', '2020-10-13 11:13:48', 24),
(10, 'Denis.Muhiire', '2020-02-21 11:32:37', '2020-10-13 11:13:48', 24),
(11, 'Denis.Muhiire', '2020-02-21 11:32:38', '2020-10-13 11:13:48', 24),
(12, 'Denis.Muhiire', '2020-02-21 11:41:37', '2020-10-13 11:13:48', 24),
(13, 'Denis.Muhiire', '2020-02-21 11:59:26', '2020-10-13 11:13:48', 24),
(14, 'Denis.Muhiire', '2020-02-21 12:16:25', '2020-10-13 11:13:48', 24),
(15, 'Denis.Muhiire', '2020-02-21 12:30:11', '2020-10-13 11:13:48', 24),
(16, 'Denis.Muhiire', '2020-02-21 21:01:46', '2020-10-13 11:13:48', 24),
(17, 'Mpiima.Collins', '2020-02-21 21:17:20', '2020-10-13 10:49:52', 26),
(18, 'Denis.Muhiire', '2020-02-21 21:19:59', '2020-10-13 11:13:48', 24),
(19, 'Denis.Muhiire', '2020-02-23 07:46:06', '2020-10-13 11:13:48', 24),
(20, 'Denis.Muhiire', '2020-02-24 15:17:35', '2020-10-13 11:13:48', 24),
(21, 'Denis.Muhiire', '2020-02-24 15:17:35', '2020-10-13 11:13:48', 24),
(22, 'Denis.Muhiire', '2020-02-24 23:11:19', '2020-10-13 11:13:48', 24),
(23, 'Denis.Muhiire', '2020-02-25 09:18:34', '2020-10-13 11:13:48', 24),
(24, 'Denis.Muhiire', '2020-02-25 09:19:21', '2020-10-13 11:13:48', 24),
(25, 'Mpiima.Collins', '2020-02-25 09:21:53', '2020-10-13 10:49:52', 26),
(26, 'Denis.Muhiire', '2020-02-25 09:30:43', '2020-10-13 11:13:48', 24),
(27, 'Denis.Muhiire', '2020-03-01 03:30:15', '2020-10-13 11:13:48', 24),
(28, 'Denis.Muhiire', '2020-03-11 00:35:23', '2020-10-13 11:13:48', 24),
(29, 'Denis.Muhiire', '2020-03-13 15:37:45', '2020-10-13 11:13:48', 24),
(30, 'Denis.Muhiire', '2020-04-13 23:42:57', '2020-10-13 11:13:48', 24),
(31, 'Denis.Muhiire', '2020-04-16 21:37:20', '2020-10-13 11:13:48', 24),
(32, 'Denis.Muhiire', '2020-05-14 20:09:54', '2020-10-13 11:13:48', 24),
(33, 'Denis.Muhiire', '2020-07-26 19:01:35', '2020-10-13 11:13:48', 24),
(34, 'Mpiima.Collins', '2020-07-26 19:04:43', '2020-10-13 10:49:52', 26),
(35, 'admin', '2020-07-27 07:54:00', '2020-10-13 11:13:48', 24),
(36, 'staffmember', '2020-07-27 07:54:20', '2020-10-13 10:49:52', 26),
(37, 'admin', '2020-07-28 11:06:57', '2020-10-13 11:13:48', 24),
(38, 'staffmember', '2020-07-28 11:09:46', '2020-10-13 10:49:52', 26),
(39, 'admin', '2020-07-28 11:19:37', '2020-10-13 11:13:48', 24),
(40, 'staffmember', '2020-07-28 11:39:03', '2020-10-13 10:49:52', 26),
(41, 'admin', '2020-07-28 11:39:28', '2020-10-13 11:13:48', 24),
(42, 'staffmember', '2020-07-28 11:42:40', '2020-10-13 10:49:52', 26),
(43, 'admin', '2020-07-28 13:11:09', '2020-10-13 11:13:48', 24),
(44, 'staffmember', '2020-07-28 13:12:25', '2020-10-13 10:49:52', 26),
(45, 'admin', '2020-07-29 09:07:18', '2020-10-13 11:13:48', 24),
(46, 'staffmember', '2020-07-29 09:09:47', '2020-10-13 10:49:52', 26),
(47, 'admin', '2020-07-29 09:11:15', '2020-10-13 11:13:48', 24),
(48, 'staffmember', '2020-07-29 09:15:50', '2020-10-13 10:49:52', 26),
(49, 'admin', '2020-07-29 09:17:22', '2020-10-13 11:13:48', 24),
(50, 'staffmember', '2020-07-29 09:24:39', '2020-10-13 10:49:52', 26),
(51, 'admin', '2020-07-29 09:26:15', '2020-10-13 11:13:48', 24),
(52, 'admin', '2020-07-29 09:55:05', '2020-10-13 11:13:48', 24),
(53, 'staffmember', '2020-07-29 11:09:30', '2020-10-13 10:49:52', 26),
(54, 'admin', '2020-07-29 11:13:08', '2020-10-13 11:13:48', 24),
(55, 'staffmember', '2020-07-29 11:15:28', '2020-10-13 10:49:52', 26),
(56, 'admin', '2020-07-29 11:16:09', '2020-10-13 11:13:48', 24),
(57, 'admin', '2020-07-31 07:22:21', '2020-10-13 11:13:48', 24),
(58, 'staffmember', '2020-07-31 07:25:07', '2020-10-13 10:49:52', 26),
(59, 'staffmember', '2020-07-31 10:53:30', '2020-10-13 10:49:52', 26),
(60, 'admin', '2020-07-31 12:19:01', '2020-10-13 11:13:48', 24),
(61, 'admin', '2020-08-02 17:23:13', '2020-10-13 11:13:48', 24),
(62, 'admin', '2020-08-02 19:51:24', '2020-10-13 11:13:48', 24),
(63, 'staffmember', '2020-08-02 22:24:42', '2020-10-13 10:49:52', 26),
(64, 'staffmember', '2020-08-03 09:09:02', '2020-10-13 10:49:52', 26),
(65, 'admin', '2020-08-03 09:09:53', '2020-10-13 11:13:48', 24),
(66, 'staffmember', '2020-08-03 09:11:47', '2020-10-13 10:49:52', 26),
(67, 'admin', '2020-08-03 09:17:37', '2020-10-13 11:13:48', 24),
(68, 'staffmember', '2020-08-03 09:44:25', '2020-10-13 10:49:52', 26),
(69, 'admin', '2020-10-06 07:37:52', '2020-10-13 11:13:48', 24),
(70, 'staffmember', '2020-10-06 07:42:32', '2020-10-13 10:49:52', 26),
(71, 'admin', '2020-10-06 07:50:09', '2020-10-13 11:13:48', 24),
(72, 'admin', '2020-10-06 08:31:25', '2020-10-13 11:13:48', 24),
(73, 'admin', '2020-10-06 13:04:04', '2020-10-13 11:13:48', 24),
(74, 'admin', '2020-10-06 22:26:19', '2020-10-13 11:13:48', 24),
(75, 'admin', '2020-10-07 15:36:32', '2020-10-13 11:13:48', 24),
(76, 'staffmember', '2020-10-07 16:42:46', '2020-10-13 10:49:52', 26),
(77, 'staffmember', '2020-10-08 14:38:40', '2020-10-13 10:49:52', 26),
(78, 'staffmember', '2020-10-09 10:48:58', '2020-10-13 10:49:52', 26),
(79, 'admin', '2020-10-09 12:17:03', '2020-10-13 11:13:48', 24),
(80, 'admin', '2020-10-09 12:20:30', '2020-10-13 11:13:48', 24),
(81, 'staffmember', '2020-10-09 12:21:42', '2020-10-13 10:49:52', 26),
(82, 'admin', '2020-10-09 12:22:58', '2020-10-13 11:13:48', 24),
(83, 'staffmember', '2020-10-09 12:30:06', '2020-10-13 10:49:52', 26),
(84, 'admin', '2020-10-09 12:31:48', '2020-10-13 11:13:48', 24),
(85, 'admin', '2020-10-09 12:33:01', '2020-10-13 11:13:48', 24),
(86, 'admin', '2020-10-09 12:35:31', '2020-10-13 11:13:48', 24),
(87, 'staffmember', '2020-10-09 12:35:54', '2020-10-13 10:49:52', 26),
(88, 'staffmember', '2020-10-09 12:35:55', '2020-10-13 10:49:52', 26),
(89, 'admin', '2020-10-09 12:36:52', '2020-10-13 11:13:48', 24),
(90, 'staffmember', '2020-10-09 12:42:28', '2020-10-13 10:49:52', 26),
(91, 'admin', '2020-10-09 12:43:38', '2020-10-13 11:13:48', 24),
(92, 'staffmember', '2020-10-09 12:46:21', '2020-10-13 10:49:52', 26),
(93, 'admin', '2020-10-09 12:49:03', '2020-10-13 11:13:48', 24),
(94, 'staffmember', '2020-10-09 12:53:36', '2020-10-13 10:49:52', 26),
(95, 'admin', '2020-10-09 12:55:43', '2020-10-13 11:13:48', 24),
(96, 'staffmember', '2020-10-09 13:01:49', '2020-10-13 10:49:52', 26),
(97, 'staffmember', '2020-10-09 17:53:06', '2020-10-13 10:49:52', 26),
(98, 'staffmember', '2020-10-09 17:53:07', '2020-10-13 10:49:52', 26),
(99, 'admin', '2020-10-09 17:56:13', '2020-10-13 11:13:48', 24),
(100, 'staffmember', '2020-10-09 17:57:54', '2020-10-13 10:49:52', 26),
(101, 'admin', '2020-10-09 18:02:42', '2020-10-13 11:13:48', 24),
(102, 'admin', '2020-10-10 08:56:51', '2020-10-13 11:13:48', 24),
(103, 'Solomon.Kirunda', '2020-10-10 10:03:22', '2020-10-10 10:03:34', 29),
(104, 'staffmember', '2020-10-10 10:03:43', '2020-10-13 10:49:52', 26),
(105, 'admin', '2020-10-10 10:19:47', '2020-10-13 11:13:48', 24),
(106, 'admin', '2020-10-13 10:25:45', '2020-10-13 11:13:48', 24),
(107, 'staffmember', '2020-10-13 10:31:23', '2020-10-13 10:49:52', 26),
(108, 'admin', '2020-10-13 10:32:28', '2020-10-13 11:13:48', 24),
(109, 'staffmember', '2020-10-13 10:33:38', '2020-10-13 10:49:52', 26),
(110, 'admin', '2020-10-13 10:50:05', '2020-10-13 11:13:48', 24),
(111, 'admin', '2020-10-13 11:09:34', '2020-10-13 11:13:48', 24),
(112, 'admin', '2020-10-23 08:24:10', '', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `casetype`
--
ALTER TABLE `casetype`
  ADD PRIMARY KEY (`CaseType_Id`);

--
-- Indexes for table `case_table`
--
ALTER TABLE `case_table`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `court_tbl`
--
ALTER TABLE `court_tbl`
  ADD PRIMARY KEY (`court_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nature_of_request`
--
ALTER TABLE `nature_of_request`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `replytype`
--
ALTER TABLE `replytype`
  ADD PRIMARY KEY (`Reply_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `response_tbl`
--
ALTER TABLE `response_tbl`
  ADD PRIMARY KEY (`Response_id`);

--
-- Indexes for table `tbl_requests`
--
ALTER TABLE `tbl_requests`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `casetype`
--
ALTER TABLE `casetype`
  MODIFY `CaseType_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `case_table`
--
ALTER TABLE `case_table`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `court_tbl`
--
ALTER TABLE `court_tbl`
  MODIFY `court_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nature_of_request`
--
ALTER TABLE `nature_of_request`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replytype`
--
ALTER TABLE `replytype`
  MODIFY `Reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `response_tbl`
--
ALTER TABLE `response_tbl`
  MODIFY `Response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_requests`
--
ALTER TABLE `tbl_requests`
  MODIFY `r_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
