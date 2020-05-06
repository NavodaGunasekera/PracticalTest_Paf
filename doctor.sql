-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 10:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `id` int(10) NOT NULL,
  `age` int(10) NOT NULL,
  `contactNo` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `medicleReport` varchar(500) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addpatient`
--

INSERT INTO `addpatient` (`id`, `age`, `contactNo`, `name`, `gender`, `email`, `address`, `medicleReport`, `time`, `date`) VALUES
(1, 68, 452227854, 'Wimala', 'Female', 'wimala@gmail.com', 'Wewalwatta, Ratnapura.', 'High blood sugar', '17:05:00', '2020-05-06'),
(2, 92, 452229608, 'Kamala', 'Female', 'kamala@gmail.com', 'Durekkanda, Ratnapura.', 'diabetes', '17:20:00', '2020-05-06'),
(3, 55, 772545962, 'Jayaweera', 'Male', 'jayaweera@gmail.com', 'Malwala, Ratnapura.', 'Muscle pain in leg', '17:30:00', '2020-05-06'),
(4, 91, 714589627, 'Gunapala', 'Male', 'gunapala@gmail.com', 'Malwala, Ratnapura.', 'diabetese', '17:40:00', '2020-05-06'),
(5, 65, 777896451, 'Namali', 'Female', 'namali@gmail.com', 'Mudduwa,Ratnapura', 'eye blood pressure is high ', '18:00:14', '2020-05-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpatient`
--
ALTER TABLE `addpatient`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
