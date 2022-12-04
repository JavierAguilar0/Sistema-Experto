-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2022 a las 01:45:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `covidse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposcovid`
--

CREATE TABLE `tiposcovid` (
  `nodo` int(11) NOT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `pregunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tiposcovid`
--

INSERT INTO `tiposcovid` (`nodo`, `texto`, `pregunta`) VALUES
(1, 'Dolor de cabeza', 1),
(2, 'Perdida de olfato', 1),
(3, 'Perdida del olfato', 1),
(4, 'Dolor muscular', 1),
(7, 'Dolor muscular', 1),
(8, 'Tos', 1),
(9, 'Tos', 1),
(15, 'Tos', 1),
(16, 'Dolor de garganta', 1),
(18, 'Dolor de garganta', 1),
(19, 'Dolor de garganta', 1),
(31, 'Dolor de garganta', 1),
(32, 'Dolor de pecho', 1),
(36, 'Dolor de pecho', 1),
(37, 'Dolor de pecho', 1),
(38, 'Dolor de pecho', 1),
(63, 'Dolor de pecho', 1),
(64, 'Fiebre', 1),
(73, 'Fiebre', 1),
(74, 'Fiebre', 1),
(76, 'Fiebre', 1),
(127, 'Fiebre', 1),
(128, 'Ronquera', 1),
(129, 'Ronquera', 1),
(146, 'Ronquera', 1),
(148, 'Ronquera', 1),
(153, 'Ronquera', 1),
(255, 'Ronquera', 1),
(256, 'Perdida del apetito', 1),
(259, 'Perdida de apetito', 1),
(292, 'Perdida del apetito', 1),
(296, 'Perdida del apetito', 1),
(307, 'Perdida del apetito', 1),
(511, 'Perdida del apetito', 1),
(512, 'Diarrea', 1),
(519, 'Diarrea', 1),
(584, 'Diarrea', 1),
(593, 'Diarrea', 1),
(615, 'Diarrea', 1),
(1023, 'Diarrea', 1),
(1024, 'Fatiga', 1),
(1025, 'Fatiga', 1),
(1039, 'Fatiga', 1),
(1169, 'Fatiga', 1),
(1187, 'Fatiga', 1),
(1230, 'Fatiga', 1),
(2047, 'Fatiga', 1),
(2048, 'Confusión', 1),
(2050, 'Confusion', 1),
(2079, 'Confusion', 1),
(2339, 'Confusion', 1),
(2374, 'Confusion', 1),
(2461, 'Confusion', 1),
(4095, 'Confusion', 1),
(4096, 'Dificultad respiratoria', 1),
(4100, 'Dificultad respiratoria', 1),
(4159, 'Dificultad respiratoria', 1),
(4679, 'Dificultad respiratoria', 1),
(4749, 'Dificultad respiratoria', 1),
(4923, 'Dificultad respiratoria', 1),
(8191, 'Dificultad respiratoria', 1),
(8192, 'Covid nivel severo 3', 0),
(8201, 'Covid nivel severo 2', 0),
(8319, 'Covid gripal sin fiebre', 0),
(9359, 'Covid gripal con fiebre', 0),
(9499, 'Covid nivel severo 1', 0),
(9847, 'Covid gastro intestinal', 0),
(16383, 'No es covid', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tiposcovid`
--
ALTER TABLE `tiposcovid`
  ADD PRIMARY KEY (`nodo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
