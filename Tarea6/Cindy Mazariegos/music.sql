-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-06-2024 a las 00:36:09
-- Versión del servidor: 5.7.24
-- Versión de PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `music`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `ID` int(20) NOT NULL,
  `album_title` varchar(200) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(200) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`ID`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(1, 'Abbey Road', 'The Beatles', 1969, 'http://link.to/abbeyroad.jpg', 'The Beatles\' Abbey Road is an iconic rock album.'),
(2, 'Thriller', 'Michael Jackson', 1982, 'http://link.to/thriller.jpg', 'Michael Jackson\'s Thriller is the best-selling album of all time.'),
(3, 'Back in Black', 'AC/DC', 1980, 'http://link.to/backinblack.jpg', 'AC/DC\'s Back in Black is a hard rock classic.'),
(4, 'The Dark Side of the Moon', 'Pink Floyd', 1973, 'http://link.to/darksideofthemoon.jpg', 'Pink Floyd\'s The Dark Side of the Moon is a landmark album in progressive rock.'),
(5, 'Rumours', 'Fleetwood Mac', 1977, 'http://link.to/rumours.jpg', 'Fleetwood Mac\'s Rumours is known for its emotional depth and musicality.'),
(6, '21', 'Adele', 2011, 'http://link.to/21.jpg', 'Adele\'s 21 is a soulful pop album that received widespread acclaim.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
