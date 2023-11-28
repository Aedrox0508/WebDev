-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 03:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbschedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblsyllabus`
--

CREATE TABLE `tblsyllabus` (
  `syllabus_id` int(11) NOT NULL,
  `syllabus_code` varchar(50) DEFAULT NULL,
  `syllabus_author` varchar(100) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsyllabus`
--

INSERT INTO `tblsyllabus` (`syllabus_id`, `syllabus_code`, `syllabus_author`, `subject_id`) VALUES
(1, 'CS123', 'ako', 7),
(2, 'CS123', 'Geo', 8),
(3, 'CC105', 'Kent', 9),
(4, '552', 'Rex', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  ADD PRIMARY KEY (`syllabus_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblsyllabus`
--
ALTER TABLE `tblsyllabus`
  ADD CONSTRAINT `tblsyllabus_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `tblsubjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
