-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 06:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result_processing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_course_information`
--

CREATE TABLE `assigned_course_information` (
  `id` int(255) NOT NULL,
  `session` varchar(10) NOT NULL,
  `course_year` varchar(20) NOT NULL,
  `course_semester` varchar(20) NOT NULL,
  `course_id` varchar(1000) NOT NULL,
  `teacher_id` int(255) NOT NULL,
  `indexing` int(255) NOT NULL,
  `verification` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_course_information`
--

INSERT INTO `assigned_course_information` (`id`, `session`, `course_year`, `course_semester`, `course_id`, `teacher_id`, `indexing`, `verification`) VALUES
(28, '2020-2021', '1st year', '1st semester', '1', 63, 0, 1),
(29, '2020-2021', '1st year', '1st semester', '2', 63, 1, 1),
(30, '2020-2021', '1st year', '1st semester', '5', 64, 3, 1),
(31, '2020-2021', '1st year', '1st semester', '3', 63, 2, 0),
(32, '2020-2021', '1st year', '1st semester', '8', 64, 6, 0),
(33, '2020-2021', '1st year', '1st semester', '-1', -1, 4, 0),
(37, '2015-2016', '1st year', '1st semester', '1', 63, 0, 1),
(38, '2015-2016', '1st year', '1st semester', '2', 63, 1, 1),
(39, '2015-2016', '1st year', '1st semester', '3', 64, 2, 1),
(40, '2015-2016', '1st year', '1st semester', '-1', -1, 3, 0),
(41, '2020-2021', '1st year', '2nd semester', '10', 63, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_information`
--

CREATE TABLE `course_information` (
  `id` int(255) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(200) NOT NULL,
  `course_credit` float NOT NULL,
  `course_semester` varchar(20) NOT NULL,
  `course_year` varchar(20) NOT NULL,
  `course_pass_marks` int(20) NOT NULL,
  `course_type` varchar(20) NOT NULL,
  `program` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_information`
--

INSERT INTO `course_information` (`id`, `course_code`, `course_title`, `course_credit`, `course_semester`, `course_year`, `course_pass_marks`, `course_type`, `program`) VALUES
(1, 'CSE 101', 'Computer Fundamentals and Programming Basics', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(2, 'CSE 102', 'Computer Fundamentals and Programming Basics Lab', 1.5, '1st semester', '1st year', 40, 'Lab', 'B.Sc.'),
(3, 'CSE 103', 'Discrete Mathematics', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(5, 'EEE 161', 'Basic Electrical Engineering', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(6, 'EEE 162', 'Basic Electrial Engineering Lab', 1.5, '1st semester', '1st year', 40, 'Lab', 'B.Sc.'),
(7, 'GED 163', 'Accounting', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(8, 'GED 165', 'English', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(9, 'MATH 167', 'Calculus and Differential Equation', 3, '1st semester', '1st year', 40, 'Theory', 'B.Sc.'),
(10, 'CSE 121', 'Structured Programming', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.'),
(11, 'CSE 122', 'Structured Programming Lab', 1.5, '2nd semester', '1st year', 40, 'Lab', 'B.Sc.'),
(12, 'CSE 124', 'Engineering Drawing Lab', 1.5, '2nd semester', '1st year', 40, 'Lab', 'B.Sc.'),
(13, 'CSE 127', 'Numerical Methods', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.'),
(14, 'MATH 171', 'Matrix and Vector Analysis', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.'),
(15, 'CSE 175', 'Electronics', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.'),
(16, 'EEE 176', 'Electronics Lab', 1.5, '2nd semester', '1st year', 40, 'Lab', 'B.Sc.'),
(18, 'GED 179', 'Nazrul Studies', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.'),
(19, 'CSE 201', 'Object Oriented Programming', 3, '1st semester', '2nd year', 40, 'Theory', 'B.Sc.'),
(20, 'CSE 202', 'Object Oriented Programming Lab', 1.5, '1st semester', '2nd year', 40, 'Lab', 'B.Sc.'),
(21, 'CSE 221', 'Algorithms', 3, '2nd semester', '2nd year', 40, 'Theory', 'B.Sc.'),
(22, 'CSE 222 ', 'Algorithms Lab', 1.5, '2nd semester', '2nd year', 40, 'Lab', 'B.Sc.'),
(23, 'PHY 177', 'Physics', 3, '2nd semester', '1st year', 40, 'Theory', 'B.Sc.');

-- --------------------------------------------------------

--
-- Table structure for table `department_information`
--

CREATE TABLE `department_information` (
  `id` int(255) NOT NULL,
  `department_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_information`
--

INSERT INTO `department_information` (`id`, `department_name`) VALUES
(3, 'Computer Science And Engineering'),
(4, 'ESE');

-- --------------------------------------------------------

--
-- Table structure for table `exam_committee_information`
--

CREATE TABLE `exam_committee_information` (
  `id` int(255) NOT NULL,
  `chairman_id` int(255) NOT NULL,
  `member1_id` int(255) NOT NULL,
  `member2_id` int(255) NOT NULL,
  `session` varchar(20) NOT NULL,
  `course_year` varchar(20) NOT NULL,
  `exam_year` varchar(20) NOT NULL,
  `tabulator1_id` int(255) NOT NULL,
  `tabulator1_pass` varchar(200) NOT NULL,
  `tabulator2_id` int(255) NOT NULL,
  `tabulator2_pass` varchar(200) NOT NULL,
  `tabulator3_id` int(255) NOT NULL,
  `tabulator3_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_committee_information`
--

INSERT INTO `exam_committee_information` (`id`, `chairman_id`, `member1_id`, `member2_id`, `session`, `course_year`, `exam_year`, `tabulator1_id`, `tabulator1_pass`, `tabulator2_id`, `tabulator2_pass`, `tabulator3_id`, `tabulator3_pass`) VALUES
(5, 63, 64, 66, '2015-2016', '1st year', '2016', 63, 'MTIzNDU2', 64, 'NjU0MzIx', 66, 'MTIzMTIz'),
(6, 64, 63, 66, '2014-2015', '2nd year', '2016', 64, 'NDY2OTg3', 63, 'Nzc0MDU3', 66, 'OTIxNTA3'),
(7, 63, 64, 66, '2020-2021', '1st year', '2021', 63, 'NTI3ODkw', 64, 'MjkwMTA1', 66, 'MjY0MzM2'),
(8, 63, 64, 66, '2006-2007', '1st year', '2007', 63, 'MzEzOTQw', 64, 'NzMyOTE2', 66, 'Mjc3MTMy');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(255) NOT NULL,
  `session` varchar(20) NOT NULL,
  `course_year` varchar(20) NOT NULL,
  `course_semester` varchar(20) NOT NULL,
  `student_id` int(255) NOT NULL,
  `teacher_id` int(255) NOT NULL,
  `course_id` int(255) NOT NULL,
  `attendance` float NOT NULL,
  `mid1` float NOT NULL,
  `mid2` float NOT NULL,
  `ass_pre` float NOT NULL,
  `total_internal` float NOT NULL,
  `1st_examinee` float NOT NULL,
  `2nd_examinee` float NOT NULL,
  `3rd_examinee` float NOT NULL,
  `total_final_marks` float NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `session`, `course_year`, `course_semester`, `student_id`, `teacher_id`, `course_id`, `attendance`, `mid1`, `mid2`, `ass_pre`, `total_internal`, `1st_examinee`, `2nd_examinee`, `3rd_examinee`, `total_final_marks`, `status`) VALUES
(96, '2015-2016', '1st year', '1st semester', 13, 64, 3, 5, 6, 7, 8, 26, 20, 30, -1, 25, ''),
(97, '2015-2016', '1st year', '1st semester', 14, 64, 3, 9, 7, 5, 4, 25, 20, 50, 20, 20, ''),
(98, '2015-2016', '1st year', '1st semester', 15, 64, 3, 6, 7, 8, 9, 30, 30, 35, -1, 32.5, ''),
(99, '2015-2016', '1st year', '1st semester', 16, 64, 3, 5, 4, 2, 3, 14, 40, 45, -1, 42.5, ''),
(100, '2015-2016', '1st year', '1st semester', 27, 64, 3, 4, 5, 6, 7, 22, 50, 52, -1, 51, ''),
(101, '2015-2016', '1st year', '1st semester', 28, 64, 3, 9, 8, 4, 6, 27, 51, 30, 50, 50.5, ''),
(102, '2015-2016', '1st year', '1st semester', 29, 64, 3, 4, 6, 4, 5, 19, 32, 34, -1, 33, ''),
(103, '2015-2016', '1st year', '1st semester', 30, 64, 3, 4, 8, 8, 5, 25, 34, 35, -1, 34.5, ''),
(104, '2015-2016', '1st year', '1st semester', 32, 64, 3, 4, 6, 5, 4, 19, 54, 20, 40, 47, ''),
(105, '2015-2016', '1st year', '1st semester', 31, 64, 3, 6, 8, 7, 4, 25, 20, 32, 25, 22.5, ''),
(106, '2015-2016', '1st year', '1st semester', 33, 64, 3, 6, 2, 1, 3, 12, 25, 26, -1, 25.5, ''),
(107, '2015-2016', '1st year', '1st semester', 34, 64, 3, 4, 6, 4, 5, 19, 45, 49, -1, 47, ''),
(108, '2015-2016', '1st year', '1st semester', 35, 64, 3, 8, 7, 5, 5, 25, 56, 54, -1, 55, ''),
(109, '2015-2016', '1st year', '1st semester', 36, 64, 3, 6, 1, 3, 5, 15, 52, 51, -1, 51.5, ''),
(110, '2015-2016', '1st year', '1st semester', 25, 64, 3, 4, 6, 4, 5, 19, 54, 59, -1, 56.5, ''),
(111, '2015-2016', '1st year', '1st semester', 37, 64, 3, 8, 4, 5, 7, 24, 60, 60, -1, 60, ''),
(112, '2015-2016', '1st year', '1st semester', 38, 64, 3, 3, 4, 5, 6, 18, 41, 42, -1, 41.5, ''),
(113, '2015-2016', '1st year', '1st semester', 39, 64, 3, 7, 8, 9, 4, 28, 32, 35, -1, 33.5, ''),
(114, '2015-2016', '1st year', '1st semester', 40, 64, 3, 5, 2, 4, 6, 17, 31, 39, -1, 35, ''),
(115, '2015-2016', '1st year', '1st semester', 41, 64, 3, 4, 6, 8, 9, 27, 35, 40, -1, 37.5, ''),
(116, '2015-2016', '1st year', '1st semester', 42, 64, 3, 7, 4, 5, 6, 22, 21, 25, -1, 23, ''),
(117, '2015-2016', '1st year', '1st semester', 43, 64, 3, 7, 1, 2, 5, 15, 52, 53, -1, 52.5, ''),
(118, '2015-2016', '1st year', '1st semester', 44, 64, 3, 4, 6, 5, 7, 22, 54, 55, -1, 54.5, ''),
(119, '2015-2016', '1st year', '1st semester', 45, 64, 3, 8, 9, 7, 8, 32, 46, 49, -1, 47.5, ''),
(120, '2015-2016', '1st year', '1st semester', 46, 64, 3, 5, 4, 8, 9, 26, 48, 46, -1, 47, ''),
(121, '2015-2016', '1st year', '1st semester', 47, 64, 3, 7, 4, 5, 6, 22, 24, 29, -1, 26.5, ''),
(122, '2015-2016', '1st year', '1st semester', 48, 64, 3, 7, 8, 9, 5, 29, 52, 54, -1, 53, ''),
(123, '2015-2016', '1st year', '1st semester', 49, 64, 3, 4, 6, 4, 8, 22, 56, 55, -1, 55.5, ''),
(124, '2015-2016', '1st year', '1st semester', 50, 64, 3, 9, 5, 3, 2, 19, 45, 25, 45, 45, ''),
(125, '2015-2016', '1st year', '1st semester', 51, 64, 3, 4, 6, 8, 7, 25, 46, 49, -1, 47.5, ''),
(126, '2015-2016', '1st year', '1st semester', 52, 64, 3, 5, 6, 4, 8, 23, 45, 45, -1, 45, ''),
(127, '2015-2016', '1st year', '1st semester', 53, 64, 3, 9, 4, 9, 5, 27, 48, 48, -1, 48, ''),
(128, '2015-2016', '1st year', '1st semester', 54, 64, 3, 4, 2, 5, 6, 17, 45, 49, -1, 47, ''),
(129, '2015-2016', '1st year', '1st semester', 55, 64, 3, 4, 5, 6, 7, 22, 42, 48, -1, 45, ''),
(130, '2015-2016', '1st year', '1st semester', 56, 64, 3, 8, 9, 5, 6, 28, 49, 55, -1, 52, ''),
(131, '2015-2016', '1st year', '1st semester', 57, 64, 3, 4, 6, 4, 7, 21, 45, 48, -1, 46.5, ''),
(132, '2015-2016', '1st year', '1st semester', 58, 64, 3, 8, 9, 7, 9, 33, 43, 42, -1, 42.5, ''),
(133, '2015-2016', '1st year', '1st semester', 59, 64, 3, 4, 5, 5, 4, 18, 45, 46, -1, 45.5, ''),
(134, '2015-2016', '1st year', '1st semester', 60, 64, 3, 6, 4, 6, 4, 20, 49, 54, -1, 51.5, ''),
(135, '2015-2016', '1st year', '1st semester', 61, 64, 3, 5, 6, 7, 8, 26, 55, 52, -1, 53.5, ''),
(136, '2015-2016', '1st year', '1st semester', 62, 64, 3, 9, 7, 5, 4, 25, 54, 56, -1, 55, ''),
(137, '2015-2016', '1st year', '1st semester', 63, 64, 3, 6, 4, 5, 8, 23, 55, 55, -1, 55, ''),
(138, '2015-2016', '1st year', '1st semester', 64, 64, 3, 6, 4, 5, 7, 22, 25, 26, -1, 25.5, ''),
(139, '2015-2016', '1st year', '1st semester', 65, 64, 3, 8, 9, 7, 8, 32, 29, 30, -1, 29.5, ''),
(140, '2015-2016', '1st year', '1st semester', 66, 64, 3, 9, 4, 5, 6, 24, 45, 45, -1, 45, ''),
(141, '2015-2016', '1st year', '1st semester', 13, 63, 1, 5, 6, 4, 8, 23, 50, 50, -1, 50, ''),
(142, '2015-2016', '1st year', '1st semester', 14, 63, 1, 9, 4, 5, 4, 22, 25, 25, -1, 25, ''),
(143, '2015-2016', '1st year', '1st semester', 15, 63, 1, 5, 6, 4, 8, 23, 32, 32, -1, 32, ''),
(144, '2015-2016', '1st year', '1st semester', 16, 63, 1, 9, 4, 4, 6, 23, 22, 21, -1, 21.5, ''),
(145, '2015-2016', '1st year', '1st semester', 27, 63, 1, 4, 5, 6, 4, 19, 25, 26, -1, 25.5, ''),
(146, '2015-2016', '1st year', '1st semester', 28, 63, 1, 2, 1, 3, 5, 11, 25, 45, 20, 22.5, ''),
(147, '2015-2016', '1st year', '1st semester', 29, 63, 1, 6, 4, 9, 8, 27, 55, 56, -1, 55.5, ''),
(148, '2015-2016', '1st year', '1st semester', 30, 63, 1, 4, 5, 6, 4, 19, 56, 57, -1, 56.5, ''),
(149, '2015-2016', '1st year', '1st semester', 32, 63, 1, 6, 1, 2, 4, 13, 56, 54, -1, 55, ''),
(150, '2015-2016', '1st year', '1st semester', 31, 63, 1, 5, 6, 4, 5, 20, 54, 55, -1, 54.5, ''),
(151, '2015-2016', '1st year', '1st semester', 33, 63, 1, 9, 5, 6, 4, 24, 20, 20, -1, 20, ''),
(152, '2015-2016', '1st year', '1st semester', 34, 63, 1, 5, 6, 4, 2, 17, 25, 50, 45, 47.5, ''),
(153, '2015-2016', '1st year', '1st semester', 35, 63, 1, 1, 2, 3, 4, 10, 25, 25, -1, 25, ''),
(154, '2015-2016', '1st year', '1st semester', 36, 63, 1, 5, 6, 4, 8, 23, 45, 45, -1, 45, ''),
(155, '2015-2016', '1st year', '1st semester', 25, 63, 1, 9, 4, 6, 7, 26, 48, 49, -1, 48.5, ''),
(156, '2015-2016', '1st year', '1st semester', 37, 63, 1, 9, 5, 4, 9, 27, 45, 47, -1, 46, ''),
(157, '2015-2016', '1st year', '1st semester', 38, 63, 1, 5, 4, 6, 8, 23, 52, 53, -1, 52.5, ''),
(158, '2015-2016', '1st year', '1st semester', 39, 63, 1, 9, 4, 5, 7, 25, 56, 56, -1, 56, ''),
(159, '2015-2016', '1st year', '1st semester', 40, 63, 1, 9, 5, 4, 9, 27, 54, 58, -1, 56, ''),
(160, '2015-2016', '1st year', '1st semester', 41, 63, 1, 5, 4, 9, 7, 25, 59, 58, -1, 58.5, ''),
(161, '2015-2016', '1st year', '1st semester', 42, 63, 1, 5, 4, 6, 4, 19, 54, 54, -1, 54, ''),
(162, '2015-2016', '1st year', '1st semester', 43, 63, 1, 9, 5, 4, 6, 24, 24, 25, -1, 24.5, ''),
(163, '2015-2016', '1st year', '1st semester', 44, 63, 1, 7, 8, 9, 7, 31, 25, 26, -1, 25.5, ''),
(164, '2015-2016', '1st year', '1st semester', 45, 63, 1, 8, 5, 4, 6, 23, 45, 45, -1, 45, ''),
(165, '2015-2016', '1st year', '1st semester', 46, 63, 1, 4, 2, 3, 4, 13, 46, 48, -1, 47, ''),
(166, '2015-2016', '1st year', '1st semester', 47, 63, 1, 6, 4, 5, 8, 23, 48, 49, -1, 48.5, ''),
(167, '2015-2016', '1st year', '1st semester', 48, 63, 1, 9, 7, 5, 6, 27, 42, 45, -1, 43.5, ''),
(168, '2015-2016', '1st year', '1st semester', 49, 63, 1, 4, 8, 9, 2, 23, 45, 47, -1, 46, ''),
(169, '2015-2016', '1st year', '1st semester', 50, 63, 1, 1, 9, 8, 7, 25, 24, 26, -1, 25, ''),
(170, '2015-2016', '1st year', '1st semester', 51, 63, 1, 5, 1, 5, 6, 17, 30, 30, -1, 30, ''),
(171, '2015-2016', '1st year', '1st semester', 52, 63, 1, 4, 8, 9, 7, 28, 35, 36, -1, 35.5, ''),
(172, '2015-2016', '1st year', '1st semester', 53, 63, 1, 5, 6, 4, 9, 24, 34, 38, -1, 36, ''),
(173, '2015-2016', '1st year', '1st semester', 54, 63, 1, 7, 5, 6, 9, 27, 39, 45, -1, 42, ''),
(174, '2015-2016', '1st year', '1st semester', 55, 63, 1, 7, 5, 6, 7, 25, 45, 47, -1, 46, ''),
(175, '2015-2016', '1st year', '1st semester', 56, 63, 1, 9, 4, 5, 6, 24, 49, 50, -1, 49.5, ''),
(176, '2015-2016', '1st year', '1st semester', 57, 63, 1, 7, 9, 5, 4, 25, 54, 54, -1, 54, ''),
(177, '2015-2016', '1st year', '1st semester', 58, 63, 1, 9, 7, 8, 9, 33, 56, 57, -1, 56.5, ''),
(178, '2015-2016', '1st year', '1st semester', 59, 63, 1, 5, 4, 9, 7, 25, 58, 59, -1, 58.5, ''),
(179, '2015-2016', '1st year', '1st semester', 60, 63, 1, 5, 1, 2, 5, 13, 60, 60, -1, 60, ''),
(180, '2015-2016', '1st year', '1st semester', 61, 63, 1, 7, 9, 5, 7, 28, 45, 48, -1, 46.5, ''),
(181, '2015-2016', '1st year', '1st semester', 62, 63, 1, 9, 8, 4, 5, 26, 48, 45, -1, 46.5, ''),
(182, '2015-2016', '1st year', '1st semester', 63, 63, 1, 6, 1, 2, 4, 13, 47, 42, -1, 44.5, ''),
(183, '2015-2016', '1st year', '1st semester', 64, 63, 1, 8, 9, 7, 5, 29, 45, 49, -1, 47, ''),
(184, '2015-2016', '1st year', '1st semester', 65, 63, 1, 6, 4, 2, 4, 16, 40, 42, -1, 41, ''),
(185, '2015-2016', '1st year', '1st semester', 66, 63, 1, 6, 4, 5, 8, 23, 45, 47, -1, 46, ''),
(186, '2015-2016', '1st year', '1st semester', 13, 63, 2, 5, 6, 4, 9, 24, 25, 26, -1, 25.5, ''),
(187, '2015-2016', '1st year', '1st semester', 14, 63, 2, 8, 5, 4, 4, 21, 26, 27, -1, 26.5, ''),
(188, '2015-2016', '1st year', '1st semester', 15, 63, 2, 4, 4, 6, 8, 22, 45, 46, -1, 45.5, ''),
(189, '2015-2016', '1st year', '1st semester', 16, 63, 2, 9, 4, 5, 6, 24, 48, 49, -1, 48.5, ''),
(190, '2015-2016', '1st year', '1st semester', 27, 63, 2, 4, 5, 6, 4, 19, 50, 51, -1, 50.5, ''),
(191, '2015-2016', '1st year', '1st semester', 28, 63, 2, 1, 3, 4, 5, 13, 45, 49, -1, 47, ''),
(192, '2015-2016', '1st year', '1st semester', 29, 63, 2, 6, 4, 6, 8, 24, 46, 48, -1, 47, ''),
(193, '2015-2016', '1st year', '1st semester', 30, 63, 2, 9, 7, 5, 6, 27, 54, 54, -1, 54, ''),
(194, '2015-2016', '1st year', '1st semester', 32, 63, 2, 4, 2, 3, 4, 13, 55, 55, -1, 55, ''),
(195, '2015-2016', '1st year', '1st semester', 31, 63, 2, 5, 6, 4, 6, 21, 25, 26, -1, 25.5, ''),
(196, '2015-2016', '1st year', '1st semester', 33, 63, 2, 8, 7, 4, 5, 24, 28, 29, -1, 28.5, ''),
(197, '2015-2016', '1st year', '1st semester', 34, 63, 2, 6, 1, 2, 3, 12, 35, 36, -1, 35.5, ''),
(198, '2015-2016', '1st year', '1st semester', 35, 63, 2, 4, 5, 6, 4, 19, 52, 51, -1, 51.5, ''),
(199, '2015-2016', '1st year', '1st semester', 36, 63, 2, 6, 4, 2, 3, 15, 50, 56, -1, 53, ''),
(200, '2015-2016', '1st year', '1st semester', 25, 63, 2, 4, 6, 8, 9, 27, 59, 54, -1, 56.5, ''),
(201, '2015-2016', '1st year', '1st semester', 37, 63, 2, 7, 4, 6, 5, 22, 52, 53, -1, 52.5, ''),
(202, '2015-2016', '1st year', '1st semester', 38, 63, 2, 4, 6, 5, 4, 19, 54, 56, -1, 55, ''),
(203, '2015-2016', '1st year', '1st semester', 39, 63, 2, 6, 4, 2, 3, 15, 50, 50, -1, 50, ''),
(204, '2015-2016', '1st year', '1st semester', 40, 63, 2, 4, 6, 5, 4, 19, 60, 60, -1, 60, ''),
(205, '2015-2016', '1st year', '1st semester', 41, 63, 2, 7, 6, 5, 4, 22, 40, 40, -1, 40, ''),
(206, '2015-2016', '1st year', '1st semester', 42, 63, 2, 9, 4, 6, 8, 27, 42, 45, -1, 43.5, ''),
(207, '2015-2016', '1st year', '1st semester', 43, 63, 2, 4, 5, 6, 4, 19, 45, 49, -1, 47, ''),
(208, '2015-2016', '1st year', '1st semester', 44, 63, 2, 7, 8, 9, 5, 29, 46, 48, -1, 47, ''),
(209, '2015-2016', '1st year', '1st semester', 45, 63, 2, 4, 6, 4, 5, 19, 48, 45, -1, 46.5, ''),
(210, '2015-2016', '1st year', '1st semester', 46, 63, 2, 4, 5, 6, 9, 24, 49, 46, -1, 47.5, ''),
(211, '2015-2016', '1st year', '1st semester', 47, 63, 2, 8, 4, 5, 6, 23, 46, 44, -1, 45, ''),
(212, '2015-2016', '1st year', '1st semester', 48, 63, 2, 7, 9, 8, 7, 31, 48, 48, -1, 48, ''),
(213, '2015-2016', '1st year', '1st semester', 49, 63, 2, 4, 5, 6, 4, 19, 54, 54, -1, 54, ''),
(214, '2015-2016', '1st year', '1st semester', 50, 63, 2, 8, 4, 6, 5, 23, 53, 53, -1, 53, ''),
(215, '2015-2016', '1st year', '1st semester', 51, 63, 2, 4, 1, 2, 3, 10, 52, 52, -1, 52, ''),
(216, '2015-2016', '1st year', '1st semester', 52, 63, 2, 5, 4, 6, 4, 19, 56, 54, -1, 55, ''),
(217, '2015-2016', '1st year', '1st semester', 53, 63, 2, 6, 4, 6, 4, 20, 58, 59, -1, 58.5, ''),
(218, '2015-2016', '1st year', '1st semester', 54, 63, 2, 6, 4, 6, 4, 20, 52, 52, -1, 52, ''),
(219, '2015-2016', '1st year', '1st semester', 55, 63, 2, 9, 4, 6, 4, 23, 35, 35, -1, 35, ''),
(220, '2015-2016', '1st year', '1st semester', 56, 63, 2, 6, 5, 4, 6, 21, 36, 34, -1, 35, ''),
(221, '2015-2016', '1st year', '1st semester', 57, 63, 2, 7, 6, 5, 8, 26, 35, 39, -1, 37, ''),
(222, '2015-2016', '1st year', '1st semester', 58, 63, 2, 6, 4, 4, 9, 23, 34, 39, -1, 36.5, ''),
(223, '2015-2016', '1st year', '1st semester', 59, 63, 2, 4, 2, 6, 6, 18, 52, 52, -1, 52, ''),
(224, '2015-2016', '1st year', '1st semester', 60, 63, 2, 6, 4, 5, 4, 19, 56, 54, -1, 55, ''),
(225, '2015-2016', '1st year', '1st semester', 61, 63, 2, 9, 8, 7, 8, 32, 52, 52, -1, 52, ''),
(226, '2015-2016', '1st year', '1st semester', 62, 63, 2, 1, 2, 3, 4, 10, 46, 46, -1, 46, ''),
(227, '2015-2016', '1st year', '1st semester', 63, 63, 2, 9, 4, 6, 7, 26, 49, 48, -1, 48.5, ''),
(228, '2015-2016', '1st year', '1st semester', 64, 63, 2, 9, 2, 4, 6, 21, 45, 40, -1, 42.5, ''),
(229, '2015-2016', '1st year', '1st semester', 65, 63, 2, 7, 9, 4, 5, 25, 42, 42, -1, 42, ''),
(230, '2015-2016', '1st year', '1st semester', 66, 63, 2, 6, 4, 6, 8, 24, 49, 46, -1, 47.5, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `roll_no` int(50) NOT NULL,
  `registration_no` int(50) NOT NULL,
  `session` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `student_type` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `program` varchar(20) NOT NULL,
  `department_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `name`, `father_name`, `mother_name`, `roll_no`, `registration_no`, `session`, `date_of_birth`, `student_type`, `contact_no`, `program`, `department_name`) VALUES
(13, 'Mitu ', 'jani', ' jani n', 16102001, 4853, '2015-2016', '1997-12-21', 'Regular', '01681111111', 'B.Sc.', 'Computer Science And Engineering'),
(14, 'Esty', 'asdkj', 'sdfj', 16102002, 4854, '2015-2016', '1997-12-03', 'Regular', '01681111121', 'B.Sc.', 'Computer Science And Engineering'),
(15, 'Swarup', 'sdasd', 'ad', 16102003, 4855, '2015-2016', '1997-12-03', 'Regular', '01681111221', 'B.Sc.', 'Computer Science And Engineering'),
(16, 'Rejwan', 'Aasd', 'asdasd', 16102004, 4856, '2015-2016', '1997-12-03', 'Regular', '01681091173', 'B.Sc.', 'Computer Science And Engineering'),
(25, 'Tusty', 'asdasd', 'asdasd', 16102017, 4869, '2015-2016', '1998-12-16', 'Regular', '01645623198', 'B.Sc.', 'Computer Science And Engineering'),
(27, 'Robin', 'asd', 'asd', 16102005, 4857, '2015-2016', '1998-12-03', 'Regular', '01645645956', 'B.Sc.', 'Computer Science And Engineering'),
(28, 'Nazmul', 'asd', 'asd', 16102006, 4858, '2015-2016', '1997-12-06', 'Regular', '01612357895', 'B.Sc.', 'Computer Science And Engineering'),
(29, 'Pias', 'asd', 'ad', 16102007, 13224, '2015-2016', '1997-12-09', 'Regular', '01654231657', 'B.Sc.', 'Computer Science And Engineering'),
(30, 'Mohsin', 'asd', 'asd', 16102008, 456, '2015-2016', '1997-12-06', 'Regular', '01784695664', 'B.Sc.', 'Computer Science And Engineering'),
(31, 'Basbi', 'asdas', 'asdas', 16102010, 1655, '2015-2016', '1998-12-06', 'Regular', '01687946541', 'B.Sc.', 'Computer Science And Engineering'),
(32, 'Mumu', 'asdasd', 'asda', 16102009, 156, '2015-2016', '1997-12-06', 'Regular', '01564895642', 'B.Sc.', 'Computer Science And Engineering'),
(33, 'Apon', 'asdasd', 'asda', 16102011, 4895, '2015-2016', '1997-12-15', 'Regular', '01756568927', 'B.Sc.', 'Computer Science And Engineering'),
(34, 'Isha', 'Asasd', 'ssf', 16102013, 4569, '2015-2016', '1997-12-21', 'Regular', '01789845621', 'B.Sc.', 'Computer Science And Engineering'),
(35, 'Rokon', 'kl', 'sd', 16102015, 4865, '2015-2016', '1996-12-03', 'Regular', '01756423198', 'B.Sc.', 'Computer Science And Engineering'),
(36, 'Muna', 'asd', 'dasd', 16102016, 4526, '2015-2016', '1998-12-02', 'Regular', '01564231987', 'B.Sc.', 'Computer Science And Engineering'),
(37, 'Sami', 'asd', 'asd', 16102018, 4821, '2015-2016', '1997-12-03', 'Regular', '01654231879', 'B.Sc.', 'Computer Science And Engineering'),
(38, 'Asik', 'Aasd', 'asdasd', 16102019, 4896, '2015-2016', '1997-01-16', 'Regular', '01912345678', 'B.Sc.', 'Computer Science And Engineering'),
(39, 'Fahim', 'asd', 'asda', 16102020, 4213, '2015-2016', '1997-12-03', 'Regular', '01712345678', 'B.Sc.', 'Computer Science And Engineering'),
(40, 'Supty', 'Sasd', 'asdasd', 16102023, 4829, '2015-2016', '1997-08-19', 'Regular', '01686247327', 'B.Sc.', 'Computer Science And Engineering'),
(41, 'Akhi', 'asd', 'asda', 16102026, 4564, '2015-2016', '1997-03-18', 'Regular', '01812345678', 'B.Sc.', 'Computer Science And Engineering'),
(42, 'Hossain', 'asdas', 'asdas', 16102028, 1564, '2015-2016', '1993-01-04', 'Regular', '01645987456', 'B.Sc.', 'Computer Science And Engineering'),
(43, 'Marjia', 'asda', 'sdfdsf', 16102029, 4586, '2015-2016', '1997-12-15', 'Regular', '01698765412', 'B.Sc.', 'Computer Science And Engineering'),
(44, 'Zidne', 'sdfdsf', 'sdfdsf', 16102030, 4513, '2015-2016', '1998-05-19', 'Regular', '01598765321', 'B.Sc.', 'Computer Science And Engineering'),
(45, 'Mili', 'asda', 'asdasd', 16102032, 4659, '2015-2016', '1997-06-19', 'Regular', '01756432987', 'B.Sc.', 'Computer Science And Engineering'),
(46, 'Ishraq', 'sadasd', 'asda', 16102033, 45652, '2015-2016', '1997-10-09', 'Regular', '01648956740', 'B.Sc.', 'Computer Science And Engineering'),
(47, 'Shuvo', 'asda', 'asdasd', 16102034, 41334, '2015-2016', '1997-02-15', 'Regular', '01562345987', 'B.Sc.', 'Computer Science And Engineering'),
(48, 'Raz', 'asds', 'sads', 16102035, 4568, '2015-2016', '1997-12-09', 'Regular', '01512398567', 'B.Sc.', 'Computer Science And Engineering'),
(49, 'Kajol', 'asd', 'sf', 16102036, 475, '2015-2016', '1997-12-03', 'Regular', '01545628976', 'B.Sc.', 'Computer Science And Engineering'),
(50, 'Biplob', 'sdasf', 'asfsf', 16102038, 4562, '2015-2016', '1997-12-03', 'Regular', '01788996655', 'B.Sc.', 'Computer Science And Engineering'),
(51, 'Mahedi', 'sasd', 'asdad', 16102039, 4897, '2015-2016', '1997-12-02', 'Regular', '01654289755', 'B.Sc.', 'Computer Science And Engineering'),
(52, 'Tareq', 'asdasd', 'sdasd', 16102040, 42164, '2015-2016', '1997-12-05', 'Regular', '01788992200', 'B.Sc.', 'Computer Science And Engineering'),
(53, 'Shorna', 'asdas', 'asda', 16102041, 1465, '2015-2016', '1997-12-02', 'Regular', '01655448899', 'B.Sc.', 'Computer Science And Engineering'),
(54, 'Sujoy', 'asdas', 'fdsfs', 16102042, 1645, '2015-2016', '1997-12-02', 'Regular', '01956223300', 'B.Sc.', 'Computer Science And Engineering'),
(55, 'Bonik', 'asda', 'sfsf', 16102043, 123, '2015-2016', '1997-12-01', 'Regular', '01566666666', 'B.Sc.', 'Computer Science And Engineering'),
(56, 'Vodro', 'dsfds', 'adasd', 16102044, 4128, '2015-2016', '1997-05-12', 'Regular', '01788996321', 'B.Sc.', 'Computer Science And Engineering'),
(57, 'Bakar', 'asdasd', 'asda', 16102045, 45123, '2015-2016', '1997-12-03', 'Regular', '01549876522', 'B.Sc.', 'Computer Science And Engineering'),
(58, 'Arafat', 'asda', 'asdas', 16102046, 1234, '2015-2016', '1997-12-02', 'Regular', '01788889999', 'B.Sc.', 'Computer Science And Engineering'),
(59, 'Riad', 'asdasd', 'asdas', 16102048, 4558, '2015-2016', '1997-12-02', 'Regular', '01899665544', 'B.Sc.', 'Computer Science And Engineering'),
(60, 'Sudipto', 'asdasd', 'asdas', 16102049, 41268, '2015-2016', '1997-12-05', 'Regular', '01856465656', 'B.Sc.', 'Computer Science And Engineering'),
(61, 'Nichoy', 'asd', 'sdfsf', 16102050, 4129, '2015-2016', '1997-12-03', 'Regular', '01578888999', 'B.Sc.', 'Computer Science And Engineering'),
(62, 'Abid', 'asdasd', 'asdasd', 16102051, 1235, '2015-2016', '1998-12-05', 'Regular', '01788995522', 'B.Sc.', 'Computer Science And Engineering'),
(63, 'Rejon', 'sdfsf', 'sdfs', 16102052, 14988, '2015-2016', '1997-12-02', 'Regular', '01951753654', 'B.Sc.', 'Computer Science And Engineering'),
(64, 'Arpa', 'asfdasf', 'sfsf', 16102053, 4915, '2015-2016', '1997-12-22', 'Regular', '01587354961', 'B.Sc.', 'Computer Science And Engineering'),
(65, 'Farah', 'asdad', 'sdsdf', 16102054, 1597, '2015-2016', '1997-01-04', 'Regular', '01956325548', 'B.Sc.', 'Computer Science And Engineering'),
(66, 'Nikita', 'asdf', 'dsfsd', 16102055, 15600, '2015-2016', '1998-11-12', 'Regular', '01785236941', 'B.Sc.', 'Computer Science And Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_information`
--

CREATE TABLE `teacher_information` (
  `id` int(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `department` int(255) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_information`
--

INSERT INTO `teacher_information` (`id`, `name`, `designation`, `email`, `department`, `contact_no`, `password`) VALUES
(63, 'Dr. AHM. Kamal', 'Professor', 'rejwanc10asd@gmail.comas', 3, '01546987451', 'NzU0ODUy'),
(64, 'Md. Mijanur Rahman', 'Professor', 'mijanjkkniu@gmail.com', 4, '01521645987', 'NzU0ODUy'),
(66, 'rejwan', 'Associate Professor', 'rejwancse10@gmail.com', 3, '01681091123', 'NzU0ODUy'),
(67, 'tushar kanti saha', 'Associate Professor', 'tusharcsebd@gmail.com', 3, '01681091156', 'NzU0ODUy'),
(68, 'Habiba Sultana', 'Assistant Professor', 'smriti.cse@gmail.com', 3, '01645897561', 'NzU0ODUy'),
(69, 'Kazi Mahmudul Hasan Munna', 'Assistant Professor', 'munna10@gmail.com', 3, '01676546456', 'NTM2MjE5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_course_information`
--
ALTER TABLE `assigned_course_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_information`
--
ALTER TABLE `course_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_information`
--
ALTER TABLE `department_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_committee_information`
--
ALTER TABLE `exam_committee_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_information`
--
ALTER TABLE `teacher_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_course_information`
--
ALTER TABLE `assigned_course_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `course_information`
--
ALTER TABLE `course_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `department_information`
--
ALTER TABLE `department_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_committee_information`
--
ALTER TABLE `exam_committee_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `teacher_information`
--
ALTER TABLE `teacher_information`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
