CREATE DATABASE
IF NOT EXISTS `huiyishoes`;

USE `huiyishoes`;

-- 用户表
CREATE TABLE
IF NOT EXISTS `user` (
	`id` INT (11) NOT NULL auto_increment,
	`email` VARCHAR (100) NOT NULL,
	`username` VARCHAR (100) NOT NULL,
	`password` VARCHAR (50) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE KEY `username` (`username`)
) ENGINE = INNODB DEFAULT charset = utf8;

-- 文章表
CREATE TABLE
IF NOT EXISTS `article` (
	`id` INT (11) NOT NULL auto_increment,
	`title` VARCHAR (300) NOT NULL,
	`content` text NOT NULL,
	`tags` VARCHAR (200) NOT NULL,
	`user_id` INT (11) NOT NULL,
	`create_time` datetime NOT NULL,
	`update_time` datetime NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT charset = utf8;