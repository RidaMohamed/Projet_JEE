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
  PRIMARY KEY (`id_produit`,`id_utilisateur`),
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` (`id`, `nom`, `prix`, `image`, `des_prod`) VALUES (1,'Ordinateur',1200,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MBP13ST-201807?wid=324&hei=324&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1531249597131','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor'),(2,'Lampe',30,'https://s1.lmcdn.fr/multimedia/9c1501011068/1db9c59eddbda/produits/lampe-de-bureau-e14-a-poser-noir-moda-brilliant.jpg?$p=hi-w795','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(3,'Chaise de bureau',75,'https://static.fnac-static.com/multimedia/Images/4A/4A/41/5C/6046026-1505-1540-1/tsp20181207172905/Chaise-de-bureau-MATTEO-tiu-noir-hjh-OFFICE.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(4,'Table',50,'https://www.ikea.com/fr/fr/images/products/ekedalen-extendable-table__0736964_PE740828_S5.JPG','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(5,'Lampe de poche',20,'https://www.la-lampe-torche.com/1938-large_default/lampe-de-poche-led-peli-2350-100-lumens.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(6,'Cable alimentation',25,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MD818?wid=4000&hei=3072&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1470090004329','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(7,'Tablette',230,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-mini-select-201911_FMT_WHH?wid=2000&hei=2000&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1573825332486','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(8,'Montre connectée',300,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/38-alu-silver-sport-white-nc-s3-1up?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1573756484984','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(9,'Souris',15,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MLA02?wid=1144&hei=1144&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1564098735372','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(10,'Clavier',28,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MLA22LL_AV5?wid=1144&hei=1144&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(11,'Casque bluetooth',0,'https://images-na.ssl-images-amazon.com/images/I/71%2BiQZU-dVL._AC_SL1500_.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(12,'Chaussure',130,'https://stockx-360.imgix.net/Nike-Air-Force-1-Low-Off-White/Images/Nike-Air-Force-1-Low-Off-White/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1538080256','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(13,'Boite de rangement',40,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(14,'Disque',10,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(15,'Livre',12,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(16,'Playstation',250,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(17,'Nitendo Switch',250,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(18,'Disque dur externe',30,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(19,'Téléphone',200,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-iphoneX-spacegray_AV2?wid=1144&hei=1144&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1548459944179','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(20,'Télévision',600,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(22,'Gourde',5,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at varius dolor. Phasellus suscipit justo non dui ornare elementum. Duis vehicula est et ligula tempus, nec ornare justo bibendum. Nulla turpis metus, blandit id cursus a, egestas sit amet libero. Aliquam a egestas diam, eget pellentesque erat. Proin non tortor sed enim placerat sagittis quis et turpis. Ut tempor leo sed sem porta placerat. Phasellus quis nisi dolor.'),(24,'Chemise',27,'https://image1.vintage-et-custom.fr/11682-large_default/chemise-hawaienne-hibiscus-et-strelitzia.jpg','Dernière chemise');
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
  `password` varchar(300) NOT NULL,
  `role` varchar(20) DEFAULT 'utilisateur',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` (`id`, `pseudo`, `password`, `role`) VALUES (1,'Thomas','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','utilisateur'),(2,'admin','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','admin'),(4,'user','d38681074467c0bc147b17a9a12b9efa8cc10bcf545f5b0bccccf5a93c4a2b79','utilisateur');
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

-- Dump completed on 2020-04-26 14:33:19
