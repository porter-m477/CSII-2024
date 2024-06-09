-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2024 at 12:47 AM
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
  `album_title` varchar(200) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`ID`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(1, 'good kid, m.A.A.d city', 'Kendrick Lamar', 2012, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Falbum%2F748dZDqSZy6aPXKcI9H80u&psig=AOvVaw3loiavA7eZ7zJg55VrcC2S&ust=1717718310301000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMid9b_VxYYDFQAAAAAdAAAAABAE', 'Subtitled “A Short Film by Kendrick Lamar,” this concept album depicts a day in the life of a 17-year-old Lamar as he rides around Compton in his Momma’s (Paula Oliver) minivan. '),
(2, 'Humbug', 'Arctic Monkeys', 2009, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHumbug_%2528album%2529&psig=AOvVaw1aN32bzRwa51_LRlQApQg6&ust=1717718416376000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPDStfLVxYYDFQAAAAAdAAAAABAE', 'Humbug es el tercer álbum de estudio de la banda inglesa de indie rock​​ Arctic Monkeys lanzado el 19 de agosto de 2009 por Domino Records. La banda comenzó a escribir canciones para el álbum a partir del verano de 2008, y lo terminó completamente en primavera del 2009.'),
(3, 'Real G 4 Life', 'Ñengo Flow', 2011, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Falbum%2F6oGXALVuSmMjwfXZeOCw7e&psig=AOvVaw2v8FQJXm4Gc4As_ZOmE3Pu&ust=1717718594475000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCOjDqMfWxYYDFQAAAAAdAAAAABAE', 'Real G 4 Life es el nombre del primer mixtape del cantante puertorriqueño de reggaeton Ñengo Flow.​ Fue publicado el 5 de enero de 2011 por Full Records. Se lanzó una edición para las plataformas digitales, el cual se publicó el 15 de mayo de 2011.\r\n\r\nCuenta con el sencillo «En las noches frías» y las colaboraciones De La Ghetto, Jory, Gotay, John Jay, Newtone y Randy Glock.'),
(4, 'Muerte', 'Canserbero', 2012, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Falbum%2F27xqCLyTHom0wyjtw08K12&psig=AOvVaw13vtL7fSUifV-x_glpSGYt&ust=1717718680390000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKiXpPDWxYYDFQAAAAAdAAAAABAE', 'Muerte es el segundo y último álbum de estudio del rapero y compositor venezolano Canserbero.​ El disco cuenta con 14 temas, los cuales hablan acerca de la muerte, la violencia, el crimen y el desamor. Es considerado uno de los álbumes más importantes en la historia del rap latino.​'),
(5, 'Curso Basico de Poesia', 'Juaninacka, Rapsusklei, Sharif Fernández', 2014, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hhgroups.com%2Falbumes%2Frapsusklei-sharif-y-juaninacka%2Fcurso-basico-de-poesia-40813%2F&psig=AOvVaw02pJlk3eok4znJ4W_QD889&ust=1717719023411000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCICL75PYxYYDFQAAAAAdAAAAABAE', 'Anunciado ya desde 2011 y con algo de retraso llega en 2014 el disco \"Curso básico de poesia\" en el que unen sus fuerzas e sevillano Juaninacka y los maños Rapsusklei y Sharif. El disco aparecerá en libre descarga el 14 de Octubre a través del sello Eterno Muisik. El disco contará con 10 cortes producidos por: Neza, Stash House, Baster, Amalgama Beats, Viruten Boi, Gze Beats, Acción Sánchez y The unbeatables.'),
(6, 'Ego Death', 'The Internet', 2015, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FEgo_Death_%2528album%2529&psig=AOvVaw3ngi8nPLweQF4JrVOZ3pXF&ust=1717719678208000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNibkszaxYYDFQAAAAAdAAAAABAE', 'Ego Death es el tercer álbum de estudio de la banda estadounidense de R&B Internet. Fue lanzado el 26 de junio de 2015 a través de Odd Future y distribuido por Columbia Records. El álbum fue apoyado por los sencillos \"Special Affair\" y \"Girl\"'),
(7, 'Album insertado', 'Otro artista', 2024, 'No hay foto', 'Buen album');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
