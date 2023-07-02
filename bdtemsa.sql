-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2023 a las 03:10:30
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdtemsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblconductor`
--

CREATE TABLE `tblconductor` (
  `cedulaCond` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `nombresCond` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `telCond` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `estadoCond` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblconductor`
--

INSERT INTO `tblconductor` (`cedulaCond`, `nombresCond`, `telCond`, `estadoCond`) VALUES
('1037576857', 'ANDRES FELIPE AGUIRRE MORENO', '0', 'INACTIVO'),
('1047965561', 'CARLOS ALBERTO CARDONA ARIAS', '0', 'INACTIVO'),
('1128445169', 'ALEXANDER DE JESUS MUÑOZ GOMEZ', '0', 'ACTIVO'),
('4339495', 'ALCIDES NARANJO LOPEZ', '3178070633', 'INACTIVO'),
('6013640', 'ANGEL LUBIAN ARREDONDO RESTREPO', '0', 'ACTIVO'),
('70122876', 'ALEXANDER DE JESUS CIFUENTES', '3117363589', 'ACTIVO'),
('70509088', 'ARMANDO LONDOÑO POSADA', '0', 'ACTIVO'),
('8433773', 'ALEXANDER DE JESUS YEPES BEDOYA', '0', 'ACTIVO'),
('98520372', 'ALBEIRO DE JESUS ALZATE OROZCO', '0', 'ACTIVO'),
('98528955', 'AURELIO DE JESUS SALINAS CASTAÑEDA', '0', 'ACTIVO'),
('98532303', 'ALDEMAR HOYOS VARGAS', '3015399362', 'ACTIVO'),
('98551135', 'ANDRES ALBERTO CORREA ARANGO', '0', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblliquidaciones`
--

CREATE TABLE `tblliquidaciones` (
  `codLiq` int(20) NOT NULL,
  `fechaLiq` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `loginUsu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `internoVeh` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `inicialVeh` int(4) NOT NULL,
  `finalVeh` int(4) NOT NULL,
  `ptotal` int(10) NOT NULL,
  `ajuste` int(10) NOT NULL,
  `pneto` int(10) NOT NULL,
  `promp` double(10,2) NOT NULL,
  `nombreRut` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `valLiq` int(10) NOT NULL,
  `cedulaCond` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `nombresCond` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `v_prog` int(4) NOT NULL,
  `v_real` int(4) NOT NULL,
  `v_perd` int(4) NOT NULL,
  `obsLiq` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `turnoLiq` varchar(5) COLLATE utf8mb4_bin NOT NULL,
  `vrAdicional` int(20) NOT NULL,
  `valorLiq` int(20) NOT NULL,
  `acpm` int(20) NOT NULL,
  `temsa` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblliquidaciones`
--

INSERT INTO `tblliquidaciones` (`codLiq`, `fechaLiq`, `loginUsu`, `internoVeh`, `inicialVeh`, `finalVeh`, `ptotal`, `ajuste`, `pneto`, `promp`, `nombreRut`, `valLiq`, `cedulaCond`, `nombresCond`, `v_prog`, `v_real`, `v_perd`, `obsLiq`, `turnoLiq`, `vrAdicional`, `valorLiq`, `acpm`, `temsa`) VALUES
(45, '2/12/2022 17:57:50', 'REC_PAULA', '10300', 698, 978, 280, 0, 280, 25.45, '3 COMFAMA - METRO', 50, '98532303', 'ALDEMAR HOYOS VARGAS', 11, 11, 0, '0', '', 0, 125000, 0, 125000),
(46, '2/12/2022 18:2:50', 'REC_PAULA', '10301', 512, 722, 210, 0, 210, 21.00, '5 COMFAMA - METRO', 68, '98532303', 'ALDEMAR HOYOS VARGAS', 10, 10, 0, '0', '', 0, 170000, 0, 170000),
(47, '2/12/2022 18:7:25', 'REC_PAULA', '2', 1708, 1800, 92, 0, 92, 15.33, 'COMFAMA TABLAZA URBANO', 0, '4339495', 'ALCIDES NARANJO LOPEZ', 10, 6, 4, '4', '', 0, 138000, 35000, 103000),
(48, '2/12/2022 18:10:22', 'REC_PAULA', '10300', 978, 1060, 82, 0, 82, 9.11, '7 FERRERIA - METRO', 40, '70122876', 'ALEXANDER DE JESUS CIFUENTES', 12, 9, 3, '3', '', 0, 100000, 88000, 12000),
(49, '2/12/2022 18:42:30', 'REC_PAULA', '10301', 722, 927, 205, 0, 205, 18.64, '3 COMFAMA - METRO', 70, '98532303', 'ALDEMAR HOYOS VARGAS', 11, 11, 0, '0', '', 0, 175000, 99000, 76000),
(50, '2/12/2022 18:45:26', 'REC_PAULA', '10300', 1060, 1350, 290, 0, 290, 26.36, '5 COMFAMA - METRO', 90, '70122876', 'ALEXANDER DE JESUS CIFUENTES', 11, 11, 0, '0', '', 0, 225000, 120000, 105000),
(51, '2/12/2022 18:47:52', 'REC_PAULA', '10301', 927, 1164, 237, 0, 237, 21.55, '7 FERRERIA - METRO', 56, '98532303', 'ALDEMAR HOYOS VARGAS', 12, 11, 1, '1', '', 0, 140000, 124000, 16000),
(54, '18/1/2023 4:5:32', 'REC_PAULA', '10300', 1900, 2220, 320, 10, 310, 31.00, '5 COMFAMA - METRO', 60, '70122876', 'ALEXANDER DE JESUS CIFUENTES', 11, 10, 1, 'SE PIERDE VIAJE POR TALLER', '13:50', 5000, 155000, 89900, 65100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnovedades`
--

CREATE TABLE `tblnovedades` (
  `codNov` int(11) NOT NULL,
  `fechaNov` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `detalleNov` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `valorNov` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblnovedades`
--

INSERT INTO `tblnovedades` (`codNov`, `fechaNov`, `detalleNov`, `valorNov`) VALUES
(5, '2/12/2022', 'PAGO ADICIONALES', 20000),
(6, '2/12/2022', 'PAGO DE ADCIONALES 2', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpendientes`
--

CREATE TABLE `tblpendientes` (
  `idPd` int(10) NOT NULL,
  `internoVeh` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `nombreRut` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `cedulaCond` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `nombresCond` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `fechaPd` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `val_pasPd` int(5) NOT NULL,
  `valorPd` int(20) NOT NULL,
  `fechaPago` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `int_vehPago` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `metodoPago` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `estadoPd` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblpendientes`
--

INSERT INTO `tblpendientes` (`idPd`, `internoVeh`, `nombreRut`, `cedulaCond`, `nombresCond`, `fechaPd`, `val_pasPd`, `valorPd`, `fechaPago`, `int_vehPago`, `metodoPago`, `estadoPd`) VALUES
(1, '10300', '3 COMFAMA - METRO', '70122876', 'ALEXANDER DE JESUS CIFUENTES', '20/08/2021', 2, 5000, '22/08/2021', '10300', 'EFECTIVO', 'CANCELADO'),
(2, '10301', '5 COMFAMA - METRO', '98532303', 'ALDEMAR HOYOS VARGAS', '21/08/2021', 2, 5000, '22/08/2021', '10300', 'EFECTIVO', 'CANCELADO'),
(3, '2', '5 COMFAMA - METRO', '4339495', 'ALCIDES NARANJO LOPEZ', '20/08/2021', 1, 1500, '22/08/2021', '2', 'NOMINA', 'CANCELADO'),
(4, '10300', '3 COMFAMA - METRO', '70122876', 'ALEXANDER DE JESUS CIFUENTES', '21/08/2021', 2, 5000, '10/10/2022', '10301', 'SIN PAGO', 'PENDIENTE'),
(5, '2', 'COMFAMA TABLAZA URBANO', '98532303', 'ALDEMAR HOYOS VARGAS', '13/09/2021', 10, 15000, '15/09/2021', '2', 'EFECTIVO', 'CANCELADO'),
(6, '10300', '3 COMFAMA - METRO', '4339495', 'ALCIDES NARANJO LOPEZ', '01/12/2022', 2, 5000, '06/12/2022', '10300', 'EFECTIVO', 'CANCELADO'),
(7, '2', 'COMFAMA TABLAZA URBANO', '98532303', 'ALDEMAR HOYOS VARGAS', '10/10/2022', 5, 7500, 'dd/mm/aaa', '0', 'SIN PAGO', 'PENDIENTE'),
(8, '10300', '7 FERRERIA - METRO', '70122876', 'ALEXANDER DE JESUS CIFUENTES', '12/12/2022', 20, 50000, '22/12/2022', '10301', 'SIN PAGO', 'PENDIENTE'),
(9, '10300', '7 FERRERIA - METRO', '70122876', 'ALEXANDER DE JESUS CIFUENTES', '13/12/2022', 20, 50000, '22/12/2022', '10301', 'SIN PAGO', 'PENDIENTE'),
(10, '10301', '5 COMFAMA - METRO', '98532303', 'ALDEMAR HOYOS VARGAS', '22/01/2023', 25, 62500, '', '', 'SIN PAGO', 'PENDIENTE'),
(11, '10301', 'COMFAMA TABLAZA URBANO', '98528955', 'AURELIO DE JESUS SALINAS CASTAÑEDA', '22/01/2022', 30, 45000, '30/04/2022', '10301', 'RETIRO', 'CANCELADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrecaudos`
--

CREATE TABLE `tblrecaudos` (
  `fechaRec` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `loginUsu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `billetesRec` double(30,0) NOT NULL,
  `monedasRec` double(30,0) NOT NULL,
  `bolsaRec` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `selloRec` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `totalRec` double(30,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblrecaudos`
--

INSERT INTO `tblrecaudos` (`fechaRec`, `loginUsu`, `billetesRec`, `monedasRec`, `bolsaRec`, `selloRec`, `totalRec`) VALUES
('11/12/2022', 'REC_PAULA', 15000000, 629900, 'BB98765', 'SB87654', 15629900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblrutas`
--

CREATE TABLE `tblrutas` (
  `nombreRut` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `tarifaRut` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblrutas`
--

INSERT INTO `tblrutas` (`nombreRut`, `tarifaRut`) VALUES
('3 COMFAMA - METRO', 2500),
('5 COMFAMA - METRO', 2500),
('7 FERRERIA - METRO', 2500),
('COMFAMA TABLAZA URBANO', 1500),
('FERRERIA TABLAZA URBANO', 1500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `cedulaUsu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `nombresUsu` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `loginUSu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `claveUsu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `perfilUsu` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `estadoUsu` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`cedulaUsu`, `nombresUsu`, `loginUSu`, `claveUsu`, `perfilUsu`, `estadoUsu`) VALUES
('71113440', 'IVAN DARIO GARCIA GARCIA', 'ADMIN_IVAN', 'ADMIN1234', 'ADMINISTRADOR', 'ACTIVO'),
('98526331', 'EDGAR JOVANI MEJIA ALVAREZ', 'REC_EDGAR', 'REC1234', 'RECAUDADOR', 'ACTIVO'),
('1152192134', 'PAULA ANDREA OCHOA GUTIERREZ', 'REC_PAULA', 'REC1234', 'RECAUDADOR', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvehiculos`
--

CREATE TABLE `tblvehiculos` (
  `placaVeh` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `internoVeh` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `regVeh` int(4) DEFAULT NULL,
  `loteVeh` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `tblvehiculos`
--

INSERT INTO `tblvehiculos` (`placaVeh`, `internoVeh`, `regVeh`, `loteVeh`) VALUES
('TRH782', '10300', 3500, 'METRO 3, 5, 7'),
('TRH775', '10301', 1164, 'METRO 3, 5, 7'),
('TRH771', '10302', 1, 'METRO 3, 5, 7'),
('TRH770', '10303', 1, 'METRO 3, 5, 7'),
('TRH764', '10304', 1, 'METRO 3, 5, 7'),
('TRH765', '10305', 9999, 'METRO 3, 5, 7'),
('TTT111', '2', 3500, 'COMFAMA - FERRERIA TABLAZA URBANO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblconductor`
--
ALTER TABLE `tblconductor`
  ADD PRIMARY KEY (`cedulaCond`);

--
-- Indices de la tabla `tblliquidaciones`
--
ALTER TABLE `tblliquidaciones`
  ADD PRIMARY KEY (`codLiq`);

--
-- Indices de la tabla `tblnovedades`
--
ALTER TABLE `tblnovedades`
  ADD PRIMARY KEY (`codNov`);

--
-- Indices de la tabla `tblpendientes`
--
ALTER TABLE `tblpendientes`
  ADD PRIMARY KEY (`idPd`);

--
-- Indices de la tabla `tblrecaudos`
--
ALTER TABLE `tblrecaudos`
  ADD PRIMARY KEY (`fechaRec`);

--
-- Indices de la tabla `tblrutas`
--
ALTER TABLE `tblrutas`
  ADD PRIMARY KEY (`nombreRut`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`loginUSu`);

--
-- Indices de la tabla `tblvehiculos`
--
ALTER TABLE `tblvehiculos`
  ADD PRIMARY KEY (`internoVeh`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblliquidaciones`
--
ALTER TABLE `tblliquidaciones`
  MODIFY `codLiq` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `tblnovedades`
--
ALTER TABLE `tblnovedades`
  MODIFY `codNov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tblpendientes`
--
ALTER TABLE `tblpendientes`
  MODIFY `idPd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
