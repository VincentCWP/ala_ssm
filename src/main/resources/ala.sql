-- MySQL dump 10.13  Distrib 8.0.12, for osx10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: ala
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hdzs`
--

DROP TABLE IF EXISTS `hdzs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hdzs` (
  `zsid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zspicture` varchar(500) DEFAULT NULL COMMENT '图片（存放图片地址）',
  `zsname` varchar(50) DEFAULT NULL COMMENT '活动展示的名称',
  PRIMARY KEY (`zsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hdzs`
--

LOCK TABLES `hdzs` WRITE;
/*!40000 ALTER TABLE `hdzs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hdzs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `oname` varchar(50) DEFAULT NULL COMMENT '订单名',
  `omessage` varchar(50) DEFAULT NULL COMMENT '订购信息',
  `onum` int(50) DEFAULT NULL COMMENT '数量',
  `omoney` int(50) DEFAULT NULL COMMENT '实付款',
  `ostate` varchar(50) DEFAULT NULL COMMENT '交易状态',
  `otime` date DEFAULT NULL COMMENT '订单提交时间',
  `odizhi` varchar(128) DEFAULT NULL,
  `ochuxing` varchar(128) DEFAULT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `uphone` varchar(16) DEFAULT NULL,
  `ut` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pchd`
--

DROP TABLE IF EXISTS `pchd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pchd` (
  `hdid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hdaddress` varchar(50) DEFAULT NULL COMMENT '活动区域地址',
  `hdtype` varchar(50) DEFAULT NULL COMMENT '活动类型',
  `hdtime` varchar(50) DEFAULT NULL COMMENT '活动启止时间',
  `hdname` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `hdprice` int(50) DEFAULT NULL COMMENT '活动单价',
  `hddetails` varchar(500) DEFAULT NULL COMMENT '产品详情',
  `hdpicture` varchar(500) DEFAULT NULL COMMENT '图片存放地址',
  `hdstate` varchar(50) DEFAULT NULL COMMENT '活动状态(0.进行中1.截止)',
  PRIMARY KEY (`hdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pchd`
--

LOCK TABLES `pchd` WRITE;
/*!40000 ALTER TABLE `pchd` DISABLE KEYS */;
/*!40000 ALTER TABLE `pchd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcly`
--

DROP TABLE IF EXISTS `pcly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pcly` (
  `lyid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lytype` varchar(50) DEFAULT NULL COMMENT '出游时长(一日游，二日游.....)',
  `lyname` varchar(50) DEFAULT NULL COMMENT '出游项目名称',
  `lyaddress` varchar(50) DEFAULT NULL COMMENT '出游目的地',
  `lypriceA` int(50) DEFAULT NULL COMMENT '成人单价',
  `lypriceB` int(50) DEFAULT NULL COMMENT '儿童单价',
  `lyage` int(50) DEFAULT NULL COMMENT '最低年龄限制（3岁起）',
  `lypicture` varchar(500) DEFAULT NULL COMMENT '图片（存放图片地址）',
  PRIMARY KEY (`lyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcly`
--

LOCK TABLES `pcly` WRITE;
/*!40000 ALTER TABLE `pcly` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `userID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) DEFAULT NULL COMMENT '用戶名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `role` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` int(50) DEFAULT NULL COMMENT '手机号',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `qq` varchar(50) DEFAULT NULL COMMENT 'QQ号',
  `babyname` varchar(50) DEFAULT NULL COMMENT '宝宝名字',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2018-11-08 10:51:35
