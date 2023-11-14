-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 04:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eras_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_registrar`
--

CREATE TABLE `assigned_registrar` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_registrar`
--

INSERT INTO `assigned_registrar` (`id`, `event_id`, `user_id`) VALUES
(6, 1, 2),
(7, 1, 3),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Awaiting/Absent=1=Present',
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`id`, `event_id`, `firstname`, `lastname`, `middlename`, `contact`, `gender`, `email`, `address`, `status`, `date_created`) VALUES
(2, 1, 'Beka', 'Wirtu', 'Legesse', '+251946391774', 'Male', 'bekalegesse9@gmail.com', 'Alem Bank Square', 0, 2147483647),
(3, 2, 'Anteneh', 'Lema', 'Teshome', '+251946391774', 'Male', 'antenehteshome@gmail.com', 'Addis', 0, 2147483647),
(4, 3, 'Beka', 'Wirtu', 'Legesse', '0946391774', 'Male', 'bekalegesse9@gmail.com', 'Addis\r\nAddis Ababa', 2, 2147483647),
(5, 3, 'Anteneh', 'Lema', 'Teshome', '0946391774', 'Male', 'antenehteshome@gmail.com', 'Addis', 2, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `event_datetime` datetime NOT NULL,
  `event` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `venue` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Pending, 1=Open,2=Done',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_datetime`, `event`, `description`, `venue`, `status`, `date_created`) VALUES
(1, '2023-11-01 08:00:00', 'Sample Only', '								<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae nunc eros. Etiam porttitor lacinia velit a fringilla. Vivamus molestie imperdiet nulla, quis varius ante finibus sed. In sit amet ex iaculis, vulputate diam laoreet, pulvinar velit. Donec accumsan risus vitae sapien vehicula, eget blandit nisi faucibus. Etiam placerat accumsan est, sit amet tempus erat vulputate ut. Suspendisse fermentum consectetur odio non auctor. Mauris sit amet imperdiet libero. Phasellus tempor, turpis vitae interdum blandit, nulla sem consectetur metus, in dictum est diam sed mi. Proin et vulputate neque, lacinia lacinia elit. Etiam elementum nunc nibh, gravida malesuada nisi varius nec. Integer at odio eu augue gravida vestibulum sed a risus. Cras volutpat ante sit amet vehicula convallis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Mauris eget metus sit amet ante facilisis accumsan. Suspendisse nunc quam, egestas at lorem quis, pretium fringilla elit. Ut nec elit urna. Etiam neque ante, semper nec turpis at, aliquet condimentum lectus. Etiam id nibh at est molestie porta. In non scelerisque massa. Cras bibendum venenatis est et mattis. Donec ante diam, mollis quis lectus eget, bibendum interdum est.</p>																						', 'Sample Venue', 2, '2020-11-13 10:04:10'),
(2, '2023-11-02 12:00:00', 'Event 2', '								<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae nunc eros. Etiam porttitor lacinia velit a fringilla. Vivamus molestie imperdiet nulla, quis varius ante finibus sed. In sit amet ex iaculis, vulputate diam laoreet, pulvinar velit. Donec accumsan risus vitae sapien vehicula, eget blandit nisi faucibus. Etiam placerat accumsan est, sit amet tempus erat vulputate ut. Suspendisse fermentum consectetur odio non auctor. Mauris sit amet imperdiet libero. Phasellus tempor, turpis vitae interdum blandit, nulla sem consectetur metus, in dictum est diam sed mi. Proin et vulputate neque, lacinia lacinia elit. Etiam elementum nunc nibh, gravida malesuada nisi varius nec. Integer at odio eu augue gravida vestibulum sed a risus. Cras volutpat ante sit amet vehicula convallis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Mauris eget metus sit amet ante facilisis accumsan. Suspendisse nunc quam, egestas at lorem quis, pretium fringilla elit. Ut nec elit urna. Etiam neque ante, semper nec turpis at, aliquet condimentum lectus. Etiam id nibh at est molestie porta. In non scelerisque massa. Cras bibendum venenatis est et mattis. Donec ante diam, mollis quis lectus eget, bibendum interdum est.</p>																						', 'Venue 2', 0, '2020-11-13 13:02:03'),
(3, '2023-10-31 10:06:00', 'test', '															', 'test', 0, '2023-10-31 10:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(2, 'Natnael', 'Omar', 'Tamru', '+251946391774', 'Addis\r\nAddis Ababa', 'natnaeltamru@gmail.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605246720_avatar.jpg', '2020-11-13 13:40:15'),
(3, 'Anteneh', 'Lema', 'Teshome', '+251946391774', 'Addis Ababa', 'antenehteshome@gmail.com', 'd40242fb23c45206fadee4e2418f274f', 2, '1605249300_no-image-available.png', '2020-11-13 14:35:06'),
(4, 'Beka', 'Wirtu', 'Legesse', '0946391774', 'Alem Bank Square', 'bekalegesse9@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, '', '2023-10-31 09:59:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_registrar`
--
ALTER TABLE `assigned_registrar`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
