/*
 Navicat Premium Data Transfer

 Source Server         : lnmp
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 127.0.0.1
 Source Database       : testa

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : utf-8

 Date: 09/05/2019 11:35:14 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `qid` int(10) unsigned DEFAULT NULL,
  `t` varchar(500) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customerpath` (`customerpath`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) DEFAULT NULL,
  `appid` char(20) DEFAULT NULL,
  `appsec` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerpath` (`customerpath`,`appid`),
  KEY `customerpath_2` (`customerpath`),
  KEY `appid` (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `contact_answers`
-- ----------------------------
DROP TABLE IF EXISTS `contact_answers`;
CREATE TABLE `contact_answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) DEFAULT NULL,
  `contactid` int(10) unsigned DEFAULT NULL,
  `aid` int(10) unsigned DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customerpath` (`customerpath`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerpath` (`customerpath`,`openid`),
  KEY `customerpath_2` (`customerpath`),
  KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(50) DEFAULT NULL,
  `mediaid` char(100) DEFAULT NULL,
  `customerpath` char(20) DEFAULT NULL,
  `expiretime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) CHARACTER SET latin1 DEFAULT NULL,
  `t` varchar(500) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerpath` (`customerpath`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `relationships`
-- ----------------------------
DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `contactid` int(10) unsigned DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contactid` (`contactid`),
  KEY `customerpath` (`customerpath`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerpath` char(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `contactid` int(10) unsigned DEFAULT NULL,
  `unique_openid` varchar(50) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `unique_openid` (`unique_openid`),
  KEY `contactid` (`contactid`),
  KEY `customerpath` (`customerpath`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
