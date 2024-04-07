/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - online_college
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`online_college` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `online_college`;

/*Table structure for table `academics` */

DROP TABLE IF EXISTS `academics`;

CREATE TABLE `academics` (
  `academic_id` int(11) NOT NULL AUTO_INCREMENT,
  `academic` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`academic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `academics` */

/*Table structure for table `activities` */

DROP TABLE IF EXISTS `activities`;

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `activities` */

/*Table structure for table `chats` */

DROP TABLE IF EXISTS `chats`;

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `sender_type` varchar(50) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `reciever_type` varchar(50) DEFAULT NULL,
  `messages` varchar(1000) DEFAULT NULL,
  `date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `chats` */

insert  into `chats`(`chat_id`,`sender_id`,`sender_type`,`reciever_id`,`reciever_type`,`messages`,`date_time`) values 
(1,2,'user',0,'bot','hello','2024-04-06 22:12:06'),
(2,2,'user',0,'bot','hello','2024-04-06 22:13:06'),
(3,0,'bot',2,'user','Hello!','2024-04-06 22:13:06'),
(4,2,'user',0,'bot','who are you','2024-04-06 22:13:13'),
(5,0,'bot',2,'user','You can call me Mind Reader.','2024-04-06 22:13:13'),
(6,2,'user',0,'bot','what does that mean','2024-04-06 22:13:23'),
(7,2,'user',0,'bot','what does that mean','2024-04-06 22:13:57'),
(8,2,'user',0,'bot','what is that','2024-04-06 22:14:43'),
(9,2,'user',0,'bot','what is that','2024-04-06 22:15:28'),
(10,0,'bot',2,'user','For library details visit: https://collegedunia.com/college/14735-rajiv-gandhi-institute-of-technology-rit-kottayam/library','2024-04-06 22:15:28'),
(11,2,'user',0,'bot','what is the secret of the universe','2024-04-06 22:15:48'),
(12,0,'bot',2,'user','College students','2024-04-06 22:15:48'),
(13,2,'user',0,'bot','what does that mean','2024-04-06 22:16:01'),
(14,2,'user',0,'bot','what does that mean','2024-04-06 22:17:41'),
(15,0,'bot',2,'user','Sorry, I dont understand','2024-04-06 22:17:41'),
(16,2,'user',0,'bot','why','2024-04-06 22:17:48'),
(17,0,'bot',2,'user','Sorry, I dont understand','2024-04-06 22:17:48'),
(18,3,'user',0,'bot','hello','2024-04-07 06:55:38'),
(19,0,'bot',3,'user','Hello!','2024-04-07 06:55:38'),
(20,3,'user',0,'bot','what are you','2024-04-07 06:55:47'),
(21,0,'bot',3,'user','You can call me Mind Reader.','2024-04-07 06:55:47'),
(22,3,'user',0,'bot','college','2024-04-07 06:55:52'),
(23,0,'bot',3,'user','For hostel detail visit https://collegedunia.com/college/14735-rajiv-gandhi-institute-of-technology-rit-kottayam/hostel','2024-04-07 06:55:52'),
(24,3,'user',0,'bot','what can you do','2024-04-07 06:56:10'),
(25,0,'bot',3,'user','You can call me Mind Reader.','2024-04-07 06:56:10'),
(26,3,'user',0,'bot','jjjj','2024-04-07 15:56:46'),
(27,0,'bot',3,'user','Sorry, I dont understand','2024-04-07 15:56:46');

/*Table structure for table `contacts` */

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `contacts` */

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`department_id`,`department`,`description`,`image`) values 
(1,'wjdcgwchd','jbhb','static/d91eeeaa-1f15-4369-b680-3e533da9fd6eWIN_20240212_12_45_35_Pro.jpg');

/*Table structure for table `facilities` */

DROP TABLE IF EXISTS `facilities`;

CREATE TABLE `facilities` (
  `facility_id` int(11) NOT NULL AUTO_INCREMENT,
  `facility` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`facility_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `facilities` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'stud','stud','student'),
(3,'syam','1111','student');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`login_id`,`first_name`,`last_name`,`phone`,`email`) values 
(1,3,'Syam','Syamraj','7561814315','syamraj310@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
