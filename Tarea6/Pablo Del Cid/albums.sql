-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2024 at 12:33 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `album_title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`ID`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(1, 'What You Won\'t Do For Love', 'Bobby Caldwell', 1978, 'https://i1.sndcdn.com/artworks-000234108427-4im3t1-t500x500.jpg', 'Bobby Caldwell (reeditado en CD como What You Won\'t Do for Love) es el álbum debut del cantante y compositor Bobby Caldwell. El álbum fue lanzado en 1978 en el sello Clouds de TK Records.'),
(2, 'Make It Big', 'George Michael', 1984, 'https://upload.wikimedia.org/wikipedia/en/1/10/Careless_Whisper_UK_single.jpg', 'Careless Whisper (en español: «Susurro descuidado») es el título de una balada interpretada por el cantautor inglés George Michael, incluída en el segundo álbum de estudio del dúo Wham!, titulado Make It Big (1984). '),
(3, 'Somebody\'s Watching Me', 'Rockwell', 1984, 'https://i.discogs.com/fZnxEPNbrUkqq68EqmgHwI0jd9SKMRTCpNg2oLFdcGA/rs:fit/g:sm/q:90/h:557/w:551/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzNTE1/NS0xMzE0ODMyOTI0/LmpwZWc.jpeg', 'Somebody\'s Watching Me, es una canción grabada por el cantante estadounidense Rockwell, publicado por el sello discográfico Motown en 1984, como el sencillo principal de su primer álbum de estudio del mismo nombre.'),
(4, 'Retrospect', 'Los Retros', 2019, 'https://f4.bcbits.com/img/a0286291662_65', 'un EP conformado por seis canciones íntimas y atmosféricas que oscilan entre el R&B y el rock psicodélico, con reflexiones sobre la vida y el amor en un viaje emocionante. '),
(5, 'Thriller', 'Michael Jackson', 1982, 'https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png', 'Thriller es el sexto álbum de estudio del cantante estadounidense Michael Jackson. Fue lanzado el 29 de noviembre de 1982 por Epic Records. Producido por Quincy Jones —quien trabajó también en el álbum Off the Wall (1979) del mismo artista—, la obra está compuesta por un balance de varios géneros musicales: entre disco y rock, funk y balada, R&B y pop.'),
(6, 'Player', 'Player', 1977, 'https://upload.wikimedia.org/wikipedia/en/b/b8/Player_1977.jpg', 'Player es el nombre del álbum debut de la banda de rock estadounidense Player, publicado en 1977 por RSO Records. El hit principal que se destaca en este trabajo es \"Baby Come Back\" (escrita y compuesta por Peter Beckett y J.C. Crowley) #1 en el Billboard Hot 100.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
