-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 01:22:44
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cmariela`
--
CREATE DATABASE IF NOT EXISTS `cmariela` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cmariela`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `ApellidoP`, `ApellidoM`, `Correo`, `Telefono`, `Contraseña`) VALUES
(1, 'Administrador', 'Calzado', 'Mariela', 'ventascmariela@gmail.com', '4771362877', 'admincmariela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` int(11) NOT NULL,
  `caracteristica` varchar(30) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `caracteristica`, `activo`) VALUES
(1, 'Talla', 1),
(2, 'Color', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_cliente` varchar(20) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_transaccion`, `fecha`, `status`, `email`, `id_cliente`, `total`) VALUES
(1, '2DM340885C0177914', '2022-11-29 03:07:35', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1118.30'),
(2, '59205309NV399512J', '2022-11-29 03:11:10', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '2157.30'),
(3, '3JA299951P8906300', '2022-11-29 03:38:04', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1617.30'),
(4, '0D262614P58688457', '2022-11-29 03:41:07', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1617.30'),
(5, '73099514K5733004K', '2022-11-29 04:52:54', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1118.30'),
(6, '3TK215364J9627043', '2022-11-29 04:54:11', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1837.40'),
(7, '822339248F0859014', '2022-11-29 05:34:25', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '719.10'),
(8, '5S6787592A697522R', '2022-11-29 06:04:53', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '798.40'),
(9, '93U131560C904190T', '2022-11-29 06:07:19', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1617.30'),
(10, '8X150830D1926900R', '2022-11-29 06:11:21', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '898.20'),
(11, '12D23383BN997392Y', '2022-11-29 06:15:04', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1397.20'),
(12, '25G670522A2109513', '2022-11-29 06:28:32', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '399.20'),
(13, '06T0027651483711H', '2022-11-29 06:53:10', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '2116.30'),
(14, '4ME86857SM184650Y', '2022-11-29 06:54:49', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '2116.30'),
(15, '9U409942LD3092621', '2022-11-29 07:00:42', 'COMPLETED', 'alvarado.david.bm@gmail.com', '5UJDUMAVGHEPY', '898.20'),
(16, '08078403MD1975531', '2022-11-29 07:45:14', 'COMPLETED', 'alvarado.david.bm@gmail.com', '8C8ZNFVVPRNJW', '898.20'),
(17, '4E713854C3384074D', '2022-11-30 19:33:58', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '249.50'),
(18, '23G90745YH326323J', '2022-11-30 19:37:27', 'COMPLETED', 'alvarado.david.bm@gmail.com', 'Q2R372AAZM296', '249.50'),
(19, '12D57361Y9581833E', '2022-12-02 02:57:37', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1500.00'),
(20, '6XF21419AN8931246', '2022-12-02 03:10:03', 'COMPLETED', 'sb-yihsd20564492@personal.example.com', 'BDCGE5SM3VSGQ', '1500.00'),
(21, '08465765NL710502M', '2022-12-03 01:31:11', 'COMPLETED', 'alvarado.david.bm@gmail.com', 'L8R5AHQ3C4TRA', '598.80'),
(22, '7UG50734K7074945Y', '2022-12-03 08:28:08', 'COMPLETED', 'alvarado.david.bm@gmail.com', 'L6VBS5VU4UPXA', '3466.90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_compra`, `id_producto`, `nombre`, `precio`, `cantidad`) VALUES
(1, 1, 2, 'Valerina', '399.20', 1),
(2, 1, 1, 'Valerina', '719.10', 1),
(3, 2, 1, 'Valerina', '719.10', 3),
(4, 3, 1, 'Valerina', '719.10', 1),
(5, 3, 2, 'Valerina', '399.20', 1),
(6, 3, 3, 'Valerina', '499.00', 1),
(7, 4, 1, 'Valerina', '719.10', 1),
(8, 4, 2, 'Valerina', '399.20', 1),
(9, 4, 3, 'Valerina', '499.00', 1),
(10, 5, 1, 'Valerina', '719.10', 1),
(11, 5, 2, 'Valerina', '399.20', 1),
(12, 6, 1, 'Valerina', '719.10', 2),
(13, 6, 2, 'Valerina', '399.20', 1),
(14, 7, 1, 'Valerina', '719.10', 1),
(15, 8, 2, 'Valerina', '399.20', 2),
(16, 9, 1, 'Valerina', '719.10', 1),
(17, 9, 2, 'Valerina', '399.20', 1),
(18, 9, 4, 'Alpargata', '499.00', 1),
(19, 10, 2, 'Valerina', '399.20', 1),
(20, 10, 3, 'Valerina', '499.00', 1),
(21, 11, 2, 'Valerina', '399.20', 1),
(22, 11, 3, 'Valerina', '499.00', 2),
(23, 12, 2, 'Valerina', '399.20', 1),
(24, 13, 2, 'Valerina', '399.20', 1),
(25, 13, 1, 'Valerina', '719.10', 1),
(26, 13, 3, 'Valerina', '499.00', 1),
(27, 13, 4, 'Alpargata', '499.00', 1),
(28, 14, 1, 'Valerina', '719.10', 1),
(29, 14, 2, 'Valerina', '399.20', 1),
(30, 14, 3, 'Valerina', '499.00', 1),
(31, 14, 4, 'Alpargata', '499.00', 1),
(32, 15, 2, 'Valerina', '399.20', 1),
(33, 15, 3, 'Valerina', '499.00', 1),
(34, 16, 2, 'Valerina', '399.20', 1),
(35, 16, 3, 'Valerina', '499.00', 1),
(36, 17, 2, 'Alpargata cuerda (suela gruesa)', '249.50', 1),
(37, 18, 2, 'Alpargata cuerda (suela gruesa)', '249.50', 1),
(38, 19, 6, 'Mocasines con cierre', '300.00', 5),
(39, 20, 6, 'Mocasines con cierre', '300.00', 5),
(40, 21, 2, 'Alpargata cuerda (suela gruesa)', '249.50', 1),
(41, 21, 3, 'Alpargata lisa', '349.30', 1),
(42, 22, 2, 'Alpargata cuerda (suela gruesa)', '249.50', 1),
(43, 22, 1, 'Mocasín azul marino con cierre ', '719.10', 1),
(44, 22, 3, 'Alpargata lisa', '349.30', 1),
(45, 22, 4, 'Mocasín con moño', '499.00', 1),
(46, 22, 5, 'Mocasín Brilloso con cierre ', '500.00', 1),
(47, 22, 6, 'Mocasines con cierre', '300.00', 1),
(48, 22, 7, 'Alpargata con hebilla', '250.00', 1),
(49, 22, 8, 'Alpargata Flores ', '250.00', 1),
(50, 22, 9, 'Alpargata bicolor ', '350.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_prod_caracter`
--

CREATE TABLE `det_prod_caracter` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_caracteristica` int(11) NOT NULL,
  `valor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `det_prod_caracter`
--

INSERT INTO `det_prod_caracter` (`id`, `id_producto`, `id_caracteristica`, `valor`) VALUES
(1, 1, 1, '18'),
(2, 1, 1, '21'),
(3, 1, 2, 'Azul'),
(4, 1, 2, 'Negro'),
(5, 4, 1, '18'),
(6, 4, 2, 'Rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Descuento` tinyint(3) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `Activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `Nombre`, `Descripcion`, `Precio`, `Descuento`, `id_categoria`, `Activo`) VALUES
(1, 'Mocasín azul marino con cierre ', '<p>Mocasín Confort casual para dama color azul, con corte durazno<p> \n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Azul Marino<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br>', '799', 10, 1, 1),
(2, 'Alpargata cuerda (suela gruesa)', '<p>Alpargata Confort casual para dama, con corte durazno<p> \n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 315<br>\n- Color: Rosa, Melle<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br>', '499', 50, 319, 1),
(3, 'Alpargata lisa', '<p>Mocasín con moño para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '499', 30, 309, 1),
(4, 'Mocasín con moño', '<p>Mocasín con moño para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '499', 0, 309, 1),
(5, 'Mocasín Brilloso con cierre ', '<p>Mocasín brilloso para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '500', 0, 319, 1),
(6, 'Mocasines con cierre', '<p>Mocasín con cierre para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '300', 0, 309, 1),
(7, 'Alpargata con hebilla', '<p>Alpargata con hebilla para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '250', 0, 109, 1),
(8, 'Alpargata Flores ', '<p>Alpargata con flores para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '250', 0, 109, 1),
(9, 'Alpargata bicolor ', '<p>Alpargata Bicolor para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '350', 0, 109, 1),
(10, 'Alpargata  con aberturas', '<p>Alpargata con aberturas para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '350', 0, 109, 1),
(11, 'Alpargata  con resorte', '<p>Alpargata con resorte para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '200', 0, 109, 1),
(12, 'Alpargata  agujeros(suela gruesa)', '<p>Alpargata agujeros (suelo gruesa) para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '200', 0, 109, 1),
(13, 'Alpargata  suela delgada', '<p>Alpargata lisa suela delgada para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '200', 0, 109, 1),
(14, 'Alpargata  agujeros(suela delgada)', '<p>Alpargata agujeros (suela gruesa)para dama<p\n<br>\n<b>Características</b><br> \n- Marca: Mariela<br> \n- Modelo: 309<br>\n- Color: Negro<br> \n- Material corte : Durazno<br> \n- Material suela: PVC<br> ', '200', 0, 109, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDusuario` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDusuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Telefono`, `Correo`, `Contraseña`) VALUES
(1, 'David', 'Alvarado', 'Rodriguez', '4771362877', '', 'davidalvarado'),
(23, 'Carmelo', 'Rodriguez', 'Alvarez', '4772345678', 'carmeloal@gmail.com', 'fffff');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_det_prod` (`id_producto`),
  ADD KEY `fk_det_caracter` (`id_caracteristica`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `det_prod_caracter`
--
ALTER TABLE `det_prod_caracter`
  ADD CONSTRAINT `fk_det_caracter` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristicas` (`id`),
  ADD CONSTRAINT `fk_det_prod` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`);
--
-- Base de datos: `crud_php`
--
CREATE DATABASE IF NOT EXISTS `crud_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_php`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'cmariela', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"cmariela\",\"crud_php\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cmariela\",\"table\":\"compra\"},{\"db\":\"cmariela\",\"table\":\"producto\"},{\"db\":\"cmariela\",\"table\":\"usuario\"},{\"db\":\"cmariela\",\"table\":\"det_prod_caracter\"},{\"db\":\"cmariela\",\"table\":\"detalle_compra\"},{\"db\":\"cmariela\",\"table\":\"caracteristicas\"},{\"db\":\"cmariela\",\"table\":\"administrador\"},{\"db\":\"cmariela\",\"table\":\"Administrador\"},{\"db\":\"crud_php\",\"table\":\"usuario\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('cmariela', 'det_prod_caracter', 'valor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cmariela', 'compra', '{\"sorted_col\":\"`compra`.`id` ASC\"}', '2022-11-29 05:09:14'),
('root', 'cmariela', 'usuario', '{\"sorted_col\":\"`usuario`.`Contrase\\u00f1a` ASC\"}', '2022-11-23 19:14:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-06 00:22:13', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"pmahomme\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
