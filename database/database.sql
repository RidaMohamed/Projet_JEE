-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: projet
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panier` (
  `id_produit` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `quantite` int NOT NULL DEFAULT '1',
  KEY `produit___fk` (`id_produit`),
  KEY `utilisateur___fk` (`id_utilisateur`),
  CONSTRAINT `produit___fk` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  CONSTRAINT `utilisateur___fk` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panier`
--

LOCK TABLES `panier` WRITE;
/*!40000 ALTER TABLE `panier` DISABLE KEYS */;
/*!40000 ALTER TABLE `panier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prix` int NOT NULL DEFAULT '0',
  `image` varchar(200) DEFAULT NULL,
  `des_prod` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Ordinateur',1200,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MBP13ST-201807?wid=324&hei=324&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1531249597131','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(2,'Lampe',30,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(3,'Chaise de bureau',75,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) DEFAULT 'utilisateur',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-08 12:29:42
