-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2023 a las 18:39:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motorsweb`
--

-- --------------------------------------------------------

-- Estructura de tabla para la tabla `clientes`

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Identificacion` varchar(50) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefono` varchar(40) NOT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Volcado de datos para la tabla `clientes`
INSERT INTO `clientes` (`Identificacion`, `Nombres`, `Apellidos`, `Email`, `Telefono`)
VALUES ('1234567890', 'Juan', 'Pérez', 'juan@example.com', '555-123-4567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `IdFactura` int(30) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Producto` varchar(40) NOT NULL,
  `Cantidad` int(30) NOT NULL,
  `PrecioUnitario` int(30) NOT NULL,
  `Total_Factura` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `NomProducto` varchar(30) NOT NULL,
  `Proveedor` varchar(30) NOT NULL,
  `Cantidad` int(30) NOT NULL,
  `Precio` int(30) NOT NULL,
  `Categoria` varchar(30) NOT NULL,
  `Foto1` varchar(200) NOT NULL,
  `Foto2` varchar(200) NOT NULL,
  `Foto3` varchar(200) NOT NULL,
  `Foto4` varchar(200) NOT NULL,
  `InfoVendedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `NomProducto`, `Proveedor`, `Cantidad`, `Precio`, `Categoria`, `Foto1`, `Foto2`, `Foto3`, `Foto4`, `InfoVendedor`) VALUES
(12, 'Llanta', 'chevrolet', 3, 9000, 'Repuesto interno', '../Uploads/Productos/perfil1.jpg', '../Uploads/Productos/image-6.png', '../Uploads/Productos/image-6.png', '../Uploads/Productos/image-6.png', '1004510351'),
(123, 'bomper', 'chevrolet', 3, 9000, 'Repuesto externo', '../Uploads/Productos/perfil1.jpg', '../Uploads/Productos/image-6.png', '../Uploads/Productos/image-6.png', '../Uploads/Productos/in1.png', '1004510351');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

CREATE TABLE `quejas` (
  `NumerQueja` int(30) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Fecha` datetime DEFAULT current_timestamp(),
  `Nombre` varchar(200) NOT NULL,
  `Asunto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `quejas`
--

INSERT INTO `quejas` (`NumerQueja`, `Usuario`, `Descripcion`, `Fecha`, `Nombre`, `Asunto`) VALUES
(0, '1004510351', 'ffvgsgtrfgrgtegedrfedfedf', '2023-10-04 06:36:14', 'favian andres mancilla', 'adasfda'),
(2, '1004510352', 'safsfasdf', '2023-10-04 06:50:29', 'favian', 'holaadsaf'),
(12, '1004510353', 'afefwaf', '2023-10-04 09:55:35', 'fafaf', 'asfasf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `IdServicio` int(30) NOT NULL,
  `numeroServicio` int(200) NOT NULL,
  `NomServicio` varchar(30) NOT NULL,
  `Proveedor` varchar(30) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Foto1` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`IdServicio`, `numeroServicio`, `NomServicio`, `Proveedor`, `Descripcion`, `Foto1`) VALUES
(22, 123, 'cambio de aceite', '1004510351', 'seasrdctvyhbujnkml,', '../Uploads/Productos/perfil1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificacion` varchar(50) NOT NULL,
  `TipoDocumento` varchar(4) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefono` varchar(40) NOT NULL,
  `Clave` varchar(40) NOT NULL,
  `Rol` varchar(20) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `Foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificacion`, `TipoDocumento`, `Nombres`, `Apellidos`, `Email`, `Telefono`, `Clave`, `Rol`, `Estado`, `Foto`) VALUES
('1004510351', 'Cc', 'Andres', 'Mancilla', 'Famancilla1@misena.edu.co', '3115662359', '202cb962ac59075b964b07152d234b70', 'Administrador', 'Activo', '../Uploads/Usuarios/perfil1.jpg'),
('1004510352', 'Cc', 'Andres ', 'Mancilla', 'fabianmancilla0708@gmail.com', '3115662359', 'e73506c6eb01a0f29e30265deaf642a3', 'Cliente', 'Activo', '../Uploads/Usuarios/perfil2.jpeg'),
('1004510353', 'Cc', 'Melani', 'Mancilla', 'loquesea@gmail.com', '65555555555', '09436b42cff38ac498b44b8200ace6e2', 'Cliente', 'Activo', '../Uploads/Usuarios/perfil1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdFactura` int(50) NOT NULL,
  `IdVendedor` varchar(50) NOT NULL,
  `IdComprador` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Producto` varchar(200) NOT NULL,
  `Unidades` int(50) NOT NULL,
  `Precio unitario` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`IdFactura`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `InfoVendedor` (`InfoVendedor`);

--
-- Indices de la tabla `quejas`
--
ALTER TABLE `quejas`
  ADD PRIMARY KEY (`NumerQueja`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`IdServicio`),
  ADD KEY `Proveedor` (`Proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificacion`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD KEY `IdVendedor` (`IdVendedor`),
  ADD KEY `IdComprador` (`IdComprador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `IdFactura` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IdProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `quejas`
--
ALTER TABLE `quejas`
  MODIFY `NumerQueja` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `IdServicio` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`InfoVendedor`) REFERENCES `usuarios` (`Identificacion`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`InfoVendedor`) REFERENCES `usuarios` (`Identificacion`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`Proveedor`) REFERENCES `usuarios` (`Identificacion`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdVendedor`) REFERENCES `usuarios` (`Identificacion`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdComprador`) REFERENCES `usuarios` (`Identificacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
