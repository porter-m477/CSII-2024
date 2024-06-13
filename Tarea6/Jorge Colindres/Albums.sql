-- -------------------------------------------------------------
-- TablePlus 6.0.6(558)
--
-- https://tableplus.com/
--
-- Database: Music
-- Generation Time: 2024-06-05 20:12:14.8680
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `Albums`;
CREATE TABLE `Albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_title` varchar(255) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `Albums` (`id`, `album_title`, `artist`, `year`, `image`, `description`) VALUES
(2, 'EL ÚLTIMO TOUR DEL MUNDO', 'Bad Bunny', 2020, 'https://i.scdn.co/image/ab67616d0000b273005ee342f4eef2cc6e8436ab', '\"El Último Tour del Mundo\" es el tercer álbum de estudio del cantante puertorriqueño Bad Bunny, lanzado el 27 de noviembre de 2020. El álbum mezcla reguetón, trap y rock, destacándose por su innovación y diversidad musical. Incluye colaboraciones con artistas como Rosalía y Jhay Cortez, y aborda temas de desamor, fiesta y reflexiones personales'),
(3, 'We Broke the rules', 'Aventura', 2002, 'https://upload.wikimedia.org/wikipedia/en/4/4b/Broketherules.jpg', '\"We Broke the Rules\" es el segundo álbum de estudio de la banda de bachata Aventura. Este álbum fue fundamental para popularizar la bachata a nivel internacional, combinando los ritmos tradicionales del género con influencias de R&B, hip hop y pop. El álbum incluye el exitoso sencillo \"Obsesión\", que se convirtió en un fenómeno global y catapultó a Aventura al estrellato. Con letras románticas y una fusión de estilos musicales, \"We Broke the Rules\" es considerado un hito en la evolución de la bachata moderna.'),
(4, 'Blanco', 'Ricardo Arjona', 2020, 'https://i.scdn.co/image/ab67616d0000b273551c844de15fd068a5b19bc8', '\"Blanco\" es el decimoquinto álbum de estudio del cantautor guatemalteco Ricardo Arjona. Grabado en los legendarios estudios Abbey Road en Londres, este álbum forma parte de un proyecto doble junto con su contraparte \"Negro\". \"Blanco\" se caracteriza por su estilo introspectivo y lírico, abordando temas personales y sociales con la característica narrativa poética de Arjona. El álbum incluye una variedad de géneros, desde baladas hasta toques de jazz y blues, destacándose por su riqueza musical y la profundidad de sus letras.'),
(5, 'Sentimiento, Elegancia y Más Maldad', 'Arcángel', 2023, 'https://e.snmc.io/i/1200/s/1235202ebc4e6beb9e94f2623ded81c3/11513752', '\"Sentimiento, Elegancia y Más Maldad\" es el álbum más reciente de Arcángel, lanzado el 17 de noviembre de 2023. Esta obra es una secuela del álbum \"Sentimiento, Elegancia & Maldad\" de 2013 y muestra la evolución del artista con 19 pistas que fusionan reggaetón, house y pop. El álbum incluye colaboraciones destacadas con artistas como Grupo Frontera, Quevedo, Rauw Alejandro, De la Ghetto, Jowell & Randy, Peso Pluma y Feid, y cuenta con la producción de Dímelo Flow, Tainy, entre otros. Recibió elogios por su versatilidad y capacidad para innovar dentro del género, siendo reconocido por Rolling Stone como uno de los mejores álbumes en español de 2023'),
(6, 'Data', 'Tainy', 2023, 'https://i.scdn.co/image/ab67616d00001e02de7b9af78fbdda96c5a0635b', '\"DATA,\" el álbum debut en solitario de Tainy, se lanzó el 29 de junio de 2023. Este álbum cuenta con una variedad de colaboraciones con artistas como Skrillex, Four Tet, Arca, Daddy Yankee y Bad Bunny. Temáticamente, el álbum explora el éxito, la lucha y la tecnología, reflejando a menudo la carrera de Tainy y la industria musical en general. Musicalmente, \"DATA\" mezcla reggaetón con varios géneros como hip-hop, electrónico y R&B, creando un paisaje sonoro único.'),
(7, 'Planet Pitbull', 'Pitbull', 2011, 'https://i.scdn.co/image/ab67616d0000b2731dc7483a9fcfce54822a2f19', '\"Planet Pitbull\" es el sexto álbum de estudio del rapero y productor cubano-estadounidense Pitbull. Este álbum es conocido por su fusión de géneros como el dance, hip-hop y pop, y por sus colaboraciones con varios artistas de renombre. Incluye éxitos internacionales como \"Give Me Everything\" (con Ne-Yo, Afrojack y Nayer), \"Rain Over Me\" (con Marc Anthony) y \"International Love\" (con Chris Brown).');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;