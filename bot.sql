-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 06:11 PM
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
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'hi| hello| hey| hy', 'Hello there, welcome'),
(2, 'what is your name| what is your name?', 'My name is chatbot'),
(3, 'Where are you from| where are you from?', 'I\'m from Nigeria'),
(4, 'bye| by| good bye', 'Ok bye. See you soon!'),
(5, 'how old are you| how old are you?|\r\nwhat is your age| what is your age?', 'I\'m yesterday, today and forever years old.'),
(6, 'what language do you speak| what language do you speak?|\r\nwhat languages do you speak| what languages do you speak?', 'I speak English and maybe a little bit of alien language, oops just kidding lol!'),
(7, 'what is today| what is today?|\r\nwhat is today\'s date| what is today\'s date?', 'Hey there! what you see on your calendar is also fine by me? Cheers!'),
(8, 'What are you up to| What are you up to?|\r\nwhat are you doing| what are you doing?', 'Nothing much, just chilling!'),
(9, 'what\'s your favorite food| what\'s your favorite food?|\r\nwhat is your favorite food| what is your favorite food?', 'Well I like to have HTML & CSS for breakfast, JavaScript for lunch and then PHP for dinner.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
