-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: learning_python
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `accounts_myuser`
--

DROP TABLE IF EXISTS `accounts_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser`
--

LOCK TABLES `accounts_myuser` WRITE;
/*!40000 ALTER TABLE `accounts_myuser` DISABLE KEYS */;
INSERT INTO `accounts_myuser` VALUES (1,'pbkdf2_sha256$36000$28u6NsA1NFB6$o2BGyJtd+PgNhjmEn1DuSXRwAcIZt7CCi67agaaliM0=','2017-10-09 03:11:20.578575',1,'minhpn.org.ec@gmail.com','','','','2017-09-03 16:05:30.483350',1,1,0),(2,'pbkdf2_sha256$36000$uvDQTxX2jwSc$T77RxWiwB+rOU7mOm4G76SGFk5qB98bK/TUmUFB7qnI=','2017-09-28 07:51:22.507243',0,'minh@gmail.com','','','','2017-09-18 04:56:00.801630',1,1,0);
/*!40000 ALTER TABLE `accounts_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_myuser_groups`
--

DROP TABLE IF EXISTS `accounts_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_myuser_groups_myuser_id_group_id_6e1e817b_uniq` (`myuser_id`,`group_id`),
  KEY `accounts_myuser_groups_group_id_25089153_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_myuser_groups_group_id_25089153_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_myuser_groups_myuser_id_8dba2d0e_fk_accounts_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser_groups`
--

LOCK TABLES `accounts_myuser_groups` WRITE;
/*!40000 ALTER TABLE `accounts_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_myuser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_myuser_user_per_myuser_id_permission_id_d0c28f68_uniq` (`myuser_id`,`permission_id`),
  KEY `accounts_myuser_user_permission_id_27a5b249_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_myuser_user_myuser_id_e664c60a_fk_accounts_` FOREIGN KEY (`myuser_id`) REFERENCES `accounts_myuser` (`id`),
  CONSTRAINT `accounts_myuser_user_permission_id_27a5b249_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser_user_permissions`
--

LOCK TABLES `accounts_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add my user',6,'add_myuser'),(17,'Can change my user',6,'change_myuser'),(18,'Can delete my user',6,'delete_myuser'),(19,'Can add comment',7,'add_comment'),(20,'Can change comment',7,'change_comment'),(21,'Can delete comment',7,'delete_comment'),(22,'Can add post',8,'add_post'),(23,'Can change post',8,'change_post'),(24,'Can delete post',8,'delete_post'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add association',10,'add_association'),(29,'Can change association',10,'change_association'),(30,'Can delete association',10,'delete_association'),(31,'Can add code',11,'add_code'),(32,'Can change code',11,'change_code'),(33,'Can delete code',11,'delete_code'),(34,'Can add nonce',12,'add_nonce'),(35,'Can change nonce',12,'change_nonce'),(36,'Can delete nonce',12,'delete_nonce'),(37,'Can add user social auth',13,'add_usersocialauth'),(38,'Can change user social auth',13,'change_usersocialauth'),(39,'Can delete user social auth',13,'delete_usersocialauth'),(40,'Can add partial',14,'add_partial'),(41,'Can change partial',14,'change_partial'),(42,'Can delete partial',14,'delete_partial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_content_type_id_72fd5dbe_fk_django_co` (`content_type_id`),
  KEY `comments_comment_parent_id_3e0802fb_fk_comments_comment_id` (`parent_id`),
  KEY `comments_comment_user_id_a1db4881_fk_accounts_myuser_id` (`user_id`),
  CONSTRAINT `comments_comment_content_type_id_72fd5dbe_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comments_comment_parent_id_3e0802fb_fk_comments_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comments_comment` (`id`),
  CONSTRAINT `comments_comment_user_id_a1db4881_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-09-18 09:54:07.236478','7','machine learning',3,'',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'accounts','myuser'),(1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(7,'comments','comment'),(4,'contenttypes','contenttype'),(8,'posts','post'),(5,'sessions','session'),(10,'social_django','association'),(11,'social_django','code'),(12,'social_django','nonce'),(14,'social_django','partial'),(13,'social_django','usersocialauth'),(9,'tags','tag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-03 16:04:28.133446'),(2,'contenttypes','0002_remove_content_type_name','2017-09-03 16:04:28.192456'),(3,'auth','0001_initial','2017-09-03 16:04:28.403102'),(4,'auth','0002_alter_permission_name_max_length','2017-09-03 16:04:28.415423'),(5,'auth','0003_alter_user_email_max_length','2017-09-03 16:04:28.425024'),(6,'auth','0004_alter_user_username_opts','2017-09-03 16:04:28.446378'),(7,'auth','0005_alter_user_last_login_null','2017-09-03 16:04:28.457329'),(8,'auth','0006_require_contenttypes_0002','2017-09-03 16:04:28.460324'),(9,'auth','0007_alter_validators_add_error_messages','2017-09-03 16:04:28.469589'),(10,'auth','0008_alter_user_username_max_length','2017-09-03 16:04:28.478610'),(11,'accounts','0001_initial','2017-09-03 16:04:28.715472'),(12,'admin','0001_initial','2017-09-03 16:04:28.842750'),(13,'admin','0002_logentry_remove_auto_add','2017-09-03 16:04:28.860706'),(14,'comments','0001_initial','2017-09-03 16:04:29.035080'),(15,'posts','0001_initial','2017-09-03 16:04:29.129041'),(16,'posts','0002_auto_20170903_0940','2017-09-03 16:04:29.188116'),(17,'sessions','0001_initial','2017-09-03 16:04:29.242569'),(18,'tags','0001_initial','2017-09-07 06:13:53.499143'),(19,'tags','0002_auto_20170905_1357','2017-09-07 06:13:53.751101'),(20,'tags','0003_remove_tag_post','2017-09-07 06:13:53.780816'),(21,'posts','0003_auto_20170906_1606','2017-09-07 06:13:53.921159'),(22,'posts','0004_auto_20170907_1447','2017-09-07 17:23:51.543373'),(23,'posts','0005_auto_20170907_1723','2017-09-07 17:23:51.662985'),(24,'posts','0005_auto_20170907_1750','2017-09-07 17:52:56.588185'),(25,'posts','0006_merge_20170907_1752','2017-09-07 17:52:56.591468'),(26,'posts','0006_auto_20170917_0256','2017-09-17 15:21:50.011768'),(27,'default','0001_initial','2017-10-09 07:07:41.203658'),(28,'social_auth','0001_initial','2017-10-09 07:07:41.215818'),(29,'default','0002_add_related_name','2017-10-09 07:07:41.287942'),(30,'social_auth','0002_add_related_name','2017-10-09 07:07:41.291818'),(31,'default','0003_alter_email_max_length','2017-10-09 07:07:41.309476'),(32,'social_auth','0003_alter_email_max_length','2017-10-09 07:07:41.312936'),(33,'default','0004_auto_20160423_0400','2017-10-09 07:07:41.328331'),(34,'social_auth','0004_auto_20160423_0400','2017-10-09 07:07:41.331427'),(35,'social_auth','0005_auto_20160727_2333','2017-10-09 07:07:41.347303'),(36,'social_django','0006_partial','2017-10-09 07:07:41.391476'),(37,'social_django','0004_auto_20160423_0400','2017-10-09 07:07:41.397185'),(38,'social_django','0002_add_related_name','2017-10-09 07:07:41.401968'),(39,'social_django','0005_auto_20160727_2333','2017-10-09 07:07:41.405004'),(40,'social_django','0003_alter_email_max_length','2017-10-09 07:07:41.407942'),(41,'social_django','0001_initial','2017-10-09 07:07:41.411010');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3wtua2e3i53k9oo8nj4226qkvvhshaz7','ZjEzNjUxMDE5MjhiNjM0MDkwMGU2Y2I1Yzg4ODQwYzE0YTRkMjExODp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQwMWUyODY3YjVmNjViYmUxZTdmZDZjMmY3NGM3M2EwMDg0ZjY2NTQifQ==','2017-10-12 07:51:22.510348'),('7w1gbr6zbeybh4xyox0qog6klrncdxm2','MGU1MzEzOGI3ZjVmNzRiYTM5ZDUzOTJiNDMxN2VlYjBkOTk1ZWIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODFkMTIzZDk2ZjdlNzQzNmIwZWNiNjEyN2EwOTk5ODgwNWZiYzQ0In0=','2017-10-03 16:30:46.900175'),('bj8ndiqujgbm66lt9qbhy1ymbmhcpz44','ZjYzNWJhODg5OGMzMjBiODUzMzhlYTAwMzI2MjQxMDA2M2ExNDE5NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MWQxMjNkOTZmN2U3NDM2YjBlY2I2MTI3YTA5OTk4ODA1ZmJjNDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-09-20 18:04:57.087252'),('blmofe4aqs0s2coyxfwdom2kzvbsnoxu','ZjYzNWJhODg5OGMzMjBiODUzMzhlYTAwMzI2MjQxMDA2M2ExNDE5NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4MWQxMjNkOTZmN2U3NDM2YjBlY2I2MTI3YTA5OTk4ODA1ZmJjNDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-09-28 16:09:21.291709'),('bpry2e2qwffg47lfofuydf8d83bwyk75','MzQwODE5Njk2MGJiMDViMzlmY2NiNmQ3MWQxMzdlNmY2MWIxZTkyNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDFlMjg2N2I1ZjY1YmJlMWU3ZmQ2YzJmNzRjNzNhMDA4NGY2NjU0In0=','2017-10-03 01:56:09.355459'),('gdo08bsn39dbd555rv757qwruelwo5an','MGU1MzEzOGI3ZjVmNzRiYTM5ZDUzOTJiNDMxN2VlYjBkOTk1ZWIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODFkMTIzZDk2ZjdlNzQzNmIwZWNiNjEyN2EwOTk5ODgwNWZiYzQ0In0=','2017-10-23 03:11:20.580840'),('he9vz7mjt9c8u70rrk5ehqjsgopmv7ab','MzQwODE5Njk2MGJiMDViMzlmY2NiNmQ3MWQxMzdlNmY2MWIxZTkyNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDFlMjg2N2I1ZjY1YmJlMWU3ZmQ2YzJmNzRjNzNhMDA4NGY2NjU0In0=','2017-10-02 04:56:02.171760'),('j9uuuyel68r0xyu1k33ct33zmm5ffkjc','MGU1MzEzOGI3ZjVmNzRiYTM5ZDUzOTJiNDMxN2VlYjBkOTk1ZWIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODFkMTIzZDk2ZjdlNzQzNmIwZWNiNjEyN2EwOTk5ODgwNWZiYzQ0In0=','2017-10-17 03:02:51.446068'),('kj9ixt4y26utynmqz5pw9klnknk4wpj0','NjMwZjIyMTRmOTIxZGQxYzNhYWU5ZDQ5OGEyNmQyYzBiY2E2Y2RkNTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjgxZDEyM2Q5NmY3ZTc0MzZiMGVjYjYxMjdhMDk5OTg4MDVmYmM0NCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2017-09-21 06:15:06.266411'),('pqvnamhxh8le836p6xh35szo30ciuk8o','MGU1MzEzOGI3ZjVmNzRiYTM5ZDUzOTJiNDMxN2VlYjBkOTk1ZWIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODFkMTIzZDk2ZjdlNzQzNmIwZWNiNjEyN2EwOTk5ODgwNWZiYzQ0In0=','2017-10-09 16:02:52.481294'),('q52g906anmjpzz6x9pkdhmdjxpp4r6gh','MGU1MzEzOGI3ZjVmNzRiYTM5ZDUzOTJiNDMxN2VlYjBkOTk1ZWIwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODFkMTIzZDk2ZjdlNzQzNmIwZWNiNjEyN2EwOTk5ODgwNWZiYzQ0In0=','2017-10-14 14:07:49.098234');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_post`
--

DROP TABLE IF EXISTS `posts_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `publish` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `width_field` int(11) DEFAULT NULL,
  `height_field` int(11) DEFAULT NULL,
  `read_time` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `posts_post_user_id_a4f40dc7_fk_accounts_myuser_id` (`user_id`),
  CONSTRAINT `posts_post_user_id_a4f40dc7_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_post`
--

LOCK TABLES `posts_post` WRITE;
/*!40000 ALTER TABLE `posts_post` DISABLE KEYS */;
INSERT INTO `posts_post` VALUES (2,'Git Command','git-command','git push --force\r\n\r\n[https://www.atlassian.com/git/tutorials/comparing-workflows](https://www.atlassian.com/git/tutorials/comparing-workflows)',0,'2017-01-01','14/download.jpeg',274,184,0,'2017-09-21 06:29:47.440098','2017-09-03 16:06:24.563495',1),(3,'Lost','lost','Being uncontrolled since 2pm until now 11pm. Why? Just because she does not reply my sms. We have no such kind of relationship but still feel useless. Drive in front of her house, wait until 10pm, but no result. Foolish action without any logic. Too childish but still do. If you want to know something just do it. Hope that she is doing well.',1,'2017-01-01','14/download_dQ06NAB.jpeg',274,184,0,'2017-09-16 18:29:00.470401','2017-09-04 16:10:10.903622',1),(4,'Simple Markdown Editor','simple-markdown-editor','Markdown and showdown\r\n\r\nhttps://github.com/showdownjs/showdown\r\nhttps://github.com/sparksuite/simplemde-markdown-editor',0,'2017-01-01','',0,0,0,'2017-09-06 16:31:59.350515','2017-09-06 16:31:59.350541',1),(5,'Ha ngo','ha-ngo','K ngu duoc. Nhan tin k tra loi. Goi ft i nghe. A mo dien thoai check status cua e lien tuc. Nho. Con tim anh duong nhu co chut suc song vi dau. That su chi muon noi yeu em ma k du suc.',0,'2017-01-01','',0,0,0,'2017-09-18 09:37:51.076528','2017-09-06 18:07:04.582971',1),(6,'Django Rest Framework','django-rest-framework','<h1>DRF</h1>\r\n\r\n# hello',0,'2017-01-01','',0,0,0,'2017-09-07 06:14:29.328556','2017-09-07 05:55:42.840376',1),(7,'Cheat Sheet','cheat-sheet','1. Ubuntu: sudo netstat -ntlp | grep LISTEN\r\n\r\n   Mac:       sudo lsof -PiTCP -sTCP:LISTEN\r\n\r\n2. docker rm -f $(docker ps -a -q)\r\n\r\n3. docker rmi $(docker images -q)\r\n\r\n4. cat /etc/lsb-release',0,'2017-01-01','',0,0,0,'2017-10-04 07:10:15.839978','2017-09-07 06:20:41.544215',1),(8,'Note','note','showdown vs pagedown',0,'2017-01-01','',0,0,0,'2017-09-07 06:31:56.052128','2017-09-07 06:31:56.052154',1),(9,'Ha Ngo','ha-ngo-wn5y3','Messaged you but no reply. Do our relationship end or some thing happened? Miss you as always. Just keep my feelings inside my heart as deep as the ocean. Love is the feeling that only you are happy I am happy.',0,'2017-01-01','',0,0,0,'2017-09-16 18:24:50.283527','2017-09-07 17:12:39.420268',1),(10,'Django Deployment','errors','1. library simply markdown editor load on local version but not load when deployed\r\n2. 413 Request Entity Too Large\r\n3. Make sure to have .sock file (of gunicorn)\r\n**To be sure that gunicorn is refreshed, run these commands:**\r\npkill gunicorn\r\nsudo systemctl daemon-reload\r\nsudo systemctl start gunicorn',0,'2017-01-01','',0,0,0,'2017-09-24 14:56:10.500851','2017-09-08 01:26:27.697940',1),(12,'Good try','good-try','Really good experience when I challenge my e-bike with 2/10 power to go for 13km. Damn good. Run out of electricity till the last miles. Also buy a Ding Tea for her so my money run out as well (8k left). Mobile phone has no money with no Internet access. This childish action seems not suitable with my age now, but for the right reason I feel it deservedly. \r\n\r\nGood lesson: do not judge thing too quickly. For her blocked Insta, don\'t evolve anything personally. Think for her. She is tired after work and need  her space to relax and recover. Choose the right time is good for both.',0,'2017-01-01','14/Screen_Shot_2017-06-20_at_7.42.46_AM.png',2560,1600,0,'2017-09-16 18:26:37.268999','2017-09-12 16:18:25.893640',1),(13,'Ha ngo','ha-ngo-jh4xa','Dobi miss u? Yes i do. Eevery second',0,'2017-01-01','IMG_0512.JPG',4032,3024,0,'2017-09-18 09:37:32.627971','2017-09-13 13:24:46.609951',1),(14,'Gunicorn','gunicorn','**Find out about gunicorn**\r\n\r\n```\r\npkill gunicorn\r\n```\r\n[http://bookofstranger.com/asynchronous-tasks-using-django-celery-and-rabbitmq/](http://bookofstranger.com/asynchronous-tasks-using-django-celery-and-rabbitmq/)',0,'2017-01-01','',0,0,0,'2017-09-18 09:40:29.977521','2017-09-17 15:34:17.036195',1),(15,'Django Ajax','django-ajax','[https://impythonist.wordpress.com/2015/06/16/django-with-ajax-a-modern-client-server-communication-practise/](https://impythonist.wordpress.com/2015/06/16/django-with-ajax-a-modern-client-server-communication-practise/)',0,'2017-01-01','',0,0,0,'2017-09-18 09:41:21.096069','2017-09-18 09:41:21.096097',1),(17,'Machine learning','machine-learning-qszqho79pi','[kaggle](https://www.kaggle.com/)',0,'2017-01-01','',0,0,0,'2017-09-18 09:52:59.047800','2017-09-18 09:52:59.047830',1),(19,'Ha ngo','ha-ngo-vcs1qn1536','em tuong toi khong muon nhan tin roi noi yeu em a. lo nghi cho em nhieu lam biet k. h chi no mes ma nhin thoi',0,'2017-01-01','18/IMG_0534.PNG',1242,2208,0,'2017-09-18 15:16:34.287098','2017-09-18 15:16:34.287131',1),(20,'Rabbitmq - Celery - Python','rabbitmq-celery-python','[Link tutorial](https://tests4geeks.com/python-celery-rabbitmq-tutorial/)\r\n**Basic Concept**\r\n\r\n![](https://tests4geeks.com/tutorials/wp-content/uploads/2016/04/celery_architecture_final-740x472.png)\r\n```\r\n$ pip install celery\r\n```\r\n\r\n```\r\n$ brew install rabbitmq\r\n# if you are using Ubuntu or Debian, try:\r\n# sudo apt-get install rabbitmq-server\r\n```\r\n\r\n```\r\nPATH=$PATH:/usr/local/sbin\r\n```\r\n\r\n```\r\n# add user \'jimmy\' with password \'jimmy123\'\r\n$ rabbitmqctl add_user jimmy jimmy123\r\n# add virtual host \'jimmy_vhost\'\r\n$ rabbitmqctl add_vhost jimmy_vhost\r\n# add user tag \'jimmy_tag\' for user \'jimmy\'\r\n$ rabbitmqctl set_user_tags jimmy jimmy_tag\r\n# set permission for user \'jimmy\' on virtual host \'jimmy_vhost\'\r\n$ rabbitmqctl set_permissions -p jimmy_vhost jimmy \".*\" \".*\" \".*\"\r\n\r\n```',0,'2017-01-01','',0,0,0,'2017-09-19 03:26:25.125074','2017-09-19 03:26:25.125106',1),(21,'package with sublime 3','package-with-sublime-3','Python Flake8 Lint\r\nEmmet\r\nHTML/CSS/JS Prettify',0,'2017-01-01','',0,0,0,'2017-09-19 07:09:38.393023','2017-09-19 07:09:04.012811',1),(22,'ngrok','ngrok','** Expose local host to the internet **\r\nIntegrate with code in django',0,'2017-01-01','',0,0,0,'2017-09-19 10:14:13.523737','2017-09-19 10:14:13.523767',1),(23,'Tai sao quay nguoi Thi Chong mat','tai-sao-quay-nguoi-thi-chong-mat','',0,'2017-01-01','',0,0,0,'2017-09-19 13:36:03.636743','2017-09-19 10:41:28.336021',1),(24,'Try Django 1.11','try-django-111','The reason that we code is to solve the problem. Right? That\'s what I believe that we code. So when we find the problem that we want to solve we use the technology and software to solve these problems.\r\n\r\n One of the problems happens to be building web application. How do we build web application in fast and effective way? Now I believe django is the best way to do that. \r\n Django is written in python that\'s mean it is approachable just because it is written in python for beginner it is also powerful enough for experts. I mean site like instagram still use django as backend. That is all of the things instagram has in backend has django into it. It is amazing. It definitely has that scale. In the same since it is written in python it is also approachable than a lot other framework because python is a lot approachable than a lot of other programming languages. May be it is my opinion but if you are watching this you probably have a sense of that. So the reason we learn django is it really solve these software problems that exist in the Internet right. So if we need internet presents we can use django as that backend technology to solve a lot of these problems. So I might be a small one such as Hey I am really picky I want to share certain food items with my friends so that know what I am picky about so my friend can share with me. So when I have pickup food for them I know exactly what food they like in different locations. I actually what we are building. But then other bigger problems? How do I do ecommerce, how do I actually build business online? How do we do matchmaking, do algorithm? All of these things start to come up as possibility what you absolutely can do with django. Of course you might be build them with other framework as well. But like I already said, django is the most fundamental framework, fundamentally easy to approach. That what I believe so I create so much content around. Now this series is called Try django 1.11. This is really meant for you who do not really work with django before. Even you work with older version of django but not that comfortable this series are really good for you. It brings you back to the basics back to the core of what django is. Teach you some of the things that new in django 1.11. But for those of you follow us for the long time. Most changes are not huge especially for the beginner. A lot of them are big. if you are advanced user you know what the changes are and you probably do not agree with me they are not that big. The core is not that much different. So get ready and get started with try djnago 1.11. My name is MInh and I will take you step by step through this series. And yes we have all the reference all the thigns that we do all online for your use as well. Everything above that will be mentioned in future section. This is high level section high engergy, we want to get after we want to build something real and then get it out live and get our project and our solution out there faster and better using code. Thanks so much for watching.',0,'2017-01-01','',0,0,0,'2017-09-20 15:42:26.147093','2017-09-20 15:42:26.147123',1),(25,'Form Validation Error','form-validation-error','```\r\ndef clean_description_image_file(self):\r\n        data = self.cleaned_data.get(\'description_image_file\')\r\n        if data is not None:\r\n            if not valid_url_extension(data):\r\n                raise forms.ValidationError(\'The image fields is not valid. Only \".jpeg\" or \".png\"\')\r\n\r\n            if not valid_size(data):\r\n                raise forms.ValidationError(\'The image file is over 1MB. Please upload smaller file\')\r\n        return data\r\n```\r\n\r\nNot\r\n\r\n```\r\n  if \'service\' in cleaned_data:\r\n                if scenario.service_id != cleaned_data[\'service\'].id:\r\n                    raise ValidationError(\r\n                        message=(\'fasdfasd \'),\r\n                    )\r\n            else:\r\n                #if scenario.service_id != self.instance.service.id:\r\n                raise ValidationError(\r\n                    message=(\'asdfs \'),\r\n```',0,'2017-01-01','',0,0,0,'2017-09-25 04:42:59.831092','2017-09-22 02:30:49.179819',1),(26,'Errors','errors-x4yccnpwwl','Normal user vs Superuser - Blank Error \r\n\r\nInstantiate the value of instance when desiging with Normal User\r\n\r\n```\r\n      if user.is_superuser:\r\n            queryset = Service.objects.all()\r\n            self.fields[\'service_id\'] = forms.ChoiceField(\r\n                choices=[(s.id, s.name) for s in queryset],       \r\n            )\r\n        else:\r\n            self.fields[\'service_id\'] = forms.CharField(\r\n                widget=forms.HiddenInput()\r\n            )\r\n            group = user.groups.all()\r\n            service = Service.objects.get(auth_group_id=group[0].id)\r\n            self.fields[\'service_id\'].initial = service.id\r\n			\r\n```\r\nCheck in instance\r\n```\r\n	if self.instance.id is None:\r\n                self.fields.get(\'service\').required = False\r\n                self.fields.get(\'service\').initial = service\r\n```\r\nor\r\n```\r\n        if kwargs.get(\'instance\'):\r\n\r\n```',0,'2017-01-01','',0,0,0,'2017-09-25 04:46:53.077926','2017-09-22 10:10:17.829857',1),(27,'Django Search with Solr and Haystack','django-search-with-solr-haystack','Why?\r\n- Benefit\r\n- Compare Solr, Elasticsearch, Whoosh, Xapian\r\n\r\n\r\nBuilt-in search using django-haystack\r\n\r\n1. Clone django blog project\r\n2. Setup solr\r\n3. Integrate haystack with solr and project\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nReference:\r\n[https://django-haystack.readthedocs.io/en/master/tutorial.html](https://django-haystack.readthedocs.io/en/master/tutorial.html)\r\n[http://www.alexanderinteractive.com/blog/2012/08/getting-started-with-solr-and-django/](http://www.alexanderinteractive.com/blog/2012/08/getting-started-with-solr-and-django/)',0,'2017-01-01','',0,0,0,'2017-09-25 09:09:43.643368','2017-09-25 09:08:46.684069',1),(28,'Ha ngo','ha-ngo-5g7qsbbhzu','i\'m sick I suffer every day i need you meo.  I really do',0,'2017-01-01','',0,0,0,'2017-09-25 16:04:47.810426','2017-09-25 16:04:47.810458',1),(29,'Project Review','project-review','KPT: method to review after project (Japan)\r\nK: Keep good things\r\nP: Problems we faced\r\nT: Try to implement improvement for future project',0,'2017-01-01','',0,0,0,'2017-09-27 06:49:45.063959','2017-09-27 06:49:26.329774',1),(30,'Separate configuration file django','separate-configuration-file-django','https://simpleisbetterthancomplex.com/2015/11/26/package-of-the-week-python-decouple.html',0,'2017-01-01','',0,0,0,'2017-09-28 08:31:44.831945','2017-09-28 08:31:44.831976',1),(31,'Orbiting the Giant Hairball','orbiting-the-giant-hairball','**What\'s in it for me? Rediscover your creative genius.**\r\n\r\nDo you sometime wonder where your creativity has gone? Maybe you were once a hugely imaginative child, always busy drawing, playing, inventing stories or crafting crazy objects, but now you finally earn yourself a \"creative\" job, the artistic ideas just aren\'t flowing. \r\n\r\nThe good news is your creativity isn\'t death, you just need to free it.\r\n\r\nUnfortunately, however, it\'s being held hostage by a giant hairball of corporate regulations, guidelines and practices trying to make you normal - too normal to be creative. These blinks tell you all you need to know about that hairball, including how to escape it without leaving your company altogether. \r\n\r\nYou also find out \r\n* about a bunch of hypnotized chickens;\r\n* what\'s so great about being foolish and\r\n* how a creative company is a bit like dancefloor.\r\n\r\n**Everyone is creative genius, but society suppresses this talent.**\r\n\r\nAre you an artist? Well, if you don\'t make a painting or write a poetry, you might be inclined to say no. But don\'t be so quick to dismiss this possibility. In truth, every of us is born a creative genius. \r\n\r\nUndisciplined children make rash decisions, diving spontaneously into risky situations and saying and doing whatever they like. They are driven purely by curiosity and innocent desire. These childhood tendencies are an expression of creative genius at the core being of every person. Everyone is born with this blissful \"foolishness\" that lead us to discover and evolve. \r\n\r\nHowever, lots of people fear that as society of \"fools\", that is, one made up of people who follow their creative genius, can never function. So, they stifle their creativity in attempt to be normal. This makes perfect sense for social perspective. After all, \"fools\" are seen as impulsive unpredictable rule-breakers, and the enforcement of strict social norms is about protecting society from this unpredictability. \r\n\r\nUnfortunately, such protection also suppress the creative genius. \r\n\r\nFor example, on many occasions, the author asks children from different grades if they consider themselves to be artists. When he asked first graders, they would all enthusiastically raise their hands. But when he got to the second graders, about half would identify themselves as artists. By the time he reached the sixth graders, only one or two kids would raise their hands. \r\n\r\nSo we can see that the society suppress the creativity. But we can do something about it. \r\n\r\nTo break open the full potential of our creative genius, or if you prefer, our foolishness, you have to stop aiming for normalcy and stand up for the rules that enforce it.\r\n\r\n**Corporations are giant hairballs that pulls us into their web of standards and procedures**\r\n\r\nCan you remember the last time you brought the greeting card? Well, chances are it was made by Hallmark. After all, the company is household name around the world. And like the majority of corporations, Hallmark is huge hairball of corporate normalcy. \r\n\r\nIn 1910,  when Joyce Clyde Hall set out to start his \"social expression company\", there wasn\'t single comparable around. Hall had to write his own rules. \r\n\r\nHe developed the first policy and procedures doing business. These become the first two hairs of the corporate hairballs. Then, in the following years, thousands of other policies and procedures were produced, all of them tangling together and forming a massive knot. \r\n\r\nThis knotted hairball is the symbol of corporate normalcy - all the procedures, policies and guidelines that define what will conventionally make a company work more effectively, quickly, and cheaply. \r\n\r\nNaturally, people are pulled into the hairballs of corporate normalcy as well. After all, we know from physics gravity exerts a tremendous pull toward their earth that prevents us from careening out into the space. We also know that the force of gravity become greater as the mass in question grows larger and larger. \r\n\r\nIn the similar way, as the hairball become larger, and as more layers of guidelines, standards and procedures are added, so too does the pull toward it become increasingly powerful. \r\n\r\nSay you work for an advertising company. The firm starts off by introducing standard corporate design, which means every ad you make should have the same basic layout and color palette. Then they add the creativity guideline requiring you to attend brainstorming meeting and, finally, a new accountability guideline instructs you to write a daily progress report. With each additional rule, you\'re pulled deeper and deeper into corporate normalcy.\r\n\r\nBut is that all necessarily bad? Isn\'t there some comfort in being part of giant corporate hairball? \r\n\r\nMaybe, but it is also the problematic, which is what we\'ll explore next.\r\n\r\n**Avoiding the giant hairball means orbiting around it.**\r\n\r\nHave you ever been given a so-called creative assignment that required you to use particular materials, format, and color scheme?\r\n\r\nIf so, you know this is exactly what \"creating\" is not. Rather, creating is the act of producing something truly original, total unobstructed by procedures and guidelines. And to engage in such creative work, it is essential to avoid being snagged by the hairball which is solely made up by how things used to be. \r\n\r\nFor instance, early on in this time at Hallmark, the author was a sketch artist tasked with \"creating\". But he found himself abiding too quickly to the company\'s style. How did this happen? \r\n\r\nWell, the hairball is made up by old rules and practices; in other words, things that once worked. And since the hairball is so full of these old ways, there\'s no space for novelty or originality. \r\n\r\nIf you truly want to create, you have to avoid to be pulled too deep into that tangle of procedures. You need to orbit around the hairball, engaging with responsible creativity, which is the handy way to go beyond the corporate normalcy. Responsible creativity entails straying from standard corporate path, but not by too much. After all, if you disregard company\'s mission and aimlessly drift off into space, you won\'t be part of the company at all. \r\n\r\nSo, it\'s crucial to remain within the orbit of the hairball by treating your company with loyalty and respect. But it is also important to keep critical distance and avoid to being sucked in by its uncreative procedures and bureaucracy. \r\n\r\nFor example, the author was initially hired by Hallmark\'s editorial department. But people in his department lack any eccentricity, and just plodded along with usual corporate decorum. So the author transferred to the Contemporary Design Department, Hallmark crazy stepchild. \r\n\r\nThis department was doing tremendously successful and original work, and it was all thanks to the team\'s freedom, chaos, and playfulness. The author knew that the best way he could be for the company was to work in a department that granted him a bit more freedom. \r\n\r\nIn other works, finding your personal sweet spot is the key. In the next blink, we\'ll explore more in-depth way to find your orbits and stay with it.\r\n\r\n**Corporate culture can be hypnotic, but by holding on to what makes you unique, you can stay creative**\r\n\r\nUnless you\'re starting to lose your marbles, you are probably know that you\'re not a chicken. Even so, you might be just as mesmerized as a chicken and in line for a similar fate. \r\n\r\nHow so? \r\n\r\nWell, in 1904, the author\'s father spent the summer in Ontario, Canada with his aunt and uncle on their farm. One playful Sunday morning, he and his cousin drew lines on the porch, the piece of chalk and then headed for the chicken coop. There, they pulled down dozens of chicken, one by one, put them into the chalk line and held them in place for a moment. As a result, the chicken stood perfectly still, hypnotized in place. \r\n\r\nAnd, whether you believe it or not, you\'re prone to such hypnotized as well.\r\n\r\nWhen you\'re brought on board by new company, they tell you all about their history, philosophy, procedures and politics. They then explain adherence principles forms the essence of the company, and it\'s the ticket to their, and your, success.\r\n\r\nHere\'s what you need to look out because, in essence, the company is drawing the chalk line for you to stand on. They\'ll hold you to it, and, if you\'re not careful, you\'ll be hypnotized and immobilized before you know it. \r\n\r\nBut there\'s the way to avoid this hypnosis: hold on to your creativity and move away from the corporate line by following your own unique mind. After all, regardless of the opinions you hold, you are unique insofar as you are only you. \r\n\r\nThere\'s nobody else has exactly your experiences, skills ,and passions. And to stay creative when working within a corporate culture, it\'s essential to hold on to what makes you unique . Find the company goals that resonate with you and contribute to them in your own distinctive way.',0,'2017-01-01','',0,0,0,'2017-09-30 17:09:39.703923','2017-09-30 14:07:10.432102',1),(32,'The Grand Design','the-grand-design','**The quest to explain our world took us from the mythological to the scientific**\r\n\r\nOne of the defining characteristic of human beings is our curiosity. As long as we have been around, we are pondering the big question: why are we here? Are we alone in the universe? Is there a creator? \r\n\r\nWhile these questions are thousands of years old. The method of using scientific inquiry to get answers is relatively new. \r\n\r\nBack in ancient time, we used gods to explain the world\'s phenomena. We have sun gods, gods of rain and thunder, even earthquake and volcano gods. \r\n\r\nSo, when we were desperate for the good weather, we went out of our way to please the appropriate gods. And when drought and natural disasters befell us, we believed it was due to a failure on our parts to adequately please the gods. \r\n\r\nIt would take the ancient Greek philosophers like Aristotle, Archimedes, and Thales to move us past this mythological thinking. These Greek thinkers were devoted to pondering the life\'s big questions and contemplating the universe, and they began to find the way of understanding the world apart from Godly interventions.\r\n\r\nWhile someone like Archimedes wouldn\'t be considered a proper scientist today, he was one of the first to conduct experiences and carefully observe and measure the results. This is how he came up with revolutionary like the law of the lever, which explained how small forces can be used to life heavy objects. \r\n\r\nThis line of thinking would continue to be refined, and in early modern times, it became known as scientific methods - a strict system to formulating a hypothesis, and rigorously testing it through experiments, measurements, and observation. \r\n\r\nIn 1600 and 1700, scholars like Galileo, Johannes Kepler or Rene Descartes were early proponents of scientific method. Issac Newton used this system to formulate the laws of gravity and motion, which finally allowed us to understand the movements of the planets and stars.\r\n\r\nEventually, scientists would use scientific methods to explain how all of the physical world functions. \r\n\r\nThis led us to scientific *determinism*, the belief that every occurrence in nature can be scientifically explained - even human decisions.\r\n\r\n**Scientists have long argued whether humans have free will, or whether we are subject to scientific determinism.**\r\n\r\nYou might be thinking \"Wait a minute, if my decision can be explained scientifically does not that go against the idea free will?\" Indeed, well, many people can accept the rule of scientific determinism as it applied to the nature. It is tricky propersition respect to human nature. As the result, scholars have long debated the concept of free will. And whether such a thing exists. In defense the free will, we have philosopher Descartes who refuse to believe the human being simple adhere to the law of nature as we are all robot following predetermining programs. Descartes saw the clear distinction between human body which could be explained through scientific law and the human soul to which such reasoning did not apply. He saw the soul as a source of human free will, and even when so far to suggest a location for our souls, the benioal glance desire which resign in the center of our brain. Descartes make a compelling case yet it also raises',0,'2017-01-01','',0,0,0,'2017-10-01 04:43:06.313828','2017-10-01 04:16:08.165815',1),(33,'Epic Measures','epic-measures','Imagine that you are out searching for the bookshelf that will fit perfectly into the specific nook in your home. But there\'s a problem, you don\'t have nook\'s measurements. Or, even worse, you have five different sets of measurements but are unsure which. How, with such pure data, could you possibly select the right shelf?\r\n\r\nNow imagine the similar issue - slapdash data - but on a major, and majorly complex, level. Well, that\'s essentially what\'s plaguing global health. \r\n\r\nIt might seem unbelievable that something as important as global health was marred with bad and inefficient data, yet that\'s exactly what Rhodes Scholar and PhD Christopher Murray found. This is story of how Murray discovered  the lack of reliable data regarding public health and what he did to combat it - all to get epic measure of and clear perspective on the best ways to allocate money for improving the health of the world. \r\n\r\nIn these blinks, you\'ll learn:\r\n\r\n* why reports on longevity could differ by 10-15 years in UN data;\r\n* how having UN departments focus on specific diseases left data gaps;\r\n* why both quality and quantity need to be measured to get a correct view of world health.\r\n\r\n**Christopher Murray\'s remarkable childhood taught him important lessons about how to analyze and treat disease.**\r\n\r\nIf you were lucky enough to go on family vacation when you were ten years old, you may have engaged in pleasant leisure activities, like hiking, or enjoying the sights and food of another country. Christopher Murray\'s family did trip somewhat differently. \r\n\r\nWhen Christopher Murray was ten years old, his parents took him and his three older siblings on a year long sabbatical in Niger. This was no random trip: his father is cardiologist; his mother, a microbiologist. The family planed to work at hospital in the Sahara desert.\r\n\r\nThe hospital needed all the help it could get. When Christopher\'s family arrived, the facility was lacking running water and electricity, not to mention staff. \r\n\r\nLuckily, the family had brought some portable equipments with them, and Chris served as an errand boy and organized supplies. Meanwhile, his older brothers worked as nurses an aides, stitching and dressing wounds. \r\n\r\nThe family worked together to fight malaria. After noticing that more people catching the diseases in the hospital than in the villages around it, they started taking blood samples of everyone in the area and  studying the health statistics of their patients and visitors to figure out what was going on. \r\n\r\nThe research showed that the malaria outbreak had began when the hospital had started distributing vitamin supplements; tests showed that these supplement increased the iron count in patients\' blood. This led the family to the conclusion that the elevated iron level were probably attracting parasite that thrive on mineral, which in turn promoted infection and increase the risk of malaria. \r\n\r\nThe result was published in the prestigious medical journal Lancet. This kind of tenacious research is perfect example for the kind of work that would stay with Christopher as he grew up, pushing him to work hard to help people. \r\n\r\nThen Murrays continued to run various mobile clinics throughout the Africa and fight disease. These experiences, and the teaching of his father, showed Christopher that one of the most important skills in medicine is careful analysis.\r\n\r\n**In the 1980s, health organizations used poor and unreliable methods to measure world health.**\r\n\r\nIf you had to travel around the world and measure the health of each country, what factors would you look at? \r\n\r\nWhen Christopher Murray was in medicine school in the 1980s, the single biggest indicator of a country\'s health was infant-mortality rate. But it is the misleading index. Though getting a child through its first year of life is important, it\'s small factor in overall health. \r\n\r\nIn fact, focusing in general on how long people live is not an accurate way to gauge health at all. \r\n\r\nA health and active person can live to be 80 years old, but so can someone who spends most of his life bedridden and plagued by disease. If you\'re just looking at life expectancy, these two diametrically opposed life would provide same result.\r\n\r\nSimply counting the number of death in an area is inefficient as well, since crucial differences are left out of the equation - those between, say, an infant who dies of malnutrition and a 90-year-old who die of  natural causes. \r\n\r\nMaking matters worse, these statistic can be measured in very unscientific ways. \r\n\r\nIn 1980s, the UN used five different methods, producing life expectancy results that would be off by as much as 15 years. \r\n\r\nFor example, looking at the life expectancy in Congo from 1980 to 1985, World Bank estimated it at 60.5 year; UN placed it at 44 years. \r\n\r\nPart of the problem was that the UN relied on the answer people gave to questionnaire that were never verified or checked for consistency. Any answer provided was taken at face value. \r\n\r\nTherefore, according to the UN, the life expectancy of Pakistanis might dramatically rise while that of people in Gambia might drop off by nearly 10 years - all in the course of a single year. Furthermore, countries like Mongolian or North Korea, according to the information of the government provided,  \"exceptional\" places for living a long and healthy life.\r\n\r\nSometimes no information could be obtained, in these cases, they followed a 30-years-old formula from 1955 that suggested country\'s life expectancy should increase by 2.5 years every 5 years.',0,'2017-01-01','',0,0,0,'2017-10-02 16:59:45.542101','2017-10-02 15:34:12.195954',1),(34,'Coding Styles','coding-styles','[https://docs.djangoproject.com/en/dev/internals/contributing/writing-code/coding-style/](https://docs.djangoproject.com/en/dev/internals/contributing/writing-code/coding-style/)',0,'2017-01-01','',0,0,0,'2017-10-03 03:04:23.812524','2017-10-03 03:04:23.812555',1),(35,'The Productivity Project','the-productivity-project','Most of us would love to be more productive. But a struggle to get handle on our task send accountability. What\'s why the author spend a year trying every productivity technique under the sun. These blinks looks at techniques, methods, ways of thinking that are sure to help you in our own productivity project. They might seem simple, but as you might soon find out, less is more.\r\n\r\n**Productivity is about working smarter by managing your time, attention and energy.**\r\n\r\nSome people think productivity is about doing more. They\'re wrong. In fact, productivity is about working smarter and getting the important things done. Let\'s look at two extremes of the working spectrum. A friend take Wall Street trader and a Buddish monk. Ideally, what you want to find is perfect meeting place between these two. The prototypical stock trader works such a friend pace that his attention become scatter and he fails to see the meanings and values of his work.  Meanwhile, the monk takes the time each day to meditate and reflect upon what\'s meaningful. He works at such delibrately pace that he doesn\'t accomplish very much. So, it\'s only when you position yourself between the rythem of the monk and the Wall Street trader that you find true productivity. This idea working pace that is delibarated enough to identify what is important and purposeful enough to accomplish your goal. To identify that perfect pace, you need to manage your time, attention and energy. After all, you can have all energy in the world, but it won\'t accomplish much without the well-managed schedule. And the opposite hold truth as well. You might have perfectly structured plan to finish your dream project, but it\'s useless if you are wasting your energy elsewhere. However, both time and energy can be wasted if your time and energy are unfocused, which is why attention is the third key to the productivity puzzle. In the blink ahead, we will explore the productivity that help you strike the perfect health balance between your monk and wall street trader, so you can be the most productive version of yourself.',0,'2017-01-01','',0,0,0,'2017-10-04 16:49:17.021482','2017-10-04 16:37:08.025045',1),(36,'Server-side Web Programming (Prerequisites)','server-side-web-programming-prerequisites','**[What is the web server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)**\r\n* Static Web Server vs Dynamic Web Server\r\n* web page | website | web server | search engine\r\n* analogy - a public library vs web server\r\n**[What software do I need to build a website?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_software_do_I_need)**\r\nBrowsershos or Browserstack furnishes screenshots of your website in various browsers.\r\n**[How do you upload files to a web server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Upload_files_to_a_web_server)**',0,'2017-01-01','',0,0,0,'2017-10-05 07:39:18.453911','2017-10-05 07:39:18.453942',1),(37,'Server-side Website Programming (Part 2)','server-side-website-programming-part-2','**Introduction**\r\n**Setting up a development environment**',0,'2017-01-01','',0,0,0,'2017-10-05 07:49:44.570651','2017-10-05 07:49:44.570684',1),(38,'Snippet','snippet','**.gitignore for django project**\r\n```\r\n# Text backup files\r\n*.bak\r\n\r\n#Database\r\n*.sqlite3\r\n\r\n\r\n# Byte-compiled / optimized / DLL files\r\n__pycache__/\r\n*.py[cod]\r\n*$py.class\r\n\r\n# C extensions\r\n*.so\r\n\r\n# Distribution / packaging\r\n.Python\r\nenv/\r\nbuild/\r\ndevelop-eggs/\r\ndist/\r\ndownloads/\r\neggs/\r\n.eggs/\r\nlib/\r\nlib64/\r\nparts/\r\nsdist/\r\nvar/\r\n*.egg-info/\r\n.installed.cfg\r\n*.egg\r\n\r\n# PyInstaller\r\n#  Usually these files are written by a python script from a template\r\n#  before PyInstaller builds the exe, so as to inject date/other infos into it.\r\n*.manifest\r\n*.spec\r\n\r\n# Installer logs\r\npip-log.txt\r\npip-delete-this-directory.txt\r\n\r\n# Unit test / coverage reports\r\nhtmlcov/\r\n.tox/\r\n.coverage\r\n.coverage.*\r\n.cache\r\nnosetests.xml\r\ncoverage.xml\r\n*,cover\r\n.hypothesis/\r\n\r\n# Translations\r\n*.mo\r\n*.pot\r\n\r\n# Django stuff:\r\n*.log\r\nlocal_settings.py\r\n\r\n# Flask stuff:\r\ninstance/\r\n.webassets-cache\r\n\r\n# Scrapy stuff:\r\n.scrapy\r\n\r\n# Sphinx documentation\r\ndocs/_build/\r\n\r\n# PyBuilder\r\ntarget/\r\n\r\n# IPython Notebook\r\n.ipynb_checkpoints\r\n\r\n# pyenv\r\n.python-version\r\n\r\n# celery beat schedule file\r\ncelerybeat-schedule\r\n\r\n# dotenv\r\n.env\r\n\r\n# virtualenv\r\nvenv/\r\nENV/\r\n\r\n# Spyder project settings\r\n.spyderproject\r\n\r\n# Rope project settings\r\n.ropeproject\r\n```',0,'2017-01-01','',0,0,0,'2017-10-05 08:11:11.736892','2017-10-05 08:11:11.736926',1),(39,'Side Hustle','side-hustle','**What\'s in it for me? Bring in a little extra cash on the side.**\r\n\"Take the leap! Quit your day job and be your own boss!\" Following this type of entrepreneurial advice comes with a fair share of risk. And let\'s face it: not everyone who tries self-employment thrives as your own boss. So what if you have an inner-entrepreneur who want to adventure forth, but you also want to keep the benefits of your current job. There\'s a lot to be said for health insurance, regular feedback and steady deadline. \r\n\r\nWell, maybe it\'s to consider becoming a side hustler. \r\n\r\nIn this blink, you will find out precisely what it means to have business in addition to your day job, as well as learning the dos and don\'ts of having successful side hustle. From finding the perfect idea for your part-time business  to optimizing your income from it. These blinks will make you into a side hustler in no time. \r\n\r\nYou\'ll also learn\r\n* how obscure hobbies, like writing fish tank reviews, can give you an extra income;\r\n* how some pretty simple math can prevent your making business mistakes; and \r\n* why Girls Scouts have a lot to teach the business community.\r\n\r\n** A side hustle provides a form of job freedom that absolutely any one can attain.**\r\n\r\nOne day, a British construction manager decided to write reviews of fish tanks. The reviews included hyperlinks to Amazon product listings, and he knew he\'d get a small commission if readers clicked through and purchased them. But the reviews were posted on an obscure website, and busy with the other day-job work, he half-forgot he\'d ever written them. So he was pleasantly surprised when, several weeks later, he received a check for $350. Even now, years down the road, he\'s still getting $700 a month for the same review. In short, he has a perfect side hustle.\r\n\r\nA side hustle can be defined as a profitable business venture that operates as a adjunct to other paid work or employment. No more than a bare minimum amount of time, money and effort should be invested. It shouldn\'t be a big deal. \r\n\r\nYou can even think of it as a kind of job security. The days of a \"job for life\" are over, and a side hustle ensures several incomes from different sources. You simply won\'t be held to the whim of single employer whose loyalty to you can\'t be counted on.\r\n\r\nEverybody needs a side hustle. It can make the transitioning from your day job easier, too, if you decide to quit or are fired. Leaving may seem exhilarating in the abstract, but the reality can be difficult: you  will lose a reliable income source and health insurance. A side hustle gives you a taste of entrepreneurship, but without all the risks of going it alone.\r\n\r\nThere\'s no reason to feel daunted when beginning a side hustle. \r\n\r\nFor starters, you don\'t need to spend a lot of time doing it. No more than an hour a day maximum. Any more is probably waste of time. Secondly, there is no need to have business degree to get going. Remember it\'s your business you\'re running, not someone else\'s. You\'re the one setting the entry requirements.\r\n\r\nSo, those are the basic, but what kind of idea make for the best side hustle?\r\n\r\n**Strong ideas for strong hustles arise from careful questioning and a bit of math.**\r\n\r\nThe adage has it wrong; money can grow on trees. But growing a money-bearing seedling requires planting the right seed under the right conditions. \r\n\r\nAll it takes is a little thought, however, you\'ll find those fecund and productive ideas that are bound to blossom. To get going, it\'s important to recognize that hustle-worthy ideas share three qualities. They need to be feasible, profitable and persuasive. \r\n\r\nIf you can answer yes to the three following questions, then the idea is feasible. Does your idea motivate you? Will it earn you money? Can it be accomplished in a short period of time? \r\n\r\nHow do you know if your idea is profitable? Well, try explain the merits of proposal to the potential customers in two sentences. No luck? Then your potential customer won\'t be paying customers any time soon. \r\n\r\nAn idea is persuasive if your customers can\'t say no. Consider Julia. As a caricaturist, she was earning $100 an hour as a side hustle. But when she started to sketching with digital drawing technology, she found she can charge $250 an hour. This was be possible because few customers had seen the technology before. The novelty gave her the persuasive edge over the competition, and that wow factor is irresistible. \r\n\r\nSo once you\'ve got some feasible, profitable and persuasive ideas, you\'ve got to do some basic math. You should calculate some projected profit of each hustle with this equation: \"anticipated income minus anticipated expenses\".\r\n\r\nPut this way, making profit is easily understood. You should spend less your money on the hustle than you bring in. You should also calculate the answer twice. One should be conservative projection, the other is optimistic, depending on the predicted strength of possible outcomes.\r\n\r\nSo now that you have an idea, how do you go about pitching it?',0,'2017-01-01','',0,0,0,'2017-10-06 16:54:37.344730','2017-10-06 16:27:53.966361',1),(40,'Dirty Minds','dirty-minds','How our brains influences love, sex and relationship.\r\n\r\n**What\'s in it for me? Find out how sex and love work.**\r\n\r\nYou know that confusing feeling when you are in love. And everything that your beloved says and does make you laugh or swoon with joy? And then suddenly, everything your loved one says and does make you scream or cry. And then, after a while, you couldn\'t care less. And what about the pounding hard and bashfulness that affects you when you form a sudden crush on someone?\r\n\r\nLove and sexual attraction are constant roller coaster and one of the most exciting rides of human experience. Unlike other animals, whose rules and behaviors for sex and bonding seem to be stable and ritualized, when it comes to human beings you never know what\'s going to happen next. But at least we can try to understand the mechanisms behind the chaos. And that\'s where these blinks come in. \r\n\r\nIn these blinks, you will learn:\r\n* how the neurotransmitter dopamine relates to love;\r\n* what humans have in common with prairie voles; and \r\n* why sweaty armpits might be your best bet for finally attracting your crush.\r\n\r\n**Humans have been studying the brain for centuries with mixed results.**\r\n\r\nModern technology and medical science have made major advances in exploring love and desire. However, before such practices and procedures began making sense of what happens within human body, people were seriously confused about which organs guided these utterly human experiences.\r\n\r\nIn ancient Greece, Aristotle thought that the heart was both the of human intelligence and the source of our passion. He also considered the brain to have cooling function that dampened emotions when they got out of hand.\r\n\r\nThen in nineteenth century, scientists become more interested in brain, although their initial approach was flawed. This investigation began in 1850s with scientist Franz Joseph Gall and Johann Gaspar Spurzheim, who developed what would be the theoretical basis for phrenology, the study of the skull to determine a person\'s character and mental capacities. According to phrenology, by simply running a hand over the back of a person\'s cranium, and study its topography, a practitioner can determine their subject\'s sense of love. \r\n\r\nToday we know that\'s nonsense, and in the twentieth century, technology began evolving to offer new, more productive techniques. Such advances enable neuroimaging processes like CAT and PET scans, or computerized axial tomography. Medical science no long had to rely on the bumps on a skull to explore brain function. \r\n\r\nAnd finally, in the 1990s, functional magnetic resonance imaging, or fMRI, was born. This enables researchers, and neuroscientists in particular - to study the brain in much more detailed way. This world of new possibilities was opened by the ability fMRI to magnetically indicate blood flow within the brain. As a result, a scan can show how blood flow response to various stimuli, like, for instance, the feeling of love. \r\n\r\nIn short, we now know a lot more about how the brain works. In the following blinks, we\'ll apply these understanding to sex and love.\r\n\r\n**The neurotransmitter dopamine influences human behaviors, including romantic feelings and actions.**\r\n\r\nHow much do you know about basal ganglia? Well, it\'s about time you learned. \r\n\r\nThis cluster of subcortical areas, situated in fore-brain, is responsible for releasing neurotransmitter dopamine, which plays the key role in human behavior. Two of these areas, the ventral tegmental area or VTA and the substantia nigra, literally run on dopamine, which is released by some of brain cells in these structures.\r\n\r\nBy the result, dopamine plays a incredibly influential role in human biology. Just take Parkinson\'s disease. Multiple studies have found that lack of dopamine-producing neurons causes Parkinson\'s symptoms like dementia and tremors. Other have shown that varying dopamine levels, whether they\'re too low or too high, correspond to diseases like schizophrenia, OCD and ADHD.',0,'2017-01-01','',0,0,0,'2017-10-07 17:04:49.162277','2017-10-07 16:51:10.973483',1),(41,'Unplug','unplug','Simple guide to meditation.\r\n\r\nSit in comfortable position, clear your mind and take a big, deep breath. Hold for a count for two, and then breath out slowly.\r\n\r\nSound familiar? Many people associate meditation with standard set of guiding words, usually intone of some overly empathic pseudo guru. Other think that mediation enthusiasts have an irresistible urge to chant in public spaces and spend all their money in meditation retreats. \r\n\r\nObviously, these are oversimplification. Really, anyone can incorporate a mediative practice into their life, and that practice needn\'t absorb an exorbitant amount of time or funds. These blinks show you what mediation is when you remove all the fluff, and why it can help recharge your batteries and reshape your brain for the better. \r\n\r\nFrom the six basic steps of a daily practice to dealing with intrusive thoughts that appear when you try to relax your mind, these blinks cover all the ground you need to unplug - today.\r\n\r\nYou\'ll also learn:\r\n* how an electric kettle by your bed might make your better mediator;\r\n* why imaging our breath as a train is beneficial; and\r\n* how pickling people off a free is a type of meditation.',0,'2017-01-01','',0,0,0,'2017-10-07 17:23:24.804964','2017-10-07 17:23:24.804996',1);
/*!40000 ALTER TABLE `posts_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_post_tags`
--

DROP TABLE IF EXISTS `posts_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_post_tag_post_id_tag_id_f0cc76c6_uniq` (`post_id`,`tag_id`),
  KEY `posts_post_tags_tag_id_0743d52e_fk_tags_tag_id` (`tag_id`),
  CONSTRAINT `posts_post_tags_post_id_1f164920_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`),
  CONSTRAINT `posts_post_tags_tag_id_0743d52e_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_post_tags`
--

LOCK TABLES `posts_post_tags` WRITE;
/*!40000 ALTER TABLE `posts_post_tags` DISABLE KEYS */;
INSERT INTO `posts_post_tags` VALUES (34,2,1),(33,2,4),(12,3,1),(13,3,3),(19,5,1),(18,5,3),(56,7,22),(7,9,1),(8,9,3),(38,10,1),(4,10,2),(9,12,1),(10,12,3),(17,13,1),(16,13,3),(14,14,1),(15,14,5),(20,15,6),(22,17,8),(25,19,1),(24,19,3),(26,20,9),(27,21,1),(28,21,10),(29,22,11),(30,23,1),(31,23,12),(32,24,13),(36,25,1),(39,25,2),(37,26,1),(40,26,2),(41,27,6),(42,27,15),(43,27,16),(45,28,1),(44,28,3),(46,29,17),(47,29,18),(48,30,19),(49,31,1),(50,31,20),(52,32,1),(51,32,20),(54,33,1),(53,33,20),(55,34,21),(58,35,1),(57,35,20),(59,36,23),(61,37,1),(60,37,23),(62,38,24),(64,39,1),(63,39,20),(66,40,1),(65,40,20),(68,41,1),(67,41,20);
/*!40000 ALTER TABLE `posts_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_accounts_` (`user_id`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tag`
--

DROP TABLE IF EXISTS `tags_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_tag_7a65bdc0_uniq` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tag`
--

LOCK TABLES `tags_tag` WRITE;
/*!40000 ALTER TABLE `tags_tag` DISABLE KEYS */;
INSERT INTO `tags_tag` VALUES (1,'blog','2017-09-16 16:53:50.206722'),(2,'error','2017-09-16 16:58:23.493657'),(3,'hango','2017-09-16 18:24:13.174580'),(4,'git','2017-09-16 18:28:09.490936'),(5,'gunicorn','2017-09-17 15:34:32.748735'),(6,'django','2017-09-18 09:41:21.101514'),(8,'machine-learning','2017-09-18 09:52:59.052806'),(9,'rabbitmq','2017-09-19 03:26:25.133150'),(10,'package-sublime3','2017-09-19 07:09:38.398771'),(11,'ngrok','2017-09-19 10:14:13.535213'),(12,'life','2017-09-19 13:36:03.641808'),(13,'video','2017-09-20 15:42:26.152825'),(14,'bug','2017-09-22 02:30:49.185070'),(15,'solr','2017-09-25 09:09:29.389624'),(16,'haystack','2017-09-25 09:09:43.648778'),(17,'kpt','2017-09-27 06:49:26.335091'),(18,'project-management','2017-09-27 06:49:45.069150'),(19,'working','2017-09-28 08:31:44.837138'),(20,'book','2017-09-30 15:51:02.389175'),(21,'coding-convention','2017-10-03 03:04:23.817623'),(22,'docker','2017-10-04 07:10:15.847401'),(23,'server-side','2017-10-05 07:39:18.461438'),(24,'snippet','2017-10-05 08:11:11.742155');
/*!40000 ALTER TABLE `tags_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09  7:48:17
