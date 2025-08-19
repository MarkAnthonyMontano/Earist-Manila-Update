-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2025 at 11:55 AM
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
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_numbering_table`
--

CREATE TABLE `applicant_numbering_table` (
  `applicant_number` varchar(20) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant_numbering_table`
--

INSERT INTO `applicant_numbering_table` (`applicant_number`, `person_id`) VALUES
('2025100001', 1),
('2025100002', 2),
('2025100003', 3),
('2025100004', 4),
('2025100005', 5),
('2025100006', 6),
('2025100007', 7),
('2025100008', 8),
('2025100009', 9),
('2025100010', 10),
('2025100011', 11),
('2025100012', 12),
('2025100013', 13),
('2025100014', 14),
('2025100015', 15),
('2025100016', 16),
('2025100017', 17),
('2025100018', 18),
('2025100019', 19),
('2025100020', 20),
('2025100021', 21),
('2025100022', 22),
('2025100023', 23),
('2025100024', 24),
('2025100025', 25),
('2025100026', 26),
('2025100027', 27),
('2025100028', 28),
('2025100029', 29),
('2025100030', 30),
('2025100031', 31),
('2025100032', 32),
('2025100033', 33),
('2025100034', 34),
('2025100035', 35),
('2025100036', 36),
('2025100037', 37),
('2025100038', 38),
('2025100039', 39),
('2025100040', 40),
('2025100041', 41),
('2025100042', 42),
('2025100043', 43),
('2025100044', 44),
('2025100045', 45),
('2025100046', 46),
('2025100047', 47),
('2025100048', 48),
('2025100049', 49),
('2025100050', 50),
('2025100051', 51),
('2025100052', 52),
('2025100053', 53),
('2025100054', 54),
('2025100055', 55),
('2025100056', 56),
('2025100057', 57),
('2025100058', 58),
('2025100059', 59),
('2025100060', 60);

-- --------------------------------------------------------

--
-- Table structure for table `entrance_exam_schedule`
--

CREATE TABLE `entrance_exam_schedule` (
  `schedule_id` int(11) NOT NULL,
  `day_description` varchar(20) NOT NULL,
  `room_description` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrance_exam_schedule`
--

INSERT INTO `entrance_exam_schedule` (`schedule_id`, `day_description`, `room_description`, `start_time`, `end_time`, `created_at`) VALUES
(1, 'Monday', 'NUDAS HALL CBPA 201', '07:00:00', '08:00:00', '2025-08-11 09:27:26'),
(2, 'Tuesday', 'NUDAS HALL CBPA 201', '08:00:00', '09:00:00', '2025-08-11 09:38:05'),
(3, 'Wednesday', 'NUDAS HALL CBPA 201', '07:00:00', '08:00:00', '2025-08-11 09:49:11'),
(4, 'Monday', 'CAS Room 204', '18:24:00', '21:24:00', '2025-08-18 07:25:01'),
(5, 'Saturday', 'CSS Room 203', '10:00:00', '11:00:00', '2025-08-18 20:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `exam_applicants`
--

CREATE TABLE `exam_applicants` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `applicant_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_applicants`
--

INSERT INTO `exam_applicants` (`id`, `schedule_id`, `applicant_id`) VALUES
(1, 2, '2025100001'),
(2, 2, '2025100002'),
(3, 2, '2025100003'),
(4, 2, '2025100004'),
(5, 2, '2025100005'),
(6, 2, '2025100006'),
(7, 2, '2025100007'),
(8, 2, '2025100008'),
(9, 2, '2025100009'),
(10, 2, '2025100010'),
(11, 2, '2025100011'),
(12, 2, '2025100012'),
(13, 2, '2025100013'),
(14, 2, '2025100014'),
(15, 2, '2025100015'),
(16, 2, '2025100016'),
(17, 2, '2025100017'),
(18, 2, '2025100018'),
(19, 2, '2025100019'),
(20, 2, '2025100020'),
(21, 2, '2025100021'),
(22, 2, '2025100022'),
(23, 2, '2025100023'),
(24, 2, '2025100024'),
(25, 2, '2025100025'),
(26, 2, '2025100026'),
(27, 2, '2025100027'),
(28, 2, '2025100028'),
(29, 2, '2025100029'),
(30, 2, '2025100030'),
(31, 2, '2025100031'),
(32, 2, '2025100032'),
(33, 2, '2025100033'),
(34, 2, '2025100034'),
(35, 2, '2025100035'),
(36, 2, '2025100036'),
(37, 2, '2025100037'),
(38, 2, '2025100038'),
(39, 2, '2025100039'),
(40, 2, '2025100040'),
(41, 2, '2025100041'),
(42, 2, '2025100042'),
(43, 2, '2025100043'),
(44, 2, '2025100044'),
(45, 2, '2025100045'),
(46, 2, '2025100046'),
(47, 2, '2025100047'),
(48, 2, '2025100048'),
(49, 2, '2025100049'),
(50, 2, '2025100050'),
(51, 2, '2025100051'),
(52, 2, '2025100052'),
(53, 2, '2025100053'),
(54, 2, '2025100054'),
(55, 2, '2025100055'),
(56, 2, '2025100056'),
(57, 2, '2025100057'),
(58, 2, '2025100058'),
(59, 2, '2025100059'),
(60, 2, '2025100060');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `exam_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_start_time` varchar(10) NOT NULL,
  `exam_end_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`exam_id`, `exam_date`, `exam_start_time`, `exam_end_time`) VALUES
