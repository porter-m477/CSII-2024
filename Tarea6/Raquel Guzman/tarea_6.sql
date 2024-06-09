-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-06-2024 a las 02:32:55
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
-- Base de datos: `musica2_tarea5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `album_tittle` varchar(200) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`ID`, `album_tittle`, `artist`, `year`, `image`, `description`) VALUES
(1, 'A head full of dreams', 'Coldplay', 2015, 'https://soundcloud.com/mostafa-abdul-qadir/coldplay-a-head-full-of-dreams', 'A Head Full Of Dreams —en españolː Una cabeza llena de sueños— es el séptimo álbum de estudio de la banda británica de pop rock Coldplay. Fue lanzando comercialmente el 4 de diciembre de 2015, por las discográficas Parlophone y Atlantic Records.'),
(2, 'Victory', 'Bethel music', 2019, 'https://www.google.com/search?sca_esv=d6f3a8cef97b345f&sca_upv=1&sxsrf=ADLYWILIrJUxMQ6HwYqgKdDwUI7Oca9UUQ:1717697114788&q=audio+cd+bethel+music+victory+description&uds=ADvngMiEKfsfdKbaeh3oX_jvW220tDNzR2_wsbelHEqhqhFUDX6Iqq1l28WjqGE0xsB2Wz70B_9JN8Q8_BorTYI7CRHW1rJEclrlCuu1KnqgLm0sTsyt66swYUwViuC71YW-PRt3WIkryLM-VBqM5Xha3jqJy-U05g&udm=2&sa=X&ved=2ahUKEwiB9-6yyMeGAxVkmYQIHfO7CDIQxKsJegQIChAB&ictx=0&biw=1366&bih=607&dpr=1#vhid=LkzkbouvCKhIJM&vssid=mosaic', 'La canción \'Victory Is Yours\' de Bethel Music es un poderoso himno de adoración y fe que resalta la soberanía y el poder de Dios en medio de las adversidades.'),
(3, 'Vida Encontré\r\n', 'Majo & Dan\r\n', 2020, 'https://www.google.com/search?sca_esv=d6f3a8cef97b345f&sca_upv=1&sxsrf=ADLYWIKplKrLVzw9Yq90-GViM17Asws2LQ:1717697602103&q=discografia+majo+y+dan&udm=2&fbs=AEQNm0CbCVgAZ5mWEJDg6aoPVcBgWizR0-0aFOH11Sb5tlNhd3zC4y7ZXTSrvvSBSNjw8fVX3G3tS3bGsqQeBBxb6Hy8eSz-go-CzB06OlgnExibx3BqgLicT1PLt1SQKmxctJrYqtqi6QS831E_CJEisEhW4FzoNXaZPA0hyx_yyzBP8jEwwI_3BCgjJAM2-aIVFXB18O09&sa=X&ved=2ahUKEwiZpZ6byseGAxVDfTABHXSRMjUQtKgLegQICBAB&biw=1366&bih=607&dpr=1#vhid=nSm79gBdsAuXiM&vssid=mosaic', 'https://majoydanyt.page.link/Spotify\r\niTunes: https://majoydanyt.page.link/itunes\r\nAmazon: https://majoydanyt.page.link/Amazon\r\nDeezer: https://majoydanyt.page.link/Deezer\r\nSecuencia y Acordes: https://www.secuencias.com/artists/Ma...\r\n'),
(4, '1989', 'Taylor swift', 2023, 'https://www.google.com/search?sca_esv=d6f3a8cef97b345f&sca_upv=1&sxsrf=ADLYWILG2mGZtmSNRG7W32jdrcbDO-zoOg:1717698442340&q=Taylor+Swift+1989&udm=2&fbs=AEQNm0CbCVgAZ5mWEJDg6aoPVcBgWizR0-0aFOH11Sb5tlNhd3zC4y7ZXTSrvvSBSNjw8fVX3G3tS3bGsqQeBBxb6Hy8eSz-go-CzB06OlgnExibx3BqgLicT1PLt1SQKmxctJrYqtqi6QS831E_CJEisEhW4FzoNXaZPA0hyx_yyzBP8jEwwI_3BCgjJAM2-aIVFXB18O09&sa=X&ved=2ahUKEwiLpvKrzceGAxX2SzABHWgmOjQQtKgLegQICxAB&biw=1366&bih=607&dpr=1#vhid=2CQS3r5nS6I-PM&vssid=mosaic', '1989 (Taylor\'s Version)\r\n1989 (Taylor’s Version) Digital Album\r\n21 Songs\r\nIncluding 5 previously unreleased songs from The Vault\r\n© 2023 Taylor Swift\r\nTaylor Swift®\r\nUsed By Permission. All Rights Reserved.'),
(5, 'In a tidal wave of mystery', 'Capital cities', 2014, 'https://www.google.com/search?q=capital+cities+in+a+tidal+wave+of+mystery&sca_esv=d6f3a8cef97b345f&sca_upv=1&udm=2&biw=1366&bih=607&sxsrf=ADLYWIJtnwcz5SguAwbfKmFc56CJr6CTYg%3A1717699487879&ei=nwNiZqCvNf-FwbkP49TbiQM&oq=capital+cities+in+a&gs_lp=Egxnd3Mtd2l6LXNlcnAiE2NhcGl0YWwgY2l0aWVzIGluIGEqAggBMgUQABiABDIFEAAYgAQyBBAAGB4yBBAAGB4yBBAAGB4yBBAAGB4yBBAAGB4yBBAAGB4yBBAAGB4yBBAAGB5Ir1NQqgJY0EVwBXgAkAEAmAFmoAGuBqoBAzguMbgBA8gBAPgBAZgCCaAC_gTCAgoQABiABBhDGIoFwgIHEAAYgAQYGJgDAIgGAZIHAzYuM6AH1x4&sclient=gws-wiz-serp#vhid=MNDMJkbKZcfe-M&vssid=mosaic', 'Country Canadá\r\nElectronic , Rock , Pop\r\nIndie Rock, Synth - pop\r\n');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
