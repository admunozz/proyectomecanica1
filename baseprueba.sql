-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2021 a las 20:01:31
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baseprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nom_cliente` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fecha_nac` datetime DEFAULT NULL,
  `nro_identificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nom_cliente`, `telefono`, `direccion`, `email`, `fecha_nac`, `nro_identificacion`) VALUES
(1, 'Andres Carvajal', '312', 'Cll 28', 'ad@example.com', '2000-01-06 22:45:25', 1005);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `proveedor_id_proveedor` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `valor_compra` double DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `empleado_id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`proveedor_id_proveedor`, `id_compra`, `fecha_compra`, `valor_compra`, `fecha_entrega`, `empleado_id_empleado`) VALUES
(1, 1, '2021-06-09 22:43:00', 12000000, '2021-06-09 22:43:00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_detalle`
--

CREATE TABLE `compra_detalle` (
  `compra_id_compra` int(11) NOT NULL,
  `producto_id_producto` int(11) NOT NULL,
  `cantidad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra_detalle`
--

INSERT INTO `compra_detalle` (`compra_id_compra`, `producto_id_producto`, `cantidad`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_servicio`
--

CREATE TABLE `detalle_servicio` (
  `servicio_id_servicio` int(11) NOT NULL,
  `pedido_factura_id_pedido_fact` int(11) NOT NULL,
  `cantidad` double DEFAULT NULL,
  `descuento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(50) DEFAULT NULL,
  `nro_identificacion` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre_completo`, `nro_identificacion`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES
(1, 'Administrador Ejemplo', '1002', '2000-05-07', 'Cll 8 Nte 12', '312'),
(2, 'Empleado Ejemplo', '1003', '2000-01-03', 'Av 6nte ', '318'),
(3, 'Adrian Muñoz', '1004', '2000-02-03', 'Cra 1b 12-12', '310'),
(4, 'Wiston Viveros', '1005', '2000-06-10', 'Av 1a -121', '310'),
(5, 'Alexander Giron', '1007', '2000-06-08', 'Av 9 nte -1', '318');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantia`
--

CREATE TABLE `garantia` (
  `id_garantia` int(11) NOT NULL,
  `fecha_garantia` datetime DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL,
  `condicion` varchar(50) DEFAULT NULL,
  `fecha_limite` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_21_211804_create_roles_table', 1),
(5, '2021_05_21_211924_create_role_user_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `pedido_factura_id_pedido_fact` int(11) NOT NULL,
  `producto_id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_detalle`
--

INSERT INTO `pedido_detalle` (`pedido_factura_id_pedido_fact`, `producto_id_producto`, `cantidad`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_factura`
--

CREATE TABLE `pedido_factura` (
  `cliente_id_cliente` int(11) NOT NULL,
  `id_pedido_fact` int(11) NOT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `empleado_id_empleado` int(11) NOT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_factura`
--

INSERT INTO `pedido_factura` (`cliente_id_cliente`, `id_pedido_fact`, `fecha_pedido`, `valor_total`, `cantidad`, `subtotal`, `empleado_id_empleado`, `metodo_pago`) VALUES
(1, 1, '2021-06-09 22:46:20', 19000000, 1, 19000000, 2, 'ESPECIE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `garantia_id_garantia` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio_unitario` double DEFAULT NULL,
  `stock` int(30) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `nacional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`garantia_id_garantia`, `id_producto`, `nombre`, `precio_unitario`, `stock`, `marca`, `nacional`) VALUES
(1, 1, 'Moto ', 12000000, 5, 'Yamaha', 'SI'),
(2, 2, 'Carro', 19000000, 2, 'Chevrolet', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nom_proveedor` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nom_proveedor`, `telefono`, `direccion`, `email`, `pais`, `ciudad`) VALUES
(1, 'YAMAHA SA', '312', 'cll 12', 'y@sa.com', 'Colombia', 'Cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_sistema`
--

CREATE TABLE `registro_sistema` (
  `id` int(10) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `registro_sistema`
--

INSERT INTO `registro_sistema` (`id`, `fecha_ingreso`, `user_id`) VALUES
(1, '2021-06-09 21:36:22', 2),
(2, '2021-06-09 21:57:59', 1),
(5, '2021-06-10 21:20:26', 4),
(6, '2021-06-14 14:51:38', 4),
(7, '2021-06-14 14:54:55', 2),
(8, '2021-06-14 14:55:41', 4),
(9, '2021-06-14 15:15:54', 2),
(10, '2021-06-15 16:57:15', 4),
(12, '2021-06-15 18:32:42', 2),
(13, '2021-06-15 18:38:14', 4),
(14, '2021-06-15 20:16:21', 1),
(15, '2021-06-15 20:17:04', 4),
(16, '2021-06-15 20:34:13', 4),
(17, '2021-06-15 20:36:30', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-06-10 02:21:03', '2021-06-10 02:21:03'),
(2, 'emp', 'Empleado', '2021-06-10 02:21:03', '2021-06-10 02:21:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-06-10 02:21:06', '2021-06-10 02:21:06'),
(2, 2, 2, '2021-06-10 02:21:08', '2021-06-10 02:21:08'),
(3, 1, 4, '2021-06-10 03:26:09', '2021-06-10 03:26:09'),
(4, 1, 5, '2021-06-16 01:37:55', '2021-06-16 01:37:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL,
  `garantia_id_garantia` int(11) NOT NULL,
  `tipo_servicios` varchar(100) DEFAULT NULL,
  `empleado_id_empleado` int(11) NOT NULL,
  `cita_id_cita` int(11) NOT NULL,
  `vehiculo_id_vehiculo` int(11) NOT NULL,
  `vehiculov1_id_vehiculo` int(11) NOT NULL,
  `citav1_id_cita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `avatar`, `status`, `empleado_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', 'default.jpg', 1, 1, NULL, '$2y$10$8X3bA9lr6wPu5gebmg5EHe.ct6cSrruuXTqCIPw6o8g385dsXacfq', NULL, '2021-06-10 02:21:07', '2021-06-11 01:55:25'),
(2, 'Empleado', 'empleado@example.com', 'default.jpg', 0, 2, NULL, '$2y$10$duw9QpIH0.r2yMdAxeZpou04iYLa9aMYfDFmw7JOnKjLpuzC/rj/6', NULL, '2021-06-10 02:21:06', '2021-06-16 01:35:23'),
(4, 'admunozz', 'adrian@example.com', '1623295566.jpg', 1, 3, NULL, '$2y$10$P7EqEMpP6K8rironQygP9.4/eNZKoARJY60RLK1/3qXEHrvIaPvaW', NULL, '2021-06-10 03:26:09', '2021-06-10 03:26:09'),
(5, 'alexandera', 'alexander@example.com', '1623807473.jpg', 1, 5, NULL, '$2y$10$dkU2.EwUffJ6IxZBXY4Hbej/ETtx0Wdkl8Rdb5hV9wG/NfQp/ga.m', NULL, '2021-06-16 01:37:55', '2021-06-16 01:37:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` int(11) DEFAULT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `fecha_entrada` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD PRIMARY KEY (`id_garantia`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedido_factura`
--
ALTER TABLE `pedido_factura`
  ADD PRIMARY KEY (`id_pedido_fact`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `registro_sistema`
--
ALTER TABLE `registro_sistema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_id` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `registro_sistema`
--
ALTER TABLE `registro_sistema`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
