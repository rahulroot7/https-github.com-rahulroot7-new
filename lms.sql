-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 11:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee_record`
--

CREATE TABLE `fee_record` (
  `sid` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee_record`
--

INSERT INTO `fee_record` (`sid`, `subject_id`, `teacher_name`, `student_name`, `message`, `fee`) VALUES
(1, 'php', 'Amit', 'Rahul', 'hello', '4000'),
(2, 'html', 'raju', 'Rahul', 'Discount', '2500'),
(3, 'html', 'raju', 'Rahul', '', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `Firstname`, `Lastname`, `email`, `pass`, `subject`) VALUES
(1, 'Rahul', 'Chaurasia', 'root@gmail.com', '29150bb2319c182c944841c74d2f8d75', 'php,asp,html,css'),
(2, 'Parkash', 'Bai', 'bai@gmail.com', '29150bb2319c182c944841c74d2f8d75', 'php,asp,html');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tFirstname` varchar(255) NOT NULL,
  `tLastname` varchar(255) NOT NULL,
  `temail` varchar(255) NOT NULL,
  `tpass` varchar(255) NOT NULL,
  `tsubject` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tFirstname`, `tLastname`, `temail`, `tpass`, `tsubject`, `fee`) VALUES
(1, 'Amit', 'Chaurasia', 'teacher@gmail.com', '29150bb2319c182c944841c74d2f8d75', 'php', '4000'),
(2, 'raju', 'Chaurasia', 'raju@gmail.com', '29150bb2319c182c944841c74d2f8d75', 'html', '2500'),
(3, 'Chandan', 'babu', 'chan@gmail.com', '29150bb2319c182c944841c74d2f8d75', 'css', '255');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee_record`
--
ALTER TABLE `fee_record`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee_record`
--
ALTER TABLE `fee_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
