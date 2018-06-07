-- MySQL dump 10.13  Distrib 5.5.23, for Win64 (x86)
--
-- Host: localhost    Database: testsbd
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `Test_id` int(11) NOT NULL,
  `Quest_id` int(11) NOT NULL,
  `Answer_text` text NOT NULL,
  `Answer_id` int(11) NOT NULL,
  `Answer_graph` int(11) NOT NULL,
  `Answer_impact` int(11) NOT NULL,
  PRIMARY KEY (`Test_id`,`Quest_id`,`Answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Да',1,1,2),(1,1,'Иногда',2,1,1),(1,1,'Нет',3,1,0),(1,2,'Да',1,1,2),(1,2,'Иногда',2,1,1),(1,2,'Нет',3,1,0),(1,3,'Да',1,1,2),(1,3,'Иногда',2,1,1),(1,3,'Нет',3,1,0),(1,4,'Да',1,1,2),(1,4,'Иногда',2,1,1),(1,4,'Нет',3,1,0),(1,5,'Да',1,1,2),(1,5,'Иногда',2,1,1),(1,5,'Нет',3,1,0),(1,6,'Да',1,1,2),(1,6,'Иногда',2,1,1),(1,6,'Нет',3,1,0),(1,7,'Да',1,1,2),(1,7,'Иногда',2,1,1),(1,7,'Нет',3,1,0),(1,8,'Да',1,1,2),(1,8,'Иногда',2,1,1),(1,8,'Нет',3,1,0),(1,9,'Да',1,1,2),(1,9,'Иногда',2,1,1),(1,9,'Нет',3,1,0),(1,10,'Да',1,1,2),(1,10,'Иногда',2,1,1),(1,10,'Нет',3,1,0),(1,11,'Да',1,1,2),(1,11,'Иногда',2,1,1),(1,11,'Нет',3,1,0),(1,12,'Да',1,1,2),(1,12,'Иногда',2,1,1),(1,12,'Нет',3,1,0),(1,13,'Да',1,1,2),(1,13,'Иногда',2,1,1),(1,13,'Нет',3,1,0),(1,14,'Да',1,1,2),(1,14,'Иногда',2,1,1),(1,14,'Нет',3,1,0),(1,15,'Да',1,1,2),(1,15,'Иногда',2,1,1),(1,15,'Нет',3,1,0),(1,16,'Да',1,1,2),(1,16,'Иногда',2,1,1),(1,16,'Нет',3,1,0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finals`
--

DROP TABLE IF EXISTS `finals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finals` (
  `Test_id` int(11) NOT NULL,
  `Finals_id` int(11) NOT NULL,
  `Finals_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finals`
--

LOCK TABLES `finals` WRITE;
/*!40000 ALTER TABLE `finals` DISABLE KEYS */;
/*!40000 ALTER TABLE `finals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphs`
--

DROP TABLE IF EXISTS `graphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graphs` (
  `Test_id` int(11) NOT NULL,
  `Folder_id` int(11) NOT NULL,
  `Folder_name` varchar(63) NOT NULL,
  `Folder_defaul_var` int(11) NOT NULL COMMENT 'Начальное значение',
  PRIMARY KEY (`Test_id`,`Folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphs`
--

LOCK TABLES `graphs` WRITE;
/*!40000 ALTER TABLE `graphs` DISABLE KEYS */;
INSERT INTO `graphs` VALUES (1,1,'Уровень замкнутости',0);
/*!40000 ALTER TABLE `graphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `Test_id` int(11) NOT NULL,
  `Quest_id` int(11) NOT NULL,
  `Quest_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Вам предстоит ординарная или деловая встреча.\r\nВыбивает ли вас ее ожидание из колеи?'),(1,2,'Вызывает ли у вас смятение и неудовольствие поручение выступить с докладом, сообщением , информацией на каком-либо совещании, собрании или тому подобном мероприятии?'),(1,3,'Не откладываете ли вы визит к врачу до последнего момента?'),(1,4,'Вам предлагают выехать в командировку в город вы никогда не бывали. Приложите ли вы максимум усилий, чтобы избежать этой командировки?'),(1,5,'Любите ли вы делиться своими переживаниями с кем бы то ни было?'),(1,6,'Раздражаетесь ли вы, если незнакомый человек на улице обратится к вам с просьбой (показать дорогу, назвать время, ответить на какой-то вопрос)?'),(1,7,'Верите ли вы, что существует проблема \"Отцов и детей\" и что людям разных поколений трудно понимать друг друга?'),(1,8,'Постесняетесь ли вы напомнить знакомому, что он забыл вам вернуть деньги, которые занял несколько месяцев назад?'),(1,9,'В ресторане либо в столовой вам подали явно недоброкачественное блюдо. Промолчите ли вы, лишь рассерженно отодвинув тарелку?'),(1,10,'Оказавшись один на один с незнакомым человеком, вы не вступите с ним в беседу и будете тяготиться, если первым заговорит он. Так ли это?'),(1,11,'Вас приводит в ужас любая длинная очередь, где бы она ни была (в магазине, библиотеке, кассе кинотеатра). Предпочитаете ли вы отказаться от своего намерения или встанете в хвост и будете томиться в ожидании?'),(1,12,'Боитесь ли вы участвовать в какой-либо комиссии по рассмотрению конфликтных ситуаций?'),(1,13,'У вас есть собственные сугубо индивидуальные критерии оценки произведений литературы, искусства, культуры и никаких чужих мнений на этот счёт вы не приемлете. Это так?'),(1,14,'Услышав где-либо в кулуарах высказывание явно ошибочной точки зрения по хорошо известному вам вопросу, предпочитаете ли вы промолчать и не вступать в разговор?'),(1,15,'Вызывает ли у вас досаду чья-либо просьба помочь разобраться в том или ином служебном вопросе или учебной теме?'),(1,16,'Охотнее ли вы излагаете свою точку зрения (мнение), в письменной форме чем в устной?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `Test_id` int(11) NOT NULL AUTO_INCREMENT,
  `Test_name` varchar(63) NOT NULL,
  `Param_timer` int(11) NOT NULL COMMENT 'Включить выключить таймер на тест, если равно нулю, то таймер выключен, если !0, то значение в минутах',
  `Param_pages` tinyint(1) NOT NULL,
  `Param_final_page` tinyint(1) NOT NULL,
  `Param_background_id` int(11) NOT NULL,
  `Test_description` text,
  PRIMARY KEY (`Test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'Оценка уровня общительности',0,0,1,0,'Тест оценки уровня общительности содержит возможность определить уровень коммуникабельности человека, его способность устанавливать, поддерживать и сохранять хорошие личные и деловые взаимоотношения с окружающими людьми.'),(2,'Test',0,0,1,0,'Описание');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'testsbd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-07  7:10:53
