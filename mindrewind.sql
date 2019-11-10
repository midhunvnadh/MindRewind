-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2019 at 03:18 PM
-- Server version: 10.4.8-MariaDB
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
-- Database: `mindrewind`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `uq_id` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `autoi` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (autoi) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `autoi_res` int(11) NOT NULL,
  `res_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`autoi_res`, `res_type`, `value`, `timesmp`) VALUES
(1, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(2, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(3, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(4, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(5, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(6, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(7, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(8, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(9, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(10, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(11, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(12, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(13, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(14, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(15, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(16, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(17, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(18, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(19, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(20, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(21, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(22, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(23, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(24, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(25, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(26, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(27, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(28, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(29, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(30, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(31, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(32, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(33, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(34, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(35, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(36, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(37, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(38, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(39, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(40, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(41, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(42, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(43, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(44, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(45, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(46, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(47, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(48, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(49, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(50, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(51, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(52, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(53, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(54, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(55, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(56, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(57, 'diary', '{ \"starred\": \"yes\", \"id\": \"0\", \"title\": \"Eloquent JavaScript, Second Edition\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(58, 'diary', '{ \"starred\": \"no\", \"id\": \"1\", \"title\": \"Learning JavaScript Design Patterns\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(59, 'diary', '{ \"starred\": \"yes\", \"id\": \"2\", \"title\": \"Speaking JavaScript\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(60, 'diary', '{ \"starred\": \"no\", \"id\": \"3\", \"title\": \"Programming JavaScript Applications\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(61, 'diary', '{ \"starred\": \"yes\", \"id\": \"4\", \"title\": \"Understanding ECMAScript 6\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(62, 'diary', '{ \"starred\": \"no\", \"id\": \"5\", \"title\": \"You Dont Know JS\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:22'),
(63, 'diary', '{ \"starred\": \"yes\", \"id\": \"6\", \"title\": \"Git Pocket Guide\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23'),
(64, 'diary', '{ \"starred\": \"no\", \"id\": \"7\", \"title\": \"Designing Evolvable Web APIs with ASP.NET\", \"date\": \"Wednesday,October 27\" }', '2019-11-03 10:27:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`autoi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `autoi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `autoi_res` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
