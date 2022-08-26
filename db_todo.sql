/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.33 : Database - api_todo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`api_todo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `api_todo`;

/*Table structure for table `todos` */

DROP TABLE IF EXISTS `todos`;

CREATE TABLE `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `todo` text NOT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `userId` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `todos` */

insert  into `todos`(`id`,`todo`,`completed`,`userId`,`createdAt`,`updatedAt`) values 
(3,'tes1234',0,3,'2022-08-26 21:46:36','2022-08-26 21:46:36'),
(4,'tes1234567',0,3,'2022-08-26 21:47:35','2022-08-26 22:06:33'),
(5,'tes pertama',1,3,'2022-08-27 02:02:41','2022-08-27 02:02:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`refresh_token`,`createdAt`,`updatedAt`) values 
(1,'M Fikri','email@gmail.com','$2b$10$Wr4EunRyINxZpyEWft9weuS6e04KuGYnLhuiiiKTiPTrDcv3ftv4i',NULL,'2021-10-26 04:41:29','2021-10-26 07:18:50'),
(2,'John Doe','john@gmail.com','$2b$10$xp6VYwckwTrjhUCWgf5X3u4lFZq/NDC0/PGPh9TFT0lDICNDriPla',NULL,'2021-10-31 15:18:26','2021-11-02 03:51:10'),
(3,'rizki','rizki@mail.com','$2b$10$JA8HgrEl.xPShQ/.zVB9UuPd7PG3oLvqLD1R1lSmKH.mEEqonHDMu',NULL,'2022-08-25 14:49:42','2022-08-26 19:08:50'),
(4,NULL,'rizki2@mail.com','$2b$10$olSEE9jqhZZkxuJewhZJlub9j9hhekrwn58ilGyQmBZ1aT/NH6nnO',NULL,'2022-08-26 19:11:29','2022-08-26 19:11:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
