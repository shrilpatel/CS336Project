
CREATE DATABASE IF NOT EXISTS `cs336p1`;
USE `cs336p1`;


DROP TABLE IF EXISTS `userLogin`;
DROP TABLE IF EXISTS `buyer`;
DROP TABLE IF EXISTS `alerts`;

CREATE TABLE `userLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', `first` varchar(50) DEFAULT NULL,
	`last` varchar(50) DEFAULT NULL, `userName` varchar(50) DEFAULT NULL, PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;
    DROP TABLE IF EXISTS `auction`;
    
CREATE TABLE `auction`(`secretPrice` int DEFAULT NULL, `price` int DEFAULT NULL, `category` varchar(50) DEFAULT NULL, `itemName` varchar(50) NOT NULL DEFAULT '', `email` varchar(50) NOT NULL DEFAULT '', PRIMARY KEY(`itemName`, `email`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `buyer`(`email` varchar(50) NOT NULL DEFAULT '', `upperLimit` int DEFAULT NULL, `price` int DEFAULT NULL, PRIMARY KEY(`email`))ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `alerts`(`type` varchar(50) NOT NULL DEFAULT '', `name` varchar(50) DEFAULT NULL, `price` int DEFAULT NULL, PRIMARY KEY(`type`, `price`))ENGINE=InnoDB DEFAULT CHARSET=latin1;