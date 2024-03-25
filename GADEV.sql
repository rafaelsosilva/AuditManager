-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 15.229.117.46    Database: GADEV
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `TBL_APONTAMENTO`
--

DROP TABLE IF EXISTS `TBL_APONTAMENTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_APONTAMENTO` (
  `ID_APONTAMENTO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_APONTAMENTO` varchar(100) NOT NULL,
  `DATA_REGISTRO` varchar(100) NOT NULL,
  `RISCO` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_APONTAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_APONTAMENTO`
--

LOCK TABLES `TBL_APONTAMENTO` WRITE;
/*!40000 ALTER TABLE `TBL_APONTAMENTO` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_APONTAMENTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_AREA`
--

DROP TABLE IF EXISTS `TBL_AREA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_AREA` (
  `ID_AREA` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_AREA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_AREA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_AREA`
--

LOCK TABLES `TBL_AREA` WRITE;
/*!40000 ALTER TABLE `TBL_AREA` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_AREA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_AUDITORIA`
--

DROP TABLE IF EXISTS `TBL_AUDITORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_AUDITORIA` (
  `ID_AUDITORIA` int NOT NULL AUTO_INCREMENT,
  `NOME_AUDITORIA` varchar(100) NOT NULL,
  `DATA_INICIO` varchar(100) DEFAULT NULL,
  `DATA_FIM` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_AUDITORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_AUDITORIA`
--

LOCK TABLES `TBL_AUDITORIA` WRITE;
/*!40000 ALTER TABLE `TBL_AUDITORIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_AUDITORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_CARGO`
--

DROP TABLE IF EXISTS `TBL_CARGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_CARGO` (
  `ID_CARGO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_CARGO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CARGO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_CARGO`
--

LOCK TABLES `TBL_CARGO` WRITE;
/*!40000 ALTER TABLE `TBL_CARGO` DISABLE KEYS */;
INSERT INTO `TBL_CARGO` VALUES (1,'AUDITOR JR'),(2,'AUDITOR PLENO'),(3,'AUDITOR SENIOR'),(4,'GERENTE'),(5,'SUPERINTENDENTE'),(6,'SUPERINTENDENTE GERAL'),(7,'SUPERINTENDENTE EXECUTIVO'),(8,'DIRETOR'),(9,'ESPECIALISTA I'),(10,'ESPECIALISTA II'),(11,'COORDENADOR');
/*!40000 ALTER TABLE `TBL_CARGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_CHECKPOINT`
--

DROP TABLE IF EXISTS `TBL_CHECKPOINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_CHECKPOINT` (
  `ID_CHECKPOINT` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_CHECKPOINT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CHECKPOINT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_CHECKPOINT`
--

LOCK TABLES `TBL_CHECKPOINT` WRITE;
/*!40000 ALTER TABLE `TBL_CHECKPOINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_CHECKPOINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_COLABORADOR`
--

DROP TABLE IF EXISTS `TBL_COLABORADOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_COLABORADOR` (
  `ID_COLABORADOR` int NOT NULL AUTO_INCREMENT,
  `NOME_COLABORADOR` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_COLABORADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_COLABORADOR`
--

LOCK TABLES `TBL_COLABORADOR` WRITE;
/*!40000 ALTER TABLE `TBL_COLABORADOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_COLABORADOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_MATRIZ_RISCO`
--

DROP TABLE IF EXISTS `TBL_MATRIZ_RISCO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_MATRIZ_RISCO` (
  `ID_MATRIZ_RISCO` int NOT NULL AUTO_INCREMENT,
  `DATA_REGISTRO` varchar(100) NOT NULL,
  `DATA_REVISAO` varchar(100) NOT NULL,
  `ARQUIVO` blob NOT NULL,
  PRIMARY KEY (`ID_MATRIZ_RISCO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_MATRIZ_RISCO`
--

LOCK TABLES `TBL_MATRIZ_RISCO` WRITE;
/*!40000 ALTER TABLE `TBL_MATRIZ_RISCO` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_MATRIZ_RISCO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_PLANO_ACAO`
--

DROP TABLE IF EXISTS `TBL_PLANO_ACAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_PLANO_ACAO` (
  `ID_PLANO_ACAO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_PLANO_ACAO` varchar(100) NOT NULL,
  `DATA_REGISTRO` varchar(100) NOT NULL,
  `DATA_CONCLUSAO` varchar(100) NOT NULL,
  `STATUS` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PLANO_ACAO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_PLANO_ACAO`
--

LOCK TABLES `TBL_PLANO_ACAO` WRITE;
/*!40000 ALTER TABLE `TBL_PLANO_ACAO` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_PLANO_ACAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_PRORROGACAO`
--

DROP TABLE IF EXISTS `TBL_PRORROGACAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_PRORROGACAO` (
  `ID_PRORROGACAO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_PRORROGACAO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_PRORROGACAO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_PRORROGACAO`
--

LOCK TABLES `TBL_PRORROGACAO` WRITE;
/*!40000 ALTER TABLE `TBL_PRORROGACAO` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_PRORROGACAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_RELATORIO`
--

DROP TABLE IF EXISTS `TBL_RELATORIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_RELATORIO` (
  `ID_RELATORIO` int NOT NULL AUTO_INCREMENT,
  `DATA_EMISSAO` varchar(100) NOT NULL,
  `RISCO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_RELATORIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_RELATORIO`
--

LOCK TABLES `TBL_RELATORIO` WRITE;
/*!40000 ALTER TABLE `TBL_RELATORIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_RELATORIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_TESTE`
--

DROP TABLE IF EXISTS `TBL_TESTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_TESTE` (
  `ID_TESTE` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_TESTE` varchar(100) NOT NULL,
  `EVIDENCIA` blob,
  `DATA_REGISTRO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_TESTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_TESTE`
--

LOCK TABLES `TBL_TESTE` WRITE;
/*!40000 ALTER TABLE `TBL_TESTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_TESTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_TIPO_CHECKPOINT`
--

DROP TABLE IF EXISTS `TBL_TIPO_CHECKPOINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_TIPO_CHECKPOINT` (
  `ID_TIPO_CHECKPOINT` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_TIPO_CHECKPOINT` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_TIPO_CHECKPOINT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_TIPO_CHECKPOINT`
--

LOCK TABLES `TBL_TIPO_CHECKPOINT` WRITE;
/*!40000 ALTER TABLE `TBL_TIPO_CHECKPOINT` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_TIPO_CHECKPOINT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_WALKTHROUGH`
--

DROP TABLE IF EXISTS `TBL_WALKTHROUGH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TBL_WALKTHROUGH` (
  `ID_WALKTHROUGH` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_WALKTHROUGH` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_WALKTHROUGH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_WALKTHROUGH`
--

LOCK TABLES `TBL_WALKTHROUGH` WRITE;
/*!40000 ALTER TABLE `TBL_WALKTHROUGH` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_WALKTHROUGH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'GADEV'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_ADD_AREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_ADD_AREA`(P_DESCRICAO_AREA VARCHAR(100))
BEGIN
INSERT INTO TBL_AREA VALUES (P_DESCRICAO_AREA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ADD_CARGO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_ADD_CARGO`(P_DESCRICAO_CARGO VARCHAR(100))
BEGIN
INSERT INTO TBL_CARGO (DESCRICAO_CARGO) VALUES (P_DESCRICAO_CARGO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:29:27
