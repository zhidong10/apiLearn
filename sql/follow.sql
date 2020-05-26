/*
Navicat MySQL Data Transfer

Source Server         : exapp
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : exapp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-05-23 23:11:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follow_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('1', '1', '2', '1590246372091');
