-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-06-2024 a las 05:57:59
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
-- Base de datos: `musicalbums`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `album_title` varchar(200) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`ID`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(1, 'Love Drunk', 'Asher Angel', 2024, 'https://images.app.goo.gl/ChfxjiwaG57dSS5M8', '“Love Drunk” es un sencillo de Asher Angel, lanzado en 2024. Esta pegajosa canción combina elementos de pop y electrónica, y habla sobre la intoxicante sensación de estar enamorado.'),
(2, 'Lindsey Stirling', 'Lindsey Stirling', 2012, 'https://images.app.goo.gl/rz6ZiKrC7m8a75PC6', '“Lindsey Stirling” es el álbum debut de la violinista y artista Lindsey Stirling. Lanzado en 2012, combina elementos de música clásica, electrónica y pop. Este álbum, compuesto principalmente por sus propias creaciones originales, encabezó las listas de Álbumes Clásicos y Dance/Electrónica en Billboard y alcanzó el puesto número 23 en el Billboard 200. También tuvo éxito en Europa, obteniendo certificaciones de oro en Polonia y Suiza, y certificaciones de platino en Austria y Alemania. Destacan canciones como “Crystallize” y “Shatter Me”.'),
(3, 'Spirit of the Forest', 'Bianca Ban of Eternal Eclipse', 2023, 'https://images.app.goo.gl/omBqraGq98dPRi5M6', '“Spirit of the Forest” es un álbum de Eternal Eclipse, lanzado en 2023. Esta emotiva pieza combina elementos de violín, orquesta y música épica. Fue compuesta por Neal Acree y está disponible en plataformas como YouTube, TIDAL y Spotify.'),
(4, 'Volition', 'Caleb Swift', 2021, 'https://images.app.goo.gl/aqCg1KyYrLxrQjVf6', '“Volition” es un álbum del artista Caleb Swift. Lanzado en 2021, combina elementos de música electrónica, ambiental y experimental. Las pistas de este álbum exploran paisajes sonoros, texturas y emociones, creando una experiencia auditiva única.'),
(5, 'Codex', 'Joel Sunny', 2024, 'https://images.app.goo.gl/4vis78VA3xba6nHi6', '“Codex” es un sencillo del artista Joel Sunny, lanzado en 2024. Esta emotiva pieza combina elementos de violín, orquesta y música épica.'),
(6, 'Luminary', 'Joel Sunny', 2022, 'https://images.app.goo.gl/X5ZjNmzQM1mSzqxa9', 'Luminary es un álbum del artista Joel Sunny e incluye la canción homónima “Luminary”. Esta canción es parte de una serie de tres volúmenes y se caracteriza por su estilo distintivo.');

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
