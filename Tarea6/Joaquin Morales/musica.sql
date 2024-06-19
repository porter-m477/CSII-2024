-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-06-2024 a las 03:00:38
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
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `album_title` varchar(200) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(10000) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`ID`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(1, 'Plastic Beach', 'Gorillaz', 2010, 'https://static.wikia.nocookie.net/gorillaz/images/4/49/MonMar12235062010.jpg/revision/latest?cb=20231005094316&path-prefix=es', 'Plastic Beach es el tercer álbum de estudio de Gorillaz. Con un estilo menos oscuro que el segundo álbum de Gorillaz Demon Days, Plastic Beach reúne artistas de todos los estilos desde el punk rock hasta el rap, con artistas como los exintegrantes de The Clash, Mick Jones y Paul Simonon, otros como Lou Reed, Mos Def, la Sinfónica ViVA, Snoop Dogg, De La Soul, Bobby Womack, Mark E. Smith, Bashy, Kano, Little Dragon, y el Hypnotic Brass Ensemble.'),
(2, 'Stadium Arcadium', 'Red Hot Chilli Peppers', 2006, 'https://m.media-amazon.com/images/I/81lOFvmn6tL._UF1000,1000_QL80_.jpg', 'Stadium Arcadium es el noveno álbum de estudio del grupo de rock estadounidense Red Hot Chili Peppers, lanzado durante el mes de mayo de 2006.'),
(3, 'La Dinastía Scorpio', 'El Mató a un Policía Motorizado', 2012, 'https://f4.bcbits.com/img/a0250366754_65', 'La dinastía Scorpio es el segundo álbum de estudio del grupo Él Mató a un Policía Motorizado. Grabado en el 2011, fue compuesto y escrito principalmente por el bajista y cantante Santiago Barrionuevo. El arte de la tapa y el diseño le corresponden a él, también.'),
(4, 'Never Mind The Bollocks, Here\'s The Sex Pistols', 'Sex Pistols', 1977, 'https://indierocks.sfo3.digitaloceanspaces.com/wp-content/uploads/2022/10/Never-Mind-The-BollocksHeres-the-Sex-Pistols_2022.jpg', 'Never Mind the Bollocks, Here\'s the Sex Pistols o simplemente conocido como Never Mind the Bollocks es el primer y único álbum de estudio de la banda británica de punk Sex Pistols.'),
(5, '?', 'Xxxtentacion', 2018, 'https://upload.wikimedia.org/wikipedia/en/thumb/2/21/%3F_XXXTENTACION_Cover.png/220px-%3F_XXXTENTACION_Cover.png', '? es el segundo álbum de estudio del rapero estadounidense XXXTentacion y el último álbum de estudio que se lanzó antes de su muerte. Fue lanzado el 16 de marzo de 2018 por Bad Vibes Forever, Caroline Distribution y Capitol Music Group.'),
(6, 'Herb Alpert Presents Sergio Mendes & Brasil \'66', 'Sérgio Mendes and Brasil \'66', 1966, 'https://cdns-images.dzcdn.net/images/cover/b6c0189049715f257caa325776d1ee70/1900x1900-000000-80-0-0.jpg', 'Herb Alpert Presents Sergio Mendes & Brasil \'66 is the first album by Sérgio Mendes and Brasil \'66. It was inducted into the Grammy Hall of Fame in 2011. Referring to the song \"Mas que Nada\" Mendes said in 2014: \"It was the first time that a song in Portuguese was a hit in America and all over the world\".');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
