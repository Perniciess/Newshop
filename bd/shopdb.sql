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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user account',6,'add_useraccount'),(22,'Can change user account',6,'change_useraccount'),(23,'Can delete user account',6,'delete_useraccount'),(24,'Can view user account',6,'view_useraccount'),(25,'Can add brand',7,'add_brand'),(26,'Can change brand',7,'change_brand'),(27,'Can delete brand',7,'delete_brand'),(28,'Can view brand',7,'view_brand'),(29,'Can add type',8,'add_type'),(30,'Can change type',8,'change_type'),(31,'Can delete type',8,'delete_type'),(32,'Can view type',8,'view_type'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add cart item',10,'add_cartitem'),(38,'Can change cart item',10,'change_cartitem'),(39,'Can delete cart item',10,'delete_cartitem'),(40,'Can view cart item',10,'view_cartitem'),(41,'Can add cart',11,'add_cart'),(42,'Can change cart',11,'change_cart'),(43,'Can delete cart',11,'delete_cart'),(44,'Can view cart',11,'view_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_users_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `users_useraccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (3,1);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartitem`
--

DROP TABLE IF EXISTS `cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` (`cart_id`),
  KEY `cart_cartitem_product_id_b24e265a_fk_products_product_id` (`product_id`),
  CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`id`),
  CONSTRAINT `cart_cartitem_product_id_b24e265a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  CONSTRAINT `cart_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartitem`
--

LOCK TABLES `cart_cartitem` WRITE;
/*!40000 ALTER TABLE `cart_cartitem` DISABLE KEYS */;
INSERT INTO `cart_cartitem` VALUES (3,1,3,122);
/*!40000 ALTER TABLE `cart_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_useraccount_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `users_useraccount` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-10 21:27:37.036394','1','a1@a1.com',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(2,'2024-04-11 16:39:32.076537','1','Boots',1,'[{\"added\": {}}]',8,1),(3,'2024-04-11 16:39:37.891331','1','Nike',1,'[{\"added\": {}}]',7,1),(4,'2024-04-11 16:39:39.066704','1','first product',1,'[{\"added\": {}}]',9,1),(5,'2024-04-11 17:28:02.045108','1','first-product',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(6,'2024-04-12 18:00:39.058520','1','first-product',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',9,1),(7,'2024-04-14 14:10:36.585331','6','ф1',3,'',9,1),(8,'2024-04-14 14:11:54.813862','7','agfs',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',9,1),(9,'2024-04-14 14:12:04.780699','7','agfs',3,'',9,1),(10,'2024-04-14 14:16:35.091354','8','a222',3,'',9,1),(11,'2024-04-14 14:17:27.463573','9','a231',3,'',9,1),(12,'2024-04-14 14:18:55.177340','10','a3412',3,'',9,1),(13,'2024-04-14 14:25:23.753927','11','a123',3,'',9,1),(14,'2024-04-14 14:26:23.154531','12','erew',3,'',9,1),(15,'2024-04-14 14:27:14.425978','13','agfes',3,'',9,1),(16,'2024-04-14 14:28:13.384111','14','asfa',3,'',9,1),(17,'2024-04-14 14:29:07.071476','15','sdgsdg',3,'',9,1),(18,'2024-04-14 14:30:37.340005','16','dfhd',3,'',9,1),(19,'2024-04-14 15:42:34.204535','18','fgsdfs',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',9,1),(20,'2024-04-14 15:43:29.896389','18','fgsdfs',3,'',9,1),(21,'2024-04-14 16:03:49.212574','19','Aboba',3,'',9,1),(22,'2024-04-14 16:03:54.184002','2','Adidas',3,'',7,1),(23,'2024-04-14 16:04:12.907913','4','gdfgdfg',3,'',8,1),(24,'2024-04-14 16:04:12.911085','3','Кроссовки',3,'',8,1),(25,'2024-04-14 16:04:12.920358','2','Pops',3,'',8,1),(26,'2024-04-14 16:07:02.772452','20','А как',3,'',9,1),(27,'2024-04-14 16:09:12.168301','17','gsgds',3,'',9,1),(28,'2024-04-14 16:09:16.981575','4','пожалуйста',3,'',7,1),(29,'2024-04-14 16:09:16.984569','3','Jordan',3,'',7,1),(30,'2024-04-14 16:09:21.903463','6','помогите',3,'',8,1),(31,'2024-04-14 16:09:21.907061','5','Кроссовки',3,'',8,1),(32,'2024-04-14 16:10:23.790571','7','как',3,'',8,1),(33,'2024-04-14 16:10:31.191277','5','такто',3,'',7,1),(34,'2024-04-14 16:11:26.484047','23','апавпв',3,'',9,1),(35,'2024-04-14 16:11:30.221637','8','бляяя',3,'',8,1),(36,'2024-04-14 16:11:33.827311','6','яяяяя',3,'',7,1),(37,'2024-04-14 16:12:42.547629','24','fsdfsdfs',3,'',9,1),(38,'2024-04-14 16:12:46.040482','9','gwe',3,'',8,1),(39,'2024-04-14 16:12:50.423710','7','wetwe',3,'',7,1),(40,'2024-04-14 16:15:01.242577','26','gsdgsdg',3,'',9,1),(41,'2024-04-14 16:15:01.246785','25','gdgdf',3,'',9,1),(42,'2024-04-14 16:16:10.206963','28','gdsgsdg',3,'',9,1),(43,'2024-04-14 16:16:10.211967','27','asgga',3,'',9,1),(44,'2024-04-14 16:17:37.500649','29','gfdsgsdg',3,'',9,1),(45,'2024-04-14 16:18:10.964993','30','dsgsdg',3,'',9,1),(46,'2024-04-14 16:21:56.817767','32','sadfgdsgf',3,'',9,1),(47,'2024-04-14 16:21:56.821379','31','gsdgs',3,'',9,1),(48,'2024-04-14 16:24:07.335756','34','fsdfsjlkil',3,'',9,1),(49,'2024-04-14 16:24:07.340760','33','gsdgsd',3,'',9,1),(50,'2024-04-14 16:26:13.756547','35','авыаыва',3,'',9,1),(51,'2024-04-14 16:27:16.799843','36','авыаываывыыфф',3,'',9,1),(52,'2024-04-14 16:28:41.292985','37','ячсмия',3,'',9,1),(53,'2024-04-14 16:30:14.269884','38','ыфваыав',3,'',9,1),(54,'2024-04-14 16:30:44.481168','39','vxcvxcv',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',9,1),(55,'2024-04-14 16:34:00.188335','39','vxcvxcv',3,'',9,1),(56,'2024-04-14 16:35:01.073253','40','fdsfsdf',3,'',9,1),(57,'2024-04-14 16:36:27.792644','41','gfsdfsd',3,'',9,1),(58,'2024-04-14 16:37:13.355351','42','lkjhg',3,'',9,1),(59,'2024-04-14 16:37:28.435898','27','gdfgdf',3,'',8,1),(60,'2024-04-14 16:37:28.438892','26','fgsdfsd',3,'',8,1),(61,'2024-04-14 16:37:28.442513','25','fsf',3,'',8,1),(62,'2024-04-14 16:37:28.445535','24','vvvvc',3,'',8,1),(63,'2024-04-14 16:37:28.448497','23','ываывап',3,'',8,1),(64,'2024-04-14 16:37:28.452533','22','фыва',3,'',8,1),(65,'2024-04-14 16:37:28.457011','21','имими',3,'',8,1),(66,'2024-04-14 16:37:28.459710','20','мсчмчс',3,'',8,1),(67,'2024-04-14 16:37:28.462550','19','bbbbb',3,'',8,1),(68,'2024-04-14 16:37:28.472529','18','fdsfsdf',3,'',8,1),(69,'2024-04-14 16:37:28.476025','17','sdgsd',3,'',8,1),(70,'2024-04-14 16:37:28.478532','16','gsdgsdg',3,'',8,1),(71,'2024-04-14 16:37:28.482115','15','wegsd',3,'',8,1),(72,'2024-04-14 16:37:28.484766','14','sgdsgdgds',3,'',8,1),(73,'2024-04-14 16:37:28.487496','13','greger',3,'',8,1),(74,'2024-04-14 16:37:28.490136','12','sdfsd',3,'',8,1),(75,'2024-04-14 16:37:28.492922','11','sdgg4w',3,'',8,1),(76,'2024-04-14 16:37:28.495671','10','ghsdfgs',3,'',8,1),(77,'2024-04-14 16:37:42.306110','24','fsdfsd',3,'',7,1),(78,'2024-04-14 16:37:42.309697','23','sdfs',3,'',7,1),(79,'2024-04-14 16:37:42.312709','22','vxcvxcv',3,'',7,1),(80,'2024-04-14 16:37:42.315783','21','ывапваып',3,'',7,1),(81,'2024-04-14 16:37:42.318700','20','васыв',3,'',7,1),(82,'2024-04-14 16:37:42.320701','19','сссв',3,'',7,1),(83,'2024-04-14 16:37:42.323925','18','пипипип',3,'',7,1),(84,'2024-04-14 16:37:42.325928','17','vvvvv',3,'',7,1),(85,'2024-04-14 16:37:42.329571','16','shfgnfg',3,'',7,1),(86,'2024-04-14 16:37:42.331575','15','gdsgs',3,'',7,1),(87,'2024-04-14 16:37:42.335469','14','cbxcbxc',3,'',7,1),(88,'2024-04-14 16:37:42.338295','13','dsfgwet',3,'',7,1),(89,'2024-04-14 16:37:42.355207','12','gdfgdfhth',3,'',7,1),(90,'2024-04-14 16:37:42.366627','11','dcbd',3,'',7,1),(91,'2024-04-14 16:37:42.369489','10','sghdgs',3,'',7,1),(92,'2024-04-14 16:37:42.372427','9','235fsd',3,'',7,1),(93,'2024-04-14 16:37:42.374724','8','wetywe',3,'',7,1),(94,'2024-04-14 16:38:46.325651','43','fsdsdfs',3,'',9,1),(95,'2024-04-14 16:40:07.515257','44','vcxvxc',3,'',9,1),(96,'2024-04-14 16:45:44.255609','46','sdfsd',3,'',9,1),(97,'2024-04-14 16:45:44.258604','45','fdsfsd',3,'',9,1),(98,'2024-04-14 16:46:34.291699','47','dddd',3,'',9,1),(99,'2024-04-14 16:47:27.377919','48','tttt',3,'',9,1),(100,'2024-04-14 16:49:16.135844','49','sdsada',3,'',9,1),(101,'2024-04-14 16:51:15.066511','51','ffff',3,'',9,1),(102,'2024-04-14 16:51:15.069505','50','gggggg',3,'',9,1),(103,'2024-04-14 16:52:43.566717','52','gfdgfd',2,'[{\"changed\": {\"fields\": [\"Img\"]}}]',9,1),(104,'2024-04-14 16:53:13.241815','52','gfdgfd',3,'',9,1),(105,'2024-04-14 16:53:13.244287','1','first-product',3,'',9,1),(106,'2024-04-14 16:56:52.526705','55','fdsfsd',3,'',9,1),(107,'2024-04-14 16:56:52.530458','54','vcxvxc',3,'',9,1),(108,'2024-04-14 16:56:52.532724','53','мсмссммс',3,'',9,1),(109,'2024-04-14 17:02:09.248003','56','asdads',3,'',9,1),(110,'2024-04-14 17:04:30.529823','57','dsadasd',3,'',9,1),(111,'2024-04-14 17:51:18.684545','59','fsdfsdf',3,'',9,1),(112,'2024-04-14 17:51:18.687535','58','аываыва',3,'',9,1),(113,'2024-04-14 19:53:06.960694','62','[\'fffff\']',3,'',9,1),(114,'2024-04-14 19:53:06.963697','61','fsdfsd',3,'',9,1),(115,'2024-04-14 19:53:06.966700','60','fdsf',3,'',9,1),(116,'2024-04-14 19:53:16.071319','64','[\'jhjhj\']',3,'',8,1),(117,'2024-04-14 19:53:16.074593','63','[\'hghg\']',3,'',8,1),(118,'2024-04-14 19:53:16.084958','62','[\'nvbnvb\']',3,'',8,1),(119,'2024-04-14 19:53:16.090348','61','[\'jhgjgh\']',3,'',8,1),(120,'2024-04-14 19:53:16.094883','60','[\'fghfg\']',3,'',8,1),(121,'2024-04-14 19:53:16.097886','59','[\'vcz\']',3,'',8,1),(122,'2024-04-14 19:53:16.100888','58','[\'ghdfgdf\']',3,'',8,1),(123,'2024-04-14 19:53:16.103735','57','[\'kkkk\']',3,'',8,1),(124,'2024-04-14 19:53:16.107053','56','[\'bvcvb\']',3,'',8,1),(125,'2024-04-14 19:53:16.109899','55','[\'jjj\']',3,'',8,1),(126,'2024-04-14 19:53:16.113380','54','[\'bvbhh\']',3,'',8,1),(127,'2024-04-14 19:53:16.123546','53','[\'jhgjg\']',3,'',8,1),(128,'2024-04-14 19:53:16.125549','52','[\'qqqq\']',3,'',8,1),(129,'2024-04-14 19:53:16.129554','51','[\'bcvbcv\']',3,'',8,1),(130,'2024-04-14 19:53:16.131555','50','[\'vvvv\']',3,'',8,1),(131,'2024-04-14 19:53:16.134544','49','[\'sass\']',3,'',8,1),(132,'2024-04-14 19:53:16.138041','48','[\'nbvnvb\']',3,'',8,1),(133,'2024-04-14 19:53:16.140618','47','[\'sdfsd\']',3,'',8,1),(134,'2024-04-14 19:53:16.143217','46','[\'cvbcv\']',3,'',8,1),(135,'2024-04-14 19:53:16.146929','45','[\'bvcbc\']',3,'',8,1),(136,'2024-04-14 19:53:16.149571','44','[\'vxcvxc\']',3,'',8,1),(137,'2024-04-14 19:53:16.152719','43','ffffffgfd',3,'',8,1),(138,'2024-04-14 19:53:16.162542','42','fdsf',3,'',8,1),(139,'2024-04-14 19:53:16.165546','41','[\'undefined\']',3,'',8,1),(140,'2024-04-14 19:53:16.168244','40','2',3,'',8,1),(141,'2024-04-14 19:53:16.170616','39','ииии',3,'',8,1),(142,'2024-04-14 19:53:16.174523','38','dsdas',3,'',8,1),(143,'2024-04-14 19:53:16.177627','37','adsda',3,'',8,1),(144,'2024-04-14 19:53:16.179628','36','cxvcx',3,'',8,1),(145,'2024-04-14 19:53:16.182632','35','имисми',3,'',8,1),(146,'2024-04-14 19:53:16.185636','34','bvbcv',3,'',8,1),(147,'2024-04-14 19:53:16.188639','33','fsdfs',3,'',8,1),(148,'2024-04-14 19:53:16.191641','32','gggg',3,'',8,1),(149,'2024-04-14 19:53:16.194609','31','fsdfsd',3,'',8,1),(150,'2024-04-14 19:53:16.204811','30','ffff',3,'',8,1),(151,'2024-04-14 19:53:16.207693','29','gsdgs',3,'',8,1),(152,'2024-04-14 19:53:16.209686','28','fdsfsd',3,'',8,1),(153,'2024-04-14 19:53:16.212690','1','Boots',3,'',8,1),(154,'2024-04-14 19:53:24.256879','62','[\'ytyt\']',3,'',7,1),(155,'2024-04-14 19:53:24.266089','61','[\'yytyt\']',3,'',7,1),(156,'2024-04-14 19:53:24.269093','60','[\'gdfgd\']',3,'',7,1),(157,'2024-04-14 19:53:24.271095','59','[\'terte\']',3,'',7,1),(158,'2024-04-14 19:53:24.287337','58','[\'qws\']',3,'',7,1),(159,'2024-04-14 19:53:24.290403','57','[\'trete\']',3,'',7,1),(160,'2024-04-14 19:53:24.293269','56','[\'ooo\']',3,'',7,1),(161,'2024-04-14 19:53:24.296136','55','[\'gggf\']',3,'',7,1),(162,'2024-04-14 19:53:24.299841','54','[\'iii\']',3,'',7,1),(163,'2024-04-14 19:53:24.302476','53','[\'gfd\']',3,'',7,1),(164,'2024-04-14 19:53:24.312869','52','[\'ytuytu\']',3,'',7,1),(165,'2024-04-14 19:53:24.315839','51','[\'eeee\']',3,'',7,1),(166,'2024-04-14 19:53:24.318867','50','[\'fggfd\']',3,'',7,1),(167,'2024-04-14 19:53:24.321746','49','[\'tttt\']',3,'',7,1),(168,'2024-04-14 19:53:24.324766','48','[\'dddd\']',3,'',7,1),(169,'2024-04-14 19:53:24.327991','47','[\'fsdgfbvcn\']',3,'',7,1),(170,'2024-04-14 19:53:24.331012','46','[\'bcvbcv\']',3,'',7,1),(171,'2024-04-14 19:53:24.334200','45','[\'gfdgd\']',3,'',7,1),(172,'2024-04-14 19:53:24.336940','44','[\'gdfgdf\']',3,'',7,1),(173,'2024-04-14 19:53:24.340941','43','[\'fsdfsd\']',3,'',7,1),(174,'2024-04-14 19:53:24.343945','42','gdfgdf',3,'',7,1),(175,'2024-04-14 19:53:24.355188','41','[\'undefined\']',3,'',7,1),(176,'2024-04-14 19:53:24.357961','40','1',3,'',7,1),(177,'2024-04-14 19:53:24.360964','39','fdsfs',3,'',7,1),(178,'2024-04-14 19:53:24.376222','38','ииимис',3,'',7,1),(179,'2024-04-14 19:53:24.383484','37','dsadsa',3,'',7,1),(180,'2024-04-14 19:53:24.396423','36','dsadasdas',3,'',7,1),(181,'2024-04-14 19:53:24.399427','35','vcxvxc',3,'',7,1),(182,'2024-04-14 19:53:24.402385','34','смисм',3,'',7,1),(183,'2024-04-14 19:53:24.404389','33','bvcbc',3,'',7,1),(184,'2024-04-14 19:53:24.407391','32','bbbb',3,'',7,1),(185,'2024-04-14 19:53:24.410394','31','assda',3,'',7,1),(186,'2024-04-14 19:53:24.413332','30','gggg',3,'',7,1),(187,'2024-04-14 19:53:24.415582','29','ggggg',3,'',7,1),(188,'2024-04-14 19:53:24.418588','28','sfdfsds',3,'',7,1),(189,'2024-04-14 19:53:24.421592','27','ffff',3,'',7,1),(190,'2024-04-14 19:53:24.423593','26','dffdfd',3,'',7,1),(191,'2024-04-14 19:53:24.427621','25','zzxczx',3,'',7,1),(192,'2024-04-14 19:53:24.437577','1','Nike',3,'',7,1),(193,'2024-04-14 20:13:06.139530','64','[\'fsdfs\']',3,'',9,1),(194,'2024-04-14 20:13:06.143287','63','[\'qzazqaz\']',3,'',9,1),(195,'2024-04-14 20:29:33.834889','78','ltuil',3,'',7,1),(196,'2024-04-14 20:29:33.845923','77','nvbnv',3,'',7,1),(197,'2024-04-14 20:29:33.848912','76','mhgmg',3,'',7,1),(198,'2024-04-14 20:29:33.851917','75','gfdgd',3,'',7,1),(199,'2024-04-14 20:29:33.854047','74','jhgjgh',3,'',7,1),(200,'2024-04-14 20:29:33.857046','73','gdfgd',3,'',7,1),(201,'2024-04-14 20:29:33.860756','72','ytryr',3,'',7,1),(202,'2024-04-14 20:29:33.863045','71','hfghf',3,'',7,1),(203,'2024-04-14 20:29:33.866049','70','jghjg',3,'',7,1),(204,'2024-04-14 20:29:33.869052','69','bfbf',3,'',7,1),(205,'2024-04-14 20:29:33.872055','68','dfbd',3,'',7,1),(206,'2024-04-14 20:29:33.875504','67','[\'gdfgd\']',3,'',7,1),(207,'2024-04-14 20:29:33.878050','66','[\'htynt\']',3,'',7,1),(208,'2024-04-14 20:29:33.889055','65','[\'wxwexw\']',3,'',7,1),(209,'2024-04-14 20:29:33.891208','64','[\'ewrwe\']',3,'',7,1),(210,'2024-04-14 20:29:33.894772','63','[\'bcvbc\']',3,'',7,1),(211,'2024-04-14 20:29:40.825387','81','gjhkh',3,'',8,1),(212,'2024-04-14 20:29:40.828379','80','mghmg',3,'',8,1),(213,'2024-04-14 20:29:40.830382','79','vbnvb',3,'',8,1),(214,'2024-04-14 20:29:40.833960','78','nbvnv',3,'',8,1),(215,'2024-04-14 20:29:40.836863','77','nbvnvbn',3,'',8,1),(216,'2024-04-14 20:29:40.840402','76','mbnmb',3,'',8,1),(217,'2024-04-14 20:29:40.845105','75','bcvbc',3,'',8,1),(218,'2024-04-14 20:29:40.855710','74','jghj',3,'',8,1),(219,'2024-04-14 20:29:40.859166','73','nvbnv',3,'',8,1),(220,'2024-04-14 20:29:40.861942','72','bnmbn',3,'',8,1),(221,'2024-04-14 20:29:40.864738','71','sfgs',3,'',8,1),(222,'2024-04-14 20:29:40.867188','70','ewgw',3,'',8,1),(223,'2024-04-14 20:29:40.871210','69','[\'bcvbcv\']',3,'',8,1),(224,'2024-04-14 20:29:40.876196','68','[\'ngng\']',3,'',8,1),(225,'2024-04-14 20:29:40.879217','67','[\'cecece\']',3,'',8,1),(226,'2024-04-14 20:29:40.882139','66','[\'bcbcv\']',3,'',8,1),(227,'2024-04-14 20:29:40.885015','65','[\'fdgfg\']',3,'',8,1),(228,'2024-04-14 21:23:07.071238','67','',3,'',9,1),(229,'2024-04-14 21:24:42.968909','68','',3,'',9,1),(230,'2024-04-15 15:36:54.936762','2','a2@a2.com',1,'[{\"added\": {}}]',6,1),(231,'2024-04-15 15:39:11.148554','2','a2@a2.com',3,'',6,1),(232,'2024-04-15 15:39:25.012873','3','a3@a3.com',1,'[{\"added\": {}}]',6,1),(233,'2024-04-15 16:31:13.553716','6','bajenov.valentin@gmail.com',3,'',6,1),(234,'2024-04-15 16:31:13.557094','3','a3@a3.com',3,'',6,1),(235,'2024-04-15 16:51:22.295505','7','a3@a3.com',3,'',6,1),(236,'2024-04-15 17:04:45.714379','8','a3@a3.com',3,'',6,1),(237,'2024-04-15 17:24:26.290142','9','a3@a3.com',3,'',6,1),(238,'2024-04-15 17:33:40.708880','10','a2@a2.com',3,'',6,1),(239,'2024-04-15 17:50:20.379718','11','a2@a2.com',3,'',6,1),(240,'2024-04-15 17:50:20.382187','12','a4@a4.com',3,'',6,1),(241,'2024-04-15 17:57:10.627319','13','bajenov.valentin@gmail.com',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',6,1),(242,'2024-04-15 17:58:41.473910','13','bajenov.valentin@gmail.com',3,'',6,1),(243,'2024-04-15 17:58:57.389411','14','a3@a3.com',1,'[{\"added\": {}}]',6,1),(244,'2024-04-15 18:04:09.755758','14','a3@a3.com',3,'',6,1),(245,'2024-04-15 18:38:10.451341','18','bajenov.valentin@gmail.com',3,'',6,1),(246,'2024-04-15 18:38:10.454347','17','a7@a7.com',3,'',6,1),(247,'2024-04-15 18:38:10.457351','16','a6@a6.com',3,'',6,1),(248,'2024-04-15 18:38:10.459353','15','a5@a5.com',3,'',6,1),(249,'2024-04-15 18:44:55.413597','19','bajenov.valentin@gmail.com',3,'',6,1),(250,'2024-04-15 18:47:03.958367','20','bajenov.valentin@gmail.com',3,'',6,1),(251,'2024-04-15 19:19:59.791264','21','bajenov.valentin@gmail.com',3,'',6,1),(252,'2024-04-15 19:21:26.403469','22','bajenov.valentin@gmail.com',3,'',6,1),(253,'2024-04-15 19:23:01.923666','23','bajenov.valentin@gmail.com',3,'',6,1),(254,'2024-04-15 19:23:29.738455','24','bajenov.valentin@gmail.com',3,'',6,1),(255,'2024-04-15 19:24:32.402973','25','bajenov.valentin@gmail.com',3,'',6,1),(256,'2024-04-15 19:25:30.004626','26','bajenov.valentin@gmail.com',3,'',6,1),(257,'2024-04-15 19:56:15.782526','69','Drose',3,'',9,1),(258,'2024-04-15 19:58:29.842370','70','D ROSE',1,'[{\"added\": {}}]',9,1),(259,'2024-04-15 19:58:44.661324','70','D ROSE',3,'',9,1),(260,'2024-04-15 19:59:37.393648','71','drose',1,'[{\"added\": {}}]',9,1),(261,'2024-04-15 19:59:45.533699','71','drose',3,'',9,1),(262,'2024-04-15 20:02:06.846960','72','fsdfs',1,'[{\"added\": {}}]',9,1),(263,'2024-04-15 20:02:11.775283','72','fsdfs',3,'',9,1),(264,'2024-04-15 20:02:48.796434','73','fds',1,'[{\"added\": {}}]',9,1),(265,'2024-04-15 20:02:53.450982','73','fds',3,'',9,1),(266,'2024-04-15 20:03:44.646281','74','dsds',1,'[{\"added\": {}}]',9,1),(267,'2024-04-15 20:07:18.210915','75','выфвф',1,'[{\"added\": {}}]',9,1),(268,'2024-04-15 20:15:36.110803','76','dsadas',1,'[{\"added\": {}}]',9,1),(269,'2024-04-15 20:25:13.890378','77','последнийтест',1,'[{\"added\": {}}]',9,1),(270,'2024-04-15 21:51:34.453095','78','adsada',3,'',9,1),(271,'2024-04-15 21:53:15.152866','79','dsada',3,'',9,1),(272,'2024-04-15 22:30:50.385041','80','ggdf',3,'',9,1),(273,'2024-04-15 22:31:31.609268','81','fdsfs',3,'',9,1),(274,'2024-04-15 23:01:21.370252','82','dsada',3,'',9,1),(275,'2024-04-15 23:03:33.034438','83','fdsfs',3,'',9,1),(276,'2024-04-16 00:03:31.696661','84','fdsfsd',3,'',9,1),(277,'2024-04-16 00:07:27.615351','85','fsdfs',3,'',9,1),(278,'2024-04-16 00:10:48.678763','86','fdsf',3,'',9,1),(279,'2024-04-16 00:31:35.181350','87','ffsdf',3,'',9,1),(280,'2024-04-16 00:34:42.116143','89','fsdfs',3,'',9,1),(281,'2024-04-16 00:34:42.120446','88','fsdfsdf',3,'',9,1),(282,'2024-04-16 00:36:17.376363','90','fsdfs',3,'',9,1),(283,'2024-04-16 00:37:59.386908','91','fsdfsdf',3,'',9,1),(284,'2024-04-16 00:38:45.913098','92','fsdfs',3,'',9,1),(285,'2024-04-16 00:42:36.296658','95','ghdfgdf',3,'',9,1),(286,'2024-04-16 00:42:36.299794','94','fsdfsd',3,'',9,1),(287,'2024-04-16 00:42:36.302269','93','fsdfsd',3,'',9,1),(288,'2024-04-16 00:47:34.439442','96','fsdfs',3,'',9,1),(289,'2024-04-16 13:41:53.938731','97','fds',3,'',9,1),(290,'2024-04-16 13:42:27.846690','98','fdsf',3,'',9,1),(291,'2024-04-16 13:44:16.786271','99','fsdf',3,'',9,1),(292,'2024-04-16 13:55:56.843269','103','fsdf',3,'',9,1),(293,'2024-04-16 13:55:56.847266','102','fsdf',3,'',9,1),(294,'2024-04-16 13:55:56.850990','101','dasd',3,'',9,1),(295,'2024-04-16 13:55:56.853270','100','fsdf',3,'',9,1),(296,'2024-04-16 20:43:55.875326','113','adsa',3,'',9,1),(297,'2024-04-16 20:43:55.878328','112','dasda',3,'',9,1),(298,'2024-04-16 20:43:55.881339','111','ggg',3,'',9,1),(299,'2024-04-16 20:43:55.891341','110','ggg',3,'',9,1),(300,'2024-04-16 20:43:55.900070','109','rwerw',3,'',9,1),(301,'2024-04-16 20:43:55.906077','108','rwerw',3,'',9,1),(302,'2024-04-16 20:43:55.912083','107','ffsdfs',3,'',9,1),(303,'2024-04-16 20:43:55.918088','106','fsdfs',3,'',9,1),(304,'2024-04-16 20:43:55.925099','105','fsdfs',3,'',9,1),(305,'2024-04-16 20:43:55.929100','104','fdsfs',3,'',9,1),(306,'2024-04-16 20:44:01.649348','98','cvxc',3,'',8,1),(307,'2024-04-16 20:44:01.660350','97','sdtsdt',3,'',8,1),(308,'2024-04-16 20:44:01.664353','96','x',3,'',8,1),(309,'2024-04-16 20:44:01.668357','95','h',3,'',8,1),(310,'2024-04-16 20:44:01.673363','94','s',3,'',8,1),(311,'2024-04-16 20:44:01.677259','93','v',3,'',8,1),(312,'2024-04-16 20:44:01.680265','92','c',3,'',8,1),(313,'2024-04-16 20:44:01.682959','91','d',3,'',8,1),(314,'2024-04-16 20:44:01.685268','90','f',3,'',8,1),(315,'2024-04-16 20:44:01.689812','89','r',3,'',8,1),(316,'2024-04-16 20:44:01.691815','88','g',3,'',8,1),(317,'2024-04-16 20:44:01.694818','87','nvbnv',3,'',8,1),(318,'2024-04-16 20:44:01.704988','86','w',3,'',8,1),(319,'2024-04-16 20:44:01.708562','85','j',3,'',8,1),(320,'2024-04-16 20:44:01.711349','84','n',3,'',8,1),(321,'2024-04-16 20:44:01.715150','83','b',3,'',8,1),(322,'2024-04-16 20:44:01.717995','82','Кроссовки',3,'',8,1),(323,'2024-04-16 20:44:06.614388','86','fsdf',3,'',7,1),(324,'2024-04-16 20:44:06.617383','85','n',3,'',7,1),(325,'2024-04-16 20:44:06.621386','84','r',3,'',7,1),(326,'2024-04-16 20:44:06.626556','83','f',3,'',7,1),(327,'2024-04-16 20:44:06.629066','82','hgfhf',3,'',7,1),(328,'2024-04-16 20:44:06.632069','81','h',3,'',7,1),(329,'2024-04-16 20:44:06.635071','80','g',3,'',7,1),(330,'2024-04-16 20:44:06.638074','79','Adidas',3,'',7,1),(331,'2024-04-16 20:45:18.470220','114','afdsf',3,'',9,1),(332,'2024-04-16 21:37:28.459211','115','dasd',3,'',9,1),(333,'2024-04-17 21:12:13.820587','119','GG',3,'',9,1),(334,'2024-04-20 14:13:39.321160','121','TEST',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(335,'2024-04-20 14:28:15.221225','104','TEST',3,'',8,1),(336,'2024-04-20 14:28:15.225228','103','авыаы',3,'',8,1),(337,'2024-04-20 14:28:15.228231','102','vxcvxc',3,'',8,1),(338,'2024-04-20 14:28:15.231234','100','vxcv',3,'',8,1),(339,'2024-04-20 14:28:15.234237','99','vcbcv',3,'',8,1),(340,'2024-04-20 15:31:22.674097','2','Cart - b2',1,'[{\"added\": {}}]',11,1),(341,'2024-04-20 15:49:45.072056','2','Cart object (2)',3,'',11,1),(342,'2024-04-20 21:59:33.187476','92','TEST',3,'',7,1),(343,'2024-04-20 21:59:33.189833','91','фвыф',3,'',7,1),(344,'2024-04-20 21:59:33.193372','90','fsdf',3,'',7,1),(345,'2024-04-20 21:59:33.195375','88','fds',3,'',7,1),(346,'2024-04-20 21:59:33.198289','87','gdfg',3,'',7,1),(347,'2024-04-21 18:31:54.496093','28','bajenovvalentin@yandex.ru',3,'',6,1),(348,'2024-04-21 18:33:09.954444','29','bajenovvalentin@yandex.ru',3,'',6,1),(349,'2024-04-21 18:35:51.051764','30','bajenovvalentin@yandex.ru',3,'',6,1),(350,'2024-04-21 18:35:51.055869','27','bajenov.valentin@gmail.com',3,'',6,1),(351,'2024-04-21 18:41:21.816886','32','bajenovvalentin@yandex.ru',3,'',6,1),(352,'2024-04-21 18:41:21.819969','31','bajenov.valentin@gmail.com',3,'',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(11,'cart','cart'),(10,'cart','cartitem'),(4,'contenttypes','contenttype'),(7,'products','brand'),(9,'products','product'),(8,'products','type'),(5,'sessions','session'),(6,'users','useraccount');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-10 18:51:08.903297'),(2,'contenttypes','0002_remove_content_type_name','2024-04-10 18:51:09.161541'),(3,'auth','0001_initial','2024-04-10 18:51:09.530458'),(4,'auth','0002_alter_permission_name_max_length','2024-04-10 18:51:09.616183'),(5,'auth','0003_alter_user_email_max_length','2024-04-10 18:51:09.624121'),(6,'auth','0004_alter_user_username_opts','2024-04-10 18:51:09.632651'),(7,'auth','0005_alter_user_last_login_null','2024-04-10 18:51:09.646349'),(8,'auth','0006_require_contenttypes_0002','2024-04-10 18:51:09.649938'),(9,'auth','0007_alter_validators_add_error_messages','2024-04-10 18:51:09.657949'),(10,'auth','0008_alter_user_username_max_length','2024-04-10 18:51:09.664948'),(11,'auth','0009_alter_user_last_name_max_length','2024-04-10 18:51:09.670953'),(12,'auth','0010_alter_group_name_max_length','2024-04-10 18:51:09.690593'),(13,'auth','0011_update_proxy_permissions','2024-04-10 18:51:09.697378'),(14,'auth','0012_alter_user_first_name_max_length','2024-04-10 18:51:09.703391'),(15,'users','0001_initial','2024-04-10 18:51:10.166714'),(16,'admin','0001_initial','2024-04-10 18:51:10.360091'),(17,'admin','0002_logentry_remove_auto_add','2024-04-10 18:51:10.373106'),(18,'admin','0003_logentry_add_action_flag_choices','2024-04-10 18:51:10.381128'),(19,'sessions','0001_initial','2024-04-10 18:51:10.432410'),(20,'products','0001_initial','2024-04-11 16:24:22.539008'),(21,'products','0002_alter_product_img','2024-04-12 17:58:37.939463'),(22,'products','0003_alter_product_img','2024-04-12 17:58:37.952485'),(23,'products','0004_alter_product_type','2024-04-14 16:04:48.853249'),(24,'products','0005_alter_product_type','2024-04-14 16:04:48.858878'),(25,'products','0006_alter_product_img','2024-04-14 16:39:40.464849'),(26,'products','0007_alter_product_img','2024-04-14 16:43:45.182465'),(27,'products','0008_alter_product_img','2024-04-15 15:39:45.924594'),(28,'users','0002_useraccount_is_active','2024-04-15 15:49:03.022380'),(29,'cart','0001_initial','2024-04-20 15:21:49.410834');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4jd3mfciwgz3722oxqoiq7v364vcnxe0','.eJxVjDsOwjAQBe_iGlm2No5jSnrOYO0vOIAcKU4qxN0hUgpo38y8l8m4rSVvTZc8iTkbb06_GyE_tO5A7lhvs-W5rstEdlfsQZu9zqLPy-H-HRRs5Vt3_ZBGIhIIqtF1CjhAL0jMDkV4jCG6hI58B-ABPQXA3sfEOiKJmvcHCCQ5Cg:1rufTW:tQT3ToyWrCSOmTXObGINpVhfdUnDL5DapV-o5UXsreo','2024-04-24 21:27:22.941176'),('wprrl5gb1mn2b235423wa9wluhw66yps','.eJxVjDsOwjAQBe_iGlm2No5jSnrOYO0vOIAcKU4qxN0hUgpo38y8l8m4rSVvTZc8iTkbb06_GyE_tO5A7lhvs-W5rstEdlfsQZu9zqLPy-H-HRRs5Vt3_ZBGIhIIqtF1CjhAL0jMDkV4jCG6hI58B-ABPQXA3sfEOiKJmvcHCCQ5Cg:1rud4H:nFbTXMi02U5Vl-U0QoL2Fu4HQUpy368vaMMD4Fm-rFM','2024-04-24 18:53:09.598985');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_brand`
--

DROP TABLE IF EXISTS `products_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_brand`
--

LOCK TABLES `products_brand` WRITE;
/*!40000 ALTER TABLE `products_brand` DISABLE KEYS */;
INSERT INTO `products_brand` VALUES (89,'Adidas');
/*!40000 ALTER TABLE `products_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(100) NOT NULL,
  `brand_id` bigint NOT NULL,
  `type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_brand_id_3e2e8fd1_fk_products_brand_id` (`brand_id`),
  KEY `products_product_type_id_027d8fc4_fk_products_type_id` (`type_id`),
  CONSTRAINT `products_product_brand_id_3e2e8fd1_fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `products_brand` (`id`),
  CONSTRAINT `products_product_type_id_027d8fc4_fk_products_type_id` FOREIGN KEY (`type_id`) REFERENCES `products_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (122,'D ROSE',2000.00,'products_images/drose.jpg',89,101);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_type`
--

DROP TABLE IF EXISTS `products_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_type`
--

LOCK TABLES `products_type` WRITE;
/*!40000 ALTER TABLE `products_type` DISABLE KEYS */;
INSERT INTO `products_type` VALUES (101,'Кроссовки');
/*!40000 ALTER TABLE `products_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_useraccount`
--

DROP TABLE IF EXISTS `users_useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_useraccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_useraccount`
--

LOCK TABLES `users_useraccount` WRITE;
/*!40000 ALTER TABLE `users_useraccount` DISABLE KEYS */;
INSERT INTO `users_useraccount` VALUES (1,'2024-04-10 21:27:22.000000','a1','b2','a1@a1.com','pbkdf2_sha256$720000$P53LbZbVjojcCq4HyHSVe7$Cdt3FMRKCQlAnS9DiCZ/XSNn1hdzAz7DlN5HsIK490I=',1,1,1),(33,NULL,'b7b7','baba','bajenov.valentin@gmail.com','pbkdf2_sha256$720000$50vd04pGxz6RTAdLgWjSq5$yhOkSCBJxhg8ff8mgXL96TcnXUldvLkBGDk13D7fTag=',0,0,1);
/*!40000 ALTER TABLE `users_useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_useraccount_groups`
--

DROP TABLE IF EXISTS `users_useraccount_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_useraccount_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `useraccount_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_useraccount_groups_useraccount_id_group_id_3cd0c5ca_uniq` (`useraccount_id`,`group_id`),
  KEY `users_useraccount_groups_group_id_1577102c_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_useraccount_gr_useraccount_id_5be1cfea_fk_users_use` FOREIGN KEY (`useraccount_id`) REFERENCES `users_useraccount` (`id`),
  CONSTRAINT `users_useraccount_groups_group_id_1577102c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_useraccount_groups`
--

LOCK TABLES `users_useraccount_groups` WRITE;
/*!40000 ALTER TABLE `users_useraccount_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_useraccount_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_useraccount_user_permissions`
--

DROP TABLE IF EXISTS `users_useraccount_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_useraccount_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `useraccount_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_useraccount_user_p_useraccount_id_permissio_44b0b237_uniq` (`useraccount_id`,`permission_id`),
  KEY `users_useraccount_us_permission_id_a6d5a0c1_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_useraccount_us_permission_id_a6d5a0c1_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_useraccount_us_useraccount_id_79ea4373_fk_users_use` FOREIGN KEY (`useraccount_id`) REFERENCES `users_useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_useraccount_user_permissions`
--

LOCK TABLES `users_useraccount_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_useraccount_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_useraccount_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 22:01:50
