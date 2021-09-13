-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-09-2021 a las 11:45:39
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testmp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calles`
--

DROP TABLE IF EXISTS `calles`;
CREATE TABLE IF NOT EXISTS `calles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ciudad_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calles_ciudad_id_foreign` (`ciudad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calles`
--

INSERT INTO `calles` (`id`, `nombre`, `created_at`, `updated_at`, `ciudad_id`) VALUES
(1, 'Yungay', NULL, NULL, 1),
(2, 'San Martin', NULL, NULL, 1),
(3, 'Esmeralda', NULL, NULL, 1),
(4, 'O\'Higgins', NULL, NULL, 5),
(5, 'Av. Condoray', NULL, NULL, 2),
(6, 'Unanue', NULL, NULL, 2),
(7, 'Av. Alemania', NULL, NULL, 3),
(8, 'Urenda', NULL, NULL, 3),
(9, 'Lompi', NULL, NULL, 4),
(10, 'Quilapan', NULL, NULL, 4),
(11, 'Janequeo', NULL, NULL, 5),
(12, 'Paicavi', NULL, NULL, 5),
(13, 'Patzke', NULL, NULL, 6),
(14, 'Balmaceda', NULL, NULL, 6),
(15, 'Los Boldos', NULL, NULL, 7),
(16, 'Campo de Marte', NULL, NULL, 7),
(17, 'Bandera', NULL, NULL, 8),
(18, '28 de Marzo', NULL, NULL, 8),
(19, 'Soto Moto', NULL, NULL, 9),
(20, 'Iansa 1', NULL, NULL, 9),
(21, 'Pedro Lagos', NULL, NULL, 10),
(22, 'Chorrillos', NULL, NULL, 10),
(23, 'Phillipi', NULL, NULL, 11),
(24, 'Gral. Yañez', NULL, NULL, 11),
(25, 'Sor. Mercedes', NULL, NULL, 12),
(26, 'Las Torcazas', NULL, NULL, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provincia_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudades_provincia_id_foreign` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `nombre`, `created_at`, `updated_at`, `provincia_id`) VALUES
(1, 'Arauco', NULL, NULL, 1),
(2, 'Cañete	', NULL, NULL, 1),
(3, 'Los Ángeles', NULL, NULL, 2),
(4, 'Nacimiento', NULL, NULL, 2),
(5, 'Gran Concepción', NULL, NULL, 3),
(6, 'Temuco', NULL, NULL, 4),
(7, 'Angol', NULL, NULL, 5),
(8, 'Victoria', NULL, NULL, 5),
(9, 'La Unión', NULL, NULL, 7),
(10, 'Río Bueno', NULL, NULL, 7),
(11, 'Valdivia', NULL, NULL, 6),
(12, 'Panguipulli', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(67, '2021_09_13_064751_create_provincias_table', 1),
(68, '2021_09_13_090119_create_ciudades_table', 1),
(64, '2014_10_12_000000_create_users_table', 1),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(66, '2021_09_13_055503_create_regiones_table', 1),
(69, '2021_09_13_090815_create_calles_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE IF NOT EXISTS `provincias` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provincias_region_id_foreign` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `created_at`, `updated_at`, `region_id`) VALUES
(1, 'Provincia de Arauco', NULL, NULL, 1),
(2, 'Provincia de Biobío', NULL, NULL, 1),
(3, 'Provincia de Concepción', NULL, NULL, 1),
(4, 'Provincia de Cautín', NULL, NULL, 2),
(5, 'Provincia de Malleco', NULL, NULL, 2),
(6, 'Provincia de Valdivia', NULL, NULL, 3),
(7, 'Provincia de Ranco', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Región del Biobío', NULL, NULL),
(2, 'Región de La Araucanía', NULL, NULL),
(3, 'Región de Los Ríos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calles`
--
ALTER TABLE `calles`
  ADD CONSTRAINT `calles_ciudad_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `provincias_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
