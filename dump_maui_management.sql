-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: maui_management
-- ------------------------------------------------------
-- Server version	10.5.23-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accessi`
--

DROP DATABASE IF EXISTS MauiManagement;
CREATE DATABASE MauiManagement;

DROP TABLE IF EXISTS `accessi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessi` (
  `id_utente` int(11) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_utente`,`login_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessi`
--

LOCK TABLES `accessi` WRITE;
/*!40000 ALTER TABLE `accessi` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comodati`
--

DROP TABLE IF EXISTS `comodati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comodati` (
  `id_comodato` int(11) NOT NULL AUTO_INCREMENT,
  `id_utente` int(11) NOT NULL,
  `id_oggetto` int(11) NOT NULL,
  `id_studente` int(11) NOT NULL,
  `data_inizio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data_fine` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id_comodato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comodati`
--

LOCK TABLES `comodati` WRITE;
/*!40000 ALTER TABLE `comodati` DISABLE KEYS */;
/*!40000 ALTER TABLE `comodati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oggetti`
--

DROP TABLE IF EXISTS `oggetti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oggetti` (
  `id_oggetto` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventario` int(11) NOT NULL,
  `seriale` varchar(31) NOT NULL,
  `titolo` varchar(63) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_oggetto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oggetti`
--

LOCK TABLES `oggetti` WRITE;
/*!40000 ALTER TABLE `oggetti` DISABLE KEYS */;
/*!40000 ALTER TABLE `oggetti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studenti` (
  `id_studente` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_studente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `id_utente` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 12:40:53
