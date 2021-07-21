-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 06:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codoacodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `carrera` varchar(20) NOT NULL,
  `anyo` smallint(6) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `tipo`, `carrera`, `anyo`, `telefono`, `email`) VALUES
(1, 'Pedro', 'Perez', 'alumno', 'musica', 4, '11111111', 'pedro.perez@email.com'),
(2, 'Mario', 'garcia', 'profesor', 'musica', 3, '222222222', 'martin.garcia@universidad.com'),
(7, 'martina', 'perez', 'alumno', 'economia', 5, '2234234234', 'martin@email.com'),
(9, 'Maria', 'Martinez', 'alumno', 'arquitectura', 1, '11111111', 'maria@email.com'),
(10, 'jose', 'Anchorena', 'alumno', 'psicologia', 1, '2234234234', 'jose@anchorena.com');

-- --------------------------------------------------------

--
-- Table structure for table `tablaejercicio1`
--

CREATE TABLE `tablaejercicio1` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `edad` tinyint(2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `provincia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablaejercicio1`
--

INSERT INTO `tablaejercicio1` (`id`, `nombre`, `apellido`, `edad`, `fecha`, `provincia`) VALUES
(1, 'Agustin', 'Perez', 23, '2021-06-17 23:07:53', 'Cordoba'),
(2, 'Juan', 'Gomez', 38, '2021-06-17 23:07:53', 'Catamarca'),
(3, 'Maria', 'Gonzalez', 65, '2021-06-17 23:10:38', 'Santa Fe'),
(4, 'Juana', 'Lopez', 78, '2021-06-17 23:10:38', 'Chaco'),
(5, 'Pedro', 'Martinez', 54, '2021-06-17 23:10:55', 'Chubut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablaejercicio1`
--
ALTER TABLE `tablaejercicio1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tablaejercicio1`
--
ALTER TABLE `tablaejercicio1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
