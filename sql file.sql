-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (3);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_admin_tbl`
--

DROP TABLE IF EXISTS `inventory_admin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_admin_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_admin_tbl`
--

LOCK TABLES `inventory_admin_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_admin_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_admin_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customer_tbl`
--

DROP TABLE IF EXISTS `inventory_customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_customer_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tgts4c152mb38i7n2lqaa39un` (`contact_no`),
  UNIQUE KEY `UK_f90347htruet5qboo5dlfmish` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customer_tbl`
--

LOCK TABLES `inventory_customer_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_customer_tbl` DISABLE KEYS */;
INSERT INTO `inventory_customer_tbl` VALUES (1,'kop','1111','hh@gmail.com','john','deo');
/*!40000 ALTER TABLE `inventory_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoice_tbl`
--

DROP TABLE IF EXISTS `inventory_invoice_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_invoice_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customerid` varchar(255) DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_qty` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoice_tbl`
--

LOCK TABLES `inventory_invoice_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_invoice_tbl` DISABLE KEYS */;
INSERT INTO `inventory_invoice_tbl` VALUES (1,'1','Test','1','10','Test Product','22/02/2022','2000');
/*!40000 ALTER TABLE `inventory_invoice_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_product_tbl`
--

DROP TABLE IF EXISTS `inventory_product_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_product_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` bigint DEFAULT NULL,
  `product_qty` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_product_tbl`
--

LOCK TABLES `inventory_product_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_product_tbl` DISABLE KEYS */;
INSERT INTO `inventory_product_tbl` VALUES (2,'TestCat','Test Desc','Test Product1',100,10),(3,'TestCat3','Test Desc','Test Product3',1000,100);
/*!40000 ALTER TABLE `inventory_product_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_sales_tbl`
--

DROP TABLE IF EXISTS `inventory_sales_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_sales_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_date` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `product_qty` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_sales_tbl`
--

LOCK TABLES `inventory_sales_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_sales_tbl` DISABLE KEYS */;
INSERT INTO `inventory_sales_tbl` VALUES (4,'22/2/2022','1','100','10','Test Product','Test'),(5,'22/2/2022','1','100','10','Test Product','Test'),(6,'22/2/2022','1','100','10','Test Product','Test'),(7,'22/5/2022','7','10','1','Test Product','Test');
/*!40000 ALTER TABLE `inventory_sales_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_supplier_tbl`
--

DROP TABLE IF EXISTS `inventory_supplier_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_supplier_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_supplier_tbl`
--

LOCK TABLES `inventory_supplier_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_supplier_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_supplier_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,_binary '','user','ROLE_USER','user'),(2,_binary '','user1','ROLE_USER','user1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 23:39:44
