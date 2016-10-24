-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Out-2016 às 13:57
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulht_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` text NOT NULL,
  `height` text NOT NULL,
  `weight` text NOT NULL,
  `image_url` text NOT NULL,
  `club` text NOT NULL,
  `club_image_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `players`
--

INSERT INTO `players` (`player_id`, `name`, `age`, `height`, `weight`, `image_url`, `club`, `club_image_url`) VALUES
(1, 'Cristiano Ronaldo Dos Santos Aveiro', '31', '185', '80', 'http://localhost:8080/images/cristiano_ronaldo.jpg', 'Real Madrid', 'http://localhost:8080/images/real_madrid.jpg'),
(2, 'Lionel Andres Messi Cuccitini', '29', '170', '72', 'http://localhost:8080/images/lionel_messi.jpg', 'Barcelona', 'http://localhost:8080/images/barcelona.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
