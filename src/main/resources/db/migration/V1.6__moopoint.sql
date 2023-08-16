-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: moopoint
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `record_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` int NOT NULL,
  `birthday` date NOT NULL,
  `set_category` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `doc_id` int NOT NULL,
  `dept_id` int NOT NULL,
  `reg_level` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cost` int NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `noon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `precise_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1,'张三','男',22,'1998-02-02','现金支付','12345619980202111x','',1,1,'普通号',20,'挂号费','退号','上午','2020-11-11 09:00:00'),(2,4,'mark','男',56,'2020-06-01','现金支付','150404200020020020','阿迪斯',1,1,'普通号',47,'挂号费','就诊中','下午','2020-11-11 13:00:00'),(3,3,'333','女',43,'2020-11-04','现金支付','388388388383838838','奥斯陆扩大',1,1,'普通号',23,'挂号费','退号','下午','2020-10-26 15:00:00'),(4,5,'张三','女',34,'2020-11-03','现金支付','222888333949950987','阿斯顿',1,1,'普通号',45,'挂号费','就诊中','下午','2020-11-13 14:00:00'),(5,6,'梁志超','男',18,'2002-07-11','微信支付','111999333847758493','M78星云',1,1,'专家号',56,'挂号费','就诊中','下午','2020-12-21 11:44:16'),(11,7,'赵四','男',21,'2002-04-20','现金支付',NULL,NULL,1,1,'普通号',20,'挂号费','退号',NULL,'2023-08-09 15:40:01'),(13,12,'卢子昂','男',0,'2023-08-01','信用卡支付','1234X','辽宁省沈阳市于洪区长江北街78-10',5,5,'专家号',100,'挂号费','未看诊','下午','2023-08-13 20:00:50'),(14,10,'测试','男',0,'2023-08-01','现金支付','','',1,1,'专家号',100,'挂号费','结诊','下午','2023-08-14 23:16:19'),(15,14,'测试用户2','女',0,'2023-08-01','信用卡支付','1234X','测试',5,5,'专家号',100,'挂号费','未看诊','下午','2023-08-16 17:59:58');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dept_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dept_func` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'呼吸内科','内科','临床',1),(2,'消化内科','内科','临床',1),(3,'心血管内科','内科','临床',1),(4,'普通外科','外科','临床',1),(5,'神经外科','外科','临床',1),(6,'心胸外科','外科','临床',1),(7,'放射科','医学影像科','医技',1),(8,'超声科','医学影像科','医技',1),(9,'药剂科','护理科','医辅',1),(10,'中医全科','中医科','临床',1),(11,'挂号收费','财务科','医辅',1),(12,'人事科','行政科','行政',1),(13,'化验科','检验科','医技',1),(14,'处置科','处置科','医技',1),(15,'中医外科','外科','医技',1),(16,'儿科','儿科 ','临床',1),(17,'口腔科','口腔科','临床',1),(18,'妇产科','妇产科','临床',1),(19,'免疫科','免疫科','临床',1),(20,'耳鼻喉科','耳鼻喉科','临床',1),(21,'皮肤科','皮肤科','临床',1),(22,'精神科','精神科','临床',1),(23,'眼科','眼科','临床',1),(24,'男科','男科','临床',1),(25,'肝胆外科','外科','临床',1),(26,'内分泌科','内分泌科','临床',1),(27,'泌尿外科','外科','临床',1),(28,'儿童营养保健科','保健科','临床',1),(29,'肿瘤内科','内科','临床',1),(30,'肿瘤外科','外科','临床',1),(31,'精神科','脑科','门诊',1),(32,'美容科','外科','临床',1);
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consume`
--

DROP TABLE IF EXISTS `consume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consume` (
  `id` int NOT NULL AUTO_INCREMENT,
  `record_id` int NOT NULL,
  `cost_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` float(11,2) NOT NULL,
  `dept_id` int NOT NULL,
  `execute` int NOT NULL DEFAULT '0',
  `number` int DEFAULT '1',
  `time` datetime NOT NULL,
  `payment` int NOT NULL DEFAULT '0',
  `take_med` int DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `aim` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `body` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `useage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `consumption` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `frequency` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `results` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consume`
--

LOCK TABLES `consume` WRITE;
/*!40000 ALTER TABLE `consume` DISABLE KEYS */;
INSERT INTO `consume` VALUES (1,1,'雪见',11.50,1,0,12,'2020-11-11 09:34:56',0,1,'中药','中成药费','治疗',NULL,'用法','用量','频次','检查检验结果'),(2,1,'核磁共振检查',20.00,7,0,1,'2020-11-11 10:58:53',0,0,'检查','检查费用','是否进水','头部','用法','用量','频次','见阴影'),(3,1,'肠代食管术',23.00,4,0,1,'2020-11-11 17:34:28',0,0,'检验','检验费用','是否有毒','肠胃','用法','用量','频次','结果正常'),(4,1,'清创(缝合)术(小)',34.00,4,0,1,'2020-11-11 11:36:10',0,0,'检查','处置费用','中毒了吗','肠胃','用法','用量','频次','检查结果正常'),(5,1,'血常规',23.00,13,0,1,'2020-11-11 12:24:00',0,0,'检查','检验费用','qwe f','qfd ',NULL,NULL,NULL,'asdf'),(6,1,'输液',776.00,14,0,1,'2020-11-11 13:31:22',0,0,'检查','处置费用','fge','dfgew',NULL,NULL,NULL,'不正常'),(7,1,'盘尼西林',12.24,1,0,10,'2020-12-18 14:35:18',0,0,'西药','西药费',NULL,NULL,'1','1','1',NULL),(8,1,'普通拔罐治疗',18.00,10,0,1,'2020-12-21 09:24:55',0,0,'检查','检查费用','拔罐','后背',NULL,NULL,NULL,'检查结果不正常'),(9,6,'布洛芬缓释胶囊',0.22,1,0,2,'2020-12-21 10:19:49',0,0,'西药','西药费',NULL,NULL,'','','',NULL),(10,6,'盘尼西林',12.24,1,0,4,'2020-12-21 10:19:49',1,1,'西药','西药费',NULL,NULL,'111','111','111','退费'),(11,6,'胃镜',34.00,2,0,1,'2020-12-21 15:43:48',0,0,'检查','检查费用','看看胃','胃部',NULL,NULL,NULL,NULL),(13,6,'支气管镜',434.00,1,0,1,'2020-12-21 15:43:48',0,0,'检查','检查费用','测试一下支气管','支气管',NULL,NULL,NULL,NULL),(14,6,'十二指肠镜',234.00,2,0,1,'2020-12-21 15:54:06',0,0,'检查','检查费用','十二指肠','十二指肠',NULL,NULL,NULL,NULL),(15,6,'临床血液学检测',234.00,13,0,1,'2020-12-21 15:56:59',0,0,'检查','检验费用','都试试','全身',NULL,NULL,NULL,NULL),(16,6,'临床体液学检测',372.00,13,0,1,'2020-12-21 15:56:59',0,0,'检查','检验费用','都试试','全身',NULL,NULL,NULL,NULL),(17,6,'临床生物化学检测',423.00,13,0,1,'2020-12-21 15:56:59',0,0,'检查','检验费用','都试试','全身',NULL,NULL,NULL,NULL),(18,6,'临床免疫学检测',286.00,13,0,1,'2020-12-21 15:56:59',0,0,'检查','检验费用','都试试','全身',NULL,NULL,NULL,NULL),(19,6,'临床微生物学检测',429.00,13,0,1,'2020-12-21 15:56:59',0,0,'检查','检验费用','都试试','全身',NULL,NULL,NULL,NULL),(20,6,'头孢拉定',39.00,1,0,4,'2020-12-21 16:15:45',0,0,'西药','西药费',NULL,NULL,'111','111','111',NULL),(21,6,'头孢呋辛',89.00,1,0,2,'2020-12-21 16:15:45',0,0,'西药','西药费',NULL,NULL,'22','33','44',NULL),(22,6,'丹皮',29.00,1,0,4,'2020-12-21 16:20:08',0,0,'中药','中药费',NULL,NULL,'11','11','11',NULL),(23,6,'太子参',293.00,1,0,4,'2020-12-21 16:20:08',0,0,'中药','中药费',NULL,NULL,'11','11','11',NULL),(24,6,'安息香',58.00,1,0,5,'2020-12-21 16:20:08',0,0,'中药','中药费',NULL,NULL,'111','111','111',NULL),(25,6,'黄芪',34.00,1,0,4,'2020-12-21 16:20:10',0,0,'中药','中药费',NULL,NULL,'1','1','1',NULL),(26,6,'当归',45.00,1,0,5,'2020-12-21 16:20:10',0,0,'中药','中药费',NULL,NULL,'1','1','1',NULL),(27,6,'芦荟',63.00,1,0,3,'2020-12-21 16:20:10',0,0,'中药','中药费',NULL,NULL,'1','11','11',NULL),(28,6,'半夏',129.00,1,0,4,'2020-12-21 16:20:10',0,0,'中药','中药费',NULL,NULL,'11','11','11',NULL),(29,6,'杜仲',239.00,1,0,4,'2020-12-21 16:20:10',0,0,'中药','中药费',NULL,NULL,'11','11','11',NULL),(30,6,'输液',776.00,14,0,1,'2020-12-21 17:26:44',0,0,'检查','处置费用','输液','手',NULL,NULL,NULL,NULL),(31,6,'针灸',465.00,10,0,1,'2020-12-21 17:26:44',0,0,'检查','处置费用','扎针','背部',NULL,NULL,NULL,NULL),(32,6,'汗蒸法',100.00,15,1,1,'2020-12-21 17:26:44',1,1,'检查','处置费用','排汗','全身',NULL,NULL,NULL,'已完成'),(33,4,'普通拔罐治疗',18.00,10,0,NULL,'2023-08-14 21:12:02',0,0,'检查','诊疗费','去湿气','背部','','','',NULL),(34,10,'布洛芬缓释胶囊',0.88,0,0,2,'2023-08-15 11:28:41',0,0,'西药','西药费','','','顿服','一粒','一日两次早晚各自一粒',NULL),(35,7,'肠代食管术',3194.00,4,0,1,'2023-08-15 13:12:58',0,0,'检查','诊疗费','','',NULL,NULL,NULL,NULL),(36,7,'输液',776.00,14,0,1,'2023-08-15 13:13:27',0,0,'检查','诊疗费','','',NULL,NULL,NULL,NULL),(37,7,'针灸',465.00,10,0,1,'2023-08-15 13:13:35',0,0,'检查','诊疗费','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `consume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `doc_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dept_id` int NOT NULL,
  `user_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `schedule` int DEFAULT NULL,
  `reg_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'123456','张一',1,'门诊医生','主任医师',1,2,1),(2,'25d55ad283aa400af464c76d713c07ad','张二',1,'门诊医生','住院医师',1,1,1),(3,'12345678','张三',3,'门诊医生','副主任医师',1,2,1),(4,'123456','张四',4,'药房医生','住院医师',0,1,1),(5,'25d55ad283aa400af464c76d713c07ad','李一',5,'门诊医生','副主任医师',1,2,1),(6,'25d55ad283aa400af464c76d713c07ad','李二',6,'门诊医生','住院医师',1,3,0),(7,'123456','李三',7,'医技医生','主任医师',0,2,1),(8,'c4ca4238a0b923820dcc509a6f75849b','李四',8,'医技医生','住院医师',0,1,1),(9,'c4ca4238a0b923820dcc509a6f75849b','李四',9,'药房操作员',NULL,0,2,0),(10,'25d55ad283aa400af464c76d713c07ad','王一',10,'医技医生','主治医师',0,3,1),(11,'12345678','王二',10,'门诊医生','主任医师',1,2,1),(12,'123456','王三',11,'挂号收费员',NULL,1,2,1),(13,'550e1bafe077ff0b0b67f4e32f29d751','王五',11,'财务管理员',NULL,0,NULL,1),(14,'c4ca4238a0b923820dcc509a6f75849b','赵四',12,'医院管理员',NULL,0,NULL,1),(15,'25d55ad283aa400af464c76d713c07ad','孙一',12,'医院管理员','',0,NULL,1),(19,'c4ca4238a0b923820dcc509a6f75849b','张三',15,'医技医生','',0,1,1),(20,'25d55ad283aa400af464c76d713c07ad','编辑后的用户',16,'财务管理员','',0,NULL,0),(21,'25d55ad283aa400af464c76d713c07ad','aa',4,'护工','',0,NULL,0),(22,'123456','卢子昂',1,'医院管理员',NULL,NULL,NULL,1),(23,'123456','卢子昂_2',12,'医院管理员',NULL,NULL,NULL,0),(24,'1234567','陈浩东',12,'医院管理员',NULL,NULL,NULL,1),(25,'123456','测试用户',9,'药房医生','医师',NULL,1,1);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `standard` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dosage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cost` float(11,2) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dept_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5978 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1123,'当归','DG','100g','汤药','g',45.00,'中药','中药费',0,1),(1176,'紫苏','ZS','100g','中草药','g',39.00,'中药','中药费',10,1),(1245,'盘尼西林','PNXL','三片/盒','胶囊剂','颗粒',12.24,'西药','西药费',0,1),(1374,'布洛芬缓释胶囊','BLFHSJN','0.3g*24粒/盒','胶囊剂','粒',0.22,'西药','西药费',0,1),(1548,'麻黄','MH','100g','中草药','g',34.00,'中药','中药费',10,1),(2835,'雪见','XJ','20g','中草药','g',39.00,'中药','中药费',10,1),(3922,'复方青黛片','FFQDP','20片/盒','中成药','片',60.00,'中药','中药费',10,1),(5932,'黄芪','HQ','10g','中草药','g',34.00,'中药','中药费',10,1),(5933,'安息香','AXX','100g','中草药','g',58.00,'中药','中药费',0,1),(5934,'艾叶','AY','100g','中草药','g',34.00,'中药','中药费',0,1),(5935,'太子参','TZS','100g','中草药','g',293.00,'中药','中药费',0,1),(5936,'杜仲','DZ','100g','中草药','g',239.00,'中药','中药费',0,0),(5937,'丹皮','DP','100g','中草药','g',29.00,'中药','中药费',0,0),(5938,'半夏','bx','100g','中草药','g',129.00,'中药','中药费',0,1),(5939,'冰片','BP','100g','中草药','g',292.00,'中药','中药费',0,1),(5940,'地肤子','DFZ','100g','中草药','g',293.00,'中药','中药费',0,1),(5941,'丁香','DX','100g','中草药','g',332.00,'中药','中药费',0,1),(5942,'陈皮','CP','100g','中草药','g',50.00,'中药','中药费',0,1),(5943,'灯心草','DXC','100g','中草药','g',32.00,'中药','中药费',0,1),(5944,'川椒','CJ','100g','中草药','g',29.00,'中药','中药费',0,1),(5945,'赤芍','CS','100g','中草药','g',290.00,'中药','中药费',0,1),(5946,'沉香','CX','100g','中草药','g',294.00,'中药','中药费',0,1),(5947,'百合','BH','100g','中草药','g',45.00,'中药','中药费',0,1),(5948,'白芷','BZ','100g','中草药','g',53.00,'中药','中药费',0,1),(5949,'芦荟','LH','100g','中草药','g',63.00,'中药','中药费',0,1),(5950,'二益丸','EYW','100g','中成药','g',74.00,'中药','中药费',0,1),(5951,'结石通片','JSTP','100g','中成药','g',98.00,'中药','中药费',0,1),(5952,'五淋丸','WLW','100g','中成药','g',89.00,'中药','中药费',0,1),(5953,'清热银花糖浆','QRYHTJ','100g','中成药','g',74.00,'中药','中药费',0,1),(5954,'肾炎解热片','SYJRP','100g','中成药','g',89.00,'中药','中药费',0,1),(5955,'胆石清片','DSQP','100g','中成药','g',50.00,'中药','中药费',0,1),(5956,'玉屏风口服液','YPFKFY','100g','中成药','g',294.00,'中药','中药费',0,1),(5957,'消炎利胆片','XYLDP','100g','中成药','g',92.00,'中药','中药费',0,1),(5958,'乌军治胆片','WJZDP','100g','中成药','g',71.00,'中药','中药费',0,1),(5959,'六味地黄丸','LWDHW','100g','中成药','g',89.00,'中药','中药费',0,1),(5960,'祛暑丸','QSW','100g','中成药','g',38.00,'中药','中药费',0,1),(5961,'桑菊银翘散','SJYQS','100g','中成药','g',89.00,'中药','中药费',0,1),(5962,'清火枳麦片','QHZMP','100g','中成药','g',19.00,'中药','中药费',0,1),(5963,'诺氟沙星','NFSX','100g','片','颗粒',29.00,'西药','西药费',0,1),(5964,'头孢克洛','TBKL','100g','片','颗粒',90.00,'西药','西药费',0,1),(5965,'头孢氨苄','TBAB','100g','片','颗粒',290.00,'西药','西药费',0,1),(5966,'头孢唑啉钠','TBZLN','100g','片','颗粒',43.00,'西药','西药费',0,1),(5967,'头孢拉定','TBLD','100g','片','颗粒',39.00,'西药','西药费',0,1),(5968,'头孢呋辛','TBFX','100g','片','颗粒',89.00,'西药','西药费',0,1),(5969,'头孢曲松钠','tbqsn','100g','片','颗粒',92.00,'西药','西药费',0,1),(5970,'吉他霉素','JTMS','100g','片','颗粒',23.00,'西药','西药费',0,1),(5971,'克拉霉素','KLMS','100g','片','颗粒',46.00,'西药','西药费',0,0),(5972,'林可霉素','LKMS','100g','片','颗粒',83.00,'西药','西药费',0,0),(5973,'麦迪霉素','MDMS','100g','片','颗粒',64.00,'西药','西药费',0,1),(5974,'交沙霉素','JSMS','100g','片','颗粒',62.00,'西药','西药费',0,1),(5975,'吲哚美辛','ydmx','100g','片','颗粒',74.00,'西药','西药费',0,1),(5976,'埃斯林','als','100g','片','颗粒',83.00,'西药','西药费',0,1),(5977,'正痛片','ZTP','100g','片','颗粒',83.00,'西药','西药费',0,1);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ill`
