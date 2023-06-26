-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 08:40:31
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
CREATE DATABASE IF NOT EXISTS `webmasc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webmasc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`) VALUES
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Administrador'),
(1, 'Cliente'),
(3, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add carrito', 7, 'add_carrito'),
(26, 'Can change carrito', 7, 'change_carrito'),
(27, 'Can delete carrito', 7, 'delete_carrito'),
(28, 'Can view carrito', 7, 'view_carrito'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add suscripcion', 9, 'add_suscripcion'),
(34, 'Can change suscripcion', 9, 'change_suscripcion'),
(35, 'Can delete suscripcion', 9, 'delete_suscripcion'),
(36, 'Can view suscripcion', 9, 'view_suscripcion'),
(37, 'Can add seguimiento', 10, 'add_seguimiento'),
(38, 'Can change seguimiento', 10, 'change_seguimiento'),
(39, 'Can delete seguimiento', 10, 'delete_seguimiento'),
(40, 'Can view seguimiento', 10, 'view_seguimiento'),
(41, 'Can add producto', 11, 'add_producto'),
(42, 'Can change producto', 11, 'change_producto'),
(43, 'Can delete producto', 11, 'delete_producto'),
(44, 'Can view producto', 11, 'view_producto'),
(45, 'Can add item carrito', 12, 'add_itemcarrito'),
(46, 'Can change item carrito', 12, 'change_itemcarrito'),
(47, 'Can delete item carrito', 12, 'delete_itemcarrito'),
(48, 'Can view item carrito', 12, 'view_itemcarrito'),
(49, 'Can add compra', 13, 'add_compra'),
(50, 'Can change compra', 13, 'change_compra'),
(51, 'Can delete compra', 13, 'delete_compra'),
(52, 'Can view compra', 13, 'view_compra'),
(53, 'Can add item compra', 14, 'add_itemcompra'),
(54, 'Can change item compra', 14, 'change_itemcompra'),
(55, 'Can delete item compra', 14, 'delete_itemcompra'),
(56, 'Can view item compra', 14, 'view_itemcompra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$VDig4Aw8fMzt$cSRtsJjW6c+YHWaf5xYTnkTnFLg8zD70T4kRncKRxew=', '2023-06-25 06:38:43.150327', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-06-25 01:29:53.000000'),
(3, 'pbkdf2_sha256$216000$S5L6gfJS1GO8$DN8MSEKw7HUS9vRrflbIOw99oiFvOs+8qEN231NrURs=', '2023-06-25 03:40:19.000000', 0, 'prueba', '', '', 'dani@duoc.cl', 1, 1, '2023-06-25 03:40:19.000000'),
(4, 'pbkdf2_sha256$216000$ONcoWIjxQ4t5$uS//yG3eeLgc4msXLTTNcGt6glRyzVxn57dlhym4zRM=', '2023-06-25 03:56:52.000000', 0, 'prueba2', '', '', 'prueba2@gmail.com', 1, 1, '2023-06-25 03:56:52.000000'),
(5, 'pbkdf2_sha256$216000$l1XHbeRa1boE$09+o1uR9LW8zrXz1Y2WK+/3goKY3ahbOe5A8wQHSzKg=', '2023-06-25 04:14:00.247207', 0, 'dani', '', '', 'dani@duoc.cl', 0, 1, '2023-06-25 04:12:04.611341');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 2),
(6, 3, 3),
(2, 4, 1),
(7, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrito`
--

CREATE TABLE `core_carrito` (
  `id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_carrito`
--

INSERT INTO `core_carrito` (`id`, `total`, `usuario_id`) VALUES
(1, 0.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrito_items`
--

CREATE TABLE `core_carrito_items` (
  `id` int(11) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `itemcarrito_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_compra`
--

CREATE TABLE `core_compra` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `seguimiento` varchar(100) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_cuenta`
--

CREATE TABLE `core_cuenta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `contraseña` varchar(10) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_itemcarrito`
--

CREATE TABLE `core_itemcarrito` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `cantidad_inicial` int(10) UNSIGNED NOT NULL CHECK (`cantidad_inicial` >= 0),
  `precio_total` decimal(10,2) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `i_producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_itemcompra`
--

CREATE TABLE `core_itemcompra` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(28, 'Pack Juguetes para Perro', 14990, 10, 'Pack de Juguetes Mordedores para Perro', 'jug3_rrPQr4E.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_seguimiento`
--

CREATE TABLE `core_seguimiento` (
  `id` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_suscripcion`
--

CREATE TABLE `core_suscripcion` (
  `id` int(11) NOT NULL,
  `descuento` decimal(5,0) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Perro'),
(2, 'Gato'),
(3, 'Exotico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-24 07:44:37.729636', '1', 'Perro', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-06-24 07:44:42.295696', '2', 'Gato', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-06-24 07:44:47.245768', '3', 'Exotico', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-06-25 03:04:13.195602', '1', 'Clientes', 1, '[{\"added\": {}}]', 3, 1),
(5, '2023-06-25 03:05:09.572187', '2', 'Admin', 1, '[{\"added\": {}}]', 3, 1),
(6, '2023-06-25 03:06:54.458914', '3', 'Vendedor', 1, '[{\"added\": {}}]', 3, 1),
(7, '2023-06-25 03:07:00.668471', '1', 'Cliente', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(8, '2023-06-25 03:07:11.241826', '2', 'Administrador', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(9, '2023-06-25 03:23:44.005471', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(10, '2023-06-25 03:30:18.533338', '2', 'dani', 2, '[]', 4, 1),
(11, '2023-06-25 03:30:25.752319', '2', 'dani', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(12, '2023-06-25 03:30:34.659064', '2', 'dani', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(13, '2023-06-25 03:48:26.614025', '2', 'dani', 2, '[]', 4, 1),
(14, '2023-06-25 03:57:16.325227', '4', 'prueba2', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(15, '2023-06-25 04:02:49.368145', '3', 'prueba', 2, '[]', 4, 1),
(16, '2023-06-25 04:03:26.878656', '3', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(17, '2023-06-25 04:03:35.732579', '2', 'dani', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 1),
(18, '2023-06-25 04:07:10.539826', '3', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(19, '2023-06-25 04:07:17.291191', '3', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(20, '2023-06-25 04:10:39.556684', '3', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(21, '2023-06-25 04:11:35.875573', '2', 'dani', 3, '', 4, 1),
(22, '2023-06-25 04:46:57.801198', '1', 'Seguimiento 1 - Validación', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'carrito'),
(13, 'core', 'compra'),
(12, 'core', 'itemcarrito'),
(14, 'core', 'itemcompra'),
(11, 'core', 'producto'),
(10, 'core', 'seguimiento'),
(9, 'core', 'suscripcion'),
(8, 'core', 'tipoproducto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 01:26:51.199637'),
(2, 'auth', '0001_initial', '2023-06-25 01:26:51.328898'),
(3, 'admin', '0001_initial', '2023-06-25 01:26:51.680441'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 01:26:51.767364'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 01:26:51.783612'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 01:26:51.848640'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 01:26:51.905828'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 01:26:51.938366'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 01:26:51.978846'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 01:26:52.028286'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 01:26:52.028286'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 01:26:52.044468'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 01:26:52.068828'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 01:26:52.092841'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 01:26:52.116870'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 01:26:52.132870'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 01:26:52.157355'),
(18, 'core', '0001_initial', '2023-06-25 01:26:52.341127'),
(19, 'core', '0002_carrito_usuario', '2023-06-25 01:26:52.768743'),
(20, 'sessions', '0001_initial', '2023-06-25 01:26:52.798610'),
(21, 'core', '0003_auto_20230624_2201', '2023-06-25 02:01:59.876105'),
(22, 'core', '0004_itemcompra', '2023-06-25 02:03:27.893387'),
(23, 'core', '0005_auto_20230624_2256', '2023-06-25 03:47:53.408460');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ddnhcmtg9co4dxngfur525diybdcw2g', '.eJxVjEEOgyAQRe_CuiHAIILL7nsGMzBjtW00AVwZ715NXLTb_95_m-hxrWO_Fs79RKITWtx-t4jpzfMJ6IXzc5FpmWueojwVedEiHwvx5365f4ERy3i8vW-D8dR4NuBCUugsueBiIu8NRGVdUJbZGEgMDGiYcNDBqlYTNM1wRBPmKrpt37_8YTqf:1q6MRf:2MyIQ7JsSkTTxuH9-6xTym3GQrC-k2603ACi8Oe8yWw', '2023-06-20 02:29:15.726197'),
('nucps9hdjmqy6rhjwskgmw4h3p8ja5by', '.eJxVjLkOwjAQRP_FNbJ8rm1K-nxDtOsDB5At5agQ_04ipYBy5r2ZNxtxW-u4LXkep8SuTLLLb0cYn7kdID2w3TuPva3zRPxQ-EkXPvSUX7fT_TuouNR9HTS46IIVEYXzVqJUJuk9WDRRFq1AA5GiUBQo6wV5C-htplLASAPs8wW_BzcL:1qDJOV:plznNwRp5s3A4IENOWwRq_H_8x4dHLAzMW2c_kT9AQE', '2023-07-09 06:38:43.152328'),
('o2mfqx6lokxeqo63hb5hcwxqrwmdkrwu', '.eJxVjsFqhDAQhl9F5ry4Jpqoe-y9hz0VSkAmk6jp1kSinhbfvRGX0p6G-f9vPuYJHW7r2G2LjZ0zcAMGl7-ZRnpYfxTmC_0Qcgp-jU7nB5K_2iV_D8Z-v73Yf4IRlzFdt6WsqW5FQVjUjWDIeGXKtAisiPUll6XUmuu255KLptCNkNgIq_teVqySSUoY12R6KmAKblmacwxmozWkz4-EXTIFPkw62mNVQCFGi9lsYwwKjnZZAz1-2TlacuFkWVGciJtwsP4Mr5M1Dq_Jw7v58-OOdM9nPyjYd9h_AIkiZAY:1qDHb6:450syW8bCSUhGC0HU-yI1KsvCY0kYSPDUfIwFjMVmTY', '2023-07-09 04:43:36.394041');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `core_carrito_items`
--
ALTER TABLE `core_carrito_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_carrito_items_carrito_id_itemcarrito_id_3296cfcd_uniq` (`carrito_id`,`itemcarrito_id`),
  ADD KEY `core_carrito_items_itemcarrito_id_a2267159_fk_core_item` (`itemcarrito_id`);

--
-- Indices de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_cuenta`
--
ALTER TABLE `core_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_itemcarrito`
--
ALTER TABLE `core_itemcarrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_itemcarrito_carrito_id_427071c4_fk_core_carrito_id` (`carrito_id`),
  ADD KEY `core_itemcarrito_i_producto_id_9ed631ba_fk_core_producto_id` (`i_producto_id`);

--
-- Indices de la tabla `core_itemcompra`
--
ALTER TABLE `core_itemcompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_itemcompra_compra_id_56ff4dc7_fk_core_compra_id` (`compra_id`),
  ADD KEY `core_itemcompra_producto_id_2378e567_fk_core_producto_id` (`producto_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_carrito_items`
--
ALTER TABLE `core_carrito_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_itemcarrito`
--
ALTER TABLE `core_itemcarrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_itemcompra`
--
ALTER TABLE `core_itemcompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD CONSTRAINT `core_carrito_usuario_id_9eafcb26_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_carrito_items`
--
ALTER TABLE `core_carrito_items`
  ADD CONSTRAINT `core_carrito_items_carrito_id_35cc8b0f_fk_core_carrito_id` FOREIGN KEY (`carrito_id`) REFERENCES `core_carrito` (`id`),
  ADD CONSTRAINT `core_carrito_items_itemcarrito_id_a2267159_fk_core_item` FOREIGN KEY (`itemcarrito_id`) REFERENCES `core_itemcarrito` (`id`);

--
-- Filtros para la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD CONSTRAINT `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_itemcarrito`
--
ALTER TABLE `core_itemcarrito`
  ADD CONSTRAINT `core_itemcarrito_carrito_id_427071c4_fk_core_carrito_id` FOREIGN KEY (`carrito_id`) REFERENCES `core_carrito` (`id`),
  ADD CONSTRAINT `core_itemcarrito_i_producto_id_9ed631ba_fk_core_producto_id` FOREIGN KEY (`i_producto_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_itemcompra`
--
ALTER TABLE `core_itemcompra`
  ADD CONSTRAINT `core_itemcompra_compra_id_56ff4dc7_fk_core_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `core_compra` (`id`),
  ADD CONSTRAINT `core_itemcompra_producto_id_2378e567_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  ADD CONSTRAINT `core_seguimiento_usuario_id_1f59b804_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_suscripcion`
--
ALTER TABLE `core_suscripcion`
  ADD CONSTRAINT `core_suscripcion_usuario_id_e497b785_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
