# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.27)
# Database: calumsCollection
# Generation Time: 2019-09-24 13:23:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table myBikes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `myBikes`;

CREATE TABLE `myBikes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `wheelset` varchar(70) DEFAULT NULL,
  `groupset` varchar(100) DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `myBikes` WRITE;
/*!40000 ALTER TABLE `myBikes` DISABLE KEYS */;

INSERT INTO `myBikes` (`id`, `manufacturer`, `model`, `wheelset`, `groupset`, `image`)
VALUES
	(1,'Cannondale','CAAD 8','Campagnolo Scirocco CX','Tiagra 50-34/11-28',X'43616E6E6F6E64616C652D43414144382D323031352D5469616772612E6A7067'),
	(2,'Fairlight','Secan','Hope 20Five RS4','Shimano GRX 600 2x 46-30/11-34',X'464149524C494748542D323031382D534543414E2E6A7067'),
	(3,'Specialized','Allez Sprint','DT R460','Shimano 105 52-36/11-28',X'414C4C455A5F535052494E542D434F4D502D444953432E6A706567');

/*!40000 ALTER TABLE `myBikes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
