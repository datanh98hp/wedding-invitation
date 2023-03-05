-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 05:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding_invitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_refer_form`
--

CREATE TABLE `contact_refer_form` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='table for form contact information';

--
-- Dumping data for table `contact_refer_form`
--

INSERT INTO `contact_refer_form` (`id`, `email`, `name`, `phone`, `message`, `time_stamp`) VALUES
(1, 'datanh98hp@gmail.com', 'datanh', '0869029018', 'Test form contact data', '2023-03-03 14:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `couple_infor`
--

CREATE TABLE `couple_infor` (
  `id` int(11) NOT NULL,
  `husband_name` varchar(50) NOT NULL,
  `husband_info` text DEFAULT NULL,
  `wife_name` varchar(50) DEFAULT NULL,
  `wife_info` text NOT NULL,
  `social_link_husband` text DEFAULT NULL,
  `social_link_wife` text DEFAULT NULL,
  `own` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `couple_infor`
--

INSERT INTO `couple_infor` (`id`, `husband_name`, `husband_info`, `wife_name`, `wife_info`, `social_link_husband`, `social_link_wife`, `own`) VALUES
(1, 'A', 'sfsdg sdf sdf fdbgrnhkn jyj', 'maryin', 'haer ery rty sdfgn jlu6yjrt', NULL, NULL, '0869029018'),
(2, 'John', 'sf oweru 90wur f90 jf', 'Maeyin', 'sà wre gẻg', 'ă rwer wegfwef gêgfe', 'gertw trưefrw', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `id` bigint(20) NOT NULL,
  `lyric_greeting` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Hi there, You\'re invited We\'re getting married.',
  `time_event` varchar(50) NOT NULL,
  `info_name` varchar(50) NOT NULL,
  `description_1` varchar(255) DEFAULT NULL,
  `description_2` varchar(255) DEFAULT NULL,
  `id_couple` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groomsmen_bridesmaid`
--

CREATE TABLE `groomsmen_bridesmaid` (
  `id` int(11) NOT NULL,
  `isGroomsmen` tinyint(1) DEFAULT NULL,
  `isBridesmaid` tinyint(1) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `relation_with` varchar(50) NOT NULL COMMENT 'Quan hệ với chú rể / cô dâu Em/bạn....',
  `infor` int(11) NOT NULL,
  `id_couple` int(11) NOT NULL COMMENT 'khoa phu voi ban couple_info',
  `sex` varchar(3) NOT NULL COMMENT 'nam/nữ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_gallery`
--

CREATE TABLE `img_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `url` int(255) DEFAULT NULL,
  `id_couple` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0 COMMENT 'sort by rank to top'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infor_provider_services`
--

CREATE TABLE `infor_provider_services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `social_links` varchar(255) NOT NULL,
  `despcription` text DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infor_provider_services`
--

INSERT INTO `infor_provider_services` (`id`, `name`, `address`, `email`, `phone`, `social_links`, `despcription`, `status`, `rank`) VALUES
(1, 'Trung tâm hỗ trợ', 'Quốc Tuấn - An Lão - Hải Phòng', 'dat198hp@gmail.com', '0869029018', 'https://www.facebook.com/dovandat43/,', 'test desciption', 'active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_line_event`
--

CREATE TABLE `time_line_event` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'name''s timeline',
  `address` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_couple` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_refer_form`
--
ALTER TABLE `contact_refer_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couple_infor`
--
ALTER TABLE `couple_infor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refer_to_couple_tbl` (`id_couple`) USING BTREE;

--
-- Indexes for table `groomsmen_bridesmaid`
--
ALTER TABLE `groomsmen_bridesmaid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refer_to_id_couple` (`id_couple`) USING BTREE;

--
-- Indexes for table `img_gallery`
--
ALTER TABLE `img_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refer_to_couple_tbl` (`id_couple`);

--
-- Indexes for table `infor_provider_services`
--
ALTER TABLE `infor_provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_line_event`
--
ALTER TABLE `time_line_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Refer_couple_info_table` (`id_couple`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_refer_form`
--
ALTER TABLE `contact_refer_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couple_infor`
--
ALTER TABLE `couple_infor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groomsmen_bridesmaid`
--
ALTER TABLE `groomsmen_bridesmaid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_gallery`
--
ALTER TABLE `img_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infor_provider_services`
--
ALTER TABLE `infor_provider_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_line_event`
--
ALTER TABLE `time_line_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_info`
--
ALTER TABLE `event_info`
  ADD CONSTRAINT `event_info_ibfk_1` FOREIGN KEY (`id_couple`) REFERENCES `couple_infor` (`id`);

--
-- Constraints for table `groomsmen_bridesmaid`
--
ALTER TABLE `groomsmen_bridesmaid`
  ADD CONSTRAINT `groomsmen_bridesmaid_ibfk_1` FOREIGN KEY (`id_couple`) REFERENCES `couple_infor` (`id`);

--
-- Constraints for table `img_gallery`
--
ALTER TABLE `img_gallery`
  ADD CONSTRAINT `img_gallery_ibfk_1` FOREIGN KEY (`id_couple`) REFERENCES `couple_infor` (`id`);

--
-- Constraints for table `time_line_event`
--
ALTER TABLE `time_line_event`
  ADD CONSTRAINT `time_line_event_ibfk_1` FOREIGN KEY (`id_couple`) REFERENCES `couple_infor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