(2, '2025-05-21', '12:00', '13:30'),
(3, '2025-05-21', '09:30', '10:30'),
(4, '2025-05-21', '07:00', '21:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `applicant_number` varchar(20) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `message`, `applicant_number`, `timestamp`) VALUES
(34, 'submit', '📝 Applicant #2025100005 - Montano, Mark Anthony . submitted their form.', '2025100005', '2025-08-08 12:20:01'),
(35, 'submit', '✅ Applicant #2025100005 - Montano, Mark Anthony . submitted their form.', '2025100005', '2025-08-08 12:43:35'),
(36, 'submit', '✅ Applicant #2025100004 - gdssdg, dfgdf g. submitted their form.', '2025100004', '2025-08-09 12:19:28'),
(37, 'submit', '✅ Applicant #2025100005 - Montano, Mark Anthony . submitted their form.', '2025100005', '2025-08-09 15:42:44'),
(38, 'update', '✏️ Updated document status (Applicant #2025100005 - Montano, Mark Anthony .)', '2025100005', '2025-08-10 02:59:26'),
(39, 'update', '✏️ Updated document status (Applicant #2025100005 - Montano, Mark Anthony .)', '2025100005', '2025-08-10 14:33:47'),
(40, 'update', '✏️ Updated document status (Applicant #2025100005 - Montano, Mark Anthony .)', '2025100005', '2025-08-10 14:33:49'),
(41, 'submit', '✅ Applicant #2025100008 - Montano, Mark Anthony f. submitted their form.', '2025100008', '2025-08-11 16:39:08'),
(42, 'submit', '✅ Applicant #2025100008 - Montano, Mark Anthony f. submitted their form.', '2025100008', '2025-08-11 16:39:08'),
(43, 'upload', '📥 Uploaded new document by Applicant #2025100005 - Montano, Mark Anthony .', '2025100005', '2025-08-11 16:51:18'),
(44, 'update', '✏️ Updated document status (Applicant #2025100005 - Montano, Mark Anthony .)', '2025100005', '2025-08-11 16:51:48'),
(45, 'upload', '📥 Uploaded new document by Applicant #2025100005 - Montano, Mark Anthony .', '2025100005', '2025-08-11 17:31:31'),
(46, 'update', '✏️ Updated document status (Applicant #2025100005 - Montano, Mark Anthony .)', '2025100005', '2025-08-12 14:05:57'),
(47, 'upload', '📥 Uploaded new document by Applicant #2025100005 - Montano, Mark Anthony .', '2025100005', '2025-08-12 14:06:14'),
(48, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:00:26'),
(49, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:00:32'),
(50, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:01:19'),
(51, 'delete', '🗑️ Deleted document (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:28:12'),
(52, 'upload', '📥 Uploaded new document by Applicant #2025100005 - ghngfds, fasfsafnhgm .', '2025100005', '2025-08-13 01:28:32'),
(53, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:28:39'),
(54, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:28:41'),
(55, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:28:43'),
(56, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:30:02'),
(57, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:30:12'),
(58, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:32:49'),
(59, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:33:38'),
(60, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:33:42'),
(61, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:34:11'),
(62, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:35:39'),
(63, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:35:42'),
(64, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:35:46'),
(65, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:36:06'),
(66, 'delete', '🗑️ Deleted document (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:45:09'),
(67, 'delete', '🗑️ Deleted document (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:45:09'),
(68, 'upload', '📥 Uploaded new document by Applicant #2025100005 - ghngfds, fasfsafnhgm .', '2025100005', '2025-08-13 01:45:22'),
(69, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:45:31'),
(70, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:45:33'),
(71, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 01:45:36'),
(72, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 20:04:32'),
(73, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm .)', '2025100005', '2025-08-13 20:04:34'),
(74, 'submit', '✅ Applicant #2025100005 - ghngfds, fasfsafnhgm g. submitted their form.', '2025100005', '2025-08-13 22:37:29'),
(75, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 00:25:14'),
(76, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 00:31:40'),
(77, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 00:31:42'),
(78, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 00:31:44'),
(79, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 00:31:48'),
(80, 'upload', '📥 Uploaded new document by Applicant #2025100003 - Montaño, Mark Anthony P.', '2025100003', '2025-08-14 01:31:58'),
(81, 'upload', '📥 Uploaded new document by Applicant #2025100003 - Montaño, Mark Anthony P.', '2025100003', '2025-08-14 01:33:48'),
(82, 'upload', '📥 Uploaded new document by Applicant #2025100003 - Montaño, Mark Anthony P.', '2025100003', '2025-08-14 01:34:02'),
(83, 'upload', '📥 Uploaded new document by Applicant #2025100003 - Montaño, Mark Anthony P.', '2025100003', '2025-08-14 01:34:19'),
(84, 'update', '✏️ Updated document status (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-14 01:34:21'),
(85, 'update', '✏️ Updated document status (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-14 01:34:22'),
(86, 'update', '✏️ Updated document status (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-14 01:34:23'),
(87, 'update', '✏️ Updated document status (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-14 01:34:24'),
(88, 'submit', '✅ Applicant #2025100008 - Montano, Mark Anthony f. submitted their form.', '2025100008', '2025-08-14 02:27:23'),
(89, 'update', '✏️ Updated document status (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-14 02:52:13'),
(90, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-14 03:37:12'),
(91, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-15 02:42:42'),
(92, 'delete', '🗑️ Deleted document (Applicant #2025100003 - Montaño, Mark Anthony P.)', '2025100003', '2025-08-15 02:44:27'),
(93, 'upload', '📥 Uploaded new document by Applicant #2025100002 - luh, anlala p.', '2025100002', '2025-08-17 04:09:59'),
(94, 'upload', '📥 Uploaded new document by Applicant #2025100002 - luh, anlala p.', '2025100002', '2025-08-17 04:09:59'),
(95, 'submit', '✅ Applicant #2025100005 - ghngfds, fasfsafnhgm g. submitted their form.', '2025100005', '2025-08-17 04:10:26'),
(96, 'update', '✏️ Updated document status (Applicant #2025100005 - ghngfds, fasfsafnhgm g.)', '2025100005', '2025-08-18 15:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `person_status_table`
--

CREATE TABLE `person_status_table` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `applicant_id` varchar(20) DEFAULT NULL,
  `exam_status` int(11) DEFAULT NULL,
  `requirements` int(11) DEFAULT NULL,
  `residency` int(11) DEFAULT NULL,
  `student_registration_status` int(11) DEFAULT NULL,
  `exam_result` int(11) DEFAULT NULL,
  `hs_ave` float DEFAULT NULL,
  `qualifying_result` int(11) DEFAULT 0,
  `interview_result` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person_status_table`
--

INSERT INTO `person_status_table` (`id`, `person_id`, `applicant_id`, `exam_status`, `requirements`, `residency`, `student_registration_status`, `exam_result`, `hs_ave`, `qualifying_result`, `interview_result`) VALUES
(1, 1, '2025100001', 1, 0, 0, 0, 0, 0, 0, 0),
(2, 2, '2025100002', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, '2025100003', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, '2025100004', 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, '2025100005', 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, '2025100006', 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, '2025100007', 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, '2025100008', 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, '2025100009', 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, '2025100010', 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, '2025100011', 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, '2025100012', 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, '2025100013', 0, 0, 0, 0, 0, 0, 0, 0),
(14, 14, '2025100014', 0, 0, 0, 0, 0, 0, 0, 0),
(15, 15, '2025100015', 0, 0, 0, 0, 0, 0, 0, 0),
(16, 16, '2025100016', 0, 0, 0, 0, 0, 0, 0, 0),
(17, 17, '2025100017', 0, 0, 0, 0, 0, 0, 0, 0),
(18, 18, '2025100018', 0, 0, 0, 0, 0, 0, 0, 0),
(19, 19, '2025100019', 0, 0, 0, 0, 0, 0, 0, 0),
(20, 20, '2025100020', 0, 0, 0, 0, 0, 0, 0, 0),
(21, 21, '2025100021', 0, 0, 0, 0, 0, 0, 0, 0),
(22, 22, '2025100022', 0, 0, 0, 0, 0, 0, 0, 0),
(23, 23, '2025100023', 0, 0, 0, 0, 0, 0, 0, 0),
(24, 24, '2025100024', 0, 0, 0, 0, 0, 0, 0, 0),
(25, 25, '2025100025', 0, 0, 0, 0, 0, 0, 0, 0),
(26, 26, '2025100026', 0, 0, 0, 0, 0, 0, 0, 0),
(27, 27, '2025100027', 0, 0, 0, 0, 0, 0, 0, 0),
(28, 28, '2025100028', 0, 0, 0, 0, 0, 0, 0, 0),
(29, 29, '2025100029', 0, 0, 0, 0, 0, 0, 0, 0),
(30, 30, '2025100030', 0, 0, 0, 0, 0, 0, 0, 0),
(31, 31, '2025100031', 0, 0, 0, 0, 0, 0, 0, 0),
(32, 32, '2025100032', 0, 0, 0, 0, 0, 0, 0, 0),
(33, 33, '2025100033', 0, 0, 0, 0, 0, 0, 0, 0),
(34, 34, '2025100034', 0, 0, 0, 0, 0, 0, 0, 0),
(35, 35, '2025100035', 0, 0, 0, 0, 0, 0, 0, 0),
(36, 36, '2025100036', 0, 0, 0, 0, 0, 0, 0, 0),
(37, 37, '2025100037', 0, 0, 0, 0, 0, 0, 0, 0),
(38, 38, '2025100038', 0, 0, 0, 0, 0, 0, 0, 0),
(39, 39, '2025100039', 0, 0, 0, 0, 0, 0, 0, 0),
(40, 40, '2025100040', 0, 0, 0, 0, 0, 0, 0, 0),
(41, 41, '2025100041', 0, 0, 0, 0, 0, 0, 0, 0),
(42, 42, '2025100042', 0, 0, 0, 0, 0, 0, 0, 0),
(43, 43, '2025100043', 0, 0, 0, 0, 0, 0, 0, 0),
(44, 44, '2025100044', 0, 0, 0, 0, 0, 0, 0, 0),
(45, 45, '2025100045', 0, 0, 0, 0, 0, 0, 0, 0),
(46, 46, '2025100046', 0, 0, 0, 0, 0, 0, 0, 0),
(47, 47, '2025100047', 0, 0, 0, 0, 0, 0, 0, 0),
(48, 48, '2025100048', 0, 0, 0, 0, 0, 0, 0, 0),
(49, 49, '2025100049', 0, 0, 0, 0, 0, 0, 0, 0),
(50, 50, '2025100050', 0, 0, 0, 0, 0, 0, 0, 0),
(51, 51, '2025100051', 0, 0, 0, 0, 0, 0, 0, 0),
(52, 52, '2025100052', 0, 0, 0, 0, 0, 0, 0, 0),
(53, 53, '2025100053', 0, 0, 0, 0, 0, 0, 0, 0),
(54, 54, '2025100054', 0, 0, 0, 0, 0, 0, 0, 0),
(55, 55, '2025100055', 0, 0, 0, 0, 0, 0, 0, 0),
(56, 56, '2025100056', 0, 0, 0, 0, 0, 0, 0, 0),
(57, 57, '2025100057', 0, 0, 0, 0, 0, 0, 0, 0),
(58, 58, '2025100058', 0, 0, 0, 0, 0, 0, 0, 0),
(59, 59, '2025100059', 0, 0, 0, 0, 0, 0, 0, 0),
(60, 60, '2025100060', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

CREATE TABLE `person_table` (
  `person_id` int(11) NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `campus` int(11) DEFAULT NULL,
  `academicProgram` varchar(100) DEFAULT NULL,
  `classifiedAs` varchar(50) DEFAULT NULL,
  `applyingAs` varchar(100) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `program2` varchar(100) DEFAULT NULL,
  `program3` varchar(100) DEFAULT NULL,
  `yearLevel` varchar(30) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `lrnNumber` varchar(20) DEFAULT NULL,
  `nolrnNumber` int(5) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `pwdMember` int(5) DEFAULT NULL,
  `pwdType` varchar(50) DEFAULT NULL,
  `pwdId` varchar(50) DEFAULT NULL,
  `birthOfDate` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthPlace` varchar(255) DEFAULT NULL,
  `languageDialectSpoken` varchar(255) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `civilStatus` varchar(50) DEFAULT NULL,
  `tribeEthnicGroup` varchar(50) DEFAULT NULL,
  `cellphoneNumber` varchar(20) DEFAULT NULL,
  `emailAddress` varchar(100) DEFAULT NULL,
  `presentStreet` varchar(255) DEFAULT NULL,
  `presentBarangay` varchar(100) DEFAULT NULL,
  `presentZipCode` varchar(10) DEFAULT NULL,
  `presentRegion` varchar(100) DEFAULT NULL,
  `presentProvince` varchar(100) DEFAULT NULL,
  `presentMunicipality` varchar(100) DEFAULT NULL,
  `presentDswdHouseholdNumber` varchar(50) DEFAULT NULL,
  `sameAsPresentAddress` int(5) DEFAULT NULL,
  `permanentStreet` varchar(255) DEFAULT NULL,
  `permanentBarangay` varchar(100) DEFAULT NULL,
  `permanentZipCode` varchar(10) DEFAULT NULL,
  `permanentRegion` varchar(75) DEFAULT NULL,
  `permanentProvince` varchar(75) DEFAULT NULL,
  `permanentMunicipality` varchar(75) DEFAULT NULL,
  `permanentDswdHouseholdNumber` varchar(50) DEFAULT NULL,
  `solo_parent` int(5) DEFAULT NULL,
  `father_deceased` int(5) DEFAULT NULL,
  `father_family_name` varchar(100) DEFAULT NULL,
  `father_given_name` varchar(100) DEFAULT NULL,
  `father_middle_name` varchar(100) DEFAULT NULL,
  `father_ext` varchar(10) DEFAULT NULL,
  `father_nickname` varchar(50) DEFAULT NULL,
  `father_education` int(5) NOT NULL,
  `father_education_level` varchar(100) DEFAULT NULL,
  `father_last_school` varchar(100) DEFAULT NULL,
  `father_course` varchar(100) DEFAULT NULL,
  `father_year_graduated` varchar(10) DEFAULT NULL,
  `father_school_address` varchar(255) DEFAULT NULL,
  `father_contact` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `father_employer` varchar(100) DEFAULT NULL,
  `father_income` varchar(20) DEFAULT NULL,
  `father_email` varchar(100) DEFAULT NULL,
  `mother_deceased` int(5) DEFAULT NULL,
  `mother_family_name` varchar(100) DEFAULT NULL,
  `mother_given_name` varchar(100) DEFAULT NULL,
  `mother_middle_name` varchar(100) DEFAULT NULL,
  `mother_ext` varchar(10) DEFAULT NULL,
  `mother_nickname` varchar(50) DEFAULT NULL,
  `mother_education` int(5) NOT NULL,
  `mother_education_level` varchar(100) DEFAULT NULL,
  `mother_last_school` varchar(100) DEFAULT NULL,
  `mother_course` varchar(100) DEFAULT NULL,
  `mother_year_graduated` varchar(10) DEFAULT NULL,
  `mother_school_address` varchar(255) DEFAULT NULL,
  `mother_contact` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `mother_employer` varchar(100) DEFAULT NULL,
  `mother_income` varchar(20) DEFAULT NULL,
  `mother_email` varchar(100) DEFAULT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `guardian_family_name` varchar(100) DEFAULT NULL,
  `guardian_given_name` varchar(100) DEFAULT NULL,
  `guardian_middle_name` varchar(100) DEFAULT NULL,
  `guardian_ext` varchar(20) DEFAULT NULL,
  `guardian_nickname` varchar(50) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(20) DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `annual_income` varchar(50) DEFAULT NULL,
  `schoolLevel` varchar(50) DEFAULT NULL,
  `schoolLastAttended` varchar(100) DEFAULT NULL,
  `schoolAddress` varchar(255) DEFAULT NULL,
  `courseProgram` varchar(100) DEFAULT NULL,
  `honor` varchar(100) DEFAULT NULL,
  `generalAverage` decimal(5,2) DEFAULT NULL,
  `yearGraduated` int(11) DEFAULT NULL,
  `schoolLevel1` varchar(50) DEFAULT NULL,
  `schoolLastAttended1` varchar(100) DEFAULT NULL,
  `schoolAddress1` varchar(255) DEFAULT NULL,
  `courseProgram1` varchar(100) DEFAULT NULL,
  `honor1` varchar(100) DEFAULT NULL,
  `generalAverage1` decimal(5,2) DEFAULT NULL,
  `yearGraduated1` int(11) DEFAULT NULL,
  `strand` varchar(100) DEFAULT NULL,
  `cough` int(11) DEFAULT NULL,
  `colds` int(11) DEFAULT NULL,
  `fever` int(11) DEFAULT NULL,
  `asthma` int(11) DEFAULT NULL,
  `faintingSpells` int(11) DEFAULT NULL,
  `heartDisease` int(11) DEFAULT NULL,
  `tuberculosis` int(11) DEFAULT NULL,
  `frequentHeadaches` int(11) DEFAULT NULL,
  `hernia` int(11) DEFAULT NULL,
  `chronicCough` int(11) DEFAULT NULL,
  `headNeckInjury` int(11) DEFAULT NULL,
  `hiv` int(11) DEFAULT NULL,
  `highBloodPressure` int(11) DEFAULT NULL,
  `diabetesMellitus` int(11) DEFAULT NULL,
  `allergies` int(11) DEFAULT NULL,
  `cancer` int(11) DEFAULT NULL,
  `smokingCigarette` int(11) DEFAULT NULL,
  `alcoholDrinking` int(11) DEFAULT NULL,
  `hospitalized` int(11) DEFAULT NULL,
  `hospitalizationDetails` varchar(255) DEFAULT NULL,
  `medications` varchar(255) DEFAULT NULL,
  `hadCovid` int(11) DEFAULT NULL,
  `covidDate` varchar(50) DEFAULT NULL,
  `vaccine1Brand` varchar(50) DEFAULT NULL,
  `vaccine1Date` varchar(50) DEFAULT NULL,
  `vaccine2Brand` varchar(50) DEFAULT NULL,
  `vaccine2Date` varchar(50) DEFAULT NULL,
  `booster1Brand` varchar(50) DEFAULT NULL,
  `booster1Date` varchar(50) DEFAULT NULL,
  `booster2Brand` varchar(50) DEFAULT NULL,
  `booster2Date` varchar(50) DEFAULT NULL,
  `chestXray` varchar(100) DEFAULT NULL,
  `cbc` varchar(100) DEFAULT NULL,
  `urinalysis` varchar(100) DEFAULT NULL,
  `otherworkups` varchar(255) DEFAULT NULL,
  `symptomsToday` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `termsOfAgreement` int(10) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `person_table`
--

INSERT INTO `person_table` (`person_id`, `profile_img`, `campus`, `academicProgram`, `classifiedAs`, `applyingAs`, `program`, `program2`, `program3`, `yearLevel`, `last_name`, `first_name`, `middle_name`, `extension`, `nickname`, `height`, `weight`, `lrnNumber`, `nolrnNumber`, `gender`, `pwdMember`, `pwdType`, `pwdId`, `birthOfDate`, `age`, `birthPlace`, `languageDialectSpoken`, `citizenship`, `religion`, `civilStatus`, `tribeEthnicGroup`, `cellphoneNumber`, `emailAddress`, `presentStreet`, `presentBarangay`, `presentZipCode`, `presentRegion`, `presentProvince`, `presentMunicipality`, `presentDswdHouseholdNumber`, `sameAsPresentAddress`, `permanentStreet`, `permanentBarangay`, `permanentZipCode`, `permanentRegion`, `permanentProvince`, `permanentMunicipality`, `permanentDswdHouseholdNumber`, `solo_parent`, `father_deceased`, `father_family_name`, `father_given_name`, `father_middle_name`, `father_ext`, `father_nickname`, `father_education`, `father_education_level`, `father_last_school`, `father_course`, `father_year_graduated`, `father_school_address`, `father_contact`, `father_occupation`, `father_employer`, `father_income`, `father_email`, `mother_deceased`, `mother_family_name`, `mother_given_name`, `mother_middle_name`, `mother_ext`, `mother_nickname`, `mother_education`, `mother_education_level`, `mother_last_school`, `mother_course`, `mother_year_graduated`, `mother_school_address`, `mother_contact`, `mother_occupation`, `mother_employer`, `mother_income`, `mother_email`, `guardian`, `guardian_family_name`, `guardian_given_name`, `guardian_middle_name`, `guardian_ext`, `guardian_nickname`, `guardian_address`, `guardian_contact`, `guardian_email`, `annual_income`, `schoolLevel`, `schoolLastAttended`, `schoolAddress`, `courseProgram`, `honor`, `generalAverage`, `yearGraduated`, `schoolLevel1`, `schoolLastAttended1`, `schoolAddress1`, `courseProgram1`, `honor1`, `generalAverage1`, `yearGraduated1`, `strand`, `cough`, `colds`, `fever`, `asthma`, `faintingSpells`, `heartDisease`, `tuberculosis`, `frequentHeadaches`, `hernia`, `chronicCough`, `headNeckInjury`, `hiv`, `highBloodPressure`, `diabetesMellitus`, `allergies`, `cancer`, `smokingCigarette`, `alcoholDrinking`, `hospitalized`, `hospitalizationDetails`, `medications`, `hadCovid`, `covidDate`, `vaccine1Brand`, `vaccine1Date`, `vaccine2Brand`, `vaccine2Date`, `booster1Brand`, `booster1Date`, `booster2Brand`, `booster2Date`, `chestXray`, `cbc`, `urinalysis`, `otherworkups`, `symptomsToday`, `remarks`, `termsOfAgreement`, `created_at`) VALUES
(1, '1_1by1_2025.jpg', 0, 'Undergraduate', 'Freshman (First Year)', '', '41', '6', '16', 'First Year', 'Montaño', 'Mark Anthony', 'Lee', '', 'Johnny', '5\'11', '65kg', 'No LRN Number', 0, 0, 0, '', '', '2003-06-20', 21, 'Manila, Philippines', 'Tagalog, English', 'FILIPINO', 'Born Again', 'Single', 'Agta', '09171234567999999', 'markmontano0626@gmail.com', '19 G Dona Yayang Street ', 'Libis', '1000', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'Quezon City', 'DSWD123456', 0, '19 G Dona Yayang Street ', 'Libis', '1000', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'Quezon City', 'DSWD123456', 0, 0, 'Doe Sr.', 'Jonathan', 'Smiths', 'III', 'Jon', 0, 'fafs', '', '', '', '', '09181234567', 'Engineer', 'ABC Corp', '50000', 'jon.doe@abc.com', 0, 'Jane', 'Mary', 'Anne', '', 'Janey', 0, '', '', '', '', '', '09221234567', 'Accountant', 'XYZ Corp', '100000', 'jane.doe@xyz.com', 'StepFather', 'Parker', 'Ben', 'Jose', 'IV', 'Benny', '789 Recto Av', '09192233445', '', '135,000 to 250,000', 'Senior High School', 'CGEAHS', 'Pasig City', 'STEM', 'With Honors', 92.50, 2022, 'Senior High School', 'CGEAHS', 'Rizal High School', 'Rizal High School', '0', 66.00, 0, 'Information and Communications Technology (ICT)', 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 'Wala ngani', 'Vitamins C', 1, '2022-02-11', 'Pfizer', '2022-03-14', 'Pfizer', '2022-04-13', 'Moderna', '2022-07-14', 'Pfizer', '2023-01-14', 'Normal', 'Normal', 'Normal', 'Normal', 1, 'Fit to enroll', 1, '2024-11-08'),
(2, '3_1by1_2025.jpg', 1, 'Techvoc', 'Freshman (First Year)', 'Senior High School Graduate', '38', '4', '3', 'Second  Year', 'Emily', 'Johnson', 'Grace', '', 'MARK', '5\'11', '65', '123456789012', 0, 0, 0, '', '', '2003-06-26', 21, 'Manila, Philippines', 'Tagalog, English', 'ALGERIAN', 'Iglesia Ni Cristo', 'Single', 'Cebuano', '09953242510', 'emily.johnson2@example.com', '19 G Dona yayang Street Libis', 'Pag-asa', '4100', 'National Capital Region (NCR)', 'Metro Manila, Second District', 'City Of Mandaluyong', 'DSWD123456', 0, '19 G Dona yayang Street Libis', 'Malipayon', '4100', 'Region X (Northern Mindanao)', 'Bukidnon', 'Pangantucan', 'DSWD123456', 0, 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fgdsgfasftrasf', '', '', '', 0.00, 0, '', '', '', '', '', 83.00, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0, '2024-12-10'),
(60, NULL, 0, NULL, NULL, NULL, '31', NULL, NULL, NULL, 'Bell', 'Evelyn', 'Faith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'evelyn.bell60@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-09'),
(59, NULL, 0, NULL, NULL, NULL, '5', NULL, NULL, NULL, 'Morgan', 'Levi', 'Anne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'levi.morgan59@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-12'),
(58, NULL, 1, NULL, NULL, NULL, '22', NULL, NULL, NULL, 'Cook', 'Zoey', 'Mae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zoey.cook58@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-01'),
(57, NULL, 0, NULL, NULL, NULL, '32', NULL, NULL, NULL, 'Reed', 'Nathan', 'John', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nathan.reed57@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-08'),
(56, NULL, 0, NULL, NULL, NULL, '53', NULL, NULL, NULL, 'Rogers', 'Layla', 'Joy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'layla.rogers56@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-23'),
(55, NULL, 0, NULL, NULL, NULL, '28', NULL, NULL, NULL, 'Morris', 'Dylan', 'Faith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dylan.morris55@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30'),
(54, NULL, 1, NULL, NULL, NULL, '20', NULL, NULL, NULL, 'Stewart', 'Penelope', 'Pearl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'penelope.stewart54@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-10'),
(53, NULL, 1, NULL, NULL, NULL, '54', NULL, NULL, NULL, 'Collins', 'Isaac', 'Anne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'isaac.collins53@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-22'),
(52, NULL, 1, NULL, NULL, NULL, '19', NULL, NULL, NULL, 'Edwards', 'Victoria', 'Jean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'victoria.edwards52@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-01'),
(51, NULL, 0, NULL, NULL, NULL, '30', NULL, NULL, NULL, 'Parker', 'Carter', 'Ruth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carter.parker51@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-02'),
(50, NULL, 1, NULL, NULL, NULL, '2', NULL, NULL, NULL, 'Campbell', 'Ella', 'Ruth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ella.campbell50@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-25'),
(49, NULL, 0, NULL, NULL, NULL, '19', NULL, NULL, NULL, 'Phillips', 'Gabriel', 'Mae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gabriel.phillips49@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08'),
(48, NULL, 0, NULL, NULL, NULL, '19', NULL, NULL, NULL, 'Turner', 'Sofia', 'Joy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sofia.turner48@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-19'),
(47, NULL, 0, NULL, NULL, NULL, '38', NULL, NULL, NULL, 'Evans', 'Jayden', 'Ivy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jayden.evans47@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-19'),
(46, NULL, 1, NULL, NULL, NULL, '4', NULL, NULL, NULL, 'Roberts', 'Madison', 'Dawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'madison.roberts46@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04'),
(45, NULL, 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, 'Perez', 'Luke', 'James', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luke.perez45@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-22'),
(44, NULL, 1, NULL, NULL, NULL, '9', NULL, NULL, NULL, 'Mitchell', 'Abigail', 'Faith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abigail.mitchell44@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-05'),
(43, NULL, 1, NULL, NULL, NULL, '49', NULL, NULL, NULL, 'Carter', 'Wyatt', 'Dean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wyatt.carter43@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-17'),
(42, NULL, 1, NULL, NULL, NULL, '43', NULL, NULL, NULL, 'Nelson', 'Hannah', 'George', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hannah.nelson42@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-02'),
(41, NULL, 1, NULL, NULL, NULL, '6', NULL, NULL, NULL, 'Gonzalez', 'Owen', 'Louise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'owen.gonzalez41@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-29'),
(40, NULL, 1, NULL, NULL, NULL, '2', NULL, NULL, NULL, 'Baker', 'Scarlett', 'James', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scarlett.baker40@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-26'),
(39, NULL, 0, NULL, NULL, NULL, '41', NULL, NULL, NULL, 'Adams', 'Jack', 'Scott', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jack.adams39@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22'),
(38, NULL, 1, NULL, NULL, NULL, '4', NULL, NULL, NULL, 'Green', 'Avery', 'Neil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avery.green38@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-30'),
(37, NULL, 0, NULL, NULL, NULL, '5', NULL, NULL, NULL, 'Hill', 'Sebastian', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sebastian.hill37@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-28'),
(36, NULL, 1, NULL, NULL, NULL, '39', NULL, NULL, NULL, 'Nguyen', 'Aria', 'Belle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aria.nguyen36@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19'),
(35, NULL, 1, NULL, NULL, NULL, '52', NULL, NULL, NULL, 'Torres', 'Samuel', 'Scott', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'samuel.torres35@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14'),
(34, NULL, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'Scott', 'Zoe', 'Ray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zoe.scott34@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18'),
(33, NULL, 1, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'Wright', 'Joseph', 'Claire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joseph.wright33@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30'),
(32, NULL, 0, NULL, NULL, NULL, '15', NULL, NULL, NULL, 'King', 'Lily', 'Lee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lily.king32@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-20'),
(31, NULL, 1, NULL, NULL, NULL, '38', NULL, NULL, NULL, 'Allen', 'Aiden', 'Dawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aiden.allen31@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09'),
(30, NULL, 0, NULL, NULL, NULL, '24', NULL, NULL, NULL, 'Young', 'Chloe', 'Neil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chloe.young30@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-13'),
(29, NULL, 0, NULL, NULL, NULL, '13', NULL, NULL, NULL, 'Walker', 'Elijah', 'Dawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'elijah.walker29@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15'),
(28, NULL, 0, NULL, NULL, NULL, '26', NULL, NULL, NULL, 'Robinson', 'Grace', 'Ruth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grace.robinson28@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-06'),
(27, NULL, 1, NULL, NULL, NULL, '49', NULL, NULL, NULL, 'Lewis', 'Logan', 'John', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'logan.lewis27@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24'),
(26, NULL, 0, NULL, NULL, NULL, '42', NULL, NULL, NULL, 'Ramirez', 'Ella', 'George', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ella.ramirez26@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12'),
(25, NULL, 1, NULL, NULL, NULL, '5', NULL, NULL, NULL, 'Clark', 'Mason', 'Anne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mason.clark25@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-22'),
(24, NULL, 1, NULL, NULL, NULL, '47', NULL, NULL, NULL, 'Sanchez', 'Harper', 'Grace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'harper.sanchez24@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-06'),
(23, NULL, 1, NULL, NULL, NULL, '24', NULL, NULL, NULL, 'Harris', 'Lucas', 'Joy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lucas.harris23@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-10'),
(22, NULL, 1, NULL, NULL, NULL, '48', NULL, NULL, NULL, 'White', 'Amelia', 'Lynn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'amelia.white22@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-26'),
(21, NULL, 1, NULL, NULL, NULL, '32', NULL, NULL, NULL, 'Thompson', 'Henry', 'Kate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'henry.thompson21@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-22'),
(20, NULL, 1, NULL, NULL, NULL, '37', NULL, NULL, NULL, 'Perez', 'Charlotte', 'Ely', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'charlotte.perez20@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-01'),
(19, NULL, 1, NULL, NULL, NULL, '6', NULL, NULL, NULL, 'Lee', 'William', 'Lynn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'william.lee19@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-26'),
(18, NULL, 0, NULL, NULL, NULL, '9', NULL, NULL, NULL, 'Martin', 'Mia', 'Ruth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mia.martin18@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-02'),
(17, NULL, 1, NULL, NULL, NULL, '27', NULL, NULL, NULL, 'Jackson', 'Alexander', 'Lynn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alexander.jackson17@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-10'),
(16, NULL, 1, NULL, NULL, NULL, '7', NULL, NULL, NULL, 'Moore', 'Isabella', 'Marie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'isabella.moore16@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-09'),
(15, NULL, 1, NULL, NULL, NULL, '26', NULL, NULL, NULL, 'Taylor', 'Ethan', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ethan.taylor15@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-27'),
(14, NULL, 1, NULL, NULL, NULL, '2', NULL, NULL, NULL, 'Thomas', 'Ava', 'Scott', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ava.thomas14@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-29'),
(13, NULL, 0, NULL, NULL, NULL, '11', NULL, NULL, NULL, 'Anderson', 'Benjamin', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'benjamin.anderson13@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-12'),
(12, NULL, 0, NULL, NULL, NULL, '18', NULL, NULL, NULL, 'Wilson', 'Sophia', 'Jane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sophia.wilson12@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05');
INSERT INTO `person_table` (`person_id`, `profile_img`, `campus`, `academicProgram`, `classifiedAs`, `applyingAs`, `program`, `program2`, `program3`, `yearLevel`, `last_name`, `first_name`, `middle_name`, `extension`, `nickname`, `height`, `weight`, `lrnNumber`, `nolrnNumber`, `gender`, `pwdMember`, `pwdType`, `pwdId`, `birthOfDate`, `age`, `birthPlace`, `languageDialectSpoken`, `citizenship`, `religion`, `civilStatus`, `tribeEthnicGroup`, `cellphoneNumber`, `emailAddress`, `presentStreet`, `presentBarangay`, `presentZipCode`, `presentRegion`, `presentProvince`, `presentMunicipality`, `presentDswdHouseholdNumber`, `sameAsPresentAddress`, `permanentStreet`, `permanentBarangay`, `permanentZipCode`, `permanentRegion`, `permanentProvince`, `permanentMunicipality`, `permanentDswdHouseholdNumber`, `solo_parent`, `father_deceased`, `father_family_name`, `father_given_name`, `father_middle_name`, `father_ext`, `father_nickname`, `father_education`, `father_education_level`, `father_last_school`, `father_course`, `father_year_graduated`, `father_school_address`, `father_contact`, `father_occupation`, `father_employer`, `father_income`, `father_email`, `mother_deceased`, `mother_family_name`, `mother_given_name`, `mother_middle_name`, `mother_ext`, `mother_nickname`, `mother_education`, `mother_education_level`, `mother_last_school`, `mother_course`, `mother_year_graduated`, `mother_school_address`, `mother_contact`, `mother_occupation`, `mother_employer`, `mother_income`, `mother_email`, `guardian`, `guardian_family_name`, `guardian_given_name`, `guardian_middle_name`, `guardian_ext`, `guardian_nickname`, `guardian_address`, `guardian_contact`, `guardian_email`, `annual_income`, `schoolLevel`, `schoolLastAttended`, `schoolAddress`, `courseProgram`, `honor`, `generalAverage`, `yearGraduated`, `schoolLevel1`, `schoolLastAttended1`, `schoolAddress1`, `courseProgram1`, `honor1`, `generalAverage1`, `yearGraduated1`, `strand`, `cough`, `colds`, `fever`, `asthma`, `faintingSpells`, `heartDisease`, `tuberculosis`, `frequentHeadaches`, `hernia`, `chronicCough`, `headNeckInjury`, `hiv`, `highBloodPressure`, `diabetesMellitus`, `allergies`, `cancer`, `smokingCigarette`, `alcoholDrinking`, `hospitalized`, `hospitalizationDetails`, `medications`, `hadCovid`, `covidDate`, `vaccine1Brand`, `vaccine1Date`, `vaccine2Brand`, `vaccine2Date`, `booster1Brand`, `booster1Date`, `booster2Brand`, `booster2Date`, `chestXray`, `cbc`, `urinalysis`, `otherworkups`, `symptomsToday`, `remarks`, `termsOfAgreement`, `created_at`) VALUES
(11, NULL, 1, NULL, NULL, NULL, '23', NULL, NULL, NULL, 'Gonzalez', 'James', 'John', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'james.gonzalez11@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13'),
(10, NULL, 1, NULL, NULL, NULL, '22', NULL, NULL, NULL, 'Lopez', 'Olivia', 'Marie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'olivia.lopez10@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-25'),
(7, NULL, 0, NULL, NULL, NULL, '44', NULL, NULL, NULL, 'Miller', 'Daniel', 'Jane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'daniel.miller7@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-24'),
(8, NULL, 1, NULL, NULL, NULL, '15', NULL, NULL, NULL, 'Davis', 'Ashley', 'Ely', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ashley.davis8@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-19'),
(9, NULL, 0, NULL, NULL, NULL, '36', NULL, NULL, NULL, 'Martinez', 'Matthew', 'Dawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'matthew.martinez9@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14'),
(3, NULL, 1, NULL, NULL, NULL, '19', NULL, NULL, NULL, 'Williams', 'Michael', 'Lee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'michael.williams3@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-18'),
(4, NULL, 1, NULL, NULL, NULL, '36', NULL, NULL, NULL, 'Brown', 'Sarah', 'Kate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sarah.brown4@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-13'),
(5, NULL, 1, NULL, NULL, NULL, '51', NULL, NULL, NULL, 'Jones', 'David', 'James', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'david.jones5@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-27'),
(6, NULL, 1, NULL, NULL, NULL, '38', NULL, NULL, NULL, 'Garcia', 'Jessica', 'Belle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jessica.garcia6@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `requirements_table`
--

CREATE TABLE `requirements_table` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirements_table`
--

INSERT INTO `requirements_table` (`id`, `description`) VALUES
(1, 'PSA Birth Certificate '),
(2, 'Form 138 (4th Quarter / No failing Grades)'),
(3, 'Certificate of Good Moral Character\n'),
(4, 'Certificate belonging to Graduating Class'),
(5, 'Copy of Vaccine Card (1st and 2nd Dose)');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_uploads`
--

CREATE TABLE `requirement_uploads` (
  `upload_id` int(11) NOT NULL,
  `requirements_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `submitted_documents` int(11) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `original_name` varchar(100) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `document_status` varchar(255) DEFAULT 'On process',
  `registrar_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requirement_uploads`
--

INSERT INTO `requirement_uploads` (`upload_id`, `requirements_id`, `person_id`, `submitted_documents`, `file_path`, `original_name`, `remarks`, `status`, `document_status`, `registrar_status`, `created_at`) VALUES
(86, 1, 5, NULL, '/uploads/1_BirthCertificate_2025.pdf', 'Mark.pdf', NULL, NULL, NULL, NULL, '2025-08-17 04:24:11'),
(98, 1, 204, NULL, '/uploads/2025100005_BirthCertificate_2025.pdf', 'Recommendation-MIS-new-SA-7-2025.pdf', NULL, 1, NULL, NULL, '2025-08-18 15:27:39'),
(105, 1, 305, NULL, '2025100008_BirthCertificate_2025.pdf', 'Certifate_of_registration (1).pdf', NULL, NULL, NULL, NULL, '2025-08-17 04:24:05'),
(106, 2, 305, NULL, '2025100008_Form138_2025.pdf', 'Certifate_of_registration.pdf', NULL, NULL, NULL, NULL, '2025-08-17 04:24:03'),
(107, 4, 305, NULL, '2025100008_CertificateOfGraduatingClass_2025.png', 'MONTANO.png', NULL, NULL, NULL, NULL, '2025-08-17 04:24:02'),
(108, 3, 305, NULL, '2025100008_GoodMoralCharacter_2025.png', 'Untitled design.png', NULL, NULL, NULL, NULL, '2025-08-17 04:24:00'),
(109, 5, 305, NULL, '2025100008_VaccineCard_2025.pdf', 'Certifate_of_registration (1).pdf', NULL, NULL, NULL, NULL, '2025-08-17 04:23:57'),
(110, 2, 204, NULL, '2025100005_Form138_2025.pdf', 'National_Skill_Registration_Program_Jobseeker_Registration_Form.pdf', 'Submit good moral year 2022', 1, 'Program Closed', NULL, '2025-08-17 04:54:24'),
(113, 4, 204, NULL, '2025100005_CertificateOfGraduatingClass_2025.pdf', 'Certifate_of_registration.pdf', 'Conflict of Lastname with birth certificate', 2, 'Program Closed', NULL, '2025-08-17 04:55:36'),
(114, 3, 204, NULL, '2025100005_GoodMoralCharacter_2025.pdf', 'Certifate_of_registration (1).pdf', 'Attachments were blurry', 2, NULL, NULL, '2025-08-17 04:55:38'),
(115, 5, 204, 0, '2025100005_VaccineCard_2025.png', 'Untitled design.png', NULL, 0, 'Program Closed', 0, '2025-08-18 15:09:57'),
(116, 1, 3, NULL, '2025100003_BirthCertificate_2025.pdf', 'Certifate_of_registration.pdf', 'Attachments were blurry', 1, 'Documents Verified & ECAT', 1, '2025-08-17 04:31:23'),
(118, 3, 3, NULL, '2025100003_GoodMoralCharacter_2025.pdf', 'Mark.pdf', NULL, 1, 'Documents Verified & ECAT', 1, '2025-08-17 04:31:23'),
(119, 4, 3, 0, '2025100003_CertificateOfGraduatingClass_2025.pdf', 'MONTAÃ?O, MARK ANTHONY.pdf', NULL, 0, 'Documents Verified & ECAT', 0, '2025-08-17 05:22:05'),
(120, 1, 2, NULL, '2025100002_BirthCertificate_2025.pdf', 'National_Skill_Registration_Program_Jobseeker_Registration_Form.pdf', 'Good Moral is outdated must be 2022', 0, 'On process', NULL, '2025-08-17 04:24:14'),
(121, 1, 2, 0, '2025100002_BirthCertificate_2025.pdf', 'National_Skill_Registration_Program_Jobseeker_Registration_Form.pdf', 'Good Moral is outdated must be 2022', 0, 'On process', 0, '2025-08-18 15:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'applicant',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`user_id`, `person_id`, `email`, `password`, `role`, `status`) VALUES
(1, 1, 'markmontano0626@gmail.com', '$2b$10$5rUrkZBlaGtCEEiUom4Xje.gtHrc1yflvmrvpM1Ta0Dddc9JlMhaW', 'applicant', NULL),
(2, 2, 'emily.johnson2@example.com', '$2b$10$cCHtNx0hwdYy3wQA1I/bo.0a3OkYPK94gPuga6o1JDs6ffeG6h71O', 'applicant', 0),
(3, 3, 'michael.williams3@example.com', '$2b$10$1z0TPyKFo6qtCrVAaA1D4e3qANATLI.pyTLqZinmmT8sF2zMALkDu', 'applicant', NULL),
(4, 4, 'sarah.brown4@example.com', '$2b$10$1fOEIT/3uxjugXPfnEXtgOMMpldF7e8jBI9HpCVbnt275HrQyy2RS', 'applicant', NULL),
(5, 5, 'david.jones5@example.com', '$2b$10$mJIeRNFHTlW4FGtOhKChP.JtsuzX1ugsfb4L4/ZQOXubA3UyJwnQy', 'applicant', NULL),
(6, 6, 'jessica.garcia6@example.com', '$2b$10$8hU2jK2jP9slHyf5QkGcLe4dZ7gK5f6zAjGkPeZ6AcQOx3rO0O2aK', 'applicant', 1),
(7, 7, 'daniel.miller7@example.com', '$2b$10$9fQ5PjNlV6uQEdW8RaDfy.zQ9U9Rp7pJ7dW0YgYPtG7uK8c9W3aXu', 'applicant', 0),
(8, 8, 'ashley.davis8@example.com', '$2b$10$0aHnQpB2sGh9wEdxMqjFWevWkY6PoQHjM7z9Jh7tGd8xXjPpJ6GJ6', 'applicant', NULL),
(9, 9, 'matthew.martinez9@example.com', '$2b$10$7jKhVhF7oRqTtDn7Hs4f9OP2mPq2f3A9p5dXv9bC1uGv7ZqW2NnIu', 'applicant', 1),
(10, 10, 'olivia.lopez10@example.com', '$2b$10$2hMdXqE8zWjTgQn7DkH9JuUyV9fVq4FqX8vHcYjO0zQq1WvJ9jTyK', 'applicant', 0),
(11, 11, 'james.gonzalez11@example.com', '$2b$10$3iNfYrP9aZkUhSm8ElJ0KuVzW0hXr5GrY9bIdZkP1aRp2XwK0kUzL', 'applicant', 1),
(12, 12, 'sophia.wilson12@example.com', '$2b$10$4jOgZsQ0bAlViTn9FmK1LvW1iYjYs6HsZ0cJeAlQ2bSq3YxL1lVaM', 'applicant', NULL),
(13, 13, 'benjamin.anderson13@example.com', '$2b$10$5kPhAtR1cBmWjUo0GnL2MwX2jZkZt7ItA1dKfBmR3cTr4ZyM2mWbN', 'applicant', 0),
(14, 14, 'ava.thomas14@example.com', '$2b$10$6lQiBuS2dCnXkVp1HoM3NxY3kAlAu8JuB2eLgCnS4dUs5AzN3nXcO', 'applicant', 1),
(15, 15, 'ethan.taylor15@example.com', '$2b$10$7mRjCvT3eDoYlWq2IpN4OyZ4lBmBv9KvC3fMhDoT5eVt6BaO4oYdP', 'applicant', 1),
(16, 16, 'isabella.moore16@example.com', '$2b$10$8nSkDwU4fEpZmXr3JqO5PzA5mCnCw0LwD4gNiEpU6fWv7CbP5pZeQ', 'applicant', 0),
(17, 17, 'alexander.jackson17@example.com', '$2b$10$9oTlExV5gFqAnYs4KrP6QaB6nDoDx1MxE5hOjFqV7gXw8DcQ6qAfR', 'applicant', 1),
(18, 18, 'mia.martin18@example.com', '$2b$10$0pUmFyW6hGrBoZt5LsQ7RbC7oEpEy2NyF6iPkGrW8hYx9EdR7rBgS', 'applicant', NULL),
(19, 19, 'william.lee19@example.com', '$2b$10$1qVnGzX7iHsCpAu6MtR8ScD8pFqFz3OzG7jQlHsX9iZy0FeS8sChT', 'applicant', 0),
(20, 20, 'charlotte.perez20@example.com', '$2b$10$2rWoHaY8jItDqBv7NuS9TdE9qGrG04PaH8kRmItY0jA1GeT9tDiUd', 'applicant', 1),
(21, 21, 'henry.thompson21@example.com', '$2b$10$abcdEFGHijklMNOPqrstUVWXyz1234567890abcdEFGHijklMN', 'applicant', NULL),
(22, 22, 'amelia.white22@example.com', '$2b$10$bcdeFGHIjklmNOPQrstuVWXYz2345678901bcdeFGHIjklmNOP', 'applicant', 0),
(23, 23, 'lucas.harris23@example.com', '$2b$10$cdefGHIJklmnOPQRstuVWXYZ012345678902cdefGHIJklmnOP', 'applicant', 1),
(24, 24, 'harper.sanchez24@example.com', '$2b$10$defgHIJKlmnoPQRSuvwXYZAB123456789013defgHIJKlmnoPQ', 'applicant', NULL),
(25, 25, 'mason.clark25@example.com', '$2b$10$efghIJKLmnopQRSTvwxYZABC234567890124efghIJKLmnopQR', 'applicant', 0),
(26, 26, 'ella.ramirez26@example.com', '$2b$10$fghiJKLMnopqRSTUvwxYZABC345678901235fghiJKLMnopqRS', 'applicant', 1),
(27, 27, 'logan.lewis27@example.com', '$2b$10$ghijKLMNopqrSTUVwxyZABCD456789012346ghijKLMNopqrST', 'applicant', NULL),
(28, 28, 'grace.robinson28@example.com', '$2b$10$hijkLMNOpqrsTUVWxyzABCDE567890123457hijkLMNOpqrsTU', 'applicant', 0),
(29, 29, 'elijah.walker29@example.com', '$2b$10$ijklMNOPrstuVWXYzabcDEF678901234568ijklMNOPrstuVW', 'applicant', 1),
(30, 30, 'chloe.young30@example.com', '$2b$10$jklmNOPQstuvWXYZaBcdEFG7890123456789jklmNOPQstuvWX', 'applicant', NULL),
(31, 31, 'aiden.allen31@example.com', '$2b$10$klmnOPQRtuvwXYZAbCdeFGH8901234567890klmnOPQRtuvwXY', 'applicant', 0),
(32, 32, 'lily.king32@example.com', '$2b$10$l mnoPQRSuvwxYZABcDeFGHI9012345678901lmnoPQRSuvwxY', 'applicant', 1),
(33, 33, 'joseph.wright33@example.com', '$2b$10$mnopQRSTvwxyZABCdEfGHIJ012345678902mnopQRSTvwxyZA', 'applicant', NULL),
(34, 34, 'zoe.scott34@example.com', '$2b$10$nopqRSTUwxyaBCDEfGhIJKL123456789013nopqRSTUwxyaBC', 'applicant', 0),
(35, 35, 'samuel.torres35@example.com', '$2b$10$opqrSTUVxyabCDEFgHiJKLM234567890124opqrSTUVxyabCD', 'applicant', 1),
(36, 36, 'aria.nguyen36@example.com', '$2b$10$pqrsTUVWyzabCDEFGhIjKLM345678901235pqrsTUVWyzabCD', 'applicant', NULL),
(37, 37, 'sebastian.hill37@example.com', '$2b$10$qrstUVWXzabcDEFGHiJkLMN456789012346qrstUVWXzabcDE', 'applicant', 0),
(38, 38, 'avery.green38@example.com', '$2b$10$rstuVWXYabcDEFGHIjKlMNO567890123457rstuVWXYabcDEF', 'applicant', 1),
(39, 39, 'jack.adams39@example.com', '$2b$10$stuvWXYZbcdEFGHIJkLmNOP678901234568stuvWXYZbcdEFG', 'applicant', NULL),
(40, 40, 'scarlett.baker40@example.com', '$2b$10$tuvwXYZAbcdeFGHIJKlmNOPQ789012345679tuvwXYZAbcdeF', 'applicant', 0),
(41, 41, 'owen.gonzalez41@example.com', '$2b$10$uvwxYZABcdefGHIJKLmnOPQR890123456780uvwxYZABcdefG', 'applicant', 1),
(42, 42, 'hannah.nelson42@example.com', '$2b$10$vwxyZABCdefgHIJKLMnoPQRS901234567891vwxyZABCdefgH', 'applicant', NULL),
(43, 43, 'wyatt.carter43@example.com', '$2b$10$wxyzABCD efgHIJKLMNopQRST012345678902wxyzABCD efgH', 'applicant', 0),
(44, 44, 'abigail.mitchell44@example.com', '$2b$10$xyzaBCDEfgHIJKLMNO pqRSTU123456789013xyzaBCDEfgHI', 'applicant', 1),
(45, 45, 'luke.perez45@example.com', '$2b$10$yzabCDEFghIJKLMNOPq rSTUV234567890124yzabCDEFghIJ', 'applicant', NULL),
(46, 46, 'madison.roberts46@example.com', '$2b$10$zabcDEFGhIJKLMN OPqrSTUVW345678901235zabcDEFGhIJ', 'applicant', 0),
(47, 47, 'jayden.evans47@example.com', '$2b$10$abcdEFGHIJKLMNO PqrsTUVWX456789012346abcdEFGHIJ', 'applicant', 1),
(48, 48, 'sofia.turner48@example.com', '$2b$10$bcdeFGHIJKLMNO PqrstUVWX Y567890123457bcdeFGHIJK', 'applicant', NULL),
(49, 49, 'gabriel.phillips49@example.com', '$2b$10$cdefGHIJKLMNOPQ RstuVWXY Z678901234568cdefGHIJ', 'applicant', 0),
(50, 50, 'ella.campbell50@example.com', '$2b$10$defgHIJKLMN OPQRS TuvwXYZ 789012345679defgHIJKL', 'applicant', 1),
(51, 51, 'carter.parker51@example.com', '$2b$10$efghIJKLMNO PQRS TuvwxYZA 890123456780efghIJKLM', 'applicant', NULL),
(52, 52, 'victoria.edwards52@example.com', '$2b$10$fghiJKLMNOP QRST UvwxYZAB 901234567891fghiJKLMN', 'applicant', 0),
(53, 53, 'isaac.collins53@example.com', '$2b$10$ghijKLMNOPQ RSTU VwxyZABC 012345678902ghijKLMNO', 'applicant', 1),
(54, 54, 'penelope.stewart54@example.com', '$2b$10$hijkLMNOPQR STUV WxyaBCDE 123456789013hijkLMNOP', 'applicant', NULL),
(55, 55, 'dylan.morris55@example.com', '$2b$10$ijklMNOPQRS TUVW XyabCDEF 234567890124ijklMNOPQ', 'applicant', 0),
(56, 56, 'layla.rogers56@example.com', '$2b$10$jklmNOPQRS TU VWX yabCDEF G345678901235jklmNOPQ', 'applicant', 1),
(57, 57, 'nathan.reed57@example.com', '$2b$10$klmnOPQRS TU VWXY ZabCDEF G456789012346klmnOPQR', 'applicant', NULL),
(58, 58, 'zoey.cook58@example.com', '$2b$10$l mnoPQRS UV WX YZ AbCDEF G567890123457lmnoPQRS', 'applicant', 0),
(59, 59, 'levi.morgan59@example.com', '$2b$10$mnopQRST UV WXY ZaBCDEFG H678901234568mnopQRST', 'applicant', 1),
(60, 60, 'evelyn.bell60@example.com', '$2b$10$nopqRSTU VW XYZa bCDEFGHI 789012345679nopqRSTU', 'applicant', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_numbering_table`
--
ALTER TABLE `applicant_numbering_table`
  ADD PRIMARY KEY (`applicant_number`),
  ADD UNIQUE KEY `person_id` (`person_id`);

--
-- Indexes for table `entrance_exam_schedule`
--
ALTER TABLE `entrance_exam_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `exam_applicants`
--
ALTER TABLE `exam_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_status_table`
--
ALTER TABLE `person_status_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_table`
--
ALTER TABLE `person_table`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `requirements_table`
--
ALTER TABLE `requirements_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement_uploads`
--
ALTER TABLE `requirement_uploads`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `person_id` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entrance_exam_schedule`
--
ALTER TABLE `entrance_exam_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_applicants`
--
ALTER TABLE `exam_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `person_status_table`
--
ALTER TABLE `person_status_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `person_table`
--
ALTER TABLE `person_table`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `requirements_table`
--
ALTER TABLE `requirements_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requirement_uploads`
--
ALTER TABLE `requirement_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
