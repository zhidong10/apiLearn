/*
Navicat MySQL Data Transfer

Source Server         : exapp
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : exapp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-05-23 23:12:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cate`
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', 'phone', '0', '2020-05-15 23:30:13');
INSERT INTO `cate` VALUES ('2', 'tv', '1', '2020-05-16 23:34:06');

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

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', 'http://localhost:3000/uploads/QQ.png', '1', '1590165228811');
INSERT INTO `image` VALUES ('2', 'http://localhost:3000/uploads/apple.png', '1', '1590165228625');
INSERT INTO `image` VALUES ('3', 'http://localhost:3000/uploads/apple.png', '1', '1590165335479');
INSERT INTO `image` VALUES ('4', 'http://localhost:3000/uploads/QQ.png', '1', '1590165335650');
INSERT INTO `image` VALUES ('5', 'http://localhost:3000/uploads/apple.png', '1', '1590165506825');
INSERT INTO `image` VALUES ('6', 'http://localhost:3000/uploads/QQ.png', '1', '1590165506975');
INSERT INTO `image` VALUES ('7', 'http://localhost:3000/uploads/apple.png', '1', '1590165665954');
INSERT INTO `image` VALUES ('8', 'http://localhost:3000/uploads/QQ (2).png', '1', '1590165666111');
INSERT INTO `image` VALUES ('9', 'http://localhost:3000/uploads/QQ (1).png', '1', '1590165666128');
INSERT INTO `image` VALUES ('10', 'http://localhost:3000/uploads/QQ.png', '1', '1590165666122');
INSERT INTO `image` VALUES ('11', 'http://localhost:3000/uploads/apple.png', '1', '1590165803764');
INSERT INTO `image` VALUES ('12', 'http://localhost:3000/uploads/QQ (2).png', '1', '1590165803931');
INSERT INTO `image` VALUES ('13', 'http://localhost:3000/uploads/QQ.png', '1', '1590165803936');
INSERT INTO `image` VALUES ('14', 'http://localhost:3000/uploads/QQ (1).png', '1', '1590165803942');
INSERT INTO `image` VALUES ('15', '111', '1', '111');
INSERT INTO `image` VALUES ('16', '111', '1', '111');
INSERT INTO `image` VALUES ('17', '111', '1', '111');
INSERT INTO `image` VALUES ('18', 'http://localhost:3000/uploads/apple.png', '1', '1590167099935');
INSERT INTO `image` VALUES ('19', 'http://localhost:3000/uploads/QQ (2).png', '1', '1590167099940');
INSERT INTO `image` VALUES ('20', 'http://localhost:3000/uploads/QQ.png', '1', '1590167099944');
INSERT INTO `image` VALUES ('21', 'http://localhost:3000/uploads/QQ (1).png', '1', '1590167099961');
INSERT INTO `image` VALUES ('22', 'http://localhost:3000/uploads/apple.png', '1', '1590167159292');
INSERT INTO `image` VALUES ('23', 'http://localhost:3000/uploads/QQ (2).png', '1', '1590167159298');
INSERT INTO `image` VALUES ('24', 'http://localhost:3000/uploads/QQ.png', '1', '1590167159302');
INSERT INTO `image` VALUES ('25', 'http://localhost:3000/uploads/QQ (1).png', '1', '1590167159305');

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

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpic` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '啦啦啦', 'http://localhost:3000/public/uploads/apple.png', '123456', '15033333333', 'zhidong@q.com', null, '2020-05-17 00:23:48');
INSERT INTO `user` VALUES ('2', 'zhidong2', '111', '123', '18533333333', 'zhidong@163.com', null, '2020-05-23 22:52:51');

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
