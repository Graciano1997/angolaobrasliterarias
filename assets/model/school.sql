-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `idclasse` int(11) NOT NULL AUTO_INCREMENT,
  `classe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idclasse`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,10),(12,11),(13,12),(14,13);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Informatica'),(2,'Direito'),(3,'Minas'),(4,'Ensino de Base');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Matemática'),(2,'Lingua Portuguesa'),(3,'EMC'),(4,'EVP'),(5,'Ed.Laboral'),(6,'Biologia'),(7,'Quimica'),(8,'Ed. Fisica'),(9,'Ingles'),(10,'Física'),(11,'Historia'),(12,'Geográfia'),(13,'Ed.Musical'),(14,'Desenho'),(15,'TLP');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudante` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `datanascimento` date NOT NULL,
  `bilhete` varchar(15) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `telefoneencarregado` varchar(9) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idclasse` int(11) NOT NULL,
  `idcurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `matricula_UNIQUE` (`matricula`),
  KEY `fk_estudante_classes1_idx` (`idclasse`),
  KEY `fk_estudante_curso1_idx` (`idcurso`),
  CONSTRAINT `fk_estudante_classes1` FOREIGN KEY (`idclasse`) REFERENCES `classes` (`idclasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudante_curso1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (110,'Graciano Henrique','2022-01-24','005717487MO045','Masculino','935636086','935636086','ManhÃ£','gra','gra',1,4),(111,'Graciano Henrique','2022-01-24','005717487MO045','Masculino','935636086','935636086','ManhÃ£','graciano henrique2022','graciano henrique005717487mo045',1,4),(112,'AntÃ³nio SÃ¡bado Henriques','2012-01-24','006031','Masculino','946351634','946352193','ManhÃ£','antã³nio sã¡bado henriques2022','antã³nio sã¡bado henriques006031',1,4),(113,'Jose','2022-01-26','1','Masculino','933413869','935636086','ManhÃ£','jose2022','jose1',14,1),(114,'Vemba','2022-01-26','1','Masculino','933413869','935636086','ManhÃ£','vemba2022','vemba1',14,1),(115,'Morais','2022-01-27','1','Masculino','933413869','927850172','ManhÃ£','morais2022','morais1',1,4),(116,'Alberto Teca Gonga Pedro  ','2022-01-27','50','Masculino','938501565','935636086','Tarde','gonga','teka',11,3),(117,'Lucas ','2022-01-17','928330927','Masculino','928330927','928330927','ManhÃ£','lucas2022','lucas',11,1),(118,'Ricardo','2022-01-04','2000','Femenino','940997435','940997435','ManhÃ£','ricardo2022','ricardo2000',11,1),(119,'Ricardo','2022-01-04','2000','Femenino','940997435','940997435','ManhÃ£','ricardo2022','ricardo2000',11,1),(120,'Morais Cerrrote','2022-02-02','50','Masculino','935888885','888588888','ManhÃ£','morais','cerrote50',11,1),(121,'Dani','2022-02-03','1','Masculino','999999999','999999999','ManhÃ£','dani2022','dani1',1,4),(122,'Quim','2022-02-09','1','Masculino','33','33','ManhÃ£','quim2022','quim1',11,3),(123,'Ricardo','2004-06-24','16(32','Femenino','925060779','925060779','Noite','ricardo2022','ricardo16(32',14,1),(124,'Ricardo Afonso Adriano','2004-05-06','005717487MO045','Masculino','929649212','935636086','Noite','ricardo afonso adriano2022','ricardo afonso adriano005717487mo045',11,1),(125,'GRAGRA','2022-04-27','0057','Masculino','99','99','ManhÃ£','gragra2022','gragra0057',11,1),(126,'Graciano Henrique','2021-12-12','00000000000','Masculino','999999','999999','ManhÃ£','graciano henrique2022','graciano henrique00000000000',11,4),(127,'GraUchia','1997-12-12','12222222222','Masculino','gra','gra','ManhÃ£','grauchia2022','grauchia12222222222',3,1);
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lancarnota`
--

DROP TABLE IF EXISTS `lancarnota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lancarnota` (
  `id` int(11) NOT NULL,
  `nota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lancarnota`
--

LOCK TABLES `lancarnota` WRITE;
/*!40000 ALTER TABLE `lancarnota` DISABLE KEYS */;
INSERT INTO `lancarnota` VALUES (1,'exame');
/*!40000 ALTER TABLE `lancarnota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `idnota` int(11) NOT NULL AUTO_INCREMENT,
  `p1` varchar(4) DEFAULT NULL,
  `p2` varchar(4) DEFAULT NULL,
  `notafinal` varchar(4) DEFAULT NULL,
  `exame` varchar(4) DEFAULT NULL,
  `recurso` varchar(4) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `matricula` int(11) NOT NULL,
  `anolectivo` int(11) DEFAULT NULL,
  `iddisciplina` int(11) NOT NULL,
  `idclasse` int(11) NOT NULL,
  `idtrimeste` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  PRIMARY KEY (`idnota`),
  KEY `fk_notas_estudante_idx` (`matricula`),
  KEY `fk_notas_classes1_idx` (`idclasse`),
  KEY `fk_notas_disciplina1_idx` (`iddisciplina`),
  KEY `fk_notas_trimeste1_idx` (`idtrimeste`),
  KEY `fk_notas_curso1_idx` (`idcurso`),
  CONSTRAINT `fk_notas_classes1` FOREIGN KEY (`idclasse`) REFERENCES `classes` (`idclasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_curso1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_disciplina1` FOREIGN KEY (`iddisciplina`) REFERENCES `disciplina` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_estudante` FOREIGN KEY (`matricula`) REFERENCES `estudante` (`matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_notas_trimeste1` FOREIGN KEY (`idtrimeste`) REFERENCES `trimestre` (`idtrimeste`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (58,'20','1','11.4','12',NULL,'Aprovado',117,2022,1,11,1,0),(69,'12',NULL,NULL,NULL,NULL,NULL,118,2022,1,11,1,0),(71,'12','20','16',NULL,NULL,'Dispensado',110,2022,1,1,1,0),(72,'15','1','1','1','20','Recurso',117,2022,1,11,1,0),(73,'12',NULL,NULL,NULL,NULL,NULL,121,2022,1,1,1,0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notaslancada`
--

DROP TABLE IF EXISTS `notaslancada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notaslancada` (
  `idnotaslancada` int(11) NOT NULL AUTO_INCREMENT,
  `prova` int(11) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnotaslancada`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notaslancada`
--

LOCK TABLES `notaslancada` WRITE;
/*!40000 ALTER TABLE `notaslancada` DISABLE KEYS */;
INSERT INTO `notaslancada` VALUES (1,1,'nao','2022-Jul-Fri','p1'),(2,2,'nao','2022-Jul-Fri','p2'),(3,3,'sim','2022-Jul-Fri','exame'),(4,4,'nao','2022-Jul-Fri','recurso');
/*!40000 ALTER TABLE `notaslancada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `datanascimento` date NOT NULL,
  `bilhete` varchar(15) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (104,'Graciano Manuel Henrique','2022-01-22','1','Mascilino','9999999','Geral','madara','gra','prof'),(105,'Yara Prata','2022-01-22','2','Femenino','c','Geral','amor','amor','adm'),(106,'gra','2022-01-22','2','Mascilino','3333333','Geral','gra','gra','prof');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trimestre` (
  `idtrimeste` int(11) NOT NULL AUTO_INCREMENT,
  `tempo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtrimeste`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestre`
--

LOCK TABLES `trimestre` WRITE;
/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
INSERT INTO `trimestre` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-13 20:59:26
