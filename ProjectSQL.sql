CREATE DATABASE IF NOT EXISTS `cs336project`;
USE `cs336project`;


DROP TABLE IF EXISTS `userLogin`;

CREATE TABLE `userLogin`(`email` varchar(50) NOT NULL DEFAULT '', `password` varchar(50) NOT NULL DEFAULT '', `first` varchar(50) DEFAULT NULL,
	`last` varchar(50) DEFAULT NULL, `userName` varchar(50) DEFAULT NULL, PRIMARY KEY(`email`, `password`))ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
