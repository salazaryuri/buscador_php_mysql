-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 05:55 AM
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
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `direccion`, `ciudad`, `pais`, `telefono`, `codigo_postal`, `precio`, `tipo`, `foto`) VALUES
(1, 'Avenida Reforma 123', 'Guatemala City', 'Guatemala', '50212345678', '01001', 55000, 'Casa', 'img01'),
(2, 'Zona 10, Calle F', 'Guatemala City', 'Guatemala', '50298765432', '01010', 75000, 'Apartamento', 'img02'),
(3, 'Boulevard Los Próceres', 'Guatemala City', 'Guatemala', '50255512345', '01002', 65000, 'Casa', 'img03'),
(4, 'Calle Martí 45', 'Guatemala City', 'Guatemala', '50233334444', '01003', 80000, 'Casa', 'img04'),
(5, 'George Street 101', 'Belize City', 'Belize', '50111122345', '00101', 50000, 'Casa', 'img05'),
(6, 'Princess Margaret Dr 202', 'Belize City', 'Belize', '50155566778', '00102', 40000, 'Apartamento', 'img06'),
(7, 'Albert Street 303', 'Belize City', 'Belize', '50122233445', '00103', 65000, 'Casa', 'img07'),
(8, 'Barracks Road 404', 'Belize City', 'Belize', '50199988877', '00104', 70000, 'Condominio', 'img08'),
(9, 'Zona Rosa 12', 'San Salvador', 'El Salvador', '50311112222', '11001', 60000, 'Casa', 'img09'),
(10, 'Colonia Escalón 45', 'San Salvador', 'El Salvador', '50333334444', '11002', 90000, 'Casa', 'img10'),
(11, 'Boulevard Constitución 78', 'San Salvador', 'El Salvador', '50355556666', '11003', 65000, 'Apartamento', 'img11'),
(12, 'Colonia San Benito 90', 'San Salvador', 'El Salvador', '50377778888', '11004', 75000, 'Condominio', 'img12'),
(13, 'Avenida Paz 33', 'Tegucigalpa', 'Honduras', '50411112222', '22001', 55000, 'Casa', 'img13'),
(14, 'Colonia Miraflores 78', 'Tegucigalpa', 'Honduras', '50433334444', '22002', 95000, 'Casa', 'img14'),
(15, 'Boulevard Suyapa 123', 'Tegucigalpa', 'Honduras', '50455556666', '22003', 70000, 'Apartamento', 'img15'),
(16, 'Residencial El Hatillo 89', 'Tegucigalpa', 'Honduras', '50477778888', '22004', 85000, 'Condominio', 'img16'),
(17, 'Colonial Los Robles', 'Managua', 'Nicaragua', '50511112222', '44001', 60000, 'Casa', 'img17'),
(18, 'Villa Fontana 45', 'Managua', 'Nicaragua', '50533334444', '44002', 50000, 'Apartamento', 'img18'),
(19, 'Altamira 78', 'Managua', 'Nicaragua', '50555556666', '44003', 75000, 'Casa', 'img19'),
(20, 'Villa Reconciliación 90', 'Managua', 'Nicaragua', '50577778888', '44004', 70000, 'Condominio', 'img20'),
(21, 'Barrio Escalante 12', 'San José', 'Costa Rica', '50611112222', '50101', 70000, 'Casa', 'img21'),
(22, 'Sabanilla 45', 'San José', 'Costa Rica', '50633334444', '50102', 80000, 'Casa', 'img22'),
(23, 'Curridabat 78', 'San José', 'Costa Rica', '50655556666', '50103', 90000, 'Apartamento', 'img23'),
(24, 'La Uruca 90', 'San José', 'Costa Rica', '50677778888', '50104', 85000, 'Condominio', 'img24'),
(25, 'Calle Uruguay 123', 'Panama City', 'Panamá', '50711112222', '07001', 95000, 'Casa', 'img25'),
(26, 'Avenida Balboa 45', 'Panama City', 'Panamá', '50733334444', '07002', 80000, 'Apartamento', 'img26'),
(27, 'El Cangrejo 78', 'Panama City', 'Panamá', '50755556666', '07003', 70000, 'Casa', 'img27'),
(28, 'Costa del Este 90', 'Panama City', 'Panamá', '50777778888', '07004', 75000, 'Condominio', 'img28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
