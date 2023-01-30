-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: devoir
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `chambre`
--

DROP TABLE IF EXISTS `chambre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chambre` (
  `NumeroChambre` varchar(100) NOT NULL,
  `id_reservation` int DEFAULT NULL,
  `Prix_chambre` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`NumeroChambre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambre`
--

LOCK TABLES `chambre` WRITE;
/*!40000 ALTER TABLE `chambre` DISABLE KEYS */;
INSERT INTO `chambre` VALUES ('111',202,500),('299',200,220),('301',100,120),('407',101,450),('606',103,700),('C101',1,150),('C102',2,160),('C103',3,170),('C104',4,180),('C105',5,190),('C106',6,200),('C107',7,210),('C108',8,220),('C109',9,230),('C110',10,240),('C111',11,250),('C112',12,260),('C113',13,270),('C114',14,280),('C115',15,290);
/*!40000 ALTER TABLE `chambre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_client` int NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prenom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adresse` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `codepostal` int DEFAULT NULL,
  `ville` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_reservation` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Doe','John','123 Main St',12345,'New York',1),(2,'Smith','Jane','456 Market St',67890,'San Francisco',2),(3,'Brown','Jim','789 Elm St',98765,'Los Angeles',3),(4,'Johnson','Linda','246 Park Ave',54321,'Miami',4),(5,'Davis','Bob','369 First St',11111,'Chicago',5),(6,'Miller','Sue','159 Second St',22222,'Houston',6),(7,'Wilson','Tom','753 Third St',33333,'Dallas',7),(8,'Taylor','Mary','147 Fourth St',44444,'Atlanta',8),(9,'Clark','Bill','258 Fifth St',55555,'Boston',9),(10,'Lewis','Karen','369 Sixth St',66666,'Washington',10),(11,'Lee','Steve','159 Seventh St',77777,'Seattle',11),(12,'Parker','Lisa','753 Eighth St',88888,'Denver',12),(13,'Hall','Paul','147 Ninth St',99999,'Portland',13),(14,'Adams','Sarah','258 Tenth St',0,'Phoenix',14),(15,'Nelson','Eric','369 Eleventh St',111,'Minneapolis',15);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestataire`
--

DROP TABLE IF EXISTS `prestataire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestataire` (
  `salaire` int DEFAULT NULL,
  `id_employer` int NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `DateDebutcontrat` date NOT NULL,
  `DateFincontrat` date NOT NULL,
  PRIMARY KEY (`id_employer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestataire`
--

LOCK TABLES `prestataire` WRITE;
/*!40000 ALTER TABLE `prestataire` DISABLE KEYS */;
INSERT INTO `prestataire` VALUES (500,1,'John','Doe','2022-01-01','2023-12-31'),(550,2,'Jane','Doe','2021-06-01','2023-12-31'),(600,3,'Jack','Smith','2022-01-01','2023-12-31'),(650,4,'Jill','Smith','2021-06-01','2023-12-31'),(700,5,'Jim','Johnson','2022-01-01','2023-12-31'),(750,6,'Joan','Johnson','2021-06-01','2023-12-31'),(800,7,'James','Williams','2022-01-01','2023-12-31'),(850,8,'Julie','Williams','2021-06-01','2023-12-31'),(900,9,'John','Brown','2022-01-01','2023-12-31'),(9500,10,'Jane','Brown','2021-06-01','2023-12-31'),(1000,11,'Jack','Davis','2022-01-01','2023-12-31'),(1050,12,'Jill','Davis','2021-06-01','2023-12-31'),(1100,13,'Jim','Miller','2022-01-01','2023-12-31'),(1150,14,'Joan','Miller','2021-06-01','2023-12-31'),(1200,15,'James','Wilson','2022-01-01','2023-12-31');
/*!40000 ALTER TABLE `prestataire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id_reservation` int NOT NULL,
  `DateReservation` date NOT NULL,
  `DateDebutReservation` date NOT NULL,
  `DateFinReservation` date NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2022-01-01','2022-01-05','2022-01-10',1),(2,'2022-02-01','2022-02-05','2022-02-10',2),(3,'2022-03-01','2022-03-05','2022-03-10',3),(4,'2022-04-01','2022-04-05','2022-04-10',4),(5,'2022-05-01','2022-05-05','2022-05-10',5),(6,'2022-06-01','2022-06-05','2022-06-10',6),(7,'2022-07-01','2022-07-05','2022-07-10',7),(8,'2022-08-01','2022-08-05','2022-08-10',8),(9,'2022-09-01','2022-09-05','2022-09-10',9),(10,'2022-10-01','2022-10-05','2022-10-10',10),(11,'2022-11-01','2022-11-05','2022-11-10',11),(12,'2022-12-01','2022-12-05','2022-12-10',12),(13,'2023-01-01','2023-01-05','2023-01-10',13),(14,'2023-02-01','2023-02-05','2023-02-10',14),(15,'2023-03-01','2023-03-05','2023-03-10',15);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'devoir'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 16:04:02
