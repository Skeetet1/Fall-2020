-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freemysqlhosting.net
-- Generation Time: Nov 04, 2020 at 08:04 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9374388`
--

-- --------------------------------------------------------

--
-- Table structure for table `ContactMethods`
--

CREATE TABLE `ContactMethods` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Type` varchar(45) NOT NULL,
  `Value` varchar(45) NOT NULL,
  `IsPrimary` bit(1) NOT NULL DEFAULT b'0',
  `CanSpam` bit(1) NOT NULL DEFAULT b'0',
  `User_id` int(11) NOT NULL,
  `Users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ContactMethods`
--

INSERT INTO `ContactMethods` (`id`, `created_at`, `update_at`, `Type`, `Value`, `IsPrimary`, `CanSpam`, `User_id`, `Users_id`) VALUES
(1, '2020-11-04 02:15:34', '2020-11-04 07:15:34', 'email', 'skeetet1@hawkmail.newpaltz.edu', b'1', b'0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Emojis`
--

CREATE TABLE `Emojis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Code` varchar(2) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Emojis`
--

INSERT INTO `Emojis` (`id`, `created_at`, `update_at`, `Name`, `Description`, `Code`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'red_heart', 'red heart - U+2764', '??', 420);

-- --------------------------------------------------------

--
-- Table structure for table `Followers`
--

CREATE TABLE `Followers` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` int(11) NOT NULL,
  `Follow_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Following`
--

CREATE TABLE `Following` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` int(11) NOT NULL,
  `Following_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Friend_Recommendation`
--

CREATE TABLE `Friend_Recommendation` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` int(11) NOT NULL,
  `Workout_Type` varchar(2048) NOT NULL,
  `Workout_Duration` varchar(2048) NOT NULL,
  `Workout_Skill_Level` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Friend_Requests`
--

CREATE TABLE `Friend_Requests` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Reactions`
--

CREATE TABLE `Reactions` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Emoji` varchar(2) DEFAULT NULL,
  `Workout_id` int(11) NOT NULL,
  `Post_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Types`
--

CREATE TABLE `Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Types`
--

INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '2020-11-04 07:38:58', 'Types', 1),
(2, '0000-00-00 00:00:00', '2020-11-04 07:38:58', 'User Types', 1),
(3, '0000-00-00 00:00:00', '2020-11-04 07:38:59', 'Media Types', 1),
(4, '0000-00-00 00:00:00', '2020-11-04 07:38:59', 'Contact Method Types', 1),
(5, '0000-00-00 00:00:00', '2020-11-04 07:39:00', 'Admin', 2),
(6, '0000-00-00 00:00:00', '2020-11-04 07:39:00', 'User', 2),
(20, '0000-00-00 00:00:00', '2020-11-04 07:38:59', 'Emoji Types', 1),
(21, '0000-00-00 00:00:00', '2020-11-04 07:39:01', 'image/gif', 3),
(22, '0000-00-00 00:00:00', '2020-11-04 07:39:01', 'image/jpeg', 3),
(23, '0000-00-00 00:00:00', '2020-11-04 07:39:02', 'image/pngvideo', 3),
(24, '0000-00-00 00:00:00', '2020-11-04 07:39:02', 'video/webm', 3),
(25, '0000-00-00 00:00:00', '2020-11-04 07:39:02', 'video/ogg', 3),
(26, '0000-00-00 00:00:00', '2020-11-04 07:39:03', 'Email', 4),
(27, '0000-00-00 00:00:00', '2020-11-04 07:39:03', 'Cell Phone', 4),
(420, '0000-00-00 00:00:00', '2020-11-04 07:39:04', 'Reactions', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `created_at`, `update_at`, `FirstName`, `LastName`, `DOB`, `Password`) VALUES
(1, '2020-11-04 02:12:46', '2020-11-04 07:12:46', 'Tevin', 'Skeete', NULL, NULL),
(4, '2020-11-04 14:50:54', '2020-11-04 19:50:54', 'Tevin', 'Skeete', '0000-00-00 00:00:00', 'Typheon'),
(5, '2020-11-04 14:53:05', '2020-11-04 19:53:05', 'Ayman', 'Ali', '2020-11-01 00:00:00', 'Ali1982');

-- --------------------------------------------------------

--
-- Table structure for table `Workouts`
--

CREATE TABLE `Workouts` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Workout_Day` varchar(2048) NOT NULL,
  `Workout_Location` varchar(2048) NOT NULL,
  `Workout_Type` varchar(2048) NOT NULL,
  `Workout_Duration` varchar(2048) NOT NULL,
  `Workout_Intensity_Level` varchar(2048) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Workouts`
--

INSERT INTO `Workouts` (`id`, `created_at`, `update_at`, `Workout_Day`, `Workout_Location`, `Workout_Type`, `Workout_Duration`, `Workout_Intensity_Level`, `Owner_id`) VALUES
(1, '2020-11-04 14:56:42', '2020-11-04 19:56:42', 'Monday ', 'Skeete\'s Fitness Queens NY', 'Lower Body', '20 mins', 'High Intensity ', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ContactMethods`
--
ALTER TABLE `ContactMethods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ContactMethods_Users_idx` (`Users_id`);

--
-- Indexes for table `Emojis`
--
ALTER TABLE `Emojis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `fk_Emojis_Types1_idx` (`Type_id`);

--
-- Indexes for table `Followers`
--
ALTER TABLE `Followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Following`
--
ALTER TABLE `Following`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Friend_Recommendation`
--
ALTER TABLE `Friend_Recommendation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Friend_Requests`
--
ALTER TABLE `Friend_Requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Reactions`
--
ALTER TABLE `Reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Comments_Posts1_idx` (`Post_id`),
  ADD KEY `fk_Comments_Users1_idx` (`Owner_id`);

--
-- Indexes for table `Types`
--
ALTER TABLE `Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`),
  ADD KEY `fk_Types_Types1_idx` (`Type_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Workouts`
--
ALTER TABLE `Workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Posts_Users1_idx` (`Owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ContactMethods`
--
ALTER TABLE `ContactMethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Emojis`
--
ALTER TABLE `Emojis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Followers`
--
ALTER TABLE `Followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Following`
--
ALTER TABLE `Following`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Friend_Recommendation`
--
ALTER TABLE `Friend_Recommendation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Friend_Requests`
--
ALTER TABLE `Friend_Requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Reactions`
--
ALTER TABLE `Reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Types`
--
ALTER TABLE `Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Workouts`
--
ALTER TABLE `Workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ContactMethods`
--
ALTER TABLE `ContactMethods`
  ADD CONSTRAINT `fk_ContactMethods_Users` FOREIGN KEY (`Users_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Emojis`
--
ALTER TABLE `Emojis`
  ADD CONSTRAINT `fk_Emojis_Types1` FOREIGN KEY (`Type_id`) REFERENCES `Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Reactions`
--
ALTER TABLE `Reactions`
  ADD CONSTRAINT `fk_Comments_Posts10` FOREIGN KEY (`Post_id`) REFERENCES `Workouts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Comments_Users10` FOREIGN KEY (`Owner_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Types`
--
ALTER TABLE `Types`
  ADD CONSTRAINT `fk_Types_Types1` FOREIGN KEY (`Type_id`) REFERENCES `Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Workouts`
--
ALTER TABLE `Workouts`
  ADD CONSTRAINT `fk_Posts_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
