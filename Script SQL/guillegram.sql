-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-02-2019 a las 19:59:06
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guillegram`
--
DROP DATABASE IF EXISTS `guillegram`;
CREATE DATABASE IF NOT EXISTS `guillegram` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `guillegram`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `id_destino` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`id_destino`, `descripcion`, `imagen`, `latitud`, `longitud`, `nombre`, `id_usuario`) VALUES
(0, 'El puente Nuevo es el monumento más emblemático de la ciudad malagueña de Ronda y fue construido entre 1751 y 1793. Une las zonas histórica y moderna de la ciudad salvando el Tajo de Ronda.', 'http://www.escapadarural.com/blog/wp-content/uploads/2016/03/Ronda-2.jpg', 36.741117, -5.165751, 'Puente Nuevo Ronda', 1),
(1, 'Gaztelugatxe se encuentra en la localidad de Bermeo, en Vizcaya (País Vasco), básicamente es un islote que se encuentra unido al continente gracias a un puente que se construyó para unir ambos puntos.', 'https://farm3.staticflickr.com/2810/9723281289_bac6f8954a_c.jpg', 43.447075, -2.785058, 'Islote Gaztelugatxe', 9),
(2, 'Las Bardenas Reales de Navarra, es un paraje natural situado al sureste de Navarra, conocido por tener uno de los paisajes más extraños y diferentes del país debido a las condiciones de su terreno que lo hacen lucir como un desierto.', 'http://turismo.navarra.com/wp-content/uploads/Bardenas_Reales_Navarra_2.jpg', 42.186654, -1.475563, 'Bardenas Reales', 4),
(3, 'Las famosas Cuevas del Drach, se encuentran situadas en la Isla de Mallorca, en el municipio de Manacor, son famosas por estar conformadas por cuatro cuevas dentro del hermoso archipiélago de las Islas Baleares.', 'http://porsolea.com/wp-content/uploads/2015/05/cuevas-del-drach-Matthew-R.jpg', 39.536594, 3.330437, 'Cuevas del Drach', 2),
(4, 'Es considerado un rincón natural de extensa belleza, cargada de arroyos y cascadas, pero sobretodo de pequeñas pozas naturales que lo convierten en uno de los destinos más interesantes y populares en verano.', 'https://www.campingriojerte.com/images/paginas/b964b8d9772a06ab5c3b677b09bb2072.jpg', 40.224003, -5.750262, 'Garganta de los Infiernos', 8),
(5, 'Las Médulas es el nombre que recibe un espacio que ha tomado ciertas características debido a la explotación que se realizaba en el terreno, ya que era una zona rica en oro y que los romanos utilizaron para la extracción de este material.', 'https://cdn1.guias-viajar.com/wp-content/uploads/2016/11/Las-Médulas-Orellán-FB-007.jpg', 42.459554, -6.760084, 'Las Médulas', 16),
(6, 'Los Mallos de Riglos, en la localidad de Riglos, es una caprichosa formación geológica. Existen senderos que te permitirán hacer un recorrido por este monumento natural.', 'https://www.escapadarural.com/blog/wp-content/uploads/2016/05/Mallos-de-Riglo-8.jpg', 42.351608, -0.724167, 'Mallos de Riglos', 7),
(7, 'El salto del Nervión es una cascada de agua de España que se encuentra ubicada justo en el límite entre las provincias de Burgos y Álava dentro del área natural protegida Monte de Santiago', 'https://aunclicdelaaventura.com/wp-content/uploads/2017/09/Cascada-del-Nervion.jpg', 42.939844, -2.980714, 'Salto del Nervión', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `contrasena`, `correo`, `nombre`, `nombre_usuario`) VALUES
(1, 'lJrgHqzSB', 'dbarti0@mediafire.com', 'Dannye', 'ddickinson0'),
(2, 'KHQurXMAEQJ', 'iaguirre1@ucla.edu', 'Iain', 'iweiner1'),
(3, 'deFvqNo5Om55', 'aabson2@yelp.com', 'Andrus', 'ageerdts2'),
(4, 'PaI6WHIF', 'glehrmann3@networkadvertising.org', 'Gaylene', 'gvittery3'),
(5, 'klDQLqbwuc', 'aisakowicz4@prnewswire.com', 'Alice', 'adonke4'),
(6, 'I2W1Kqd', 'dredington5@gizmodo.com', 'Dun', 'dplayford5'),
(7, '9a89de', 'klonghirst6@princeton.edu', 'Kalinda', 'kbrammall6'),
(8, 'Q5s2puzsx', 'fbrogioni7@mapquest.com', 'Fannie', 'fhazard7'),
(9, '9tSiz7oEz1', 'lhuertas8@seattletimes.com', 'Lucita', 'ltressler8'),
(10, 'AeAwzSwC', 'dbultitude9@paypal.com', 'Darya', 'dmaccorley9'),
(11, 'JbLb0H', 'atethacota@icio.us', 'Alyda', 'awoodyera'),
(12, 'QKWzhnX', 'acoilsb@cocolog-nifty.com', 'Austen', 'aeitterb'),
(13, 'LpGNWfk1Y6l', 'tantosc@multiply.com', 'Tyrone', 'twoodusc'),
(14, 'XePFqBnsTe', 'edelahuntyd@sogou.com', 'Eward', 'erolingsond'),
(15, 'u0ZK0Z', 'lholbye@blog.com', 'Lonnie', 'lbawcocke'),
(16, 'gss', 'gss@gss.com', 'gss', '@gss'),
(17, 'Guillermo', 'guillermo@guillermo.com', 'Guillermo', '@Guillermo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_destinos_fav`
--

CREATE TABLE `usuario_destinos_fav` (
  `usuarios_fav_id_usuario` int(11) NOT NULL,
  `destinos_fav_id_destino` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`id_destino`),
  ADD KEY `indexIdDes` (`id_destino`),
  ADD KEY `FK53g56gtuvlu0dtry39in3f2il` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `indexIdUsr` (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario_destinos_fav`
--
ALTER TABLE `usuario_destinos_fav`
  ADD KEY `FK2b8bca4vg79d9mjtq6mqrxarq` (`destinos_fav_id_destino`),
  ADD KEY `FKjj92trqv0cso5df30hgd8ydmj` (`usuarios_fav_id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