--

DROP TABLE IF EXISTS `ill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ill` (
  `ill_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ill_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ICD_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ill_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`ICD_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ill`
--

LOCK TABLES `ill` WRITE;
/*!40000 ALTER TABLE `ill` DISABLE KEYS */;
INSERT INTO `ill` VALUES ('HL','霍乱','A00','传染病',1),('GDXHL','古典型霍乱','A00.051','传染病',1),('ZXHL','中型霍乱','A00.052','传染病',1),('ARTHL','埃尔托霍乱','A00.152','传染病',1),('SHFMY','伤寒腹膜炎','A01.003+','伤寒',1),('SHFY','伤寒肺炎','A01.051+','肺炎',1),('CCXXSH','肠出血性伤寒','A01.054','伤寒',1),('SMSJXCY','沙门氏菌性肠炎','A02.004','肠炎',1),('SY','沙眼','A990','眼病',1),('NMB','奶麻病','BES020','皮肤病',1),('DSB','丹痧病','BES040','痧病',1),('DKB','顿咳病','BES060','肺病',1),('RJWB','软脚瘟病','BES070','瘟病',1),('XEYDLB','小儿疫毒痢病','BES080','痢病',1),('ZXB','疰夏病','BES090','热病',1),('XJRB','夏季热病','BES100','热病',1),('THB','胎黄病','BEX010','皮肤病',1),('CYDB','赤游丹病','BEX020','皮肤病',1),('QFB','脐风病','BEX060','中医疾病',1),('BCB','暴喘病','BNF051','肺系病类',1),('BXB','暴泻病','BNP111','脾系病类',1),('BLB','暴聋病','BRE070','耳病类',1),('WY','瘟疫','F444','传染病',1),('XJXSWZD','细菌性食物中毒','L2-1A0','食物中毒',1),('BDXCDGR','病毒性肠道感染','L2-1A2','肠道感染',1),('CDYCGR','肠道原虫感染','L2-1A3','肠道感染',1),('MD','梅毒','L2-1A6','传染病',1),('JHB','结核病','L2-1B1','传染病',1),('JXFSR','急性风湿热','L2-1B4','风湿',1);
/*!40000 ALTER TABLE `ill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nondrug`
--

DROP TABLE IF EXISTS `nondrug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nondrug` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` float(11,2) NOT NULL,
  `standard` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dept_id` int NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nondrug`
--

LOCK TABLES `nondrug` WRITE;
/*!40000 ALTER TABLE `nondrug` DISABLE KEYS */;
INSERT INTO `nondrug` VALUES (1,'PBCC0101','普通拔罐治疗',18.00,'次',10,'诊疗费',1),(2,'HPC86307','肠代食管术',3194.00,'次',4,'诊疗费',1),(3,'ABEA0001','清创(缝合)术(小)',33.00,'次',14,'诊疗费',1),(4,'AHS2234','核磁共振检查',22.00,'次',7,'诊疗费',1),(5,'SDG','血常规',23.00,'次',13,'诊疗费',1),(6,'WERTV','输液',776.00,'次',14,'诊疗费',1),(7,'ZJ','针灸',465.00,'次',10,'诊疗费',1),(8,'HZF','汗蒸法',100.00,'次',15,'诊疗费',1),(9,'DMAYS','动脉造影术',23.00,'次',8,'诊疗费',1),(10,'XMCCS','胸膜穿刺术',45.00,'次',7,'诊疗费',1),(11,'WJ','胃镜',34.00,'次',2,'诊疗费',1),(12,'XYTX','血液透析',888.00,'次',3,'诊疗费',1),(13,'JXXJGSJMRSZL','急性心肌梗死静脉溶栓治疗',444.00,'次',3,'诊疗费',1),(14,'RGYZZZL','人工牙种植治疗',555.00,'次',17,'诊疗费',1),(15,'QKYCXF','全口义齿修复',39.00,'次',17,'诊疗费',1),(16,'TWSS','体外碎石',345.00,'次',14,'诊疗费',1),(17,'LSXZQBQZRS','临时心脏起搏器植入术',2394.00,'次',6,'诊疗费',1),(18,'NXSYZY','逆行肾盂造影',393.00,'次',2,'诊疗费',1),(19,'ZQGJ','支气管镜',434.00,'次',1,'诊疗费',1),(20,'SEZCJ','十二指肠镜',234.00,'次',2,'诊疗费',1),(21,'TN','中医推拿',89.00,'次',15,'诊疗费',1),(22,'LSSF','理伤手法',29.00,'次',15,'诊疗费',1),(23,'LCXUXJC','临床血液学检测',234.00,'次',13,'诊疗费',1),(24,'XSYZXJC','血栓与止血检测',213.00,'次',13,'诊疗费',1),(25,'LCTYXJC','临床体液学检测',372.00,'次',13,'诊疗费',1),(26,'LCSWHXJC','临床生物化学检测',423.00,'次',13,'诊疗费',1),(27,'LCMYXJC','临床免疫学检测',286.00,'次',13,'诊疗费',1),(28,'LCWSWXJC','临床微生物学检测',429.00,'次',13,'诊疗费',1),(29,'GMYJC','过敏源检查',253.30,'次',13,'检查费',1);
/*!40000 ALTER TABLE `nondrug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `reg_level` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `reg_limit` int NOT NULL,
  `reg_cost` int NOT NULL,
  `reg_order` int NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`reg_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'普通号',40,20,3,'挂号费',1),(2,'专家号',10,100,2,'挂号费',1),(3,'急症号',10,80,1,'挂号费',1),(4,'教授号',15,300,4,'挂号费',1);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medrecord`
--

DROP TABLE IF EXISTS `medrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `record_id` int NOT NULL,
  `complaint` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cur_ill` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cur_treatment` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `past_ill` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `allergy` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phy_exam` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ICD_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `suggest` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `attention` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `doc_id` int NOT NULL,
  `results` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `register_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medrecord`
--

LOCK TABLES `medrecord` WRITE;
/*!40000 ALTER TABLE `medrecord` DISABLE KEYS */;
INSERT INTO `medrecord` VALUES (1,1,'主诉','阿萨','深度','地方','发给','规划','A00','2020-12-20 13:04:54','减肥','不要出门',1,'',1),(4,6,'q','q','q','q','q','q','BES090','2020-12-16 00:00:00','1','1',1,NULL,5),(6,7,'主诉','现病史无','奥司他韦、头孢',NULL,NULL,'抽烟',NULL,'2023-08-10 16:13:39',NULL,NULL,1,NULL,2),(8,5,'肚子疼','','','','','','','2023-08-13 22:34:06','','',1,'',2);
/*!40000 ALTER TABLE `medrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-16 18:29:41
