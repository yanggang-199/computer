/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.6.22-log : Database - dongjidi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dongjidi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dongjidi`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `b_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `Brand_name` varchar(30) DEFAULT NULL COMMENT '品牌名',
  UNIQUE KEY `b_id` (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `uid` int(11) NOT NULL COMMENT '用户id外键',
  `cid` int(11) NOT NULL COMMENT '用户收藏电脑id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collect` */

/*Table structure for table `computer` */

DROP TABLE IF EXISTS `computer`;

CREATE TABLE `computer` (
  `cid` int(10) NOT NULL AUTO_INCREMENT COMMENT '电脑id',
  `image` varchar(255) DEFAULT NULL COMMENT '用户图片',
  `motherboard` varchar(50) DEFAULT NULL COMMENT '电脑主板',
  `cpu` varchar(50) DEFAULT NULL COMMENT 'cpu',
  `ram` varchar(30) DEFAULT NULL COMMENT '内存',
  UNIQUE KEY `c_id` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `computer` */

/*Table structure for table `text` */

DROP TABLE IF EXISTS `text`;

CREATE TABLE `text` (
  `cid` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `uid` int(10) NOT NULL COMMENT '用户id',
  `text` varchar(255) DEFAULT NULL COMMENT '评论',
  UNIQUE KEY `s_id` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `text` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `phone` varchar(30) NOT NULL COMMENT '手机号',
  `icon` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
