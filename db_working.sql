-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gettest
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cdata`
--

DROP TABLE IF EXISTS `cdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdata` (
  `cfid` char(64) NOT NULL,
  `app` char(64) NOT NULL,
  `data` text,
  UNIQUE KEY `id1` (`cfid`,`app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdata`
--

LOCK TABLES `cdata` WRITE;
/*!40000 ALTER TABLE `cdata` DISABLE KEYS */;
INSERT INTO `cdata` VALUES ('1004:c62c435deeec5731-5F4E1959-CCCF-2AF3-6118F56A356A3D68','gettest',' '),('1006:4fd5cfa0c57d0543-604D536B-DA0A-849D-D1D9A963EFF9A284','gettest',' '),('1104:80cd0bf859fca7d6-618A1BE4-FDA3-CE57-8EF3D2A225F5AC99','gettest',' '),('1105:f776ff2ad10f8f48-61F3B119-D6FB-C347-4841A02B25780D56','gettest',' '),('1107:d2401282ca9937cd-66DF82DA-D6FC-BA6E-E45F0DC16B9C5FF3','gettest',' '),('1108:8e092b3007ae529b-71F59EFC-9F31-6D1A-0BD9E9E122B16DCE','gettest',' '),('1109:127f5281b97cf887-7A94DDD5-0623-24D5-A601205BC0786612','gettest',' '),('1110:1d6664b6562198e0-7A95122C-B835-D5F9-382D0224561E7977','gettest',' '),('1204:666b7b46c0c6f4d-905DD989-0D61-68EF-93541A118E85FA12','gettest',' '),('1205:3fd946eea1d1f035-907B62C6-EBB1-8A25-C3A9AA51BDF50E5C','gettest',' '),('1206:9d199baaa0e23213-9363B169-0C1B-292F-CC2D8259C2CBF323','gettest',' '),('1207:3566075e4cc6b189-944B8DFF-CA6E-CC03-0A8242C6C55ABA28','gettest',' '),('1208:5a3a7a0ea2063705-99BDDEB7-FB81-92CE-7A8106C9AB06AF3E','gettest',' '),('1209:eb9370d78eabf754-A0D7467E-ED25-654D-8B517AE1A97F22EE','gettest',' '),('1210:cc94bdaab9c16620-A9D3538C-B938-CC4D-AED8802EF5100E39','gettest',' '),('904:a3f64e914877e9da-44A654DE-084F-4BD0-AA339C1D61A89CB1','gettest',' '),('905:2604fbf8d8418cb7-45E4BFE1-A3D9-616C-E174D6C3F800DF9D','gettest',' '),('913:7581b3c855681bc5-5D35D2DA-C9B6-4398-417F5D5D459121AE','gettest',' ');
/*!40000 ALTER TABLE `cdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cglobal`
--

DROP TABLE IF EXISTS `cglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cglobal` (
  `cfid` char(64) NOT NULL,
  `data` text,
  `lvisit` datetime NOT NULL,
  KEY `id2` (`cfid`),
  KEY `id3` (`lvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cglobal`
--

LOCK TABLES `cglobal` WRITE;
/*!40000 ALTER TABLE `cglobal` DISABLE KEYS */;
INSERT INTO `cglobal` VALUES ('903:3f0075be1348ea1d-3BE2C5FB-FEBA-5BD6-87A41D1195B5621C','urltoken=CFID#=903&CFTOKEN#=3f0075be1348ea1d-3BE2C5FB-FEBA-5BD6-87A41D1195B5621C#lastvisit={ts \'2017-04-09 19:36:20\'}#hitcount=272#timecreated={ts \'2017-04-09 16:10:45\'}#cftoken=3f0075be1348ea1d-3BE2C5FB-FEBA-5BD6-87A41D1195B5621C#cfid=903#','2017-04-09 19:36:21'),('904:a3f64e914877e9da-44A654DE-084F-4BD0-AA339C1D61A89CB1','urltoken=CFID#=904&CFTOKEN#=a3f64e914877e9da-44A654DE-084F-4BD0-AA339C1D61A89CB1#lastvisit={ts \'2017-04-09 20:09:42\'}#hitcount=280#timecreated={ts \'2017-04-09 16:10:45\'}#cftoken=a3f64e914877e9da-44A654DE-084F-4BD0-AA339C1D61A89CB1#cfid=904#','2017-04-09 20:09:42'),('905:2604fbf8d8418cb7-45E4BFE1-A3D9-616C-E174D6C3F800DF9D','urltoken=CFID#=905&CFTOKEN#=2604fbf8d8418cb7-45E4BFE1-A3D9-616C-E174D6C3F800DF9D#lastvisit={ts \'2017-04-09 22:34:49\'}#hitcount=377#timecreated={ts \'2017-04-09 16:10:45\'}#cftoken=2604fbf8d8418cb7-45E4BFE1-A3D9-616C-E174D6C3F800DF9D#cfid=905#','2017-04-09 22:34:50'),('913:7581b3c855681bc5-5D35D2DA-C9B6-4398-417F5D5D459121AE','urltoken=CFID#=913&CFTOKEN#=7581b3c855681bc5-5D35D2DA-C9B6-4398-417F5D5D459121AE#lastvisit={ts \'2017-04-10 07:41:40\'}#hitcount=9#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=7581b3c855681bc5-5D35D2DA-C9B6-4398-417F5D5D459121AE#cfid=913#','2017-04-10 07:41:41'),('1004:c62c435deeec5731-5F4E1959-CCCF-2AF3-6118F56A356A3D68','urltoken=CFID#=1004&CFTOKEN#=c62c435deeec5731-5F4E1959-CCCF-2AF3-6118F56A356A3D68#lastvisit={ts \'2017-04-10 08:27:25\'}#hitcount=10#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=c62c435deeec5731-5F4E1959-CCCF-2AF3-6118F56A356A3D68#cfid=1004#','2017-04-10 08:27:26'),('1005:9df854fb0ac982f1-5F5065D7-0F44-B137-40773E3382369A83','urltoken=CFID#=1005&CFTOKEN#=9df854fb0ac982f1-5F5065D7-0F44-B137-40773E3382369A83#lastvisit={ts \'2017-04-10 08:30:50\'}#hitcount=4#timecreated={ts \'2017-04-10 08:27:32\'}#cftoken=9df854fb0ac982f1-5F5065D7-0F44-B137-40773E3382369A83#cfid=1005#','2017-04-10 08:30:50'),('1006:4fd5cfa0c57d0543-604D536B-DA0A-849D-D1D9A963EFF9A284','urltoken=CFID#=1006&CFTOKEN#=4fd5cfa0c57d0543-604D536B-DA0A-849D-D1D9A963EFF9A284#lastvisit={ts \'2017-04-10 08:55:48\'}#hitcount=14#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=4fd5cfa0c57d0543-604D536B-DA0A-849D-D1D9A963EFF9A284#cfid=1006#','2017-04-10 08:55:48'),('1104:80cd0bf859fca7d6-618A1BE4-FDA3-CE57-8EF3D2A225F5AC99','urltoken=CFID#=1104&CFTOKEN#=80cd0bf859fca7d6-618A1BE4-FDA3-CE57-8EF3D2A225F5AC99#lastvisit={ts \'2017-04-10 09:37:51\'}#hitcount=9#timecreated={ts \'2017-04-10 08:27:32\'}#cftoken=80cd0bf859fca7d6-618A1BE4-FDA3-CE57-8EF3D2A225F5AC99#cfid=1104#','2017-04-10 09:37:52'),('1105:f776ff2ad10f8f48-61F3B119-D6FB-C347-4841A02B25780D56','urltoken=CFID#=1105&CFTOKEN#=f776ff2ad10f8f48-61F3B119-D6FB-C347-4841A02B25780D56#lastvisit={ts \'2017-04-10 11:32:48\'}#hitcount=120#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=f776ff2ad10f8f48-61F3B119-D6FB-C347-4841A02B25780D56#cfid=1105#','2017-04-10 11:32:48'),('1106:a86921da90f256d5-64C045BE-905F-8555-1E8AE4618B0A3B9B','urltoken=CFID#=1106&CFTOKEN#=a86921da90f256d5-64C045BE-905F-8555-1E8AE4618B0A3B9B#lastvisit={ts \'2017-04-10 10:59:34\'}#hitcount=2#timecreated={ts \'2017-04-10 10:59:34\'}#cftoken=a86921da90f256d5-64C045BE-905F-8555-1E8AE4618B0A3B9B#cfid=1106#','2017-04-10 10:59:34'),('1107:d2401282ca9937cd-66DF82DA-D6FC-BA6E-E45F0DC16B9C5FF3','urltoken=CFID#=1107&CFTOKEN#=d2401282ca9937cd-66DF82DA-D6FC-BA6E-E45F0DC16B9C5FF3#lastvisit={ts \'2017-04-10 12:45:55\'}#hitcount=162#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=d2401282ca9937cd-66DF82DA-D6FC-BA6E-E45F0DC16B9C5FF3#cfid=1107#','2017-04-10 12:45:56'),('1108:8e092b3007ae529b-71F59EFC-9F31-6D1A-0BD9E9E122B16DCE','urltoken=CFID#=1108&CFTOKEN#=8e092b3007ae529b-71F59EFC-9F31-6D1A-0BD9E9E122B16DCE#lastvisit={ts \'2017-04-10 18:24:58\'}#hitcount=232#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=8e092b3007ae529b-71F59EFC-9F31-6D1A-0BD9E9E122B16DCE#cfid=1108#','2017-04-10 18:24:59'),('1110:1d6664b6562198e0-7A95122C-B835-D5F9-382D0224561E7977','urltoken=CFID#=1110&CFTOKEN#=1d6664b6562198e0-7A95122C-B835-D5F9-382D0224561E7977#lastvisit={ts \'2017-04-11 01:31:15\'}#hitcount=699#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=1d6664b6562198e0-7A95122C-B835-D5F9-382D0224561E7977#cfid=1110#','2017-04-11 01:31:16'),('1109:127f5281b97cf887-7A94DDD5-0623-24D5-A601205BC0786612','urltoken=CFID#=1109&CFTOKEN#=127f5281b97cf887-7A94DDD5-0623-24D5-A601205BC0786612#lastvisit={ts \'2017-04-10 21:09:59\'}#hitcount=233#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=127f5281b97cf887-7A94DDD5-0623-24D5-A601205BC0786612#cfid=1109#','2017-04-10 21:09:59'),('1204:666b7b46c0c6f4d-905DD989-0D61-68EF-93541A118E85FA12','urltoken=CFID#=1204&CFTOKEN#=666b7b46c0c6f4d-905DD989-0D61-68EF-93541A118E85FA12#lastvisit={ts \'2017-04-11 08:14:10\'}#hitcount=773#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=666b7b46c0c6f4d-905DD989-0D61-68EF-93541A118E85FA12#cfid=1204#','2017-04-11 08:14:11'),('1205:3fd946eea1d1f035-907B62C6-EBB1-8A25-C3A9AA51BDF50E5C','urltoken=CFID#=1205&CFTOKEN#=3fd946eea1d1f035-907B62C6-EBB1-8A25-C3A9AA51BDF50E5C#lastvisit={ts \'2017-04-11 07:22:22\'}#hitcount=10#timecreated={ts \'2017-04-10 08:27:32\'}#cftoken=3fd946eea1d1f035-907B62C6-EBB1-8A25-C3A9AA51BDF50E5C#cfid=1205#','2017-04-11 07:22:23'),('1206:9d199baaa0e23213-9363B169-0C1B-292F-CC2D8259C2CBF323','urltoken=CFID#=1206&CFTOKEN#=9d199baaa0e23213-9363B169-0C1B-292F-CC2D8259C2CBF323#lastvisit={ts \'2017-04-11 08:47:18\'}#hitcount=783#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=9d199baaa0e23213-9363B169-0C1B-292F-CC2D8259C2CBF323#cfid=1206#','2017-04-11 08:47:18'),('1207:3566075e4cc6b189-944B8DFF-CA6E-CC03-0A8242C6C55ABA28','urltoken=CFID#=1207&CFTOKEN#=3566075e4cc6b189-944B8DFF-CA6E-CC03-0A8242C6C55ABA28#lastvisit={ts \'2017-04-11 11:08:23\'}#hitcount=1008#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=3566075e4cc6b189-944B8DFF-CA6E-CC03-0A8242C6C55ABA28#cfid=1207#','2017-04-11 11:08:23'),('1208:5a3a7a0ea2063705-99BDDEB7-FB81-92CE-7A8106C9AB06AF3E','urltoken=CFID#=1208&CFTOKEN#=5a3a7a0ea2063705-99BDDEB7-FB81-92CE-7A8106C9AB06AF3E#lastvisit={ts \'2017-04-11 14:12:41\'}#hitcount=1233#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=5a3a7a0ea2063705-99BDDEB7-FB81-92CE-7A8106C9AB06AF3E#cfid=1208#','2017-04-11 14:12:42'),('1209:eb9370d78eabf754-A0D7467E-ED25-654D-8B517AE1A97F22EE','urltoken=CFID#=1209&CFTOKEN#=eb9370d78eabf754-A0D7467E-ED25-654D-8B517AE1A97F22EE#lastvisit={ts \'2017-04-11 17:43:16\'}#hitcount=1525#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=eb9370d78eabf754-A0D7467E-ED25-654D-8B517AE1A97F22EE#cfid=1209#','2017-04-11 17:43:16'),('1210:cc94bdaab9c16620-A9D3538C-B938-CC4D-AED8802EF5100E39','urltoken=CFID#=1210&CFTOKEN#=cc94bdaab9c16620-A9D3538C-B938-CC4D-AED8802EF5100E39#lastvisit={ts \'2017-04-11 21:24:03\'}#hitcount=1666#timecreated={ts \'2017-04-10 07:28:43\'}#cftoken=cc94bdaab9c16620-A9D3538C-B938-CC4D-AED8802EF5100E39#cfid=1210#','2017-04-11 21:24:03');
/*!40000 ALTER TABLE `cglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `short_desc` varchar(150) NOT NULL,
  `long_desc` text,
  `notes` tinytext,
  `user_id` int(10) NOT NULL,
  `status` enum('New','Open','Resolved','Closed') NOT NULL,
  `urgency` enum('Very urgently','Urgently','Not urgently','Not at all urgently') NOT NULL,
  `criticality` enum('Accident','Critical','Not critical','Change request') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'2017-04-09 19:22:50','Доделать тест','Сделать все кайфово и суперически','И вовремя',1,'Open','Very urgently','Critical'),(2,'2017-04-10 07:26:33','Вторая задача','Вторая задача для примера','',1,'Closed','Very urgently','Accident'),(3,'2017-04-10 07:56:20','Третья','Очень клевая третья задача','Да',1,'New','Urgently','Not critical'),(4,'2017-04-10 07:57:21','Еще задача','Еще одна задача','Еще',1,'Open','Very urgently','Accident'),(5,'2017-04-10 08:04:05','Another one Task','Hello World!','',1,'Open','Not urgently','Accident'),(6,'2017-04-10 08:28:51','Another','Check message alert','',1,'Closed','Very urgently','Accident'),(7,'2017-04-10 08:29:29','And another','','',1,'Open','Very urgently','Accident'),(8,'2017-04-10 08:31:58','Alert','','',1,'New','Very urgently','Accident'),(9,'2017-04-10 08:32:48','Alert here','Alert there','',1,'Resolved','Urgently','Change request'),(12,'2017-04-10 15:07:41','Check Alert','','',1,'New','Very urgently','Accident'),(13,'2017-04-11 04:49:23','First Joe Task','Used encrypted password','',2,'New','Not at all urgently','Change request'),(14,'2017-04-11 05:00:47','This is a task with long short description','and short long description','w/o notes',2,'Resolved','Very urgently','Accident'),(15,'2017-04-11 05:09:50','User with long full name','','',3,'New','Not urgently','Not critical'),(16,'2017-04-11 07:51:45','Added task history','Added task history, just check if bugs are fixed','',1,'Open','Urgently','Critical'),(17,'2017-04-11 07:54:27','Check if the new task added as open','','',1,'Resolved','Very urgently','Accident'),(18,'2017-04-11 13:26:35','Task buttons are work!','','',3,'Resolved','Not urgently','Not critical');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_history`
--

DROP TABLE IF EXISTS `tasks_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `task_id` int(10) NOT NULL,
  `date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `action` enum('Add','Open','Resolve','Close') NOT NULL,
  `notes` tinytext,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_history`
