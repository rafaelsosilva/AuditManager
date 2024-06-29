-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema imrdev_sys
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ imrdev_sys;
USE imrdev_sys;

--
-- Table structure for table `imrdev_sys`.`atividades_agendadas`
--

DROP TABLE IF EXISTS `atividades_agendadas`;
CREATE TABLE `atividades_agendadas` (
  `id_atividade_agendada` int(11) NOT NULL AUTO_INCREMENT,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `agendamentos` int(11) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  PRIMARY KEY (`id_atividade_agendada`),
  KEY `fk_cargo_ag` (`id_cargo`),
  KEY `fk_departamento_ag` (`id_departamento`),
  KEY `fk_prioridade_ag` (`id_prioridade`),
  KEY `fk_responsavel_ag` (`id_responsavel`),
  KEY `fk_state_ag` (`id_state`),
  CONSTRAINT `fk_cargo_ag` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`),
  CONSTRAINT `fk_departamento_ag` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`),
  CONSTRAINT `fk_prioridade_ag` FOREIGN KEY (`id_prioridade`) REFERENCES `prioridade` (`id_prioridade`),
  CONSTRAINT `fk_responsavel_ag` FOREIGN KEY (`id_responsavel`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `fk_state_ag` FOREIGN KEY (`id_state`) REFERENCES `status` (`id_state`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`atividades_agendadas`
--

/*!40000 ALTER TABLE `atividades_agendadas` DISABLE KEYS */;
INSERT INTO `atividades_agendadas` (`id_atividade_agendada`,`processed_date`,`descricao_atividade`,`data_inicio`,`data_final`,`nome_solicitante`,`agendamentos`,`sla`,`state`,`descricao_cargo`,`descricao_departamento`,`descricao_prioridade`,`id_cargo`,`id_departamento`,`id_prioridade`,`id_responsavel`,`id_state`,`last_update`,`id_fila`,`descricao_fila`) VALUES 
 (25,'2016-12-15 17:31:59','Validação CCI','2016-12-15','2016-12-19','93137609',0,'2016-12-19','PROCESSING','Diretor','Suporte a Produção','Alta',16,7,1,59,3,'2016-12-15 17:31:59',1,'IMR-BANCO-DE-DADOS');
/*!40000 ALTER TABLE `atividades_agendadas` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`atividades_fila`
--

DROP TABLE IF EXISTS `atividades_fila`;
CREATE TABLE `atividades_fila` (
  `id_fila_atividade` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `last_state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  PRIMARY KEY (`id_fila_atividade`),
  UNIQUE KEY `id_atividade` (`id_atividade`),
  KEY `idx_id_atividade_fila` (`id_atividade`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`atividades_fila`
--

/*!40000 ALTER TABLE `atividades_fila` DISABLE KEYS */;
INSERT INTO `atividades_fila` (`id_fila_atividade`,`id_atividade`,`processed_date`,`descricao_atividade`,`data_inicio`,`data_final`,`nome_solicitante`,`sla`,`state`,`last_state`,`descricao_cargo`,`descricao_departamento`,`descricao_prioridade`,`id_cargo`,`id_departamento`,`id_prioridade`,`id_responsavel`,`id_state`,`last_update`,`id_fila`,`descricao_fila`) VALUES 
 (25,25,'2016-12-15 17:31:59','Validação CCI','2016-12-15','2016-12-19','93137609','2016-12-15 17:31:59','OPEN','','Diretor','Suporte a Produção','Alta',16,7,1,59,2,'2016-12-15 17:31:59',1,'IMR-BANCO-DE-DADOS');
/*!40000 ALTER TABLE `atividades_fila` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`atividades_finalizadas`
--

DROP TABLE IF EXISTS `atividades_finalizadas`;
CREATE TABLE `atividades_finalizadas` (
  `id_atividade_finalizada` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `nome_analista` varchar(100) NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_analista` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  PRIMARY KEY (`id_atividade_finalizada`),
  UNIQUE KEY `id_atividade` (`id_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`atividades_finalizadas`
--

/*!40000 ALTER TABLE `atividades_finalizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `atividades_finalizadas` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`atividades_pendentes`
--

DROP TABLE IF EXISTS `atividades_pendentes`;
CREATE TABLE `atividades_pendentes` (
  `id_atividade_pendente` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_analista` varchar(100) NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `last_state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_analista` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_last_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  PRIMARY KEY (`id_atividade_pendente`),
  UNIQUE KEY `id_atividade` (`id_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`atividades_pendentes`
--

/*!40000 ALTER TABLE `atividades_pendentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `atividades_pendentes` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`cargos`
--

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_cargo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`cargos`
--

/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` (`id_cargo`,`descricao_cargo`) VALUES 
 (1,'Analista de sistemas I'),
 (2,'Analista de sistemas II'),
 (3,'Analista de sistemas III'),
 (4,'Especialista I'),
 (5,'Especialista II'),
 (6,'Especialista III'),
 (7,'Gerente de projetos I'),
 (8,'Gerente de projetos II'),
 (9,'Gerente de projetos III'),
 (10,'Coordenador I'),
 (11,'Coordenador II'),
 (12,'Coordenador III'),
 (13,'Consultor I'),
 (14,'Consultor II'),
 (15,'Consultor III'),
 (16,'Diretor'),
 (17,'Presidente');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_departamento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`departamentos`
--

/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`id_departamento`,`descricao_departamento`) VALUES 
 (1,'Tecnologia da Informação'),
 (2,'Financeiro'),
 (3,'Contábil'),
 (4,'Gestão de Pessoas'),
 (5,'Suporte a banco de dados'),
 (6,'Suporte a Redes'),
 (7,'Suporte a Produção'),
 (8,'Desenvolvimento'),
 (9,'Requisitos'),
 (10,'Melhoria');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `id_matricula` int(11) NOT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`endereco`
--

/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`fila`
--

DROP TABLE IF EXISTS `fila`;
CREATE TABLE `fila` (
  `id_fila` int(11) NOT NULL AUTO_INCREMENT,
  `fila` varchar(100) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  PRIMARY KEY (`id_fila`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`fila`
--

/*!40000 ALTER TABLE `fila` DISABLE KEYS */;
INSERT INTO `fila` (`id_fila`,`fila`,`descricao_fila`) VALUES 
 (1,'IMR-BANCO-DE-DADOS','Informação para o usuário'),
 (2,'IMR-DESENVOLVIMENTO','Informação para o usuário'),
 (3,'IMR-SUPORTE','Informação para o usuário'),
 (4,'IMR-REDES','Informação para o usuário'),
 (5,'IMR-IMPLANTACAO','Informação para o usuário');
/*!40000 ALTER TABLE `fila` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`hist_atividades_agendadas`
--

DROP TABLE IF EXISTS `hist_atividades_agendadas`;
CREATE TABLE `hist_atividades_agendadas` (
  `id_hist_atividade_agendada` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade_agendada` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `agendamentos` int(11) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hist_atividade_agendada`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`hist_atividades_agendadas`
--

/*!40000 ALTER TABLE `hist_atividades_agendadas` DISABLE KEYS */;
INSERT INTO `hist_atividades_agendadas` (`id_hist_atividade_agendada`,`id_atividade_agendada`,`processed_date`,`descricao_atividade`,`data_inicio`,`data_final`,`nome_solicitante`,`agendamentos`,`sla`,`state`,`descricao_cargo`,`descricao_departamento`,`descricao_prioridade`,`id_cargo`,`id_departamento`,`id_prioridade`,`id_responsavel`,`id_state`,`last_update`,`id_fila`,`descricao_fila`,`evento`,`horario`,`usuario`) VALUES 
 (70,24,'2016-12-15 17:10:47','Validação BRUX0164 - APACHE','2016-12-15','2016-12-19','93261085',0,'2016-12-19','PROCESSING','Presidente','Melhoria','Alta',17,10,1,58,3,'2016-12-15 17:10:47',1,'IMR-BANCO-DE-DADOS','INSERT','2016-12-15 17:10:47','imrapp@localhost'),
 (71,24,'2016-12-15 17:10:47','Validação BRUX0164 - APACHE','2016-12-15','2016-12-19','93261085',0,'2016-12-19','PROCESSING','Presidente','Melhoria','Alta',17,10,1,58,3,'2016-12-15 17:10:47',1,'IMR-BANCO-DE-DADOS','UPDATE','2016-12-15 17:10:47','imrapp@localhost'),
 (72,25,'2016-12-15 17:31:59','Validação CCI','2016-12-15','2016-12-19','93137609',0,'2016-12-19','PROCESSING','Diretor','Suporte a Produção','Alta',16,7,1,59,3,'2016-12-15 17:31:59',1,'IMR-BANCO-DE-DADOS','INSERT','2016-12-15 17:31:59','imrapp@localhost'),
 (73,25,'2016-12-15 17:31:59','Validação CCI','2016-12-15','2016-12-19','93137609',0,'2016-12-19','PROCESSING','Diretor','Suporte a Produção','Alta',16,7,1,59,3,'2016-12-15 17:31:59',1,'IMR-BANCO-DE-DADOS','UPDATE','2016-12-15 17:31:59','imrapp@localhost');
INSERT INTO `hist_atividades_agendadas` (`id_hist_atividade_agendada`,`id_atividade_agendada`,`processed_date`,`descricao_atividade`,`data_inicio`,`data_final`,`nome_solicitante`,`agendamentos`,`sla`,`state`,`descricao_cargo`,`descricao_departamento`,`descricao_prioridade`,`id_cargo`,`id_departamento`,`id_prioridade`,`id_responsavel`,`id_state`,`last_update`,`id_fila`,`descricao_fila`,`evento`,`horario`,`usuario`) VALUES 
 (74,24,'2016-12-15 17:10:47','Validação BRUX0164 - APACHE','2016-12-15','2016-12-19','93261085',0,'2016-12-19','PROCESSING','Presidente','Melhoria','Alta',17,10,1,58,3,'2016-12-15 17:10:47',1,'IMR-BANCO-DE-DADOS','DELETE','2016-12-15 18:19:07','imrdev_sys@localhost');
/*!40000 ALTER TABLE `hist_atividades_agendadas` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`hist_atividades_fila`
--

DROP TABLE IF EXISTS `hist_atividades_fila`;
CREATE TABLE `hist_atividades_fila` (
  `id_hist_fila_atividade` int(11) NOT NULL AUTO_INCREMENT,
  `id_fila_atividade` int(11) NOT NULL,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `last_state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_responsavel` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hist_fila_atividade`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`hist_atividades_fila`
--

/*!40000 ALTER TABLE `hist_atividades_fila` DISABLE KEYS */;
INSERT INTO `hist_atividades_fila` (`id_hist_fila_atividade`,`id_fila_atividade`,`id_atividade`,`processed_date`,`descricao_atividade`,`data_inicio`,`data_final`,`nome_solicitante`,`sla`,`state`,`last_state`,`descricao_cargo`,`descricao_departamento`,`descricao_prioridade`,`id_cargo`,`id_departamento`,`id_prioridade`,`id_responsavel`,`id_state`,`last_update`,`id_fila`,`descricao_fila`,`evento`,`horario`,`usuario`) VALUES 
 (47,24,24,'2016-12-15 17:10:47','Validação BRUX0164 - APACHE','2016-12-15','2016-12-19','93261085','2016-12-15 17:10:47','OPEN','','Presidente','Melhoria','Alta',17,10,1,58,2,'2016-12-15 17:10:47',1,'IMR-BANCO-DE-DADOS','INSERT','2016-12-15 17:10:47','imrapp@localhost'),
 (48,25,25,'2016-12-15 17:31:59','Validação CCI','2016-12-15','2016-12-19','93137609','2016-12-15 17:31:59','OPEN','','Diretor','Suporte a Produção','Alta',16,7,1,59,2,'2016-12-15 17:31:59',1,'IMR-BANCO-DE-DADOS','INSERT','2016-12-15 17:31:59','imrapp@localhost'),
 (49,24,24,'2016-12-15 17:10:47','Validação BRUX0164 - APACHE','2016-12-15','2016-12-19','93261085','2016-12-15 17:10:47','OPEN','','Presidente','Melhoria','Alta',17,10,1,58,2,'2016-12-15 17:10:47',1,'IMR-BANCO-DE-DADOS','DELETE','2016-12-15 18:19:07','imrdev_sys@localhost');
/*!40000 ALTER TABLE `hist_atividades_fila` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`hist_atividades_finalizadas`
--

DROP TABLE IF EXISTS `hist_atividades_finalizadas`;
CREATE TABLE `hist_atividades_finalizadas` (
  `id_hist_atividade_finalizada` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade_finalizada` int(11) NOT NULL,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `nome_analista` varchar(100) NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_analista` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hist_atividade_finalizada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`hist_atividades_finalizadas`
--

/*!40000 ALTER TABLE `hist_atividades_finalizadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_atividades_finalizadas` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`hist_atividades_pendentes`
--

DROP TABLE IF EXISTS `hist_atividades_pendentes`;
CREATE TABLE `hist_atividades_pendentes` (
  `id_hist_atividade_pendente` int(11) NOT NULL AUTO_INCREMENT,
  `id_atividade_pendente` int(11) NOT NULL,
  `id_atividade` int(11) NOT NULL,
  `processed_date` varchar(100) NOT NULL,
  `descricao_atividade` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `nome_analista` varchar(100) NOT NULL,
  `nome_solicitante` varchar(100) NOT NULL,
  `sla` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `last_state` varchar(100) NOT NULL,
  `descricao_cargo` varchar(100) NOT NULL,
  `descricao_departamento` varchar(100) NOT NULL,
  `descricao_prioridade` varchar(100) NOT NULL,
  `id_analista` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_prioridade` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `id_last_state` int(11) NOT NULL,
  `last_update` varchar(100) NOT NULL,
  `id_fila` int(11) NOT NULL,
  `descricao_fila` varchar(100) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_hist_atividade_pendente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`hist_atividades_pendentes`
--

/*!40000 ALTER TABLE `hist_atividades_pendentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_atividades_pendentes` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `cpf` varchar(100) NOT NULL,
  PRIMARY KEY (`id_matricula`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`matricula`
--

/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` (`id_matricula`,`nome_completo`,`state`,`data_nascimento`,`idade`,`cpf`) VALUES 
 (10,'Rafael Souza Silva','ATIVO','2016-12-01',26,'393.662.468-26'),
 (11,'Carlos Henrique de Albuquerque','ATIVO','1980-02-12',40,'798-565-238-56');
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`prioridade`
--

DROP TABLE IF EXISTS `prioridade`;
CREATE TABLE `prioridade` (
  `id_prioridade` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_prioridade` varchar(100) NOT NULL,
  `dias` int(11) NOT NULL,
  PRIMARY KEY (`id_prioridade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`prioridade`
--

/*!40000 ALTER TABLE `prioridade` DISABLE KEYS */;
INSERT INTO `prioridade` (`id_prioridade`,`descricao_prioridade`,`dias`) VALUES 
 (1,'Alta',4),
 (2,'Média',8),
 (3,'Baixa',10),
 (4,'Priorizado',6),
 (5,'Crítico',2);
/*!40000 ALTER TABLE `prioridade` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`salario`
--

DROP TABLE IF EXISTS `salario`;
CREATE TABLE `salario` (
  `id_salario` int(11) NOT NULL AUTO_INCREMENT,
  `valor_salario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_salario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`salario`
--

/*!40000 ALTER TABLE `salario` DISABLE KEYS */;
/*!40000 ALTER TABLE `salario` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id_state`,`descricao_status`) VALUES 
 (1,'PROCESSED'),
 (2,'READY'),
 (3,'PROCESSING'),
 (4,'PENDENT'),
 (5,'CLOSED'),
 (6,'REOPEN'),
 (7,'OPEN'),
 (8,'TRANFER');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`usuario_cargo`
--

DROP TABLE IF EXISTS `usuario_cargo`;
CREATE TABLE `usuario_cargo` (
  `id_usuario_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_cargo`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_cargo` (`id_cargo`),
  CONSTRAINT `usuario_cargo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `usuario_cargo_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`usuario_cargo`
--

/*!40000 ALTER TABLE `usuario_cargo` DISABLE KEYS */;
INSERT INTO `usuario_cargo` (`id_usuario_cargo`,`id_usuario`,`id_cargo`) VALUES 
 (32,58,17),
 (33,59,16);
/*!40000 ALTER TABLE `usuario_cargo` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`usuario_departamento`
--

DROP TABLE IF EXISTS `usuario_departamento`;
CREATE TABLE `usuario_departamento` (
  `id_usuario_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_departamento`),
  KEY `fk_usuario_departamento` (`id_usuario`),
  KEY `fk_departamento_usuario` (`id_departamento`),
  CONSTRAINT `fk_departamento_usuario` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`),
  CONSTRAINT `fk_usuario_departamento` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`usuario_departamento`
--

/*!40000 ALTER TABLE `usuario_departamento` DISABLE KEYS */;
INSERT INTO `usuario_departamento` (`id_usuario_departamento`,`id_usuario`,`id_departamento`) VALUES 
 (16,58,10),
 (17,59,7);
/*!40000 ALTER TABLE `usuario_departamento` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`usuario_fila`
--

DROP TABLE IF EXISTS `usuario_fila`;
CREATE TABLE `usuario_fila` (
  `id_usuario_fila` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_fila` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_fila`),
  KEY `fk_usuario_fila` (`id_usuario`),
  KEY `fk_fila_usuario` (`id_fila`),
  CONSTRAINT `fk_fila_usuario` FOREIGN KEY (`id_fila`) REFERENCES `fila` (`id_fila`),
  CONSTRAINT `fk_usuario_fila` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`usuario_fila`
--

/*!40000 ALTER TABLE `usuario_fila` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_fila` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`usuario_matricula`
--

DROP TABLE IF EXISTS `usuario_matricula`;
CREATE TABLE `usuario_matricula` (
  `id_usuario_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `id_matricula` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_matricula`),
  KEY `fk_matricula_usuario` (`id_matricula`),
  KEY `fk_usuario_matricula` (`id_usuario`),
  CONSTRAINT `fk_matricula_usuario` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`),
  CONSTRAINT `fk_usuario_matricula` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`usuario_matricula`
--

/*!40000 ALTER TABLE `usuario_matricula` DISABLE KEYS */;
INSERT INTO `usuario_matricula` (`id_usuario_matricula`,`id_matricula`,`id_usuario`) VALUES 
 (5,10,58),
 (6,11,59);
/*!40000 ALTER TABLE `usuario_matricula` ENABLE KEYS */;


--
-- Table structure for table `imrdev_sys`.`usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nome_usuario` (`nome_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imrdev_sys`.`usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`,`nome_usuario`,`senha_usuario`) VALUES 
 (58,'93261085','ADMIN'),
 (59,'93137609','ADMIN');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


--
-- View structure for view `imrdev_sys`.`v_00_01_dsc_cargo`
--

DROP VIEW IF EXISTS `v_00_01_dsc_cargo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_dsc_cargo` AS select `imrdev_sys`.`cargos`.`descricao_cargo` AS `descricaoCargo` from `imrdev_sys`.`cargos`;


--
-- View structure for view `imrdev_sys`.`v_00_01_dsc_departamento`
--

DROP VIEW IF EXISTS `v_00_01_dsc_departamento`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_dsc_departamento` AS select `imrdev_sys`.`departamentos`.`descricao_departamento` AS `descricaoDepartamento` from `imrdev_sys`.`departamentos`;


--
-- View structure for view `imrdev_sys`.`v_00_01_dsc_fila`
--

DROP VIEW IF EXISTS `v_00_01_dsc_fila`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_dsc_fila` AS select `imrdev_sys`.`fila`.`fila` AS `descricaoFila` from `imrdev_sys`.`fila`;


--
-- View structure for view `imrdev_sys`.`v_00_01_dsc_prioridade`
--

DROP VIEW IF EXISTS `v_00_01_dsc_prioridade`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_dsc_prioridade` AS select `imrdev_sys`.`prioridade`.`descricao_prioridade` AS `descricaoPrioridade` from `imrdev_sys`.`prioridade`;


--
-- View structure for view `imrdev_sys`.`v_00_01_fila_geral`
--

DROP VIEW IF EXISTS `v_00_01_fila_geral`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_fila_geral` AS select `imrdev_sys`.`atividades_fila`.`id_atividade` AS `idAtividade`,`imrdev_sys`.`atividades_fila`.`descricao_atividade` AS `descricaoAtividade`,`imrdev_sys`.`atividades_fila`.`nome_solicitante` AS `nomeSolicitante`,`imrdev_sys`.`atividades_fila`.`descricao_departamento` AS `descricaoDepartamento`,`imrdev_sys`.`atividades_fila`.`last_update` AS `lastUpdate`,`imrdev_sys`.`atividades_fila`.`descricao_fila` AS `descricaoFila` from `imrdev_sys`.`atividades_fila` where (`imrdev_sys`.`atividades_fila`.`state` in ('OPEN','REOPEN'));


--
-- View structure for view `imrdev_sys`.`v_00_01_usuario_solicitante`
--

DROP VIEW IF EXISTS `v_00_01_usuario_solicitante`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imrdev_sys`@`%` SQL SECURITY DEFINER VIEW `imrdev_sys`.`v_00_01_usuario_solicitante` AS select `m`.`nome_completo` AS `nomeSolicitante`,`u`.`nome_usuario` AS `nomeUsuario` from ((`imrdev_sys`.`matricula` `m` join `imrdev_sys`.`usuario_matricula` `um` on((`m`.`id_matricula` = `um`.`id_matricula`))) join `imrdev_sys`.`usuarios` `u` on((`u`.`id_usuario` = `um`.`id_usuario`)));


--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_CARGO`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_CARGO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_CARGO`(
  p_descricao_cargo VARCHAR (100)
 )
BEGIN
 INSERT INTO cargos (descricao_cargo) VALUES (p_descricao_cargo);
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_DEPARTAMENTO`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_DEPARTAMENTO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_DEPARTAMENTO`(
p_descricao_departamento VARCHAR (100)
)
BEGIN
INSERT INTO departamentos (descricao_departamento) VALUES (p_descricao_departamento);
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_FILA`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_FILA`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_FILA`(p_descricao_fila varchar (100))
begin
insert into fila (descricao_fila) values (p_descricao_fila);
end $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_PRIORIDADE`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_PRIORIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_PRIORIDADE`(
	p_descricao_prioridade VARCHAR (100)
)
BEGIN
	INSERT INTO prioridade (descricao_prioridade) VALUES (p_descricao_prioridade);
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_STATUS`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_STATUS`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_STATUS`(
	p_descricao_status VARCHAR (100)
)
BEGIN
	INSERT INTO status (descricao_status) VALUES (p_descricao_status);
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_USUARIO`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_USUARIO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_USUARIO`(
	p_nome_usuario 			VARCHAR (100)
	,p_senha_usuario 		VARCHAR (100)
	,p_descricao_cargo		VARCHAR (100)
	,p_descricao_departamento 	varchar (100)
 )
BEGIN
DECLARE p_id_usuario 		INT;
DECLARE p_id_cargo 		INT;
declare p_id_departamento 	int;
 INSERT INTO usuarios (nome_usuario,senha_usuario) VALUES (p_nome_usuario,p_senha_usuario);
SELECT id_usuario INTO p_id_usuario 
	FROM usuarios
WHERE nome_usuario = p_nome_usuario;
SELECT id_cargo INTO p_id_cargo 
	FROM cargos 
WHERE descricao_cargo = p_descricao_cargo;
SELECT id_departamento INTO p_id_departamento
	FROM departamentos
WHERE descricao_departamento = p_descricao_departamento;
INSERT INTO usuario_cargo (id_usuario,id_cargo) VALUES (p_id_usuario,p_id_cargo);
insert into usuario_departamento (id_usuario,id_departamento) values (p_id_usuario,p_id_departamento);
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_ADD_USUARIO_FILA`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_ADD_USUARIO_FILA`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_ADD_USUARIO_FILA`(
	 p_nome_usuario 	VARCHAR (100)
	,p_descricao_fila 	VARCHAR (100)
	 )
BEGIN
INSERT INTO usuario_fila
(
  id_usuario
 ,id_fila
)
VALUES
(
  FC_00_01_USUARIO_ID(p_nome_usuario)
 ,FC_00_01_FILA_ID(p_descricao_fila)
 );
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_01_CLEAN_TABLES`
--

DROP PROCEDURE IF EXISTS `ADM_00_01_CLEAN_TABLES`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_01_CLEAN_TABLES`()
BEGIN
DELETE FROM atividades_agendadas;
DELETE FROM atividades_fila;
DELETE FROM atividades_pendentes;
DELETE FROM atividades_finalizadas;
DELETE FROM hist_atividades_agendadas;
DELETE FROM hist_atividades_fila;
DELETE FROM hist_atividades_pendentes;
delete from hist_atividades_finalizadas;
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`ADM_00_02_ADD_USUARIO`
--

DROP PROCEDURE IF EXISTS `ADM_00_02_ADD_USUARIO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `ADM_00_02_ADD_USUARIO`(
	 p_nome_usuario			VARCHAR (100)
	,p_nome_completo 		VARCHAR (100)
	,p_data_nascimento 		VARCHAR (100)
	,p_idade 			VARCHAR (100)
	,p_cpf				VARCHAR (100)
	,p_descricao_cargo		VARCHAR (100)
	,p_descricao_departamento	VARCHAR (100)
	
)
BEGIN
INSERT INTO usuarios (nome_usuario,senha_usuario) 
VALUES (p_nome_usuario,'ADMIN');
INSERT INTO matricula (nome_completo,state,data_nascimento,idade,cpf) 
VALUES (p_nome_completo,'ATIVO',p_data_nascimento,p_idade,p_cpf);
INSERT INTO usuario_cargo (id_usuario,id_cargo) 
VALUES (FC_00_01_USUARIO_ID(p_nome_usuario),FC_00_01_CARGO_ID(p_descricao_cargo));
INSERT INTO usuario_departamento (id_usuario,id_departamento) 
VALUES (FC_00_01_USUARIO_ID(p_nome_usuario),FC_00_01_DEPARTAMENTO_ID(p_descricao_departamento));
INSERT INTO usuario_matricula (id_matricula,id_usuario)
VALUES (FC_00_01_MATRICULA_ID(p_cpf),FC_00_01_USUARIO_ID(p_nome_usuario));
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_ADD_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_ADD_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_ADD_ATIVIDADE`(
	 p_descricao_atividade 	VARCHAR (100)
	,p_nome_solicitante	VARCHAR (100)
	,p_descricao_prioridade VARCHAR (100)
	,p_descricao_fila	VARCHAR (100)
 )
BEGIN
DECLARE p_data_inicio		 DATE;
DECLARE p_data_final		 DATE;
DECLARE p_id_cargo		 INT;
DECLARE p_id_prioridade 	 INT;
DECLARE p_id_responsavel 	 INT;
DECLARE p_id_state		 INT;
DECLARE p_id_departamento	 INT;
DECLARE p_descricao_cargo	 VARCHAR (100);
DECLARE p_descricao_departamento VARCHAR (100);
 INSERT INTO atividades_agendadas
 (
	 processed_date
 	,descricao_atividade
	,data_inicio
	,data_final
	,nome_solicitante
	,agendamentos
	,sla
	,state
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_responsavel
	,id_state
	,last_update
	,id_fila
	,descricao_fila
 )
 VALUES
 (
	 NOW()
	,p_descricao_atividade
	,CURRENT_DATE()
	,FC_00_01_COLETA_SLA(p_descricao_prioridade)
	,p_nome_solicitante
	,0
	,FC_00_01_COLETA_SLA(p_descricao_prioridade)
	,'PROCESSING'
	,FC_00_01_USUARIO_CARGO_DESCRICAO(p_nome_solicitante)
	,FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO(p_nome_solicitante)
	,p_descricao_prioridade
	,FC_00_01_USUARIO_CARGO_ID(p_nome_solicitante)
	,FC_00_01_USUARIO_DEPARTAMENTO_ID(p_nome_solicitante)
	,FC_00_01_PRIORIDADE_ID(p_descricao_prioridade)
	,FC_00_01_USUARIO_ID(p_nome_solicitante)
	,FC_00_01_STATUS_ID('PROCESSING')
	,NOW()
	,FC_00_01_FILA_ID(p_descricao_fila)
	,p_descricao_fila
 );
 
 
 CALL PKG_00_04_COLETA_ATIVIDADE();
 
 
 END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_AGENDA_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_AGENDA_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_AGENDA_ATIVIDADE`(
	 p_descricao_atividade 	VARCHAR (100)
	,p_data_inicio		DATE
	,p_data_final		DATE
	,p_nome_responsavel	VARCHAR (100)
	,p_descricao_prioridade VARCHAR (100)
	,p_descricao_fila	VARCHAR (100)
 )
BEGIN
/* ####### Declaração de variaveis ####### */
DECLARE p_id_cargo		 INT;
DECLARE p_id_prioridade 	 INT;
DECLARE p_id_responsavel 	 INT;
DECLARE p_id_state		 INT;
DECLARE p_id_departamento	 INT;
DECLARE p_descricao_cargo	 VARCHAR (100);
DECLARE p_descricao_departamento VARCHAR (100);
/* ####### Validação de infomações de entrada ####### */
IF p_data_inicio >= CURRENT_DATE() AND p_data_final >= CURRENT_DATE() THEN
/* ####### Registro das informações na base de dados ####### */
 INSERT INTO atividades_agendadas
 (
	 processed_date
 	,descricao_atividade
	,data_inicio
	,data_final
	,nome_responsavel
	,agendamentos
	,sla
	,state
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_responsavel
	,id_state
	,last_update
	,id_fila
	,descricao_fila
 )
 VALUES
 (
	 NOW()
	,p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_nome_responsavel
	,(p_data_final-p_data_inicio)
	,NOW()
	,'PROCESSING'
	,FC_00_01_USUARIO_CARGO_DESCRICAO(p_nome_responsavel)
	,FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO(p_nome_responsavel)
	,p_descricao_prioridade
	,FC_00_01_USUARIO_CARGO_ID(p_nome_responsavel)
	,FC_00_01_USUARIO_DEPARTAMENTO_ID(p_nome_responsavel)
	,FC_00_01_PRIORIDADE_ID(p_descricao_prioridade)
	,FC_00_01_USUARIO_ID(p_nome_responsavel)
	,FC_00_01_STATUS_ID('PROCESSING')
	,NOW()
	,FC_00_01_FILA_ID(p_descricao_fila)
	,p_descricao_fila
 );
 
 UPDATE atividades_agendadas SET data_inicio =  DATE_FORMAT(data_inicio+1,'%Y-%m-%d') WHERE id_atividade_agendada = p_id_atividade;
 
 /* ####### Envio do chamado para a fila de atividades ####### */ 
 
 CALL PKG_00_02_COLETA_ATIVIDADE();
 
 /* ####### Fim da validação das informações de entrada ####### */ 
 
 END IF;
 
 /* ####### Fim do processo ####### */ 
 
 END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_ASSUME_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_ASSUME_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_ASSUME_ATIVIDADE`(
  p_id_atividade INT, p_nome_analista VARCHAR (100)
 )
BEGIN
DECLARE done 				INT DEFAULT 0;
DECLARE p_descricao_atividade		VARCHAR (100);
DECLARE	p_data_inicio			DATE;
DECLARE p_data_final			DATE;
DECLARE p_sla				VARCHAR (100);
DECLARE p_descricao_prioridade  	VARCHAR (100);
DECLARE	p_id_prioridade			INT;
DECLARE	p_id_analista			INT;
DECLARE	p_id_state			INT;
DECLARE p_id_cargo			INT;
DECLARE p_id_departamento		INT;
DECLARE p_descricao_cargo		VARCHAR (100);
DECLARE p_descricao_departamento	VARCHAR (100);
DECLARE p_nome_solicitante		VARCHAR (100);
declare p_last_state			varchar (100);
DECLARE p_cursor CURSOR FOR(
SELECT
	descricao_atividade
	,data_inicio
	,data_final	
	,sla
	,descricao_prioridade
	,id_prioridade
	,nome_solicitante
	,state
FROM atividades_fila
	WHERE id_atividade NOT IN (SELECT id_atividade FROM atividades_pendentes) 
	AND id_atividade = p_id_atividade);
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
/** Abertura do cursor **/
OPEN p_cursor;
/** Inicio do loop **/
REPEAT
/** Inicio do fetch **/
FETCH p_cursor INTO
	 p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_sla
	,p_descricao_prioridade
	,p_id_prioridade
	,p_nome_solicitante
	,p_last_state;
IF NOT done THEN
/** Registro de informações na base de dados **/
INSERT INTO atividades_pendentes
(
	 id_atividade
	,processed_date
	,descricao_atividade
	,data_inicio
	,data_final
	,nome_analista
	,nome_solicitante
	,sla
	,state
	,last_state
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_analista
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_state
	,id_solicitante
	,id_last_state
	,last_update
	,id_fila
	,descricao_fila
)
VALUES
(
	 p_id_atividade
	,NOW()
	,p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_nome_analista
	,p_nome_solicitante
	,p_sla
	,'PENDENT'
	,''
	,FC_00_01_USUARIO_CARGO_DESCRICAO(p_nome_analista)
	,FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO(p_nome_analista)
	,p_descricao_prioridade
	,FC_00_01_USUARIO_ID(p_nome_analista)
	,FC_00_01_USUARIO_CARGO_ID(p_nome_analista)
	,FC_00_01_USUARIO_DEPARTAMENTO_ID(p_nome_analista)
	,p_id_prioridade
	,FC_00_01_STATUS_ID('PENDENT')
	,FC_00_01_USUARIO_ID(p_nome_solicitante)
	,0
	,NOW()
	,FC_00_01_USUARIO_FILA_ID(p_nome_analista)
	,FC_00_01_USUARIO_FILA_DESCRICAO(p_nome_analista)
);
/** Processamento da atividade na fila **/
UPDATE atividades_fila SET state = 'PROCESSED' WHERE id_atividade = p_id_atividade;
UPDATE atividades_fila SET last_update = NOW() WHERE id_atividade = p_id_atividade;
update atividades_fila SET last_state = p_last_state WHERE id_atividade = p_id_atividade;
END IF;
UNTIL done END REPEAT;
/** Fechamento do cursor **/
CLOSE p_cursor;
/** Fim do processo **/
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_CANCELA_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_CANCELA_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_CANCELA_ATIVIDADE`(
	p_id_atividade int
)
begin
delete from atividades_agendadas where id_atividade_agendada = p_id_atividade;
delete from atividades_fila where id_atividade = p_id_atividade;
end $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_COLETA_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_COLETA_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_COLETA_ATIVIDADE`()
BEGIN
DECLARE done 				INT DEFAULT 0;
DECLARE p_id_atividade		 	INT;
DECLARE p_id_prioridade			INT;
DECLARE p_id_responsavel		INT;
DECLARE p_id_state			INT;
DECLARE p_id_cargo			INT;
DECLARE p_id_departamento		INT;
DECLARE p_agendamentos			INT;
DECLARE p_data_inicio			DATE;
DECLARE p_data_final			DATE;
DECLARE p_nome_solicitante		VARCHAR (100);
DECLARE p_sla				VARCHAR (100);
DECLARE p_descricao_prioridade		VARCHAR (100);
DECLARE p_descricao_cargo		VARCHAR (100);
DECLARE p_descricao_departamento	VARCHAR (100);
DECLARE p_descricao_atividade		VARCHAR (100);
DECLARE p_id_fila			INT;
DECLARE p_descricao_fila		VARCHAR (100);
DECLARE p_cursor CURSOR FOR(
SELECT 
	id_atividade_agendada
	,descricao_atividade
	,data_inicio
	,data_final
	,nome_solicitante
	,sla
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_responsavel
	,agendamentos
	,id_fila
	,descricao_fila
FROM atividades_agendadas
	WHERE id_atividade_agendada NOT IN (SELECT id_atividade FROM atividades_fila)
	AND data_inicio = CURRENT_DATE());
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done =1;
OPEN p_cursor;
REPEAT
FETCH p_cursor INTO 
	 p_id_atividade
	,p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_nome_solicitante
	,p_sla
	,p_descricao_cargo
	,p_descricao_departamento
	,p_descricao_prioridade
	,p_id_cargo
	,p_id_departamento
	,p_id_prioridade
	,p_id_responsavel
	,p_agendamentos
	,p_id_fila
	,p_descricao_fila;
IF NOT done THEN
INSERT INTO atividades_fila
(
	id_atividade
	,processed_date
	,descricao_atividade
	,data_inicio
	,data_final
	,nome_solicitante
	,sla
	,state
	,last_state
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_responsavel
	,id_state
	,last_update
	,id_fila
	,descricao_fila
)
VALUES
(
	 p_id_atividade
	,NOW()
	,p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_nome_solicitante
	,NOW()
	,'OPEN'
	,''
	,p_descricao_cargo
	,p_descricao_departamento
	,p_descricao_prioridade
	,p_id_cargo
	,p_id_departamento
	,p_id_prioridade
	,p_id_responsavel
	,FC_00_01_STATUS_ID('READY')
	,NOW()
	,p_id_fila
	,p_descricao_fila
);
UPDATE atividades_agendadas SET last_update = NOW() WHERE id_atividade_agendada = p_id_atividade;
END IF;
UNTIL done END REPEAT;
CLOSE p_cursor;
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_FINALIZA_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_FINALIZA_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_FINALIZA_ATIVIDADE`(p_id_atividade INT, p_nome_analista VARCHAR (100))
BEGIN
DECLARE done 						INT DEFAULT 0;
DECLARE p_data_inicio 				VARCHAR (100);
DECLARE p_data_final 				VARCHAR (100);
DECLARE p_sla						VARCHAR (100);
DECLARE p_descricao_atividade		VARCHAR (100);
DECLARE p_id_analista				INT;
DECLARE p_id_cargo 					INT;
DECLARE p_id_departamento			INT;
DECLARE p_id_prioridade				INT;
DECLARE p_id_state					INT;
DECLARE p_descricao_cargo			VARCHAR (100);
DECLARE p_descricao_departamento	VARCHAR (100);
DECLARE p_descricao_prioridade		VARCHAR (100);
DECLARE p_nome_solicitante			VARCHAR (100);
DECLARE p_last_state				VARCHAR (100);
DECLARE p_cursor CURSOR FOR(
SELECT 
	descricao_atividade
	,data_inicio
	,data_final
	,sla
	,descricao_prioridade
	,id_prioridade
	,nome_solicitante
	,state
FROM atividades_pendentes
	WHERE id_atividade NOT IN (SELECT id_atividade FROM atividades_finalizadas)
	AND id_atividade = p_id_atividade);
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
/** Abertura do cursor **/
OPEN p_cursor;
/** Inicio do loop **/
REPEAT
/** Inicio do fetch **/
FETCH p_cursor INTO
	 p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_sla
	,p_descricao_prioridade
	,p_id_prioridade
	,p_nome_solicitante
	,p_last_state;
IF NOT done THEN
/** Registro das informações na base de dados **/
INSERT INTO atividades_finalizadas
(
	 id_atividade
	,processed_date
	,descricao_atividade
	,data_inicio
	,data_final
	,sla
	,state
	,nome_analista
	,nome_solicitante
	,descricao_cargo
	,descricao_departamento
	,descricao_prioridade
	,id_analista
	,id_cargo
	,id_departamento
	,id_prioridade
	,id_state
	,id_solicitante
	,last_update
	,id_fila
	,descricao_fila
)
VALUES
(
	 p_id_atividade
	,NOW()
	,p_descricao_atividade
	,p_data_inicio
	,p_data_final
	,p_sla
	,'CLOSED'
	,p_nome_analista
	,p_nome_solicitante
	,FC_00_01_USUARIO_CARGO_DESCRICAO(p_nome_analista)
	,FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO(p_nome_analista)
	,p_descricao_prioridade
	,FC_00_01_USUARIO_ID(p_nome_analista)
	,FC_00_01_USUARIO_CARGO_ID(p_nome_analista)
	,FC_00_01_USUARIO_DEPARTAMENTO_ID(p_nome_analista)
	,p_id_prioridade
	,FC_00_01_STATUS_ID('CLOSED')
	,FC_00_01_USUARIO_ID(p_nome_solicitante)
	,NOW()
	,FC_00_01_USUARIO_FILA_ID(p_nome_analista)
	,FC_00_01_USUARIO_FILA_DESCRICAO(p_nome_analista)
);
UPDATE atividades_pendentes SET state = 'PROCESSED' WHERE id_atividade = p_id_atividade;
UPDATE atividades_pendentes SET last_state = p_last_state WHERE id_atividade = p_id_atividade;
UPDATE atividades_pendentes SET last_update = NOW() WHERE id_atividade = p_id_atividade;
UPDATE atividades_agendadas SET state = 'CLOSED' WHERE id_atividade_agendada = p_id_atividade;
END IF;
UNTIL done END REPEAT;
CLOSE p_cursor;
END $$

DELIMITER ;

--
-- Procedure `imrdev_sys`.`PKG_00_04_REABRIR_ATIVIDADE`
--

DROP PROCEDURE IF EXISTS `PKG_00_04_REABRIR_ATIVIDADE`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` PROCEDURE `PKG_00_04_REABRIR_ATIVIDADE`(p_id_atividade INT, p_nome_solicitante VARCHAR (100))
BEGIN
DECLARE p_last_state VARCHAR (100);
SELECT state INTO p_last_state FROM atividades_pendentes WHERE id_atividade = p_id_atividade;
UPDATE atividades_pendentes SET
	 last_state = p_last_state
	,state = 'REOPEN'
	,id_last_state = FC_00_01_STATUS_ID(p_last_state)
	,last_update = NOW()
	,id_state = FC_00_01_STATUS_ID('REOPEN')
	,nome_solicitante = p_nome_solicitante
	,id_solicitante = FC_00_01_USUARIO_ID(p_nome_solicitante)
WHERE id_atividade = p_id_atividade;
delete from atividades_finalizadas WHERE id_atividade = p_id_atividade;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_CARGO_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_CARGO_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_CARGO_ID`(
	p_descricao_cargo varchar (100)
) RETURNS int(11)
begin
declare p_id_cargo int;
select id_cargo into p_id_cargo from cargos where descricao_cargo = p_descricao_cargo;
return p_id_cargo;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_COLETA_SLA`
--

DROP FUNCTION IF EXISTS `FC_00_01_COLETA_SLA`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_COLETA_SLA`(p_descricao_prioridade varchar (100)) RETURNS date
begin
declare p_data_final date;
select date_format(current_date()+dias,'%Y-%m-%d') into p_data_final 
from prioridade
where descricao_prioridade = p_descricao_prioridade;
return p_data_final;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_DEPARTAMENTO_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_DEPARTAMENTO_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_DEPARTAMENTO_ID`(p_descricao_departamento VARCHAR (100)) RETURNS int(11)
BEGIN
DECLARE p_id_departamento INT;
SELECT id_departamento INTO p_id_departamento 
FROM departamentos 
WHERE descricao_departamento = p_descricao_departamento;
RETURN p_id_departamento;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_FILA_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_FILA_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_FILA_ID`(p_descricao_fila VARCHAR (100)) RETURNS int(11)
BEGIN
DECLARE p_id_fila INT;
SELECT id_fila INTO p_id_fila FROM fila WHERE fila = p_descricao_fila;
RETURN p_id_fila;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_MATRICULA_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_MATRICULA_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_MATRICULA_ID`(p_cpf varchar (100)) RETURNS int(11)
begin
declare p_id_matricula int;
select id_matricula into p_id_matricula from matricula where cpf = p_cpf;
return p_id_matricula;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_PRIORIDADE_DESCRICAO`
--

DROP FUNCTION IF EXISTS `FC_00_01_PRIORIDADE_DESCRICAO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_PRIORIDADE_DESCRICAO`(p_id_prioridade INT) RETURNS varchar(100) CHARSET latin1
BEGIN
DECLARE p_descricao_prioridade VARCHAR (100);
SELECT descricao_prioridade INTO p_descricao_prioridade FROM prioridade WHERE id_prioridade = p_id_prioridade;
RETURN p_descricao_prioridade;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_PRIORIDADE_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_PRIORIDADE_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_PRIORIDADE_ID`(p_descricao_prioridade varchar (100)) RETURNS int(11)
begin
declare p_id_prioridade int;
select id_prioridade into p_id_prioridade from prioridade where descricao_prioridade = p_descricao_prioridade;
return p_id_prioridade;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_STATUS_DESCRICAO`
--

DROP FUNCTION IF EXISTS `FC_00_01_STATUS_DESCRICAO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_STATUS_DESCRICAO`(p_id_status INT) RETURNS varchar(100) CHARSET latin1
BEGIN
DECLARE p_descricao_status VARCHAR (100);
SELECT descricao_status INTO p_descricao_status FROM STATUS WHERE id_state = p_id_status;
RETURN p_descricao_status;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_STATUS_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_STATUS_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_STATUS_ID`(p_descricao_status varchar (100)) RETURNS int(11)
begin
declare p_id_status int;
select id_state into p_id_status from status where descricao_status = p_descricao_status;
return p_id_status;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_CARGO_DESCRICAO`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_CARGO_DESCRICAO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_CARGO_DESCRICAO`(p_nome_usuario VARCHAR (100)) RETURNS varchar(100) CHARSET latin1
BEGIN
DECLARE p_descricao_cargo VARCHAR (100);
SELECT descricao_cargo INTO p_descricao_cargo
FROM cargos
WHERE id_cargo IN
(SELECT id_cargo FROM usuario_cargo WHERE id_usuario IN(
SELECT id_usuario FROM usuarios WHERE nome_usuario = p_nome_usuario));
RETURN p_descricao_cargo;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_CARGO_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_CARGO_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_CARGO_ID`(p_nome_usuario varchar (100)) RETURNS int(11)
begin
declare p_id_cargo int;
select id_cargo into p_id_cargo
from cargos
where id_cargo in (
select id_cargo from usuario_cargo where id_usuario in (
select id_usuario from usuarios where nome_usuario = p_nome_usuario));
return p_id_cargo;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_DEPARTAMENTO_DESCRICAO`(p_nome_usuario VARCHAR (100)) RETURNS varchar(100) CHARSET latin1
BEGIN
DECLARE p_descricao_departamento VARCHAR (100);
SELECT descricao_departamento INTO p_descricao_departamento
FROM departamentos
WHERE id_departamento IN 
(SELECT id_departamento FROM usuario_departamento WHERE id_usuario IN
(SELECT id_usuario FROM usuarios WHERE nome_usuario = p_nome_usuario));
RETURN p_descricao_departamento;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_DEPARTAMENTO_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_DEPARTAMENTO_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_DEPARTAMENTO_ID`(p_nome_usuario varchar (100)) RETURNS int(11)
begin
declare p_id_departamento int;
select id_departamento into p_id_departamento
from departamentos
where id_departamento in
(select id_departamento 
from usuario_departamento 
where id_usuario in (
select id_usuario from usuarios where nome_usuario = p_nome_usuario));
return p_id_departamento;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_FILA_DESCRICAO`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_FILA_DESCRICAO`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_FILA_DESCRICAO`(p_nome_usuario VARCHAR (100)) RETURNS varchar(100) CHARSET latin1
BEGIN
DECLARE p_descricao_fila VARCHAR (100);
SELECT fila INTO p_descricao_fila
FROM fila
WHERE id_fila IN(
SELECT id_fila FROM usuario_fila WHERE id_usuario IN(
SELECT id_usuario FROM usuarios WHERE nome_usuario = p_nome_usuario));
RETURN p_descricao_fila;
END $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_FILA_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_FILA_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_FILA_ID`(p_nome_usuario varchar (100)) RETURNS int(11)
begin
declare p_id_fila int;
select id_fila into p_id_fila
from fila
where id_fila in(
select id_fila from usuario_fila where id_usuario in(
select id_usuario from usuarios where nome_usuario = p_nome_usuario));
return p_id_fila;
end $$

DELIMITER ;

--
-- Function `imrdev_sys`.`FC_00_01_USUARIO_ID`
--

DROP FUNCTION IF EXISTS `FC_00_01_USUARIO_ID`;
DELIMITER $$

CREATE DEFINER=`imrdev_sys`@`%` FUNCTION `FC_00_01_USUARIO_ID`(p_nome_usuario varchar (100)) RETURNS int(11)
begin
declare p_id_usuario int;
select id_usuario into p_id_usuario from usuarios where nome_usuario = p_nome_usuario;
return p_id_usuario;
end $$

DELIMITER ;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
