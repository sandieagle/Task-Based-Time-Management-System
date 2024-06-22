-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 07:42 PM
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
-- Database: `employeems`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(3, 'shehandjayasundara@gmail.com', 'Shehanddr');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Management'),
(3, 'Staff'),
(4, 'Science'),
(5, 'Art'),
(6, 'Cleaning');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salary` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `image` varchar(60) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `password`, `salary`, `address`, `image`, `category_id`) VALUES
(16, 'Nuwan', 'yasundara@gmail.com', '$2b$10$o1/i0i5UTkDPgkBdSf5gLOsZmtfRd4CVvCo8wBGr.MOAjdLmw9OT.', 600, 'Mirigama', 'image_1713529899518.jpg', 3),
(17, 'show1', 'shehandjayasundara@gmail.com', '$2b$10$Mr/84LlNiLtwd0/rEwSkWuhuTeD47OrQ9UoFyccCceq8b5u86msIm', 400, 'Colombo', 'image_1713530963802.jpg', 2),
(19, 'Shanaka', 'Shanakajayasundara@gmail.com', '$2b$10$35dhMXCW6u8VAtXa.1rkRunOBwh.Ay8EZOcM0jCGZ.1n.kb7BLEHe', 500, 'colombo', 'image_1713551372997.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `dueDate` text DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `priority`, `dueDate`, `completed`, `created_at`, `updated_at`, `completed_at`) VALUES
(1, 'Task 1', 'Description for Task 1', 'High', '2024-01-05', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(2, 'Task 2', 'Description for Task 2', 'Medium', '2024-01-06', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(3, 'Task 3', 'Description for Task 3', 'Low', '2024-01-07', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(4, 'Task 4', 'Description for Task 4', 'High', '2024-01-08', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(5, 'Task 5', 'Description for Task 5', 'Medium', '2024-01-09', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(6, 'Task 6', 'Description for Task 6', 'Low', '2024-01-10', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(7, 'Task 7', 'Description for Task 7', 'High', '2024-01-11', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL),
(8, 'Task 8', 'Description for Task 8', 'Medium', '2024-01-12', 0, '2024-04-19 08:41:29', '2024-04-19 08:41:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
