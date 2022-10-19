-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 19-10-2022 a las 18:26:18
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_colour`
--

CREATE TABLE `tbl_colour` (
  `colour_id` tinyint(10) NOT NULL,
  `colour_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_devices`
--

CREATE TABLE `tbl_devices` (
  `device_id` tinyint(10) NOT NULL,
  `device_name` varchar(100) NOT NULL,
  `device_brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_os`
--

CREATE TABLE `tbl_os` (
  `os_id` tinyint(10) NOT NULL,
  `os_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_price`
--

CREATE TABLE `tbl_price` (
  `price_id` tinyint(100) NOT NULL,
  `price_value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` tinyint(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_specs`
--

CREATE TABLE `tbl_specs` (
  `spec_id` tinyint(100) NOT NULL,
  `spec_feature` varchar(500) NOT NULL,
  `spec_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` tinyint(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_address` text NOT NULL,
  `user_zip` varchar(100) NOT NULL,
  `user_city` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_colour`
--
ALTER TABLE `tbl_colour`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indices de la tabla `tbl_devices`
--
ALTER TABLE `tbl_devices`
  ADD PRIMARY KEY (`device_id`);

--
-- Indices de la tabla `tbl_os`
--
ALTER TABLE `tbl_os`
  ADD PRIMARY KEY (`os_id`);

--
-- Indices de la tabla `tbl_price`
--
ALTER TABLE `tbl_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indices de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `tbl_specs`
--
ALTER TABLE `tbl_specs`
  ADD PRIMARY KEY (`spec_id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_colour`
--
ALTER TABLE `tbl_colour`
  MODIFY `colour_id` tinyint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_devices`
--
ALTER TABLE `tbl_devices`
  MODIFY `device_id` tinyint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_os`
--
ALTER TABLE `tbl_os`
  MODIFY `os_id` tinyint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_price`
--
ALTER TABLE `tbl_price`
  MODIFY `price_id` tinyint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` tinyint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_specs`
--
ALTER TABLE `tbl_specs`
  MODIFY `spec_id` tinyint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
