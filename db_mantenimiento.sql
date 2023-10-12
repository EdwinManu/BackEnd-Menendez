-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2023 a las 05:56:00
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_mantenimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_entidad`
--

CREATE TABLE `tb_entidad` (
  `estado` bit(1) DEFAULT NULL,
  `id_entidad` bigint(20) NOT NULL,
  `id_tipo_contribuyente` bigint(20) DEFAULT NULL,
  `id_tipo_documento` bigint(20) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nombre_comercial` varchar(255) DEFAULT NULL,
  `nro_documento` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_entidad`
--

INSERT INTO `tb_entidad` (`estado`, `id_entidad`, `id_tipo_contribuyente`, `id_tipo_documento`, `direccion`, `nombre_comercial`, `nro_documento`, `razon_social`, `telefono`) VALUES
(b'1', 1, 1, 4, 'Jr. Comandante Jimenez Nro. 166 Int. a (entre Cuadra 7 y 8 Javier Padro Oeste)', 'SYL CARGO NOMBRE COMERCIAL', '20505327552', 'SYL S.A.C', '79845612'),
(b'1', 2, 1, 1, 'MZA. F LOTE. 29 AS.RSD.MONTECARLO II LIMA - LIMA - SAN MARTIN DE PORRE', '', '20543844838', 'PUNTUAL EXPRESS S.A.C.', ''),
(b'1', 3, 3, 4, 'AV. LOS ALISOS MZA. G LOTE. 05 ASC. LA ALBORADA DE OQUENDO III ETAPA (CRUCE PTE OQUENDO CON AV.NESTOR GAMBETTA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO', '', '10410192999', 'ALVAREZ MACHUCA RENZO GUSTAVO', ''),
(b'1', 4, 2, 11, 'CAL.EL UNIVERSO NRO. 327 URB. LA CAMPIÑA ZONA CINCO (ALTURA ', '', '20600131037', 'CARNICOS MAFER S.A.C.', ''),
(b'1', 5, 2, 4, 'AV. M.SUCRE NRO. 455 DPTO. 603 LIMA - LIMA - MAGDALENA DEL MAR', '', '20556528218', 'SUMAQUINARIA S.A.C.', ''),
(b'1', 6, 2, 1, 'CAL. FRANCISCO MASIAS NRO. 370 URB. SAN EUGENIO (PISO 7) LIM', '', '20545412528', 'OASIS FOODS S.A.C.', ''),
(b'1', 7, 2, 1, 'AV. AUTOPIDTA RAMIRO PRIALE LOTE. 02 A.V. PROP HUERTOS DE HU', '', '20510620195', 'INVERSIONES PRO3 SAC', ''),
(b'1', 8, 2, 99, 'CAR.VIA EVITAMIENTO MZA. 857 LOTE. 7 SEC. IRRIGACION EL CURAL 1 AREQUIPA - AREQUIPA - CERRO COLORADO', '', '20498383361', 'REPUESTOS DAVID DIESEL E.I.R.L.', ''),
(b'1', 9, 4, 6, '173 FENGLE AVENUE,ECNOMIC DEVELOPMENT ZONE,QUANJIAO COUNTY', '', 'CNAH00003', 'ANHUI HAYVO PROTECTIVE PRODUCT MANUFACTURING CO.,LTD', ''),
(b'1', 10, 1, 4, 'Jr. Comandante Jimenez Nro. 166 Int. a (entre Cuadra 7 y 8 Javier Padro Oeste)', 'SYL CARGO NOMBRE COMERCIAL', '20505327552', 'SYL S.A.C', '79845612'),
(b'1', 11, 1, 4, 'Jr. Comandante Jimenez Nro. 166 Int. a (entre Cuadra 7 y 8 Javier Padro Oeste)', 'SYL CARGO NOMBRE COMERCIAL', '1111', 'SYL S.A.C', '79845612');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_contribuyente`
--

CREATE TABLE `tb_tipo_contribuyente` (
  `estado` bit(1) DEFAULT NULL,
  `id_tipo_contribuyente` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tipo_contribuyente`
--

INSERT INTO `tb_tipo_contribuyente` (`estado`, `id_tipo_contribuyente`, `nombre`) VALUES
(b'1', 1, ''),
(b'1', 2, ''),
(b'1', 3, ''),
(b'1', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_documento`
--

CREATE TABLE `tb_tipo_documento` (
  `estado` bit(1) DEFAULT NULL,
  `id_tipo_documento` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tipo_documento`
--

INSERT INTO `tb_tipo_documento` (`estado`, `id_tipo_documento`, `codigo`, `descripcion`, `nombre`) VALUES
(b'1', 1, 'DNI', 'DOCUMENTO NACIONAL DE IDENTIDAD', ''),
(b'1', 4, 'CARNET DE EXTRANJERIA', 'CARNET DE EXTRANJERIA', ''),
(b'1', 6, 'RUC', 'REGISTRO UNICO DEL CONTRIBUYENTE', ''),
(b'1', 7, 'PASAPORTE', 'PASAPORTE', ''),
(b'1', 11, 'PARTIDA DE NACIMIENTO - IDENTIDAD', 'PARTIDA DE NACIMIENTO - IDENTIDAD', ''),
(b'1', 99, 'OTROS', 'OTROS', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `tokens` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_entidad`
--
ALTER TABLE `tb_entidad`
  ADD PRIMARY KEY (`id_entidad`),
  ADD KEY `FKfl8pykbf0tuan02qkee5e1obt` (`id_tipo_contribuyente`),
  ADD KEY `FK4tj3mj47ks3jxyrmldocis2aw` (`id_tipo_documento`);

--
-- Indices de la tabla `tb_tipo_contribuyente`
--
ALTER TABLE `tb_tipo_contribuyente`
  ADD PRIMARY KEY (`id_tipo_contribuyente`);

--
-- Indices de la tabla `tb_tipo_documento`
--
ALTER TABLE `tb_tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_entidad`
--
ALTER TABLE `tb_entidad`
  MODIFY `id_entidad` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_contribuyente`
--
ALTER TABLE `tb_tipo_contribuyente`
  MODIFY `id_tipo_contribuyente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_documento`
--
ALTER TABLE `tb_tipo_documento`
  MODIFY `id_tipo_documento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_entidad`
--
ALTER TABLE `tb_entidad`
  ADD CONSTRAINT `FK4tj3mj47ks3jxyrmldocis2aw` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tb_tipo_documento` (`id_tipo_documento`),
  ADD CONSTRAINT `FKfl8pykbf0tuan02qkee5e1obt` FOREIGN KEY (`id_tipo_contribuyente`) REFERENCES `tb_tipo_contribuyente` (`id_tipo_contribuyente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
