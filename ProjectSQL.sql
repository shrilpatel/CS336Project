CREATE DATABASE IF NOT EXISTS `cs336project`;
USE `cs336project`;


DROP TABLE IF EXISTS `userLogin`;
DROP TABLE IF EXISTS `auction`;

CREATE TABLE `userLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', `first` varchar(50) DEFAULT NULL,
	`last` varchar(50) DEFAULT NULL, `userName` varchar(50) DEFAULT NULL, PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `auction`(`numOfBids` int DEFAULT NULL, `price` int DEFAULT NULL, `bidsHistory` int DEFAULT NULL, `numOfBids` int DEFAULT NULL, `secretMin` int DEFAULT NULL, `initialPrice` int DEFAULT NULL, `category` varchar(50) DEFAULT NULL, `itemName` varchar(50) NOT NULL DEFAULT '', `email` varchar(50) NOT NULL DEFAULT '',  PRIMARY KEY(`itemName`, `email`))ENGINE=InnoDB DEFAULT CHARSET=latin1; 