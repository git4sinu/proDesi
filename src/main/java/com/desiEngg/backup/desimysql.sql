/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.1.50-community : Database - desiengg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`desiengg` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `desiengg`;

/*Table structure for table `app_user` */

DROP TABLE IF EXISTS `app_user`;

CREATE TABLE `app_user` (
  `id` varchar(255) NOT NULL,
  `account_expired` bit(1) DEFAULT NULL,
  `account_locked` bit(1) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(15) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `credentials_expired` bit(1) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `account_enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_user` */

insert  into `app_user`(`id`,`account_expired`,`account_locked`,`address`,`city`,`country`,`postal_code`,`province`,`credentials_expired`,`email`,`account_enabled`,`first_name`,`last_name`,`password`,`password_hint`,`phone_number`,`username`,`version`,`website`) values ('6acd024e45f0a8420145f0a7780d0001','\0','\0','','Mysore','India','80210','CO','\0','git4sinu@gmail.com','','Ramamurthy','Sri','a40546cc4fd6a12572828bb803380888ad1bfdab','Not a female kitty.','','desiengg',1,'http://raibledesigns.com'),('8acd061e45f0a6660154f0a5580d0000','\0','\0','','Bangalore','India','80210','CO','\0','sri.05engg@gmail.com','','Sridhar','ram','b6b1f4781776979c0775c71ebdd8bdc084aac5fe','A male kitty.','','user',1,'http://tomcat.apache.org'),('8acd061e45f55c550145f55d6bd00000','\0','\0','318,Venkateshwara Nilaya,',NULL,NULL,NULL,NULL,'\0','sri@gmail.com','','Sridhar',NULL,'082db975b1987eb6f00e041e6014150c98ebb953',NULL,'8861432892','sridhar19733',0,NULL);

/*Table structure for table `bucket` */

DROP TABLE IF EXISTS `bucket`;

CREATE TABLE `bucket` (
  `id` varchar(255) NOT NULL,
  `angle` double DEFAULT NULL,
  `belt_speed` double DEFAULT NULL,
  `belt_width` double DEFAULT NULL,
  `bucket_count` double DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `chute_depth` double DEFAULT NULL,
  `chute_vertical` double DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `density` double DEFAULT NULL,
  `diameter` double DEFAULT NULL,
  `drive_speed` double DEFAULT NULL,
  `fourPole_ratio` double DEFAULT NULL,
  `gear_load` double DEFAULT NULL,
  `gross_weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `payment_status` bit(1) DEFAULT NULL,
  `pitch` double DEFAULT NULL,
  `power` double DEFAULT NULL,
  `pulleyarms_count` double DEFAULT NULL,
  `pulley_thickness` double DEFAULT NULL,
  `pulley_width` double DEFAULT NULL,
  `shaft_diameter` double DEFAULT NULL,
  `shaft_load` double DEFAULT NULL,
  `sixPole_ratio` double DEFAULT NULL,
  `stress` double DEFAULT NULL,
  `tension_slack` double DEFAULT NULL,
  `tension_tight` double DEFAULT NULL,
  `torque` double DEFAULT NULL,
  `twoPole_ratio` double DEFAULT NULL,
  `userid_ref` varchar(255) DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bucket` */

insert  into `bucket`(`id`,`angle`,`belt_speed`,`belt_width`,`bucket_count`,`capacity`,`chute_depth`,`chute_vertical`,`date_created`,`density`,`diameter`,`drive_speed`,`fourPole_ratio`,`gear_load`,`gross_weight`,`height`,`payment_status`,`pitch`,`power`,`pulleyarms_count`,`pulley_thickness`,`pulley_width`,`shaft_diameter`,`shaft_load`,`sixPole_ratio`,`stress`,`tension_slack`,`tension_tight`,`torque`,`twoPole_ratio`,`userid_ref`,`volume`,`weight`,`width`) values ('8acd061e45f55c550145f55d6cd90001',9,0,5.02,1.5,1,0,0,'2014-05-13 17:05:11',2,0,337070.06,0.004,25.006,4.15,6,'',4,0,0,0.003,5.04,0,8.335,0.003,8,0.19,0.482,0,0.009,'8acd061e45f55c550145f55d6bd00000',3,7,5);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id`,`description`,`name`) values (-2,'Default role for all Users','ROLE_USER'),(-1,'Administrator role (can edit Users)','ROLE_ADMIN');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK143BF46A4FD90D75` (`role_id`),
  KEY `FK143BF46AF503D155` (`user_id`),
  CONSTRAINT `FK143BF46AF503D155` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK143BF46A4FD90D75` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values ('8acd061e45f0a6660154f0a5580d0000',-2),('8acd061e45f55c550145f55d6bd00000',-2),('6acd024e45f0a8420145f0a7780d0001',-1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
