-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 08:18:08
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webmasc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`, `tipo_id`) VALUES
(2, 'Lomas Reptile Sticks 300g', 9990, 10, 'Alimento para Tortugas Acuaticas Lomas Reptile Sticks Premium de 300g.', 'ali1_kxEjIis.png', 3),
(3, 'Cunipic Parrots Complete Food', 14990, 10, 'Alimento para Loros Cunipic Complete Food de 3kg.', 'ali2_F6YmgXA.png', 3),
(4, 'Mazuri Hamster & Gerbil Diet', 12990, 10, 'Alimento Mazuri para Hamsters y Jerbos de 350g', 'ali3_uwSJkW9.png', 3),
(5, 'Jaula Castillo para Hamster', 24990, 10, 'Jaula con Castillo y Tobogan para Hamster.', 'ban5_8YkIyO5.png', 3),
(6, 'Acuario para Peces', 24990, 10, 'Acuario para Peces Tamaño XL.', 'ban2_IhIUiZs.png', 3),
(7, 'Pack Columpio para Pajaros', 12990, 10, 'Pack de Columpios y Juguetes para Pajaros.', 'cor1_bLqYoko.png', 3),
(8, 'Chaleco con Correa para Conejo', 14990, 10, 'Chaleco con Correa de color Rojo y Azul para Conejo.', 'jug1_3WJuhVK.png', 3),
(9, 'Chaleco para Langosta', 999999, 1, 'Chaleco de Lana para Langosta.', 'jug_UiIOqkk.png', 3),
(10, 'Chaleco para Serpiente', 999999, 1, 'Chaleco Navideño para Serpiente.', 'jug5_ZvEC5vD.png', 3),
(11, 'Whiskas Sabor Carne 1kg', 14990, 10, 'Alimento Whiskas Sabor Carne de 1kg para Gatos de 1 año o más.', 'ali1_fIoopXd.png', 2),
(12, 'ChampionCat Adulto 8kg', 24990, 10, 'Alimento ChampionCat Sabor Pescado de 8kg para Adultos.', 'ali2_L7e7nKD.png', 2),
(13, 'ChampionCat Trocitos 100g', 1990, 10, 'Alimento ChampionCat Trocitos en Salsa sabor Carne 100g.', 'ali4_xPKuHVt.png', 2),
(14, 'Castillo Rascador para Gato.', 14490, 10, 'Castillo Rascador para Gato Color Beige.', 'jug5_sfyw9IS.png', 2),
(15, 'Juguete Ratón para Gato', 4990, 10, 'Raton Estimulante para Gato', 'juguete_gato_raton_DDznjvC.png', 2),
(16, 'Mochila Astronauta Gato', 19990, 10, 'Mochila Astronauta Transportadora con Variedad de Colores', 'moc3_UMNV2pR.png', 2),
(17, 'Chaleco Frutilla Gato', 14990, 10, 'Chalequito con Diseño de Frutilla para Gato.', 'rop3_Yd65cOy.png', 2),
(18, 'Chaleco Navideño para Gato', 14990, 10, 'Chaleco con Diseño Navideño para Gato.', 'rop5_jPHUvzM.png', 2),
(19, 'Chaleco para Gato', 12490, 10, 'Chaleco para Gato con Variedad de Colores.', 'rop2_DSv21wW.png', 2),
(20, 'ChampionDog Premium 3kg', 14990, 10, 'Alimento ChampionDog Premium Sabor Carne, Pollo y Leche de 3kg para Cachorros.', 'ali3_LmtLCIw.png', 1),
(21, 'MasterDog Dog Lover 15kg', 29990, 10, 'Alimento MasterDog Dog Lover Adulto Sabor Carne de 15kg.', 'ali2_Adk8Yxr.png', 1),
(22, 'Purina DogChow Minis 3kg', 14990, 10, 'Alimento DogChow Extralife Sabor Pollo y Pavo para Minis.', 'ali5_axdoBVS.png', 1),
(23, 'Bandana Celeste Perritos', 2990, 10, 'Bandana Celeste con Diseño de Adorables Perritos.', 'ban1_Koum7bs.png', 1),
(24, 'Bandana Morada Brujita', 3990, 10, 'Bandana Morada con Diseño de Brujita.', 'ban5_2hCE7LK.png', 1),
(25, 'Correa Retractil Azul', 9990, 10, 'Correa Retractil color Azul para Perros.', 'cor2_49tvjY8.png', 1),
(26, 'Correa Retractil Rosa', 9990, 10, 'Correa Retractil color Rosa para Perros.', 'cor3_7zqv2dY.png', 1),
(27, 'Collar Identificador Perro', 4990, 10, 'Collar Identificador Para Perro con variedad de Colores.', 'identificador_A7jUjfH.png', 1),
(28, 'Pack Juguetes para Perro', 14990, 10, 'Pack de Juguetes Mordedores para Perro', 'jug3_rrPQr4E.png', 1),
(33, 'gjhasdghjadsgjgadhjsjaghds', 123123, 3214123, 'jgshdfajghdfsjghfdjghjghsdfjghdsfjgh', '9vqo749i4h261_Wa1kjyJ.png', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
