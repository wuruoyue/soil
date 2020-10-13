/*
Navicat MySQL Data Transfer

Source Server         : 10.130.161.2qys
Source Server Version : 50647
Source Host           : 10.130.161.2:3307
Source Database       : portal_com

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2020-10-12 08:35:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vehicle_announcement_mateial
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_announcement_mateial`;
CREATE TABLE `vehicle_announcement_mateial` (
  `mateial_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mateial` enum('三元材料电池','磷酸铁锂电池','超级电容器','钴酸锂电池','锰酸锂电池','钛酸锂电池','镍氢电池','其它类型电池') DEFAULT NULL COMMENT '电池种类',
  PRIMARY KEY (`mateial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of vehicle_announcement_mateial
-- ----------------------------
INSERT INTO `vehicle_announcement_mateial` VALUES ('1', '三元材料电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('2', '磷酸铁锂电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('3', '超级电容器');
INSERT INTO `vehicle_announcement_mateial` VALUES ('4', '钴酸锂电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('5', '锰酸锂电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('6', '钛酸锂电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('7', '镍氢电池');
INSERT INTO `vehicle_announcement_mateial` VALUES ('8', '其它类型电池');
