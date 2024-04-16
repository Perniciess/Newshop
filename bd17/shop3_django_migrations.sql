-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop3
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-10 18:51:08.903297'),(2,'contenttypes','0002_remove_content_type_name','2024-04-10 18:51:09.161541'),(3,'auth','0001_initial','2024-04-10 18:51:09.530458'),(4,'auth','0002_alter_permission_name_max_length','2024-04-10 18:51:09.616183'),(5,'auth','0003_alter_user_email_max_length','2024-04-10 18:51:09.624121'),(6,'auth','0004_alter_user_username_opts','2024-04-10 18:51:09.632651'),(7,'auth','0005_alter_user_last_login_null','2024-04-10 18:51:09.646349'),(8,'auth','0006_require_contenttypes_0002','2024-04-10 18:51:09.649938'),(9,'auth','0007_alter_validators_add_error_messages','2024-04-10 18:51:09.657949'),(10,'auth','0008_alter_user_username_max_length','2024-04-10 18:51:09.664948'),(11,'auth','0009_alter_user_last_name_max_length','2024-04-10 18:51:09.670953'),(12,'auth','0010_alter_group_name_max_length','2024-04-10 18:51:09.690593'),(13,'auth','0011_update_proxy_permissions','2024-04-10 18:51:09.697378'),(14,'auth','0012_alter_user_first_name_max_length','2024-04-10 18:51:09.703391'),(15,'users','0001_initial','2024-04-10 18:51:10.166714'),(16,'admin','0001_initial','2024-04-10 18:51:10.360091'),(17,'admin','0002_logentry_remove_auto_add','2024-04-10 18:51:10.373106'),(18,'admin','0003_logentry_add_action_flag_choices','2024-04-10 18:51:10.381128'),(19,'sessions','0001_initial','2024-04-10 18:51:10.432410'),(20,'products','0001_initial','2024-04-11 16:24:22.539008'),(21,'products','0002_alter_product_img','2024-04-12 17:58:37.939463'),(22,'products','0003_alter_product_img','2024-04-12 17:58:37.952485'),(23,'products','0004_alter_product_type','2024-04-14 16:04:48.853249'),(24,'products','0005_alter_product_type','2024-04-14 16:04:48.858878'),(25,'products','0006_alter_product_img','2024-04-14 16:39:40.464849'),(26,'products','0007_alter_product_img','2024-04-14 16:43:45.182465'),(27,'products','0008_alter_product_img','2024-04-15 15:39:45.924594'),(28,'users','0002_useraccount_is_active','2024-04-15 15:49:03.022380');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17  2:07:53
