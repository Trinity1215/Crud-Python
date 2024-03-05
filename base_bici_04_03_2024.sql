-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: base_bici
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add bicicleta',7,'add_bicicleta'),(26,'Can change bicicleta',7,'change_bicicleta'),(27,'Can delete bicicleta',7,'delete_bicicleta'),(28,'Can view bicicleta',7,'view_bicicleta'),(29,'Can add estado bicicleta',8,'add_estadobicicleta'),(30,'Can change estado bicicleta',8,'change_estadobicicleta'),(31,'Can delete estado bicicleta',8,'delete_estadobicicleta'),(32,'Can view estado bicicleta',8,'view_estadobicicleta'),(33,'Can add garantia',9,'add_garantia'),(34,'Can change garantia',9,'change_garantia'),(35,'Can delete garantia',9,'delete_garantia'),(36,'Can view garantia',9,'view_garantia');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$3aRh8CDaxh3ggKhaUsA7tq$5C/ycb1tqS6/AI+0nyxcJDIIh3y/J9dz8/eE4ug/SGw=','2024-03-05 04:14:25.542091',1,'lenovo','','','cristiandavidbeltrancruz87@gmail.com',1,1,'2024-02-16 05:07:20.230817'),(5,'pbkdf2_sha256$720000$aF8MNBgWjQksliYls1QaBF$hS9YYBuUqxj6TWeYzecZhWutQ0bimnc3BsYSzPwgf7o=','2024-03-05 04:23:19.747087',0,'tecnico','','','',1,1,'2024-03-05 04:21:24.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (5,5,26),(6,5,28);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicicleteria_bicicleta`
--

DROP TABLE IF EXISTS `bicicleteria_bicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bicicleteria_bicicleta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `fecha` date NOT NULL,
  `precio` decimal(10,3) NOT NULL,
  `estado_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bicicleteria_bicicleta_estado_id_3d4a8047` (`estado_id`),
  CONSTRAINT `bicicleteria_bicicle_estado_id_3d4a8047_fk_biciclete` FOREIGN KEY (`estado_id`) REFERENCES `bicicleteria_estadobicicleta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleteria_bicicleta`
--

LOCK TABLES `bicicleteria_bicicleta` WRITE;
/*!40000 ALTER TABLE `bicicleteria_bicicleta` DISABLE KEYS */;
INSERT INTO `bicicleteria_bicicleta` VALUES (2,'BH','imagenes/BICICLETA2.jpg','Azul','2024-02-23',0.000,NULL),(4,'TREK','imagenes/BICICLETA3.png','Naranja','2024-02-23',0.000,NULL),(6,'TREK','imagenes/BICICLETA4.jpg','Negro','2024-02-23',10.000,2),(8,'GIANT','imagenes/BICICLETA5_BLNgT9S.jpg','Bicicleta de Ruta-Negra-Cambio de Cadena (TERMINADO)','2024-02-24',20.000,NULL),(10,'xd','imagenes/BICICLETA4_CSMy0qJ.jpg','xd','2024-02-28',0.010,3);
/*!40000 ALTER TABLE `bicicleteria_bicicleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER CrearGarantia
AFTER INSERT ON bicicleteria_bicicleta
FOR EACH ROW
BEGIN
    IF NEW.estado_id = 3 THEN
        INSERT INTO bicicleteria_garantia (fecha_inicio, bicicleta_id)
        VALUES (NEW.fecha, NEW.id);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bicicleteria_estadobicicleta`
--

DROP TABLE IF EXISTS `bicicleteria_estadobicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bicicleteria_estadobicicleta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleteria_estadobicicleta`
--

LOCK TABLES `bicicleteria_estadobicicleta` WRITE;
/*!40000 ALTER TABLE `bicicleteria_estadobicicleta` DISABLE KEYS */;
INSERT INTO `bicicleteria_estadobicicleta` VALUES (1,'Pendiente'),(2,'En proceso'),(3,'Terminado');
/*!40000 ALTER TABLE `bicicleteria_estadobicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicicleteria_garantia`
--

DROP TABLE IF EXISTS `bicicleteria_garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bicicleteria_garantia` (
  `idGarantia` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_terminacion` date NOT NULL,
  `bicicleta_id` int(11) NOT NULL,
  PRIMARY KEY (`idGarantia`),
  KEY `bicicleteria_garanti_bicicleta_id_bcf60bcc_fk_biciclete` (`bicicleta_id`),
  CONSTRAINT `bicicleteria_garanti_bicicleta_id_bcf60bcc_fk_biciclete` FOREIGN KEY (`bicicleta_id`) REFERENCES `bicicleteria_bicicleta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleteria_garantia`
--

LOCK TABLES `bicicleteria_garantia` WRITE;
/*!40000 ALTER TABLE `bicicleteria_garantia` DISABLE KEYS */;
/*!40000 ALTER TABLE `bicicleteria_garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-02-16 05:11:59.232485','1','Bicicleta object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-02-16 05:15:12.531577','2','Bicicleta object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-02-16 05:15:25.172228','3','Bicicleta object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-02-16 05:15:37.024564','3','Bicicleta object (3)',2,'[]',7,1),(6,'2024-02-16 05:43:07.451731','3','Marca: TREK - Descripcion: Naranja',3,'',7,1),(7,'2024-02-16 05:47:02.405087','4','Marca: TREK - Descripcion: Naranja',1,'[{\"added\": {}}]',7,1),(8,'2024-02-22 17:34:15.790259','2','admin',1,'[{\"added\": {}}]',4,1),(9,'2024-02-22 17:34:54.186311','2','admin',3,'',4,1),(10,'2024-02-23 07:09:31.039643','3','Tecnico',1,'[{\"added\": {}}]',4,1),(11,'2024-02-23 08:03:48.774854','3','Tecnico',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(13,'2024-02-28 19:35:15.923990','9','Marca: TREK - Descripcion: xd',1,'[{\"added\": {}}]',7,1),(14,'2024-02-28 19:35:30.320360','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(15,'2024-02-28 19:35:36.218021','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(16,'2024-02-28 19:36:23.455007','9','Marca: TREK - Descripcion: xd',2,'[]',7,1),(17,'2024-02-28 19:36:42.665733','9','Marca: TREK - Descripcion: xd',2,'[]',7,1),(18,'2024-02-28 19:45:35.169059','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(19,'2024-02-28 19:45:41.096901','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(20,'2024-02-28 19:49:56.600732','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(21,'2024-02-28 19:50:03.554088','9','Marca: TREK - Descripcion: xd',2,'[]',7,1),(22,'2024-02-28 19:50:07.475361','9','Marca: TREK - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(23,'2024-02-28 19:50:26.801948','10','Marca: xd - Descripcion: xd',1,'[{\"added\": {}}]',7,1),(24,'2024-02-28 20:17:31.233971','10','Marca: xd - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(25,'2024-03-01 01:14:51.908948','9','Marca: TREK - Descripcion: xd',3,'',7,1),(26,'2024-03-01 01:15:14.066701','10','Marca: xd - Descripcion: xd',2,'[]',7,1),(27,'2024-03-01 03:00:21.225501','10','Marca: xd - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(28,'2024-03-01 03:00:26.340180','10','Marca: xd - Descripcion: xd',2,'[{\"changed\": {\"fields\": [\"Estado\"]}}]',7,1),(29,'2024-03-05 04:01:21.585913','3','Tecnico',3,'',4,1),(30,'2024-03-05 04:04:16.385064','4','tecnico',1,'[{\"added\": {}}]',4,1),(31,'2024-03-05 04:05:02.707385','4','tecnico',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(32,'2024-03-05 04:07:16.695425','4','tecnico',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(33,'2024-03-05 04:07:21.655385','4','tecnico',2,'[]',4,1),(34,'2024-03-05 04:08:40.767998','4','tecnico',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(35,'2024-03-05 04:13:23.944158','4','tecnico',2,'[]',4,1),(36,'2024-03-05 04:19:43.568603','4','tecnico',3,'',4,1),(37,'2024-03-05 04:21:25.825566','5','tecnico',1,'[{\"added\": {}}]',4,1),(38,'2024-03-05 04:22:10.902377','5','tecnico',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(39,'2024-03-05 04:23:43.799600','6','Marca: TREK - Descripcion: Negro',2,'[{\"changed\": {\"fields\": [\"Precio\", \"Estado\"]}}]',7,5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'bicicleteria','bicicleta'),(8,'bicicleteria','estadobicicleta'),(9,'bicicleteria','garantia'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-16 04:59:51.401760'),(2,'auth','0001_initial','2024-02-16 04:59:52.109508'),(3,'admin','0001_initial','2024-02-16 04:59:52.376993'),(4,'admin','0002_logentry_remove_auto_add','2024-02-16 04:59:52.390985'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-16 04:59:52.427963'),(6,'contenttypes','0002_remove_content_type_name','2024-02-16 04:59:52.556882'),(7,'auth','0002_alter_permission_name_max_length','2024-02-16 04:59:52.630503'),(8,'auth','0003_alter_user_email_max_length','2024-02-16 04:59:52.670478'),(9,'auth','0004_alter_user_username_opts','2024-02-16 04:59:52.686469'),(10,'auth','0005_alter_user_last_login_null','2024-02-16 04:59:52.776413'),(11,'auth','0006_require_contenttypes_0002','2024-02-16 04:59:52.779412'),(12,'auth','0007_alter_validators_add_error_messages','2024-02-16 04:59:52.794402'),(13,'auth','0008_alter_user_username_max_length','2024-02-16 04:59:52.831379'),(14,'auth','0009_alter_user_last_name_max_length','2024-02-16 04:59:52.875353'),(15,'auth','0010_alter_group_name_max_length','2024-02-16 04:59:52.913327'),(16,'auth','0011_update_proxy_permissions','2024-02-16 04:59:52.939312'),(17,'auth','0012_alter_user_first_name_max_length','2024-02-16 04:59:52.976289'),(18,'bicicleteria','0001_initial','2024-02-16 04:59:53.030321'),(19,'sessions','0001_initial','2024-02-16 04:59:53.093966'),(20,'bicicleteria','0002_bicicleta_fecha_bicicleta_precio','2024-02-23 08:21:09.751105'),(21,'bicicleteria','0003_alter_bicicleta_fecha_alter_bicicleta_precio','2024-02-23 08:42:28.259366'),(22,'bicicleteria','0004_alter_bicicleta_precio','2024-02-23 08:43:55.685345'),(23,'bicicleteria','0005_alter_bicicleta_fecha','2024-02-23 09:00:54.220266'),(24,'bicicleteria','0006_bicicleta_estado','2024-02-28 19:21:55.370644'),(25,'bicicleteria','0007_estadobicicleta','2024-02-28 19:25:16.191853'),(26,'bicicleteria','0008_alter_bicicleta_estado','2024-02-28 19:28:34.290890'),(27,'bicicleteria','0009_garantia','2024-02-28 19:41:16.784327');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 23:49:23
