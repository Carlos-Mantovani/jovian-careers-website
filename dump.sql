-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: joviancareers
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Current Database: `joviancareers`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `joviancareers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `joviancareers`;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `location` varchar(25) NOT NULL,
  `salary` int DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `responsabilities` varchar(2000) DEFAULT NULL,
  `requirements` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` 
VALUES (1,'Data Analyst','Bengaluru, India',NULL,NULL,NULL,NULL),
(2,'Data Scientist','New York, USA',17000,'$','Process data using Python, SQL and other tools through the analytics data pipeline, )\nIdentify and translate business rules into specifications and documentation\nEnsure quality control and follow peer review guidelines\nAdhere to best practices and standards, maintaining process efficiencies','Bachelor\'s degree (required) or above in Computer Science, Mathematics, Economics, or experience in related analytical field\nExcellent analytic and creative problem-solving skills\n1-3 years Python and SQL programming experience\nBasic skills in MS Excel\nKnowledge of cloud computing platforms (AWS, GCP) and knowledge of Spark is desired'),
(3,'Frontend Developer','Remote',12000,'$','Translate designs and wireframes into high quality JS, CSS, HTML templates\nDesign, build, and maintain high performance, reusable, and reliable UI components and products\nEnsure the best possible performance, quality, and optimize for maximum speed and scalability\nIdentify and correct bottlenecks and fix bugs.\nHelp maintain code quality, organization, and automatization.','Strong knowledge of programming skills in JS, CSS and HTML\nFamiliarity with responsive and adaptive web design, and good knowledge of JS libraries such as JQuery\nStrong knowledge of about atleast one of the JS frameworks (e.g. VueJS, Angular JS, NodeJS, ReactJS)\nExperience with building websites, ability to handle cross browser compatibility issues'),
(4,'Backend Developer','San Fracisco, USA',12000,'$','Design and develop a cloud based backend\nParticipate and produce a scalable cloud based backend system\nDesign and develop REST based APIs\nInteract with customer directly and with other stakeholders in the organization','Hands on experience with building a web backend in Java or Golang\nKnowledge of designing and building REST APIs\nProven experience in building a scalable and resilient backend\nGood understanding of database schemas and using both relational (SQL) and noSQL based data stores\nStrong analytical and debugging skills');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 15:13:12
