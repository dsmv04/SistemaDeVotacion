-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2024 a las 04:47:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_votacion`
--
CREATE DATABASE IF NOT EXISTS `sistema_votacion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistema_votacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Juan Perez'),
(2, 'Diego Gutierrez'),
(3, 'Pedro Munoz'),
(4, 'Maria Martinez'),
(5, 'Daniela Valenzuela'),
(6, 'Nicole Hernandez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paiguano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'La Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'San Antonio', 6),
(68, 'Algarrobo', 6),
(69, 'Cartagena', 6),
(70, 'El Quisco', 6),
(71, 'El Tabo', 6),
(72, 'Santo Domingo', 6),
(73, 'San Felipe', 6),
(74, 'Catemu', 6),
(75, 'Llaillay', 6),
(76, 'Panquehue', 6),
(77, 'Putaendo', 6),
(78, 'Santa María', 6),
(79, 'Quilpué', 6),
(80, 'Limache', 6),
(81, 'Olmué', 6),
(82, 'Villa Alemana', 6),
(83, 'Cerrillos', 7),
(84, 'Cerro Navia', 7),
(85, 'Conchalí', 7),
(86, 'El Bosque', 7),
(87, 'Estación Central', 7),
(88, 'Huechuraba', 7),
(89, 'Independencia', 7),
(90, 'La Cisterna', 7),
(91, 'La Florida', 7),
(92, 'La Granja', 7),
(93, 'La Pintana', 7),
(94, 'La Reina', 7),
(95, 'Las Condes', 7),
(96, 'Lo Barnechea', 7),
(97, 'Lo Espejo', 7),
(98, 'Lo Prado', 7),
(99, 'Macul', 7),
(100, 'Maipú', 7),
(101, 'Ñuñoa', 7),
(102, 'Pedro Aguirre Cerda', 7),
(103, 'Peñalolén', 7),
(104, 'Providencia', 7),
(105, 'Pudahuel', 7),
(106, 'Quilicura', 7),
(107, 'Quinta Normal', 7),
(108, 'Recoleta', 7),
(109, 'Renca', 7),
(110, 'San Joaquín', 7),
(111, 'San Miguel', 7),
(112, 'San Ramón', 7),
(113, 'Santiago', 7),
(114, 'Vitacura', 7),
(115, 'Puente Alto', 7),
(116, 'Pirque', 7),
(117, 'San José de Maipo', 7),
(118, 'Colina', 7),
(119, 'Lampa', 7),
(120, 'Tiltil', 7),
(121, 'San Bernardo', 7),
(122, 'Buin', 7),
(123, 'Calera de Tango', 7),
(124, 'Paine', 7),
(125, 'Melipilla', 7),
(126, 'Alhué', 7),
(127, 'Curacaví', 7),
(128, 'María Pinto', 7),
(129, 'San Pedro', 7),
(130, 'Talagante', 7),
(131, 'El Monte', 7),
(132, 'Isla de Maipo', 7),
(133, 'Padre Hurtado', 7),
(134, 'Peñaflor', 7),
(135, 'Rancagua', 8),
(136, 'Codegua', 8),
(137, 'Coinco', 8),
(138, 'Coltauco', 8),
(139, 'Doñihue', 8),
(140, 'Graneros', 8),
(141, 'Las Cabras', 8),
(142, 'Machalí', 8),
(143, 'Malloa', 8),
(144, 'Mostazal', 8),
(145, 'Olivar', 8),
(146, 'Peumo', 8),
(147, 'Pichidegua', 8),
(148, 'Quinta de Tilcoco', 8),
(149, 'Rengo', 8),
(150, 'Requínoa', 8),
(151, 'San Vicente', 8),
(152, 'Pichilemu', 8),
(153, 'La Estrella', 8),
(154, 'Litueche', 8),
(155, 'Marchihue', 8),
(156, 'Navidad', 8),
(157, 'Paredones', 8),
(158, 'San Fernando', 8),
(159, 'Chépica', 8),
(160, 'Chimbarongo', 8),
(161, 'Lolol', 8),
(162, 'Nancagua', 8),
(163, 'Palmilla', 8),
(164, 'Peralillo', 8),
(165, 'Placilla', 8),
(166, 'Pumanque', 8),
(167, 'Santa Cruz', 8),
(168, 'Talca', 9),
(169, 'Constitución', 9),
(170, 'Curepto', 9),
(171, 'Empedrado', 9),
(172, 'Maule', 9),
(173, 'Pelarco', 9),
(174, 'Pencahue', 9),
(175, 'Río Claro', 9),
(176, 'San Clemente', 9),
(177, 'San Rafael', 9),
(178, 'Cauquenes', 9),
(179, 'Chanco', 9),
(180, 'Pelluhue', 9),
(181, 'Curicó', 9),
(182, 'Hualañé', 9),
(183, 'Licantén', 9),
(184, 'Molina', 9),
(185, 'Rauco', 9),
(186, 'Romeral', 9),
(187, 'Sagrada Familia', 9),
(188, 'Teno', 9),
(189, 'Vichuquén', 9),
(190, 'Linares', 9),
(191, 'Colbún', 9),
(192, 'Longaví', 9),
(193, 'Parral', 9),
(194, 'Retiro', 9),
(195, 'San Javier', 9),
(196, 'Villa Alegre', 9),
(197, 'Yerbas Buenas', 9),
(198, 'Chillán', 10),
(199, 'Bulnes', 10),
(200, 'Cobquecura', 10),
(201, 'Coelemu', 10),
(202, 'Coihueco', 10),
(203, 'Chillán Viejo', 10),
(204, 'El Carmen', 10),
(205, 'Ninhue', 10),
(206, 'Ñiquén', 10),
(207, 'Pemuco', 10),
(208, 'Pinto', 10),
(209, 'Portezuelo', 10),
(210, 'Quillón', 10),
(211, 'Quirihue', 10),
(212, 'Ránquil', 10),
(213, 'San Carlos', 10),
(214, 'San Fabián', 10),
(215, 'San Ignacio', 10),
(216, 'San Nicolás', 10),
(217, 'Treguaco', 10),
(218, 'Yungay', 10),
(219, 'Concepción', 11),
(220, 'Coronel', 11),
(221, 'Chiguayante', 11),
(222, 'Florida', 11),
(223, 'Hualqui', 11),
(224, 'Lota', 11),
(225, 'Penco', 11),
(226, 'San Pedro de la Paz', 11),
(227, 'Santa Juana', 11),
(228, 'Talcahuano', 11),
(229, 'Tomé', 11),
(230, 'Hualpén', 11),
(231, 'Lebu', 11),
(232, 'Arauco', 11),
(233, 'Cañete', 11),
(234, 'Contulmo', 11),
(235, 'Curanilahue', 11),
(236, 'Los Álamos', 11),
(237, 'Tirúa', 11),
(238, 'Los Ángeles', 11),
(239, 'Antuco', 11),
(240, 'Cabrero', 11),
(241, 'Laja', 11),
(242, 'Mulchén', 11),
(243, 'Nacimiento', 11),
(244, 'Negrete', 11),
(245, 'Quilaco', 11),
(246, 'Quilleco', 11),
(247, 'San Rosendo', 11),
(248, 'Santa Bárbara', 11),
(249, 'Tucapel', 11),
(250, 'Yumbel', 11),
(251, 'Alto Biobío', 11),
(252, 'Temuco', 12),
(253, 'Carahue', 12),
(254, 'Cunco', 12),
(255, 'Curarrehue', 12),
(256, 'Freire', 12),
(257, 'Galvarino', 12),
(258, 'Gorbea', 12),
(259, 'Lautaro', 12),
(260, 'Loncoche', 12),
(261, 'Melipeuco', 12),
(262, 'Nueva Imperial', 12),
(263, 'Padre Las Casas', 12),
(264, 'Perquenco', 12),
(265, 'Pitrufquén', 12),
(266, 'Pucón', 12),
(267, 'Saavedra', 12),
(268, 'Teodoro Schmidt', 12),
(269, 'Toltén', 12),
(270, 'Vilcún', 12),
(271, 'Villarrica', 12),
(272, 'Cholchol', 12),
(273, 'Angol', 12),
(274, 'Collipulli', 12),
(275, 'Curacautín', 12),
(276, 'Ercilla', 12),
(277, 'Lonquimay', 12),
(278, 'Los Sauces', 12),
(279, 'Lumaco', 12),
(280, 'Purén', 12),
(281, 'Renaico', 12),
(282, 'Traiguén', 12),
(283, 'Victoria', 12),
(284, 'Valdivia', 13),
(285, 'Corral', 13),
(286, 'Lanco', 13),
(287, 'Los Lagos', 13),
(288, 'Máfil', 13),
(289, 'Mariquina', 13),
(290, 'Paillaco', 13),
(291, 'Panguipulli', 13),
(292, 'La Unión', 13),
(293, 'Futrono', 13),
(294, 'Lago Ranco', 13),
(295, 'Río Bueno', 13),
(296, 'Puerto Montt', 14),
(297, 'Calbuco', 14),
(298, 'Cochamó', 14),
(299, 'Fresia', 14),
(300, 'Frutillar', 14),
(301, 'Los Muermos', 14),
(302, 'Llanquihue', 14),
(303, 'Maullín', 14),
(304, 'Puerto Varas', 14),
(305, 'Castro', 14),
(306, 'Ancud', 14),
(307, 'Chonchi', 14),
(308, 'Curaco de Vélez', 14),
(309, 'Dalcahue', 14),
(310, 'Puqueldón', 14),
(311, 'Queilén', 14),
(312, 'Quellón', 14),
(313, 'Quemchi', 14),
(314, 'Quinchao', 14),
(315, 'Osorno', 14),
(316, 'Puerto Octay', 14),
(317, 'Purranque', 14),
(318, 'Puyehue', 14),
(319, 'Río Negro', 14),
(320, 'San Juan de la Costa', 14),
(321, 'San Pablo', 14),
(322, 'Chaitén', 14),
(323, 'Futaleufú', 14),
(324, 'Hualaihué', 14),
(325, 'Palena', 14),
(326, 'Coyhaique', 15),
(327, 'Lago Verde', 15),
(328, 'Aysén', 15),
(329, 'Cisnes', 15),
(330, 'Guaitecas', 15),
(331, 'Cochrane', 15),
(332, 'O\'Higgins', 15),
(333, 'Tortel', 15),
(334, 'Chile Chico', 15),
(335, 'Río Ibáñez', 15),
(336, 'Punta Arenas', 16),
(337, 'Laguna Blanca', 16),
(338, 'Río Verde', 16),
(339, 'San Gregorio', 16),
(340, 'Cabo de Hornos', 16),
(341, 'Antártica', 16),
(342, 'Porvenir', 16),
(343, 'Primavera', 16),
(344, 'Timaukel', 16),
(345, 'Natales', 16),
(346, 'Torres del Paine', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

CREATE TABLE `votantes` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `comuna_id` int(11) DEFAULT NULL,
  `candidato_id` int(11) DEFAULT NULL,
  `como_nos_entero` set('Web','TV','Redes Sociales','Amigo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `votantes`
--

INSERT INTO `votantes` (`id`, `nombre_apellido`, `alias`, `rut`, `email`, `region_id`, `comuna_id`, `candidato_id`, `como_nos_entero`) VALUES
(1, 'Dalton Munoz', 'Dalton95.', '18.945.387-6', 'dalton@mail.cl', 11, 240, 4, 'Web');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `comuna_id` (`comuna_id`),
  ADD KEY `candidato_id` (`candidato_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `votantes`
--
ALTER TABLE `votantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);

--
-- Filtros para la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD CONSTRAINT `votantes_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`),
  ADD CONSTRAINT `votantes_ibfk_2` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`),
  ADD CONSTRAINT `votantes_ibfk_3` FOREIGN KEY (`candidato_id`) REFERENCES `candidatos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
