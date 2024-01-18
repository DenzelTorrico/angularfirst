-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2024 at 07:48 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mercadozdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nombre`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Ropa', 'bi bi-handbag', NULL, NULL),
(2, 'Electrodomésticos', 'bi bi-tv', NULL, NULL),
(3, 'Juegos', 'bi bi-controller', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
CREATE TABLE IF NOT EXISTS `historial` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idVenta` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `historial_idventa_foreign` (`idVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `historial`
--

INSERT INTO `historial` (`id`, `idVenta`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
CREATE TABLE IF NOT EXISTS `metodopago` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `metodopago`
--

INSERT INTO `metodopago` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'paypal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_09_10_000000_create_rol_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_19_190413_create_categories_table', 1),
(7, '2022_04_19_190658_create_productos_table', 1),
(8, '2022_04_19_191532_create_metodopago_table', 1),
(9, '2022_04_19_192333_create_venta_table', 1),
(10, '2022_04_19_192823_create_historial_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `descuento` int NOT NULL,
  `estadoProducto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `foto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `idFoto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `idcategoria` bigint UNSIGNED NOT NULL,
  `iduser` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_idcategoria_foreign` (`idcategoria`),
  KEY `productos_iduser_foreign` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `estadoProducto`, `stock`, `foto`, `idFoto`, `idcategoria`, `iduser`, `created_at`, `updated_at`) VALUES
(1, 'GTA SAN ANDREAS', 'Grand Theft Auto: San Andreas es un videojuego de acción-aventura de mundo abierto desarrollado por Rockstar North y publicado por Rockstar Games.', 110, 10, 'Nuevo', 5, 'https://i.blogs.es/c97ab3/trucos-san-andreas-1/450_1000.jpg', '1', 3, 2, NULL, NULL),
(2, 'GTA VICE CITY', 'Grand Theft Auto: Vice City Stories es el décimo juego de la saga Grand Theft Auto. Es un videojuego diseñado para la consola PSP y lanzado en PlayStation 2 y PlayStation 3, creado por Rockstar North en colaboración con Rockstar Leeds y distribuido por Rockstar Games.', 200, 10, 'Nuevo', 4, 'https://static1-es.millenium.gg/articles/0/28/12/0/@/129519-gta-vi-article_m-1.jpg', '1', 3, 2, NULL, NULL),
(3, 'GTA V', 'Grand Theft Auto V es un videojuego de acción-aventura de mundo abierto desarrollado por el estudio Rockstar North y distribuido por Rockstar Games. Fue lanzado el 17 de septiembre de 2013 para las consolas PlayStation 3 y Xbox 360.​', 200, 10, 'Nuevo', 5, 'https://www.somosxbox.com/wp-content/uploads/2020/03/GTA-5-screensaver-790x491.jpg', '1', 3, 2, NULL, NULL),
(4, 'Doom Eternal', 'Doom Eternal es un videojuego de acción y disparos en primera persona desarrollado por id Software y publicado por Bethesda Softworks.​ Es el quinto título principal de la serie Doom y la secuela directa del juego estrenado en 2016.​', 60, 10, 'Nuevo', 5, 'https://i.blogs.es/0499bf/doometernal4/840_560.jpg', '1', 3, 2, NULL, NULL),
(5, 'Dota 2', 'Dota 2 es un videojuego perteneciente al género de Arena de batalla en línea ARTS, también conocido como MOBA, lanzado el 9 de julio del año 2013. El juego fue desarrollado por la empresa Valve Corporation. ', 50, 5, 'Nuevo', 5, 'https://esports.as.com/2018/09/14/dota-2/Inteligencia-Artificial-Elon-Musk-Dota2_1172592742_199455_1440x810.jpg', '1', 3, 2, NULL, NULL),
(6, 'GTA SAN ANDREAS', 'Grand Theft Auto: San Andreas es un videojuego de acción-aventura de mundo abierto desarrollado por Rockstar North y publicado por Rockstar Games.', 110, 10, 'Nuevo', 5, 'https://i.blogs.es/c97ab3/trucos-san-andreas-1/450_1000.jpg', '1', 3, 2, NULL, NULL),
(7, 'Red Dead Redemption 2', 'Red Dead Redemption 2, estilizado Red Dead Redemption II, es un videojuego de acción-aventura western basado en el drama, en un mundo abierto y en perspectiva de primera y tercera persona, ​ con componentes para un jugador y multijugador.​ Fue desarrollado por Rockstar Games. ', 110, 10, 'Nuevo', 5, 'https://www.muycomputer.com/wp-content/uploads/2019/11/Red-Dead-Redemption-2-2-1.jpg', '1', 3, 2, NULL, NULL),
(8, 'League of Legends', 'League of Legends es un videojuego del género multijugador de arena de batalla en línea y deporte electrónico el cual fue desarrollado por Riot Games para Microsoft Windows y OS X y para consolas digitales.', 110, 30, 'Nuevo', 5, 'https://images.contentstack.io/v3/assets/blt370612131b6e0756/blt02dd32b665c25036/5f4defe8b553152466d1b21a/Homepage_World_1.jpg', '1', 3, 2, NULL, NULL),
(9, 'Sekiro: Shadows Die Twice', 'Sekiro: Shadows Die Twice es un videojuego de acción y aventura desarrollado por From Software y distribuido por Activision.​ El juego fue lanzado el 22 de marzo de 2019 en las plataformas PlayStation 4, Xbox One y Microsoft Windows.​', 110, 10, 'Nuevo', 5, 'https://i.ytimg.com/vi/OB5JOP7W6J0/maxresdefault.jpg', '1', 3, 2, NULL, NULL),
(10, 'Max Payne 3', 'Max Payne 3 es un videojuego de acción en tercera persona de la franquicia Max Payne, desarrollado por Rockstar Games para Mac OS X, Microsoft Windows, PlayStation 3 y Xbox 360. Es el tercer juego de la saga, segundo desarrollado por Rockstar Vancouver.', 180, 30, 'Nuevo', 5, 'https://cdn-products.eneba.com/resized-products/067e0818bd36d71e109c0eb18b67c887_350x200_3x-0.jpg', '1', 3, 2, NULL, NULL),
(11, 'Zapatillas Para Hombre Adidas Lite Racer 2.0 - EG3283', 'Deportivas y versátiles. \r\n                Ponte estas zapatillas de running para enfrentarte a las actividades de tu día a día. \r\n                El exterior de malla transpirable te ofrece comodidad de la mañana a la noche y la mediasuela suave amortigua cada uno de tus pasos. \r\n                Las 3 Tiras sin costuras irradian tu amor por adidas.\r\n                Tallaje ofrecido USA', 190, 20, 'Nuevo', 5, 'https://i.linio.com/p/f34e2530d13e0de8a35ab92d17d3d381-product.webp', '1', 1, 2, NULL, NULL),
(12, 'Polo Casbic Vitange Warehouse - Negro', 'polo de caballero\r\n                polo estampado\r\n                urbano\r\n                cuello redondo', 60, 5, 'Nuevo', 5, 'https://i.linio.com/p/2a79a85e036514a318bc2832139477e7-product.webp', '1', 1, 2, NULL, NULL),
(13, 'Mochila Antirrobo con Clave Laptop Celular Carga Usb Audifonos Gris', 'Medidas del producto 440X 290 X160mm \r\n                Colores: Negro con negro. \r\n                Puerto para Auriculares.\r\n                Conector externo USB para carga de smartphone u otros. \r\n                 Con bolsillos para Laptop de hasta 15 pulgadas Sistema de Clave de Seguridad para la liberación de hebillas', 79, 10, 'Nuevo', 5, 'https://i.linio.com/p/780e0346f6b66081aa751bed37846715-product.webp', '1', 1, 2, NULL, NULL),
(14, 'Bermuda Hombre Plomo - Gino Exclusive\r\n                ', 'Bermuda para hombre de algodón jersey, con bolsillo trasero y lateral', 40, 5, 'Nuevo', 5, 'https://gamarraclick.com/5466-thickbox_default/bermuda-hombre-plomo-gino-exclusive.jpg', '1', 1, 2, NULL, NULL),
(15, 'Zapatillas Running Hombre adidas Ultimashow', 'Concéntrate y abstráete del ruido exterior.\r\n                Cuando el ritmo aumenta, todo en lo que puedes pensar es en tus movimientos y en tu respiración.\r\n                Lo estás consiguiendo.\r\n                El resto no importa.\r\n                Acelera, ralentiza y no pares de moverte con esta zapatilla de running adidas.\r\n                Su diseño ligero y cómodo está listo para la acción.', 199, 5, 'Nuevo', 5, 'https://falabella.scene7.com/is/image/FalabellaPE/17323197_1?wid=1500&hei=1500&qlt=70', '1', 1, 2, NULL, NULL),
(16, 'iPhone 11 128GB Negro', 'Cámara posterior: 12MP\r\n                Cámara frontal: 12MP\r\n                Tamaño de la pantalla: 6.1 pulgadas\r\n                Memoria interna: 128GB\r\n                Núcleos del procesador: No aplica', 2990, 30, 'Usado', 2, 'https://falabella.scene7.com/is/image/FalabellaPE/18673445_1?wid=1500&hei=1500&qlt=70', '1', 2, 2, NULL, NULL),
(17, 'X515JA Core i5 10a Gen 15.6 256GB SSD 8GB RAM', 'Características destacadas\r\n                Procesador: Intel Core i5-10th Gen\r\n                Modelo tarjeta de video: Intel UHD Graphics\r\n                Tamaño de la pantalla: 15.6\r\n                Disco duro sólido: 256 GB SSD\r\n                Núcleos del procesador: Quad-Core', 3299, 30, 'Nuevo', 8, 'https://falabella.scene7.com/is/image/FalabellaPE/882539400_1?wid=1500&hei=1500&qlt=70', '1', 2, 2, NULL, NULL),
(18, 'Apple Watch Series 6 GPS, 44mm Space Gray Aluminium Case with Black Sport Band', 'Pantalla Retina OLED LTPO siempre activa', 2559, 20, 'Usado', 3, 'https://falabella.scene7.com/is/image/FalabellaPE/17697461_1?wid=1500&hei=1500&qlt=70', '1', 2, 2, NULL, NULL),
(19, 'iPad Mini Wi-Fi 64GB 6ta Gen. Space Gray', 'iPad mini, Cable de carga USB-C (1 m), Adaptador de corriente USB-C de 20 W', 2889, 25, 'Nuevo', 8, 'https://falabella.scene7.com/is/image/FalabellaPE/18523363_1?wid=1500&hei=1500&qlt=70', '1', 2, 2, NULL, NULL),
(20, 'LED Xiaomi 55 Android TV055XIA07 4K Ultra Hd Smart TV', 'Experimenta 4K UHD en todo su esplendor a través de imágenes realistas con mas detalle y mayor profundidad', 1749, 10, 'Nuevo', 3, 'https://falabella.scene7.com/is/image/FalabellaPE/18659963_1?wid=1500&hei=1500&qlt=70', '1', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Usuario', NULL, NULL),
(2, 'Administrador', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_role` bigint UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_correo_unique` (`correo`),
  UNIQUE KEY `users_usuario_unique` (`usuario`),
  KEY `users_id_role_foreign` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellidos`, `telefono`, `correo`, `usuario`, `password`, `direccion`, `id_role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@hotmail.com', 'admin', '$2y$10$kQ6.giaCQXLBnJag89ebEusK680cAF0yXGlQled9GFF2KnanFwj7q', 'admin', 1, '2023-04-30 05:06:53', '679550175', '2023-04-30 17:04:53', NULL),
(2, 'user', 'user', 'user', 'user@hotmail.com', 'user', '$2y$10$XMeyXN6HGRlsqjviAyXmteH97dem3eSvypiAeVDSH4T5/G9xHgptq', 'user', 1, '2023-04-30 05:06:53', '3545700348', '2023-04-30 17:04:53', NULL),
(3, 'Denzel Caleb', 'torrico', '284006548', 'denzel_silva@hotmail.com', 'XherreroX54', '$2y$10$tscY4GUwWis8SJtWMmC1H.ihMVJkCppvO9P7Eieiyo3LvcU8tZfXC', 'avenida los ficus n° 576 A', 1, NULL, NULL, '2023-04-30 05:08:25', '2023-04-30 05:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idUsuario` bigint UNSIGNED NOT NULL,
  `idProducto` bigint UNSIGNED NOT NULL,
  `precioUnitario` double NOT NULL,
  `cantidad` int NOT NULL,
  `descuento` int NOT NULL,
  `igv` double NOT NULL DEFAULT '0.18',
  `costoEnvio` double NOT NULL,
  `estadoVenta` tinyint(1) NOT NULL,
  `idMetodoPago` bigint UNSIGNED NOT NULL,
  `fechaPago` date NOT NULL,
  `fechaEnvio` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venta_idusuario_foreign` (`idUsuario`),
  KEY `venta_idproducto_foreign` (`idProducto`),
  KEY `venta_idmetodopago_foreign` (`idMetodoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`id`, `idUsuario`, `idProducto`, `precioUnitario`, `cantidad`, `descuento`, `igv`, `costoEnvio`, `estadoVenta`, `idMetodoPago`, `fechaPago`, `fechaEnvio`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 16, 5, 10, 0.18, 16, 0, 1, '2022-05-01', '2022-05-05', NULL, NULL),
(2, 1, 2, 15, 6, 10, 0.18, 48, 1, 1, '2022-05-03', '2022-05-06', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_idventa_foreign` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY (`idcategoria`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `productos_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `rol` (`id`);

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_idmetodopago_foreign` FOREIGN KEY (`idMetodoPago`) REFERENCES `metodopago` (`id`),
  ADD CONSTRAINT `venta_idproducto_foreign` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `venta_idusuario_foreign` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
