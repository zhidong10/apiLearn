/*
Navicat MySQL Data Transfer

Source Server         : exapp
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : exapp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-05-23 23:11:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `isopen` tinyint(4) DEFAULT '0',
  `create_time` bigint(20) DEFAULT NULL,
  `posting` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '1', '测试标题', 'http://localhost:3000/uploads/apple.png', '测试路径', '0', '1590243835593', 'http://localhost:3000/uploads/apple.png');
