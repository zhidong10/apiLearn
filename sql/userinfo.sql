/*
Navicat MySQL Data Transfer

Source Server         : exapp
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : exapp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-05-23 23:12:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `age` tinyint(3) DEFAULT NULL,
  `job` varchar(128) DEFAULT NULL,
  `path` varchar(512) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '1', '33', '程序员', '北京', '1985-12-02 00:00:00', '1');
