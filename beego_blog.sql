/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : db_beego

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-11-28 15:00:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('2', '人文地理', '2018-11-28 14:56:56', '2018-11-28 14:56:56');
INSERT INTO `tb_category` VALUES ('4', '美食探秘', '2018-11-28 14:57:19', '2018-11-28 14:57:19');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('4', 'dsdfsfdsfds', 'fsdfdsfds', '2017-08-16 15:34:09', '[', '0');
INSERT INTO `tb_comment` VALUES ('5', 'dsfds', 'fdsfds', '2017-08-09 15:41:12', '111', '1');
INSERT INTO `tb_comment` VALUES ('7', 'fsdfdsfdsfds', 'sdfdsfdsf', null, '[', '8');
INSERT INTO `tb_comment` VALUES ('8', 'sdfdsfds', 'fsdfdsfdsfds', null, '[', '8');
INSERT INTO `tb_comment` VALUES ('9', 'fdsfdsfdsfds', '<p style=\"text-align: left;\"><b>fdsfdsfdsffdsfdsfdsfdsfdsdsfdsfds</b></p><p style=\"text-align: left;\"><b><br></b></p><p style=\"text-align: left;\"><b>a. fsdfdsf</b></p>', '2017-08-09 15:42:54', '[', '8');

-- ----------------------------
-- Table structure for tb_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_config`;
CREATE TABLE `tb_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_config
-- ----------------------------
INSERT INTO `tb_config` VALUES ('1', 'title', 'beego-blog');
INSERT INTO `tb_config` VALUES ('2', 'url', 'http://www.innfotech.com');
INSERT INTO `tb_config` VALUES ('5', 'keywords', 'beego');
INSERT INTO `tb_config` VALUES ('6', 'description', 'beego-blog');
INSERT INTO `tb_config` VALUES ('7', 'email', 'wangshilei@innfotech.com');
INSERT INTO `tb_config` VALUES ('9', 'timezone', '8');
INSERT INTO `tb_config` VALUES ('11', 'start', '1');
INSERT INTO `tb_config` VALUES ('12', 'qq', '1554231908');

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '标签名',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用次数',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tag
-- ----------------------------
INSERT INTO `tb_tag` VALUES ('1', 'iPhone', '3', '2017-08-08 10:58:39', '2017-08-08 10:58:39');
INSERT INTO `tb_tag` VALUES ('2', '越狱', '3', '2017-08-08 10:58:39', '2017-08-08 10:58:39');

-- ----------------------------
-- Table structure for tb_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag_post`;
CREATE TABLE `tb_tag_post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '标签id',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容id',
  PRIMARY KEY (`id`),
  KEY `tagid` (`tag_id`),
  KEY `postid` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tag_post
-- ----------------------------
INSERT INTO `tb_tag_post` VALUES ('1', '1', '22');
INSERT INTO `tb_tag_post` VALUES ('2', '2', '22');
INSERT INTO `tb_tag_post` VALUES ('3', '1', '21');
INSERT INTO `tb_tag_post` VALUES ('4', '2', '21');
INSERT INTO `tb_tag_post` VALUES ('5', '1', '20');
INSERT INTO `tb_tag_post` VALUES ('6', '2', '20');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `last_time` timestamp NULL DEFAULT NULL,
  `last_ip` varchar(200) DEFAULT 'current_timestamp()',
  `state` tinyint(4) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', ' e10adc3949ba59abbe56e057f20f883e', '', '10', null, '[', '0', null, '2017-08-08 19:48:05');
