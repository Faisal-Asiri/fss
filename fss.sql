-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2022 at 02:43 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fss`
--

-- --------------------------------------------------------

--
-- Table structure for table `cap_documents`
--

CREATE TABLE `cap_documents` (
  `doc_id` int(11) NOT NULL,
  `cap_id` int(11) NOT NULL,
  `doc_type` varchar(11) NOT NULL,
  `doc_DOE` date NOT NULL,
  `doc_date` date NOT NULL,
  `doc_status` int(11) NOT NULL,
  `doc_date_of_add` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cap_truck`
--

CREATE TABLE `cap_truck` (
  `truck_id` int(11) NOT NULL,
  `cap_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `truck_brand` varchar(255) NOT NULL,
  `truck_model` varchar(255) NOT NULL,
  `truck_date` date NOT NULL,
  `truck_plate` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `deal_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `deal_cost` varchar(255) NOT NULL,
  `deal_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_chat`
--

CREATE TABLE `deal_chat` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dealid` int(11) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `offer_desc` varchar(255) NOT NULL,
  `offer_date` date NOT NULL,
  `offer_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ord_title` varchar(255) NOT NULL,
  `ord_description` varchar(255) NOT NULL,
  `ord_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ord_location`
--

CREATE TABLE `ord_location` (
  `loc_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `pick_from` varchar(255) NOT NULL,
  `deliver_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user-info`
--

CREATE TABLE `user-info` (
  `info-id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_nat_id` varchar(255) NOT NULL,
  `user_DOP` date NOT NULL,
  `user_nat` varchar(255) NOT NULL,
  `info_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(45) NOT NULL,
  `date-of-reg` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `adr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adr_country` varchar(255) NOT NULL,
  `adr_state` varchar(255) NOT NULL,
  `adr_city` varchar(255) NOT NULL,
  `adr_zip` int(11) NOT NULL,
  `adr_description` varchar(255) NOT NULL,
  `adr_prime` int(11) NOT NULL,
  `adr_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cap`
--

CREATE TABLE `user_cap` (
  `cap_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cap_documents`
--
ALTER TABLE `cap_documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `cap_truck`
--
ALTER TABLE `cap_truck`
  ADD PRIMARY KEY (`truck_id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`deal_id`);

--
-- Indexes for table `deal_chat`
--
ALTER TABLE `deal_chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `ord_location`
--
ALTER TABLE `ord_location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `user-info`
--
ALTER TABLE `user-info`
  ADD PRIMARY KEY (`info-id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`,`email`,`phone`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`adr_id`);

--
-- Indexes for table `user_cap`
--
ALTER TABLE `user_cap`
  ADD PRIMARY KEY (`cap_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cap_documents`
--
ALTER TABLE `cap_documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cap_truck`
--
ALTER TABLE `cap_truck`
  MODIFY `truck_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `deal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_chat`
--
ALTER TABLE `deal_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ord_location`
--
ALTER TABLE `ord_location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user-info`
--
ALTER TABLE `user-info`
  MODIFY `info-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `adr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_cap`
--
ALTER TABLE `user_cap`
  MODIFY `cap_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