--

LOCK TABLES `tasks_history` WRITE;
/*!40000 ALTER TABLE `tasks_history` DISABLE KEYS */;
INSERT INTO `tasks_history` VALUES (1,1,'2017-04-09 19:22:50','Open','And easy',1),(2,2,'2017-04-10 07:26:33','Close','',1),(3,3,'2017-04-10 07:56:20','Add','Да',1),(4,4,'2017-04-10 07:57:21','Open','update test',1),(5,5,'2017-04-10 08:04:05','Add','',1),(6,6,'2017-04-10 08:28:51','Close','',1),(7,7,'2017-04-10 08:29:29','Open','',1),(8,8,'2017-04-10 08:31:58','Add','',1),(9,9,'2017-04-10 08:32:48','Add','',1),(10,10,'2017-04-10 09:35:11','Add','И вовремя',1),(11,11,'2017-04-10 09:45:55','Add','комментарий 1',2),(12,12,'2017-04-10 15:07:41','Add','',1),(13,13,'2017-04-11 04:49:23','Add','',2),(14,14,'2017-04-11 05:00:47','Add','w/o notes',2),(15,15,'2017-04-11 05:09:50','Add','',3),(16,5,'2017-04-11 06:47:55','Add','task updated',1),(17,1,'2017-04-11 06:49:08','Open','Just in time',1),(18,5,'2017-04-11 07:00:20','Open','task updated again',1),(19,12,'2017-04-11 07:20:46','Add','Check update',1),(20,15,'2017-04-11 07:22:54','Add','This is a loooooooooooong note, a very long note? really big note',1),(21,16,'2017-04-11 07:51:45','Add','',1),(22,16,'2017-04-11 07:53:08','Open','added open, but created as new',1),(23,17,'2017-04-11 07:54:27','Add','',1),(24,17,'2017-04-11 07:54:43','Resolve','fixed',1),(25,9,'2017-04-11 13:09:53','Open','open',3),(26,9,'2017-04-11 13:12:54','Resolve','resolved',3),(27,18,'2017-04-11 13:26:35','Add','',3),(28,14,'2017-04-11 13:29:34','Resolve','notes means notes',3),(29,9,'2017-04-11 16:13:32','Resolve','Alert everywhere',1);
/*!40000 ALTER TABLE `tasks_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'slavitto','Slava','Siomichev','D73897C03E1A47AA6F8E97007A43856852222E6F'),(2,'johndoe','John','Doe','D73897C03E1A47AA6F8E97007A43856852222E6F\r\n		'),(3,'arnie','Arnold','Schwarzenegger','D73897C03E1A47AA6F8E97007A43856852222E6F');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-11 22:33:45
