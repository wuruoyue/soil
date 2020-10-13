/*
Navicat MySQL Data Transfer

Source Server         : 10.130.161.2qys
Source Server Version : 50647
Source Host           : 10.130.161.2:3307
Source Database       : portal_com

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2020-10-12 08:35:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vehicle_announcement_power_model
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_announcement_power_model`;
CREATE TABLE `vehicle_announcement_power_model` (
  `power_model_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `power_model` enum('插电式混合动力汽车(PHEV)','纯电动汽车(BEV)') DEFAULT NULL COMMENT '动力方式',
  PRIMARY KEY (`power_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of vehicle_announcement_power_model
-- ----------------------------
INSERT INTO `vehicle_announcement_power_model` VALUES ('1', '插电式混合动力汽车(PHEV)');
INSERT INTO `vehicle_announcement_power_model` VALUES ('2', '纯电动汽车(BEV)');
