CREATE DATABASE  IF NOT EXISTS `uwv_openmatch` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `uwv_openmatch`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: uwv_openmatch
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobseeker` (
  `index` bigint,
  `PEILDATUM` datetime DEFAULT NULL,
  `BEROEP_CD` bigint DEFAULT NULL,
  `REFERENTIEBEROEP` text,
  `BEROEPENCLUSTER_CD` bigint DEFAULT NULL,
  `BEROEPENCLUSTER` text,
  `POSTCODEGEBIED` bigint DEFAULT NULL,
  `PROVINCIE` VARCHAR(45),
  `GEMEENTE` VARCHAR(45),
  `REC_TYPE` bigint DEFAULT NULL,
  `AANTAL` bigint DEFAULT NULL,
  `GEM_LEEFTIJD` double DEFAULT NULL,
  `AANTAL_MAN` bigint DEFAULT NULL,
  `AANTAL_VROUW` bigint DEFAULT NULL,
  `OPLNIV_GEM` double DEFAULT NULL,
  `ZOEKSTRAAL_GEM` double DEFAULT NULL,
  `AANT_JR_ERV_GEM` double DEFAULT NULL,
  `AANT_LEEFT_TOT_27` bigint DEFAULT NULL,
  `AANT_LEEFT_28_39` bigint DEFAULT NULL,
  `AANT_LEEFT_40_49` bigint DEFAULT NULL,
  `AANT_LEEFT_50_PLUS` bigint DEFAULT NULL,
  `AANT_LEEFT_ONBEKEND` bigint DEFAULT NULL,
  `AANT_UPW_0_8` bigint DEFAULT NULL,
  `AANT_UPW_9_16` bigint DEFAULT NULL,
  `AANT_UPW_17_24` bigint DEFAULT NULL,
  `AANT_UPW_25_32` bigint DEFAULT NULL,
  `AANT_UPW_33_PLUS` bigint DEFAULT NULL,
  `AANT_UPW_ONBEKEND` bigint DEFAULT NULL,
  `AANT_OPLNIV_1` bigint DEFAULT NULL,
  `AANT_OPLNIV_2` bigint DEFAULT NULL,
  `AANT_OPLNIV_3` bigint DEFAULT NULL,
  `AANT_OPLNIV_4` bigint DEFAULT NULL,
  `AANT_OPLNIV_5` bigint DEFAULT NULL,
  `AANT_OPLNIV_6` bigint DEFAULT NULL,
  `AANT_OPLNIV_ONBEKEND` bigint DEFAULT NULL,
  `AANT_WE_0_1` bigint DEFAULT NULL,
  `AANT_WE_1_3` bigint DEFAULT NULL,
  `AANT_WE_3_6` bigint DEFAULT NULL,
  `AANT_WE_7` bigint DEFAULT NULL,
  `AANT_WE_ONBEKEND` bigint DEFAULT NULL,
  `PC` tinyint(1) DEFAULT NULL,
  `GEM` tinyint(1) DEFAULT NULL,
  `PROV` tinyint(1) DEFAULT NULL,
  PRIMARY KEY `ix_jobseeker_index` (`index`),
  KEY  (BEROEP_CD, POSTCODEGEBIED, PROVINCIE, GEMEENTE, REC_TYPE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `vacancy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacancy` (
  `index` bigint,
  `PEILDATUM` datetime DEFAULT NULL,
  `BEROEP_CD` bigint DEFAULT NULL,
  `REFERENTIEBEROEP` text,
  `BEROEPENCLUSTER_CD` bigint DEFAULT NULL,
  `BEROEPENCLUSTER` text,
  `POSTCODEGEBIED` bigint DEFAULT NULL,
  `PROVINCIE` VARCHAR(45),
  `GEMEENTE` VARCHAR(45),
  `REC_TYPE` bigint DEFAULT NULL,
  `AANTAL` bigint DEFAULT NULL,
  PRIMARY KEY `ix_vacancy_index` (`index`),
  KEY  (BEROEP_CD, POSTCODEGEBIED)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

