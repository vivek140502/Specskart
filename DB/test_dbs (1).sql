-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 06:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `image`) VALUES
(4, 'Transparent Full Rim Wayfarer Eyeglasses', 'product01', 3000.00, 'product-images/product01.jpg'),
(5, 'Matte Black Gunmetal Full Rim Round Eyeglasses', 'product02', 2500.00, 'product-images/product02.jpg'),
(6, 'Aqualens 24 H Monthly Disposable (6 Lens Per Box)', 'product03', 999.00, 'product-images/product03.jpg'),
(7, 'Full Rim Rectangle Eyeglasses', 'product04', 5500.00, 'product-images/product04.jpg'),
(8, 'Silver Brown Full Rim Square Sunglasses', 'product05', 1600.00, 'product-images/product05.jpg'),
(9, 'Blue Block Phone & Computer Glasses:', 'product06', 699.00, 'product-images/product06.jpg'),
(10, 'Bausch & Lomb Purevision 2 Astigmatism (6 Lens Per Box)', 'product07', 2500.00, 'product-images/product07.jpg'),
(11, ' Pink Full Rim Cat Eye Kids (5-8 Yrs) Hooper HP D10007M-C2', 'product08', 1200.00, 'product-images/product08.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `pass_word` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `pass_word`, `name`) VALUES
(1, 'vvj', 'v1405', 'vivek'),
(2, 'uc', 'uc123', 'ujjwal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
