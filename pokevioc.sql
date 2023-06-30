-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: livecampus_pokevioc
-- ------------------------------------------------------
-- Server version	8.0.32

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add service',8,'add_service'),(30,'Can change service',8,'change_service'),(31,'Can delete service',8,'delete_service'),(32,'Can view service',8,'view_service');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$j3NL0hd22nsHvMjsdLwJpk$G+oxhHq/9DKoV4mnXmVwbJ8/x8EO4WO8hKQSi++W5H8=','2023-06-30 08:22:02.503271',1,'admin','','','',1,1,'2023-06-30 08:21:47.296250');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-30 08:23:54.067497','1','Service object (1)',1,'[{\"added\": {}}]',8,1),(2,'2023-06-30 08:30:30.452512','2','Service object (2)',1,'[{\"added\": {}}]',8,1),(3,'2023-06-30 08:31:45.998696','2','Service object (2)',2,'[]',8,1),(4,'2023-06-30 08:34:00.027470','3','Service object (3)',1,'[{\"added\": {}}]',8,1),(5,'2023-06-30 08:34:33.598270','4','Service object (4)',1,'[{\"added\": {}}]',8,1),(6,'2023-06-30 08:34:56.397447','5','Service object (5)',1,'[{\"added\": {}}]',8,1),(7,'2023-06-30 08:57:47.553667','5','Service object (5)',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(8,'2023-06-30 08:58:10.754262','6','Service object (6)',1,'[{\"added\": {}}]',8,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'pokeviocApp','contact'),(8,'pokeviocApp','service');
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-27 12:57:36.220064'),(2,'auth','0001_initial','2023-06-27 12:57:36.718062'),(3,'admin','0001_initial','2023-06-27 12:57:36.846062'),(4,'admin','0002_logentry_remove_auto_add','2023-06-27 12:57:36.855064'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-27 12:57:36.865063'),(6,'contenttypes','0002_remove_content_type_name','2023-06-27 12:57:36.925062'),(7,'auth','0002_alter_permission_name_max_length','2023-06-27 12:57:36.958062'),(8,'auth','0003_alter_user_email_max_length','2023-06-27 12:57:36.992063'),(9,'auth','0004_alter_user_username_opts','2023-06-27 12:57:37.001063'),(10,'auth','0005_alter_user_last_login_null','2023-06-27 12:57:37.033063'),(11,'auth','0006_require_contenttypes_0002','2023-06-27 12:57:37.036064'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-27 12:57:37.043063'),(13,'auth','0008_alter_user_username_max_length','2023-06-27 12:57:37.079063'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-27 12:57:37.111063'),(15,'auth','0010_alter_group_name_max_length','2023-06-27 12:57:37.144063'),(16,'auth','0011_update_proxy_permissions','2023-06-27 12:57:37.153064'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-27 12:57:37.190064'),(18,'pokeviocApp','0001_initial','2023-06-27 12:57:37.218063'),(19,'sessions','0001_initial','2023-06-27 12:57:37.266062'),(20,'pokeviocApp','0002_service_image','2023-06-29 13:38:57.898608'),(21,'pokeviocApp','0003_alter_service_image','2023-06-29 13:38:57.904606'),(22,'pokeviocApp','0004_alter_service_image','2023-06-29 13:38:57.909606'),(23,'pokeviocApp','0005_alter_service_image','2023-06-29 13:38:57.913607');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('aaqtmk0mrj07o9q7ez1aeec7foskoyuh','.eJxVjDsOwjAQBe_iGln-7TqhpOcMltdr4wBypDipEHeHSCmgfTPzXiLEba1h63kJE4uz0OL0u1FMj9x2wPfYbrNMc1uXieSuyIN2eZ05Py-H-3dQY6_fmjwgegTLQJCKLsX7gdEZ1JqNdZbYo3KO0ug1MmQVbcpuUGVU1jCI9wfHrjca:1qF9OE:iXTw0mDbmqYigcdY80v1l5lT7x4taGX8AiFZW0y9UkQ','2023-07-14 08:22:02.506273');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokeviocapp_contact`
--

DROP TABLE IF EXISTS `pokeviocapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokeviocapp_contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `object` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokeviocapp_contact`
--

LOCK TABLES `pokeviocapp_contact` WRITE;
/*!40000 ALTER TABLE `pokeviocapp_contact` DISABLE KEYS */;
INSERT INTO `pokeviocapp_contact` VALUES (1,'allforweb','nicolas@allforweb.fr','test','Je suis un génie','2023-06-29 13:43:31.778292'),(2,'test','nicolas@allforweb.fr','test','Je suis un génie sur MC','2023-06-29 13:45:48.212241'),(3,'test','nicolas@allforweb.fr','test','azrtgyhgfzdegh','2023-06-29 13:50:15.350632'),(4,'test2','nicolas@allforweb.fr','test2','dfghngh,j;<;;,ngbvdsvdbngb,','2023-06-29 13:50:45.588385'),(5,'test','nicolas@allforweb.fr','test','Je suis un génie','2023-06-29 13:51:25.757933'),(6,'test','nicolas@allforweb.fr','test','azertyuiop^$','2023-06-29 14:01:14.386833'),(7,'Julien Noyer','nicolas@allforweb.fr','test','azertyuiolpm^ù\r\n4','2023-06-29 14:01:45.386555'),(8,'test','nico@gmail.com','test','azertyhjk','2023-06-29 14:02:37.111696'),(9,'test','nicolas@allforweb.fr','test','azerty','2023-06-29 14:03:57.025822'),(10,'test','nico@gmail.com','test','xqscdvfbvghn','2023-06-29 14:04:30.249637'),(11,'test','nicolas@allforweb.fr','test','azertyui','2023-06-30 09:03:53.158758');
/*!40000 ALTER TABLE `pokeviocapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokeviocapp_service`
--

DROP TABLE IF EXISTS `pokeviocapp_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokeviocapp_service` (
  `id_service` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokeviocapp_service`
--

LOCK TABLES `pokeviocapp_service` WRITE;
/*!40000 ALTER TABLE `pokeviocapp_service` DISABLE KEYS */;
INSERT INTO `pokeviocapp_service` VALUES (1,'CENTRE POKÉVIOC','Un établissement pensé pour les soins.',35000,'service/pokemon-center_1_1.png'),(2,'NOURRITURE DE HAUTE GASTRONOMIE','Des poissons frais de nos régions !',10000,'service/pokemon-center_1.png'),(3,'NOURRITURE DE HAUTE GASTRONOMIE','Des poissons frais de nos régions !',35000,'service/pokemon-center_1_aChDMjX.png'),(4,'CENTRE POKÉVIOC','Un établissement pensé pour les soins.',35000,'service/pokemon-center_1_1_miBP9fJ.png'),(5,'CENTRE POKÉVIOC','Un établissement pensé pour les soins.',35000,'service/pokemon-center_1_1_4fSrV0T.png'),(6,'CENTRE POKÉVIOC','Un établissement pensé pour les soins.',35000,'service/pokemon-center_1_1_xg89KJI.png');
/*!40000 ALTER TABLE `pokeviocapp_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30 11:06:31
