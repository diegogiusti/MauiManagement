DROP DATABASE IF EXISTS MauiManagement;
CREATE DATABASE MauiManagement;
USE MauiManagement;
DROP TABLE IF EXISTS `accessi`;
CREATE TABLE `accessi` (
  `id_utente` int(11) NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_utente`,`login_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
LOCK TABLES `accessi` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `comodati`;
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
LOCK TABLES `comodati` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `oggetti`;
CREATE TABLE `oggetti` (
  `id_oggetto` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventario` int(11) NOT NULL,
  `seriale` varchar(31) NOT NULL,
  `titolo` varchar(63) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_oggetto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
LOCK TABLES `oggetti` WRITE;
UNLOCK TABLES;
DROP TABLE IF EXISTS `studenti`;
CREATE TABLE `studenti` (
  `id_studente` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_studente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS `utenti`;
CREATE TABLE `utenti` (
  `id_utente` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
LOCK TABLES `utenti` WRITE;
UNLOCK TABLES;