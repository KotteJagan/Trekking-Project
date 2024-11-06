-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trekking
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `gangadikal`
--

DROP TABLE IF EXISTS `gangadikal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gangadikal` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangadikal`
--

LOCK TABLES `gangadikal` WRITE;
/*!40000 ALTER TABLE `gangadikal` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangadikal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kodachadri`
--

DROP TABLE IF EXISTS `kodachadri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kodachadri` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kodachadri`
--

LOCK TABLES `kodachadri` WRITE;
/*!40000 ALTER TABLE `kodachadri` DISABLE KEYS */;
/*!40000 ALTER TABLE `kodachadri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kudremukha`
--

DROP TABLE IF EXISTS `kudremukha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kudremukha` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kudremukha`
--

LOCK TABLES `kudremukha` WRITE;
/*!40000 ALTER TABLE `kudremukha` DISABLE KEYS */;
/*!40000 ALTER TABLE `kudremukha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurinjal`
--

DROP TABLE IF EXISTS `kurinjal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurinjal` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurinjal`
--

LOCK TABLES `kurinjal` WRITE;
/*!40000 ALTER TABLE `kurinjal` DISABLE KEYS */;
/*!40000 ALTER TABLE `kurinjal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narasimhaparvatha`
--

DROP TABLE IF EXISTS `narasimhaparvatha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narasimhaparvatha` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narasimhaparvatha`
--

LOCK TABLES `narasimhaparvatha` WRITE;
/*!40000 ALTER TABLE `narasimhaparvatha` DISABLE KEYS */;
INSERT INTO `narasimhaparvatha` VALUES ('Kotte','Jagan','Male','309575713967','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-18','2024-09-28','544d44ee6e');
/*!40000 ALTER TABLE `narasimhaparvatha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nethravathi`
--

DROP TABLE IF EXISTS `nethravathi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nethravathi` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nethravathi`
--

LOCK TABLES `nethravathi` WRITE;
/*!40000 ALTER TABLE `nethravathi` DISABLE KEYS */;
INSERT INTO `nethravathi` VALUES ('Jagan','Kotte','Male','309575713967','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-05','2024-09-05',NULL),('Kotte','Jagan','Male','123456789123','1234567890','kotte218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-05','2024-09-05','82bf68b2-0472-45fe-bc16-aa20e3e11136'),('Kotte','Jagan','Male','123456789123','1234567890','kotte218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-05','2024-09-05','16a51d5d-a167-4686-8f7e-3122cb85fef6'),('Kotte','Jagan','Male','309575713967','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-08','b0ce3311-80b0-42b3-8a51-5c881c08194c'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-08','45c0b8d3-3916-4a4a-946d-6e330c2006b5'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-08','3dbba90b-22fc-4429-85b9-436e221af68a'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-08','9ae8fa2d-8dcf-4429-b240-e0611fa6122e'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-09','b823ca79-2168-4f7a-a169-c1f73d6de8cc'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-09','d347cbabb7'),('Kotte','Jagan','Male','309575713967','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-08','2024-09-09','5e3471d855'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-17','2024-09-27','addc0e213a'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-17','2024-09-27','e8ba96ad54'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-17','2024-09-27','28970274c2'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-17','2024-09-27','47ccdff1aa'),('Kotte','Jagan','Male','123456789123','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-09-18','2024-09-21','d984dda7ce'),('Kotte','Jagan','Male','309575713967','7997209819','kottejagan218@gmail.com','1/22,T KODURU, RS Kondapuram Mandal','Andhra Pradesh',516474,'2024-10-25','2024-10-25','54fc427f6c');
/*!40000 ALTER TABLE `nethravathi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valikunja`
--

DROP TABLE IF EXISTS `valikunja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valikunja` (
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Aadhar_Number` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `Pincode` int DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Reservation_slot` date DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valikunja`
--

LOCK TABLES `valikunja` WRITE;
/*!40000 ALTER TABLE `valikunja` DISABLE KEYS */;
/*!40000 ALTER TABLE `valikunja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 16:44:55
