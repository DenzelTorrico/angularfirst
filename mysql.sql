-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mercadozdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8mb3_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `descuento` int NOT NULL,
  `estadoProducto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `foto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `idFoto` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `idcategoria` bigint unsigned NOT NULL,
  `iduser` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_idcategoria_foreign` (`idcategoria`),
  KEY `productos_iduser_foreign` (`iduser`),
  CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY (`idcategoria`) REFERENCES `categories` (`id`),
  CONSTRAINT `productos_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'GTA SAN ANDREAS','Grand Theft Auto: San Andreas es un videojuego de acci├│n-aventura de mundo abierto desarrollado por Rockstar North y publicado por Rockstar Games.',110,10,'Nuevo',5,'https://i.blogs.es/c97ab3/trucos-san-andreas-1/450_1000.jpg','1',3,2,NULL,NULL),(2,'GTA VICE CITY','Grand Theft Auto: Vice City Stories es el d├®cimo juego de la saga Grand Theft Auto. Es un videojuego dise├▒ado para la consola PSP y lanzado en PlayStation 2 y PlayStation 3, creado por Rockstar North en colaboraci├│n con Rockstar Leeds y distribuido por Rockstar Games.',200,10,'Nuevo',4,'https://static1-es.millenium.gg/articles/0/28/12/0/@/129519-gta-vi-article_m-1.jpg','1',3,2,NULL,NULL),(3,'GTA V','Grand Theft Auto V es un videojuego de acci├│n-aventura de mundo abierto desarrollado por el estudio Rockstar North y distribuido por Rockstar Games. Fue lanzado el 17 de septiembre de 2013 para las consolas PlayStation 3 y Xbox 360.ÔÇï',200,10,'Nuevo',5,'https://www.somosxbox.com/wp-content/uploads/2020/03/GTA-5-screensaver-790x491.jpg','1',3,2,NULL,NULL),(4,'Doom Eternal','Doom Eternal es un videojuego de acci├│n y disparos en primera persona desarrollado por id Software y publicado por Bethesda Softworks.ÔÇï Es el quinto t├¡tulo principal de la serie Doom y la secuela directa del juego estrenado en 2016.ÔÇï',60,10,'Nuevo',5,'https://i.blogs.es/0499bf/doometernal4/840_560.jpg','1',3,2,NULL,NULL),(5,'Dota 2','Dota 2 es un videojuego perteneciente al g├®nero de Arena de batalla en l├¡nea ARTS, tambi├®n conocido como MOBA, lanzado el 9 de julio del a├▒o 2013. El juego fue desarrollado por la empresa Valve Corporation. ',50,5,'Nuevo',5,'https://esports.as.com/2018/09/14/dota-2/Inteligencia-Artificial-Elon-Musk-Dota2_1172592742_199455_1440x810.jpg','1',3,2,NULL,NULL),(6,'GTA SAN ANDREAS','Grand Theft Auto: San Andreas es un videojuego de acci├│n-aventura de mundo abierto desarrollado por Rockstar North y publicado por Rockstar Games.',110,10,'Nuevo',5,'https://i.blogs.es/c97ab3/trucos-san-andreas-1/450_1000.jpg','1',3,2,NULL,NULL),(7,'Red Dead Redemption 2','Red Dead Redemption 2, estilizado Red Dead Redemption II, es un videojuego de acci├│n-aventura western basado en el drama, en un mundo abierto y en perspectiva de primera y tercera persona, ÔÇï con componentes para un jugador y multijugador.ÔÇï Fue desarrollado por Rockstar Games. ',110,10,'Nuevo',5,'https://www.muycomputer.com/wp-content/uploads/2019/11/Red-Dead-Redemption-2-2-1.jpg','1',3,2,NULL,NULL),(8,'League of Legends','League of Legends es un videojuego del g├®nero multijugador de arena de batalla en l├¡nea y deporte electr├│nico el cual fue desarrollado por Riot Games para Microsoft Windows y OS X y para consolas digitales.',110,30,'Nuevo',5,'https://images.contentstack.io/v3/assets/blt370612131b6e0756/blt02dd32b665c25036/5f4defe8b553152466d1b21a/Homepage_World_1.jpg','1',3,2,NULL,NULL),(9,'Sekiro: Shadows Die Twice','Sekiro: Shadows Die Twice es un videojuego de acci├│n y aventura desarrollado por From Software y distribuido por Activision.ÔÇï El juego fue lanzado el 22 de marzo de 2019 en las plataformas PlayStation 4, Xbox One y Microsoft Windows.ÔÇï',110,10,'Nuevo',5,'https://i.ytimg.com/vi/OB5JOP7W6J0/maxresdefault.jpg','1',3,2,NULL,NULL),(10,'Max Payne 3','Max Payne 3 es un videojuego de acci├│n en tercera persona de la franquicia Max Payne, desarrollado por Rockstar Games para Mac OS X, Microsoft Windows, PlayStation 3 y Xbox 360. Es el tercer juego de la saga, segundo desarrollado por Rockstar Vancouver.',180,30,'Nuevo',5,'https://cdn-products.eneba.com/resized-products/067e0818bd36d71e109c0eb18b67c887_350x200_3x-0.jpg','1',3,2,NULL,NULL),(11,'Zapatillas Para Hombre Adidas Lite Racer 2.0 - EG3283','Deportivas y vers├ítiles. \r\n                Ponte estas zapatillas de running para enfrentarte a las actividades de tu d├¡a a d├¡a. \r\n                El exterior de malla transpirable te ofrece comodidad de la ma├▒ana a la noche y la mediasuela suave amortigua cada uno de tus pasos. \r\n                Las 3 Tiras sin costuras irradian tu amor por adidas.\r\n                Tallaje ofrecido USA',190,20,'Nuevo',5,'https://i.linio.com/p/f34e2530d13e0de8a35ab92d17d3d381-product.webp','1',1,2,NULL,NULL),(12,'Polo Casbic Vitange Warehouse - Negro','polo de caballero\r\n                polo estampado\r\n                urbano\r\n                cuello redondo',60,5,'Nuevo',5,'https://i.linio.com/p/2a79a85e036514a318bc2832139477e7-product.webp','1',1,2,NULL,NULL),(13,'Mochila Antirrobo con Clave Laptop Celular Carga Usb Audifonos Gris','Medidas del producto 440X 290 X160mm \r\n                Colores: Negro con negro. \r\n                Puerto para Auriculares.\r\n                Conector externo USB para carga de smartphone u otros. \r\n                 Con bolsillos para Laptop de hasta 15 pulgadas Sistema de Clave de Seguridad para la liberaci├│n de hebillas',79,10,'Nuevo',5,'https://i.linio.com/p/780e0346f6b66081aa751bed37846715-product.webp','1',1,2,NULL,NULL),(14,'Bermuda Hombre Plomo - Gino Exclusive\r\n                ','Bermuda para hombre de algod├│n jersey, con bolsillo trasero y lateral',40,5,'Nuevo',5,'https://gamarraclick.com/5466-thickbox_default/bermuda-hombre-plomo-gino-exclusive.jpg','1',1,2,NULL,NULL),(15,'Zapatillas Running Hombre adidas Ultimashow','Conc├®ntrate y abstr├íete del ruido exterior.\r\n                Cuando el ritmo aumenta, todo en lo que puedes pensar es en tus movimientos y en tu respiraci├│n.\r\n                Lo est├ís consiguiendo.\r\n                El resto no importa.\r\n                Acelera, ralentiza y no pares de moverte con esta zapatilla de running adidas.\r\n                Su dise├▒o ligero y c├│modo est├í listo para la acci├│n.',199,5,'Nuevo',5,'https://falabella.scene7.com/is/image/FalabellaPE/17323197_1?wid=1500&hei=1500&qlt=70','1',1,2,NULL,NULL),(16,'iPhone 11 128GB Negro','C├ímara posterior: 12MP\r\n                C├ímara frontal: 12MP\r\n                Tama├▒o de la pantalla: 6.1 pulgadas\r\n                Memoria interna: 128GB\r\n                N├║cleos del procesador: No aplica',2990,30,'Usado',2,'https://falabella.scene7.com/is/image/FalabellaPE/18673445_1?wid=1500&hei=1500&qlt=70','1',2,2,NULL,NULL),(17,'X515JA Core i5 10a Gen 15.6 256GB SSD 8GB RAM','Caracter├¡sticas destacadas\r\n                Procesador: Intel Core i5-10th Gen\r\n                Modelo tarjeta de video: Intel UHD Graphics\r\n                Tama├▒o de la pantalla: 15.6\r\n                Disco duro s├│lido: 256 GB SSD\r\n                N├║cleos del procesador: Quad-Core',3299,30,'Nuevo',8,'https://falabella.scene7.com/is/image/FalabellaPE/882539400_1?wid=1500&hei=1500&qlt=70','1',2,2,NULL,NULL),(18,'Apple Watch Series 6 GPS, 44mm Space Gray Aluminium Case with Black Sport Band','Pantalla Retina OLED LTPO siempre activa',2559,20,'Usado',3,'https://falabella.scene7.com/is/image/FalabellaPE/17697461_1?wid=1500&hei=1500&qlt=70','1',2,2,NULL,NULL),(19,'iPad Mini Wi-Fi 64GB 6ta Gen. Space Gray','iPad mini, Cable de carga USB-C (1 m), Adaptador de corriente USB-C de 20 W',2889,25,'Nuevo',8,'https://falabella.scene7.com/is/image/FalabellaPE/18523363_1?wid=1500&hei=1500&qlt=70','1',2,2,NULL,NULL),(20,'LED Xiaomi 55 Android TV055XIA07 4K Ultra Hd Smart TV','Experimenta 4K UHD en todo su esplendor a trav├®s de im├ígenes realistas con mas detalle y mayor profundidad',1749,10,'Nuevo',3,'https://falabella.scene7.com/is/image/FalabellaPE/18659963_1?wid=1500&hei=1500&qlt=70','1',2,2,NULL,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18  0:57:46
