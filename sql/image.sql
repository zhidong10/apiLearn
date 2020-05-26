/*
Navicat MySQL Data Transfer

Source Server         : exapp
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : exapp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-05-23 01:06:55
*/

SET FOREIGN_KEY_CHECKS=0;

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
