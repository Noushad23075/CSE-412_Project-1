-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 12:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiusermusic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file` varchar(1024) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `title` varchar(100) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `popularity` int(11) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `user_id`, `file`, `image`, `title`, `views`, `downloads`, `popularity`, `date`) VALUES
(1, 2, 'uploads/04.Lullaby Ft Red Bandanna.mp3', 'uploads/0213AfricanAmericanHealth_SC.png', 'Lullaby', 11, 1, 12, '2023-12-15 08:00:24'),
(3, 1, 'uploads/02.Last forever Ft Xukari.mp3', 'uploads/3d-illustration-lovely-girl-holding-icecream-balloon-rendering_1150-53676.png', 'Last forever', 6, 2, 0, '2023-12-16 12:27:16'),
(4, 1, 'uploads/08.In the rain.mp3', 'uploads/amifaku.jpg', 'In the rain', 0, 0, 0, '2023-12-17 16:30:42'),
(5, 3, 'uploads/07.In my sleep.mp3', 'uploads/06-Simull-from-the-top.jpg', 'In my sleep', 0, 0, 0, '2023-12-20 14:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(6) NOT NULL,
  `date` datetime NOT NULL,
  `image` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `role`, `date`, `image`) VALUES
(1, 'Eathorne', 'Eathorne', 'Jones', 'email@email.com', '$2y$10$bKktvsB.NAj3yFR.BYLRaOVFWwPSHnRrYruUhoRq5BcaP77LbpPO2', 'admin', '2023-12-18 07:53:01', 'uploads/Akon-net-worth-2020.jpg'),
(2, 'John Tha Killer', 'John', 'Batiste', 'john@email.com', '$2y$10$VXDwXR.12zDNlF0Xy8eiF.uGoq58U5uP9VM0Yn9YhTiKBj29nhwFO', 'user', '2023-12-20 16:22:23', 'uploads/791a047636136702e25ba1096b11cfe7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `title` (`title`),
  ADD KEY `views` (`views`),
  ADD KEY `popularity` (`popularity`),
  ADD KEY `downloads` (`downloads`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
