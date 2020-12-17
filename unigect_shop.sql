-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2020 a las 02:48:03
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unigect_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `addresses`
--

INSERT INTO `addresses` (`id`, `line1`, `line2`, `city`, `state`, `country`, `phone`, `pincode`, `user_id`, `fullname`) VALUES
(1, 'Girasol 81', 'Nueva California', 'Torreón', 'Coahuila', 'México', '8712803782', 27089, 1, 'Angel Eduardo Soto'),
(2, 'Torre Blanca', 'San Felipe', 'Torreón', 'Coahuila', 'México', '8712803782', 27085, 1, 'Angel Eduardo Soto'),
(5, 'Paseo Rosita 1124', 'Torreón Jardin', 'Torreón', 'Coahuila', 'Torreón', '8712899821', 27089, 20, 'Juan Soto Rdz'),
(7, 'Del Desierto 98', 'Nueva California', 'Torreón', 'Coahuila', 'Torreón', '8712899821', 27089, 20, 'Bertha Alicia'),
(8, 'Moralos 1123', 'Centro', 'Torreón', 'Coahuila', 'México', '8712892345', 27000, 20, 'Alberto Del Rio'),
(9, 'Lomas', 'Villa morada', 'Gomez', 'Durango', 'México', '8712908745', 345672, 32, 'Harry Potter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Clinico'),
(2, 'Camisas'),
(3, 'Cubrebocas'),
(4, 'Industrial'),
(5, 'Playeras'),
(6, 'Chamarras'),
(7, 'Pantalones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(135, 1),
(136, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(123, 2),
(134, 20),
(137, 20),
(138, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_details`
--

CREATE TABLE IF NOT EXISTS `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(4, 7, 4, 1),
(6, 8, 5, 1),
(45, 39, 1, 3),
(46, 39, 13, 3),
(47, 39, 18, 2),
(49, 40, 1, 2),
(50, 40, 18, 1),
(52, 40, 13, 2),
(54, 42, 1, 2),
(55, 42, 18, 1),
(57, 42, 13, 2),
(58, 43, 13, 2),
(59, 43, 1, 2),
(60, 43, 18, 1),
(62, 44, 1, 2),
(64, 44, 13, 8),
(65, 44, 18, 5),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(87, 63, 18, 5),
(89, 63, 13, 8),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(164, 104, 13, 8),
(165, 104, 18, 5),
(166, 105, 1, 2),
(168, 105, 18, 5),
(169, 105, 13, 8),
(170, 106, 13, 8),
(171, 106, 1, 2),
(173, 106, 18, 5),
(174, 107, 1, 2),
(175, 107, 18, 5),
(177, 107, 13, 8),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1),
(205, 123, 13, 28),
(206, 123, 1, 2),
(207, 123, 18, 5),
(208, 124, 6, 1),
(209, 124, 3, 2),
(210, 124, 2, 1),
(211, 125, 2, 1),
(212, 125, 3, 1),
(213, 126, 8, 3),
(214, 126, 9, 1),
(215, 127, 8, 3),
(216, 128, 5, 1),
(217, 129, 3, 1),
(218, 130, 8, 3),
(219, 130, 2, 1),
(220, 131, 3, 1),
(221, 131, 6, 1),
(222, 132, 8, 1),
(223, 132, 2, 1),
(224, 132, 5, 1),
(225, 133, 6, 1),
(226, 133, 9, 1),
(227, 134, 7, 1),
(228, 135, 2, 1),
(229, 136, 6, 1),
(230, 137, 3, 1),
(231, 138, 9, 1),
(232, 138, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Bata de Laboratorio', 'https://static.wixstatic.com/media/161a5c_36e897344ae541e5b7113e9a4508e291~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_36e897344ae541e5b7113e9a4508e291~mv2.webp', 'https://static.wixstatic.com/media/161a5c_36e897344ae541e5b7113e9a4508e291~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_36e897344ae541e5b7113e9a4508e291~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nGABARDINA\r\n60% algodón\r\n40 poliéster\r\n7.00oz', 360.9, 0, 'Medik code', 1),
(2, 'Overol Tyvek', 'https://static.wixstatic.com/media/161a5c_ce265ef1d1234a2f8d54695c3b851f64~mv2.jpg/v1/fill/w_420,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_ce265ef1d1234a2f8d54695c3b851f64~mv2.webp', 'https://static.wixstatic.com/media/161a5c_ce265ef1d1234a2f8d54695c3b851f64~mv2.jpg/v1/fill/w_420,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_ce265ef1d1234a2f8d54695c3b851f64~mv2.webp;https://static.wixstatic.com/media/161a5c_8e2b8f736b8f46ba99f5c34995143b62~mv2.jpg/v1/fill/w_420,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_8e2b8f736b8f46ba99f5c34995143b62~mv2.webp', 'Ponte totalmente cómodo con protección de alto nivel\r\n\r\nLas batas quirúrgicas de rendimiento transpirable AERO CHROME* combinan comodidad, suavidad y transpirabilidad sin precedentes con la máxima protección contra fluidos y patógenos.', 170, 44, 'Overol', 1),
(3, 'Bata Médica', 'https://static.wixstatic.com/media/161a5c_30d85eac757141368ce4164de5bd49d9~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_30d85eac757141368ce4164de5bd49d9~mv2.webp', 'https://static.wixstatic.com/media/161a5c_30d85eac757141368ce4164de5bd49d9~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_30d85eac757141368ce4164de5bd49d9~mv2.webp', 'INFORMACIÓN DE PRODUCTO GABARDINA  60% algodón 40 poliéster 7.00oz', 358.7, 63, 'Medik Code', 1),
(4, 'COMET - Dama', 'https://static.wixstatic.com/media/161a5c_eab8a4d1fa5148a8a8d43b95c90050ab~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_eab8a4d1fa5148a8a8d43b95c90050ab~mv2.webp', 'https://static.wixstatic.com/media/161a5c_eab8a4d1fa5148a8a8d43b95c90050ab~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_eab8a4d1fa5148a8a8d43b95c90050ab~mv2.webp;https://static.wixstatic.com/media/161a5c_4e73612dda5d44bc892b9a487b90c4ad~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_4e73612dda5d44bc892b9a487b90c4ad~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPOPELINA\r\n\r\n60% algodón\r\n40% poliéster\r\n5.00 oz', 185, 78, 'BIGBANG', 2),
(5, 'COMET - Caballero', 'https://static.wixstatic.com/media/161a5c_ce58f76feced44e4ad01bed58caaebc9~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_ce58f76feced44e4ad01bed58caaebc9~mv2.webp', 'https://static.wixstatic.com/media/161a5c_ce58f76feced44e4ad01bed58caaebc9~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_ce58f76feced44e4ad01bed58caaebc9~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPOPELINA\r\n\r\n60% algodón\r\n40% poliéster\r\n5.00 oz', 185, 81, 'BIGBANG', 2),
(6, 'ZODIAC - Dama', 'https://static.wixstatic.com/media/161a5c_43f0ea6d9d054d88924a1bddefa25f57~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_43f0ea6d9d054d88924a1bddefa25f57~mv2.webp', 'https://static.wixstatic.com/media/161a5c_43f0ea6d9d054d88924a1bddefa25f57~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_43f0ea6d9d054d88924a1bddefa25f57~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nOXFORD MIL RAYAS\r\n\r\n60% algodón\r\n40% poliéster\r\n5.30 oz', 185, 30, 'BIGBANG', 2),
(7, 'NARVI - Dama', 'https://static.wixstatic.com/media/161a5c_f59de1d17f034887b546f60c5cb39e7d~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_f59de1d17f034887b546f60c5cb39e7d~mv2.webp', 'https://static.wixstatic.com/media/161a5c_f59de1d17f034887b546f60c5cb39e7d~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_f59de1d17f034887b546f60c5cb39e7d~mv2.webp;https://static.wixstatic.com/media/161a5c_95cae765497b48368ee7b38e8d3e9abf~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_95cae765497b48368ee7b38e8d3e9abf~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPIQUÉ\r\n\r\n50% algodón\r\n50% poliéster\r\n8.00 oz', 85, 94, 'BIGBANG', 5),
(8, 'NARVI - Caballero', 'https://static.wixstatic.com/media/161a5c_f0bf803a23584efe8f1dd1ca651cc801~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_f0bf803a23584efe8f1dd1ca651cc801~mv2.webp', 'https://static.wixstatic.com/media/161a5c_f0bf803a23584efe8f1dd1ca651cc801~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_f0bf803a23584efe8f1dd1ca651cc801~mv2.webp;https://static.wixstatic.com/media/161a5c_c9fb85951f2049648d21d8564d8e405e~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_c9fb85951f2049648d21d8564d8e405e~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPIQUÉ\r\n\r\n50% algodón\r\n50% poliéster\r\n8.00 oz', 85, 90, 'BIGBANG', 5),
(9, 'KATT - Caballero', 'https://static.wixstatic.com/media/161a5c_e02c6fc0b5cd4d3f855e583578ea7b50~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_e02c6fc0b5cd4d3f855e583578ea7b50~mv2.webp', 'https://static.wixstatic.com/media/161a5c_e02c6fc0b5cd4d3f855e583578ea7b50~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_e02c6fc0b5cd4d3f855e583578ea7b50~mv2.webp;https://static.wixstatic.com/media/161a5c_1c4be22a8ef547e79046469d0fb9a24e~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_1c4be22a8ef547e79046469d0fb9a24e~mv2.webp;https://static.wixstatic.com/media/161a5c_a059559d44dc4255924c2b019eb856d0~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_a059559d44dc4255924c2b019eb856d0~mv2.webp;https://static.wixstatic.com/media/161a5c_6ec81deb8a6148058bdeda40d2f7591b~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_6ec81deb8a6148058bdeda40d2f7591b~mv2.webp;https://static.wixstatic.com/media/161a5c_0b1ba7464a8c44c184b67488a4f5c2ea~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_0b1ba7464a8c44c184b67488a4f5c2ea~mv2.webp;https://static.wixstatic.com/media/161a5c_aca9432cfb3544e093c028248d96dbc5~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_aca9432cfb3544e093c028248d96dbc5~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nJERSEY\r\n\r\nTecnología:\r\nAntimicrobial\r\nDispersor de humedad\r\nProtección UV30\r\n100% poliéster\r\n4.90 oz', 221, 97, 'BIGBANG', 5),
(10, 'ARTIC - Caballero', 'https://static.wixstatic.com/media/161a5c_117fcdde46194461b2bdaf6353a77d17~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_117fcdde46194461b2bdaf6353a77d17~mv2.webp', 'https://static.wixstatic.com/media/161a5c_117fcdde46194461b2bdaf6353a77d17~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_117fcdde46194461b2bdaf6353a77d17~mv2.webp;https://static.wixstatic.com/media/161a5c_c2c6802db3444de6b4d959dab4d7b581~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_c2c6802db3444de6b4d959dab4d7b581~mv2.webp;https://static.wixstatic.com/media/161a5c_a02e4e86ca594bfeb189212c6976833b~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_a02e4e86ca594bfeb189212c6976833b~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nFLEECE\r\n\r\n100% poliéster reciclado\r\nHecha con 16 botellas de PET recicladas\r\n9.90 oz', 558.5, 100, 'BIGBANG', 6),
(11, 'ARTIC - Dama', 'https://static.wixstatic.com/media/161a5c_3a31cc93cf6648ceadc552617ed80b74~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_3a31cc93cf6648ceadc552617ed80b74~mv2.webp', 'https://static.wixstatic.com/media/161a5c_3a31cc93cf6648ceadc552617ed80b74~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_3a31cc93cf6648ceadc552617ed80b74~mv2.webp;https://static.wixstatic.com/media/161a5c_672d95e7ef564dd09732502e2210abf5~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_672d95e7ef564dd09732502e2210abf5~mv2.webp;https://static.wixstatic.com/media/161a5c_cb5bb1e0ce534fefa1c436197f9e1c34~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_cb5bb1e0ce534fefa1c436197f9e1c34~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nFLEECE\r\n\r\n100% poliéster reciclado\r\nHecha con 16 botellas de PET recicladas\r\n9.90 oz', 558.5, 100, 'BIGBANG', 6),
(12, 'DEIMOS - Dama', 'https://static.wixstatic.com/media/161a5c_e35a1b962ccc4aaea1e38735e4984c61~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_e35a1b962ccc4aaea1e38735e4984c61~mv2.webp', 'https://static.wixstatic.com/media/161a5c_e35a1b962ccc4aaea1e38735e4984c61~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_e35a1b962ccc4aaea1e38735e4984c61~mv2.webp;https://static.wixstatic.com/media/161a5c_d839bd916fbb4780ba21a37f70db751a~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_d839bd916fbb4780ba21a37f70db751a~mv2.webp;https://static.wixstatic.com/media/161a5c_3bd4297971394bcb869cda6b836e5f24~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_3bd4297971394bcb869cda6b836e5f24~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nGABARDINA\r\n\r\n60% algodón\r\n40% poliéster\r\n8.80 oz', 95, 100, 'BIGBANG', 7),
(13, 'DEIMOS - Caballero', 'https://static.wixstatic.com/media/161a5c_511561891e2c419d95d045469cbd0dfa~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_511561891e2c419d95d045469cbd0dfa~mv2.webp', 'https://static.wixstatic.com/media/161a5c_511561891e2c419d95d045469cbd0dfa~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_511561891e2c419d95d045469cbd0dfa~mv2.webp;https://static.wixstatic.com/media/161a5c_c3eb0b77b81940d287273fa60c0e4295~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_c3eb0b77b81940d287273fa60c0e4295~mv2.webp;https://static.wixstatic.com/media/161a5c_0597160c387942f98bd2c5d0083143b5~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_0597160c387942f98bd2c5d0083143b5~mv2.webp;https://static.wixstatic.com/media/161a5c_4d7a2f3389ea457f80eea790e0060ec7~mv2.png/v1/fill/w_322,h_420,al_c,q_90,usm_0.66_1.00_0.01/161a5c_4d7a2f3389ea457f80eea790e0060ec7~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nGABARDINA\r\n\r\n60% algodón\r\n40% poliéster\r\n8.80 oz', 95, 94, 'BIGBANG', 7),
(14, 'ARES - Caballero', 'https://static.wixstatic.com/media/161a5c_02192b50d5d84f288f2bcd95fe9221e9~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_02192b50d5d84f288f2bcd95fe9221e9~mv2.webp', 'https://static.wixstatic.com/media/161a5c_02192b50d5d84f288f2bcd95fe9221e9~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_02192b50d5d84f288f2bcd95fe9221e9~mv2.webp;https://static.wixstatic.com/media/161a5c_946db822a7924e2d87eff43dc1b75c02~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_946db822a7924e2d87eff43dc1b75c02~mv2.webp;https://static.wixstatic.com/media/161a5c_63ec5c58f2664d258fb19e006b4bb03a~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_63ec5c58f2664d258fb19e006b4bb03a~mv2.webp;https://static.wixstatic.com/media/161a5c_66daac09b32f4cba96b852864b6f53f5~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_66daac09b32f4cba96b852864b6f53f5~mv2.webp;https://static.wixstatic.com/media/161a5c_c9eb1eaf09f5408e831171d72ed32953~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_c9eb1eaf09f5408e831171d72ed32953~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nGABARDINA STRETCH\r\n\r\n60% algodón\r\n37% poliéster\r\n3% elastano\r\n7.50 oz', 329, 100, 'BIGBANG', 7),
(15, 'ULTRON - Caballero', 'https://static.wixstatic.com/media/161a5c_7ceb9d6ce2e4400ebc620be0b5dab6bc~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_7ceb9d6ce2e4400ebc620be0b5dab6bc~mv2.webp', 'https://static.wixstatic.com/media/161a5c_7ceb9d6ce2e4400ebc620be0b5dab6bc~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_7ceb9d6ce2e4400ebc620be0b5dab6bc~mv2.webp;https://static.wixstatic.com/media/161a5c_bb0f16485c1b4c5fbe73eada6b77bfd9~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_bb0f16485c1b4c5fbe73eada6b77bfd9~mv2.webp;https://static.wixstatic.com/media/161a5c_e663c8f3b71845fc8f50623ded618c27~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_e663c8f3b71845fc8f50623ded618c27~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\n100% ALGODÓN DE ALTA SOLIDEZ\r\n\r\nAMARILLO DE ALTA VISIBILIDAD\r\n\r\nDoble cinta reflectiva 2" 450lux/m2\r\n\r\nCuello y puños azul marino oscuro\r\n\r\nDoble bolsa con espacio para pluma\r\n\r\nPresilla de refuerzo con costura doble​\r\n\r\nSolapa para colgar radio', 639.75, 100, 'ROUGHTEK', 4),
(16, 'ULTRON - Dama', 'https://static.wixstatic.com/media/161a5c_612d5281400941d69ad9f88222fff566~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_612d5281400941d69ad9f88222fff566~mv2.webp', 'https://static.wixstatic.com/media/161a5c_612d5281400941d69ad9f88222fff566~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_612d5281400941d69ad9f88222fff566~mv2.webp;https://static.wixstatic.com/media/161a5c_0737e698a3fb498ea5bda7dfee8a5f10~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_0737e698a3fb498ea5bda7dfee8a5f10~mv2.webp;https://static.wixstatic.com/media/161a5c_0242f007334e454babc0eb83056762f1~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_0242f007334e454babc0eb83056762f1~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\n100% ALGODÓN DE ALTA SOLIDEZ\r\n\r\nAMARILLO DE ALTA VISIBILIDAD\r\n\r\nDoble cinta reflectiva 2" 450lux/m2\r\n\r\nCuello y puños azul marino oscuro\r\n\r\nDoble bolsa con espacio para pluma\r\n\r\nPresilla de refuerzo con costura doble​\r\n\r\nSolapa para colgar radio', 632.75, 100, 'ROUGHTEK', 4),
(17, 'NATRON - Dama', 'https://static.wixstatic.com/media/161a5c_a1c885e0e9ce45fea35951a0852770ac~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_a1c885e0e9ce45fea35951a0852770ac~mv2.webp', 'https://static.wixstatic.com/media/161a5c_a1c885e0e9ce45fea35951a0852770ac~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_a1c885e0e9ce45fea35951a0852770ac~mv2.webp;https://static.wixstatic.com/media/161a5c_7c4f757a795341ee9e6ed1edee8b4313~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_7c4f757a795341ee9e6ed1edee8b4313~mv2.webp;https://static.wixstatic.com/media/161a5c_561be107973443ce809d950c8e4d90b7~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_561be107973443ce809d950c8e4d90b7~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\n100% ALGODÓN​\r\n\r\nDoble cinta reflectiva 2"  450lux/m2\r\n\r\nCuello y puños azul marino oscuro\r\n\r\nDoble bolsa con espacio para pluma\r\n\r\nPresilla de refuerzo con costura doble​\r\n\r\nSolapa para colgar radio', 524.25, 100, 'ROUGHTEK', 4),
(18, 'NATRON - Caballero', 'https://static.wixstatic.com/media/161a5c_637201998ae74231be8d96d5afc86f50~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_637201998ae74231be8d96d5afc86f50~mv2.webp', 'https://static.wixstatic.com/media/161a5c_637201998ae74231be8d96d5afc86f50~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_637201998ae74231be8d96d5afc86f50~mv2.webp;https://static.wixstatic.com/media/161a5c_2d20ab7247f24016803fa3fd25960f2c~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_2d20ab7247f24016803fa3fd25960f2c~mv2.webp;https://static.wixstatic.com/media/161a5c_fe07c33e30314f2882ad66bbea83303f~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_fe07c33e30314f2882ad66bbea83303f~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\n100% ALGODÓN\r\n\r\nDoble cinta reflectiva 2"  450lux/m2\r\n\r\nCuello y puños azul marino oscuro\r\n\r\nDoble bolsa con espacio para pluma\r\n\r\nPresilla de refuerzo con costura doble​\r\n\r\nSolapa para colgar radio', 524.75, 65, 'ROUGHTEK', 4),
(19, 'HERKIMER - Caballero', 'https://static.wixstatic.com/media/161a5c_6e26dd64049a4599a6ad0c6bfe7fea22~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_6e26dd64049a4599a6ad0c6bfe7fea22~mv2.webp', 'https://static.wixstatic.com/media/161a5c_6e26dd64049a4599a6ad0c6bfe7fea22~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_6e26dd64049a4599a6ad0c6bfe7fea22~mv2.webp;https://static.wixstatic.com/media/161a5c_80406f28577f438fa2d1a07d502d9f84~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_80406f28577f438fa2d1a07d502d9f84~mv2.webp;https://static.wixstatic.com/media/161a5c_549c6393a60a453bbf3eff1c60c16fd4~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_549c6393a60a453bbf3eff1c60c16fd4~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\n100% ALGODÓN\r\n\r\nDoble cinta reflejante 2"  -  450lux/m2', 342.5, 100, 'ROUGHTEK', 4),
(20, 'HERKIMER - Dama', 'https://static.wixstatic.com/media/161a5c_d901958745294fee9abaaa751857d302~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_d901958745294fee9abaaa751857d302~mv2.webp', 'https://static.wixstatic.com/media/161a5c_d901958745294fee9abaaa751857d302~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_d901958745294fee9abaaa751857d302~mv2.webp;https://static.wixstatic.com/media/161a5c_7de1d43e8ff442efa575d8f38084da0e~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_7de1d43e8ff442efa575d8f38084da0e~mv2.webp;https://static.wixstatic.com/media/161a5c_ac9c4fcee7684c8dbfa1fc2a733396b4~mv2.jpg/v1/fill/w_322,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_ac9c4fcee7684c8dbfa1fc2a733396b4~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nMEZCLILLA\r\n\r\n81% algodón\r\n\r\n17% poliéster\r\n\r\n2% elastano​\r\n\r\n​\r\n\r\nDoble cinta reflejante 2"  -  450lux/m2', 342.5, 100, 'ROUGHTEK', 4),
(21, 'TRICAPA SS - paq 50pzs', 'https://static.wixstatic.com/media/161a5c_01c4b52e15684555b064ffa5a263cc7f~mv2.jpg/v1/fill/w_513,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_01c4b52e15684555b064ffa5a263cc7f~mv2.webp', 'https://static.wixstatic.com/media/161a5c_01c4b52e15684555b064ffa5a263cc7f~mv2.jpg/v1/fill/w_513,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_01c4b52e15684555b064ffa5a263cc7f~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPAQUETE: 100pzs\r\n\r\nTela SS SPONBOND 100% polipropileno\r\nLiga elástica de latex recubierta de hilo poliéster\r\nPeso de 30g/m2', 200, 100, 'Cubrebocas', 3),
(22, 'KN95 paq 50 pzs', 'https://static.wixstatic.com/media/161a5c_64468c5a754744daac44015561dacb1e~mv2.jpg/v1/fill/w_491,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_64468c5a754744daac44015561dacb1e~mv2.webp', 'https://static.wixstatic.com/media/161a5c_64468c5a754744daac44015561dacb1e~mv2.jpg/v1/fill/w_491,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_64468c5a754744daac44015561dacb1e~mv2.webp;https://static.wixstatic.com/media/161a5c_7cfd8311987d46a0a4a8cd3ceec4e9b7~mv2.jpg/v1/fill/w_444,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_7cfd8311987d46a0a4a8cd3ceec4e9b7~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPAQUETE: 50pzs\r\n\r\nCinco capas\r\ntela no tejida\r\ntela de algodón respirable\r\nfiltro MELTBLOWN', 999, 100, 'Cubrebocas', 3),
(23, 'BICAPA SMS - paq 50pzs', 'https://static.wixstatic.com/media/161a5c_2f904872eb1e403989cbc0b5dc42c060~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_2f904872eb1e403989cbc0b5dc42c060~mv2.webp', 'https://static.wixstatic.com/media/161a5c_2f904872eb1e403989cbc0b5dc42c060~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_2f904872eb1e403989cbc0b5dc42c060~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPAQUETE: 50pzs\r\n\r\n100% polipropileno\r\n16.5x12.5 cm\r\n25g por capa', 100, 100, 'Cubrebocas', 3),
(24, 'TRICAPA SMS - paq 50pzs', 'https://static.wixstatic.com/media/161a5c_e8e4b9c5d0194988be4ea7af918d0e2e~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_e8e4b9c5d0194988be4ea7af918d0e2e~mv2.webp', 'https://static.wixstatic.com/media/161a5c_e8e4b9c5d0194988be4ea7af918d0e2e~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_e8e4b9c5d0194988be4ea7af918d0e2e~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPAQUETE: 50pzs\r\n\r\n100% polipropileno\r\n16.5x12.5 cm\r\n25g por capa', 100, 100, 'Cubrebocas', 3),
(25, 'PEC PLISADO - paq 100pzs', 'https://static.wixstatic.com/media/161a5c_c153215404774da38319dead1cc49b7b~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_c153215404774da38319dead1cc49b7b~mv2.webp', 'https://static.wixstatic.com/media/161a5c_c153215404774da38319dead1cc49b7b~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_c153215404774da38319dead1cc49b7b~mv2.webp;https://static.wixstatic.com/media/161a5c_62e79f2ec08d421e91937d33e49a027d~mv2.jpg/v1/fill/w_459,h_420,al_c,q_85,usm_0.66_1.00_0.01/161a5c_62e79f2ec08d421e91937d33e49a027d~mv2.webp', 'INFORMACIÓN DE PRODUCTO\r\nPAQUETE: 100pzs\r\n\r\nCubreboca plisado desechable de 3 capas: barrera viral transpirable, hidrofóbica y cómoda de última generación con protección mayor al 98% contra agentes patógenos como virus AH1N1, COVID-19, ébola, bacterias, etc.\r\nBIODEGRADABLE', 400, 100, 'MEDIK CODE', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT '18',
  `role` int(10) DEFAULT '555',
  `photoUrl` text,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'angelsoto', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'angel.14.98@hotmail.com', 'Angel', 'Soto', 22, 777, 'https://image.shutterstock.com/image-vector/person...', 'local'),
(2, 'manuel', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'marinesmanuel@gmail.com', 'Manuel', 'Marines', 2, 555, 'https://image.shutterstock.com/image-vector/person...', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'juani2', '$2b$10$E80CEz2t.hfxMPIA8jkXaOiuEVv80COuwH4hpXp59IcvL1brlDU0m', 'juan234@hotmail.com', 'Juan', 'Soto', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(21, 'edgarg', '$2b$10$J6ri2FGFL5oGbJYcmpTnX.C5S4Eef3D6vapqPMIy2xgqCyP4HoBOm', 'edgarg@hotmail.com', NULL, 'Gerardo', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(22, 'fernando.99', '$2b$10$du4qzm/uRFnmJ17S3QZ.feN//Vm0Sw6QDJPvISlyPCv0ZyjdB2Bia', 'fernando.99@hotmail.com', 'Fernando', 'Sosa', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(23, 'motorbuckle267', '$2b$10$95eYcnFTQ7b83fmkNiqIGeQvYHeUQZSC8yXuahquMyAzfCzlbwUUq', 'motorbuckle267@gmail.com', 'Angel', 'Soto', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(24, 'jose.rdz', '$2b$10$55L/uQYA5hbn8zp53ceItuw1leBx7MmU/jihe75e.mpineVdI.y9e', 'jose.rdz@hotmail.com', 'Jose', 'Rodriguez', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(25, 'albertorio', '$2b$10$md9lFSxDSMSsZUteuYJ1DOa7hJTG0tUAQ4ZTNVstSM7vPJX3u7vFG', 'albertorio@gmail.com', 'Alberto', 'del Rio', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(26, 'marcoswapote', '$2b$10$WL0m4tVjulQsST8oIFvPSuhi9EhELM3x5W2jSCEdHIKHE5VtuBcaO', 'marcoswapote@hotmail.com', 'Marcos', 'Saucedo', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(27, 'panesito2413', '$2b$10$O7nWpoz0wND3tksoKphKt./IS0vyIoh7DaF/JHMQIfWRihEeSC16G', 'panesito2413@hotmail.com', 'Pan', 'Dulce', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(28, 'federicogzm', '$2b$10$3XC3kEk0rfDt4G1tEweTp.n489r9K8lUDWkt9Igi9kFtA3T5Tzata', 'federicogzm@gmail.com', 'Federico', 'Guzman', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(29, 'javier897', '$2b$10$g9FQbo4z6cA7i.eLZHubsOH4BqlLPERpzcwfRxc7Uu4LncqqHBUSS', 'javier897@hotmail.com', 'Javier', 'Hernandez', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(30, 'samuel777', '$2b$10$twExv7Ki3ueA3XDCbL4jQ.OBIUlaYeFTWm3SAaBZoQO/XBz7dzEpe', 'samuel777@hotmail.com', 'Samuel', 'De Lucke', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(31, 'barbie98', '$2b$10$JDjOQUbnq1eiJDYMcKNRb.2hcA2qlzYjwZgubxREp46.nPnFlJ9pm', 'barbie98@hotmail.com', 'Barbie', 'Girl', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(32, 'harry', '$2b$10$zGk02DvSLsPU1yzWbOrgs.5L8Q.8wbARcO6S47GmG2g.qjWhrw.v.', 'harry@gmail.com', 'Harry', 'Potter', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(33, 'daniel', '$2b$10$wT80IM2w2cYBRJzYq8YyseQmKkf.r0oZZNYwudebdYfgyNH3LxVbC', 'daniel@hotmail.com', 'Daniel', 'Valdez', 18, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indices de la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`),
  ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `products`
  ADD FULLTEXT KEY `title` (`title`,`description`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT de la tabla `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
