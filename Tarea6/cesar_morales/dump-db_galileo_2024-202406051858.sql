-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: db_galileo_2024
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `album_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,'Thriller','Michael Jackson',1982,'https://rtvc-assets-radionica3.s3.amazonaws.com/s3fs-public/field/images_to_insert/article/thriller_afiche.jpg','Un clásico atemporal del pop, con éxitos como \"Billie Jean\", \"Beat It\" y \"Thriller\".'),(2,'Rumours','Fleetwood Mac',1977,'https://m.media-amazon.com/images/I/71274uOsBUL._SL1500_.jpg','Un álbum de rock legendario, con canciones como \"Dreams\", \"Go Your Own Way\" y \"Don\'t Stop\".'),(3,'The Dark Side of the Moon','Pink Floyd',1973,'https://upload.wikimedia.org/wikipedia/en/3/3b/Dark_Side_of_the_Moon.png','Una obra maestra del rock progresivo, con canciones como \"Money\", \"Time\" y \"Us and Them\".'),(4,'Abbey Road','The Beatles',1969,'https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg','El último álbum de estudio de The Beatles, con canciones como \"Come Together\", \"Something\" y \"Here Comes the Sun\".'),(5,'Aretha','Aretha Franklin',1968,'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Aretha_Franklin_1968.jpg/640px-Aretha_Franklin_1968.jpg','Un álbum de soul clásico, con canciones como \"Respect\", \"I Never Loved a Man the Way I Love You\" y \"Chain of Fools\".'),(6,'Born in the U.S.A.','Bruce Springsteen',1984,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/BornInTheUSAsinglecover.jpg/220px-BornInTheUSAsinglecover.jpg','Un álbum de rock emblemático, con canciones como \"Born in the U.S.A.\", \"Dancing in the Dark\" y \"Glory Days\".'),(7,'Hotel California','Eagles',1977,'https://upload.wikimedia.org/wikipedia/en/4/49/Hotelcalifornia.jpg','Un álbum de rock clásico, con canciones como \"Hotel California\", \"Heartache Tonight\" y \"New Kid in Town\".'),(8,'Like a Virgin','Madonna',1984,'https://upload.wikimedia.org/wikipedia/en/thumb/1/17/LikeAVirgin1984.png/220px-LikeAVirgin1984.png','Un álbum pop definitorio de la década de 1980, con canciones como \"Like a Virgin\", \"Material Girl\" y \"Like a Prayer\".'),(9,'The Joshua Tree','U2',1987,'https://upload.wikimedia.org/wikipedia/en/6/6b/The_Joshua_Tree.png','Un álbum de rock alternativo influyente, con canciones como \"Where the Streets Have No Name\", \"I Still Haven\'t Found What I\'m Looking For\" y \"With or Without You\".'),(10,'Nevermind','Nirvana',1991,'https://upload.wikimedia.org/wikipedia/en/b/b7/NirvanaNevermindalbumcover.jpg','Un álbum de grunge que definió una generación, con canciones como \"Smells Like Teen Spirit\", \"Come as You Are\" y \"Lithium\".'),(11,'OK Computer','Radiohead',1997,'https://upload.wikimedia.org/wikipedia/en/b/ba/Radioheadokcomputer.png','Un álbum de rock alternativo aclamado por la crítica, con canciones como \"Paranoid Android\", \"Karma Police\" y \"No Surprises\".'),(12,'The Miseducation of Lauryn Hill','Lauryn Hill',1998,'https://upload.wikimedia.org/wikipedia/en/5/55/LaurynHillTheMiseducationofLaurynHillalbumcover.jpg','Un álbum de neo soul ganador de varios premios Grammy, con canciones como \"Doo Wop (That Thing)\", \"Ex-Factor\" y \"This Is Why I Love You\".'),(13,'Back to Black','Amy Winehouse',2006,'https://upload.wikimedia.org/wikipedia/en/6/67/Amy_Winehouse_-_Back_to_Black_%28album%29.png','Un álbum de soul-jazz moderno y aclamado por la crítica, con canciones como \"Rehab\", \"You Know I\'m No Good\" y \"Back to Black\".');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_galileo_2024'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 18:58:47
