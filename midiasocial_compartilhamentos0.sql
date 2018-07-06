-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: midiasocial
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `compartilhamentos`
--

DROP TABLE IF EXISTS `compartilhamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compartilhamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conteudo` varchar(45) DEFAULT NULL,
  `datacompartilhamento` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pessoas_id` int(11) NOT NULL,
  `postagens_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_compartilhamentos_pessoas_idx` (`pessoas_id`),
  KEY `fk_compartilhamentos_postagens1_idx` (`postagens_id`),
  CONSTRAINT `fk_compartilhamentos_pessoas` FOREIGN KEY (`pessoas_id`) REFERENCES `pessoas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compartilhamentos_postagens1` FOREIGN KEY (`postagens_id`) REFERENCES `postagens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compartilhamentos`
--

LOCK TABLES `compartilhamentos` WRITE;
/*!40000 ALTER TABLE `compartilhamentos` DISABLE KEYS */;
INSERT INTO `compartilhamentos` VALUES (1,'Iai meus amigos voces também gosta','2018-07-06 17:25:04',3,1),(2,'EU GOSTO MUITO E VOCES ?','2018-07-06 17:25:04',4,1),(3,'Olha so estes chutes kkk','2018-07-07 14:25:04',1,2),(4,'Não acredito que errei este placar ','2018-07-06 17:25:04',2,2);
/*!40000 ALTER TABLE `compartilhamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-06 12:33:56
