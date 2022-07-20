-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varbinary(100) DEFAULT NULL,
  `senha` varchar(150) DEFAULT NULL,
  `criadoem` date DEFAULT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `idclasse` int(11) NOT NULL AUTO_INCREMENT,
  `classe` int(11) DEFAULT NULL,
  `idcurso` int(11) NOT NULL,
  `criadoem` date DEFAULT NULL,
  PRIMARY KEY (`idclasse`),
  KEY `fk_classe_curso1_idx` (`idcurso`),
  CONSTRAINT `fk_classe_curso1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (1,1,1,NULL),(2,2,1,NULL),(3,3,1,NULL),(4,4,1,NULL),(5,5,1,NULL),(6,6,1,NULL),(7,7,1,NULL),(8,8,1,NULL),(9,9,1,NULL),(10,10,2,NULL),(11,11,2,NULL),(12,12,2,NULL),(13,13,2,NULL),(14,10,4,NULL);
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(45) DEFAULT NULL,
  `criadoem` date DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Base','2022-07-13'),(2,'Informatica','2022-07-13'),(3,'Telecom','2022-07-13'),(4,'Minas','2022-07-14');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinas` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina` varchar(50) DEFAULT NULL,
  `idclasse` int(11) NOT NULL,
  `criadoem` date DEFAULT NULL,
  `idcurso` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  PRIMARY KEY (`iddisciplina`,`idclasse`,`idcurso`),
  KEY `fk_disciplinas_classe1_idx` (`idclasse`),
  CONSTRAINT `fk_disciplinas_classe1` FOREIGN KEY (`idclasse`) REFERENCES `classe` (`idclasse`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1,'Matematica',10,'2022-07-06',2,107),(2,'Fisica',10,'2022-07-06',2,108),(3,'Ingles',10,'2022-07-06',2,108),(4,'Quimica',14,'2022-07-06',4,107);
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudante` (
  `idestudante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `datanascimento` varchar(50) DEFAULT NULL,
  `bilhete` varchar(15) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `telefoneencarregado` varchar(9) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idclasse` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  `criadoem` datetime DEFAULT NULL,
  PRIMARY KEY (`idestudante`),
  UNIQUE KEY `matricula_UNIQUE` (`idestudante`),
  KEY `fk_estudante_classe1_idx` (`idclasse`),
  KEY `fk_estudante_curso1_idx` (`idcurso`),
  CONSTRAINT `fk_estudante_classe1` FOREIGN KEY (`idclasse`) REFERENCES `classe` (`idclasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudante_curso1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (1,'Graciano Henrique','1997-04-07','005','Masculino','999','999999','Manha','gra','gra',10,2,'2022-07-06 00:00:00'),(2,'Victor Capassete',NULL,NULL,NULL,NULL,NULL,NULL,'123','vc',10,3,'2022-07-06 00:00:00'),(3,'a','2022-07-07','1','Masculino','12','12','Manhã','a2022','a1',5,3,'2022-07-07 00:00:00'),(7,'a','2022-07-07','122','Masculino','123','123','Manhã','a2022','a122',1,1,'2022-07-07 00:00:00'),(8,'Mancare','1999-12-12','1','Masculino','1','1','Manhã','mancare2022','mancare1',1,1,'2022-07-07 00:00:00'),(9,'Henrique','2022-07-07','122','Masculino','123','123','Manhã','2022','gracianomanuelhenrique@gmail.com',1,1,'2022-07-07 00:00:00'),(10,'Henrique Uchia','2022-07-07','122','Masculino','123','123','Manhã','2022','afonsovemba16@gmail.com',1,1,'2022-07-07 00:00:00'),(11,'Henrique Uchia','2022-07-07','122','Masculino','123','123','Manhã','2022','afonsovemba16@gmail.com',1,1,'2022-07-07 00:00:00'),(12,'Henrique Uchia','2022-07-07','122','Masculino','123','123','Manhã','2022','afonsovemba16@gmail.com',1,1,'2022-07-07 00:00:00'),(13,'Yara Prata','2000-12-18','12111111111111','Femenino','936472003','936472003','Noite','2022','yara@gmail.com',14,4,'2022-07-14 20:44:05');
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `idnota` int(11) NOT NULL AUTO_INCREMENT,
  `anolectivo` int(11) DEFAULT NULL,
  `idestudante` int(11) NOT NULL,
  `idclasse` int(11) NOT NULL,
  `p1` float DEFAULT NULL,
  `p2` float DEFAULT NULL,
  `exame` float DEFAULT NULL,
  `recurso` float DEFAULT NULL,
  `iddisciplina` int(11) NOT NULL,
  `criadoem` date DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `idcurso` int(11) NOT NULL,
  PRIMARY KEY (`idnota`,`idestudante`),
  KEY `fk_notas_estudante_idx` (`idestudante`),
  KEY `fk_notas_classe1_idx` (`idclasse`),
  KEY `fk_notas_disciplinas1_idx` (`iddisciplina`),
  CONSTRAINT `fk_notas_classe1` FOREIGN KEY (`idclasse`) REFERENCES `classe` (`idclasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_disciplinas1` FOREIGN KEY (`iddisciplina`) REFERENCES `disciplinas` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_estudante` FOREIGN KEY (`idestudante`) REFERENCES `estudante` (`idestudante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,2022,1,10,12,13,14,15,1,'2022-07-06','Aprovado',2),(2,NULL,1,10,13,12,16,17,2,'2022-07-06','Aprovado',2),(3,NULL,2,10,12,14,16,NULL,1,'2022-07-06','Aprovado',2);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nomeprof` varchar(80) NOT NULL,
  `datanascimento` varchar(20) DEFAULT NULL,
  `bilhete` varchar(15) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (107,'gra',NULL,NULL,NULL,NULL,NULL,'yara','gra',NULL),(108,'uchia',NULL,NULL,NULL,NULL,NULL,'gra','uchia',NULL);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 11:49:25
