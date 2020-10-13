/*
Navicat MySQL Data Transfer

Source Server         : 10.130.161.2qys
Source Server Version : 50647
Source Host           : 10.130.161.2:3307
Source Database       : portal_com

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2020-10-12 08:34:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vehicle_info_type
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_info_type`;
CREATE TABLE `vehicle_info_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(255) DEFAULT NULL COMMENT '车辆种类',
  `parent_id` bigint(20) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL COMMENT '车辆种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of vehicle_info_type
-- ----------------------------
INSERT INTO `vehicle_info_type` VALUES ('1', '客车', null, '1');
INSERT INTO `vehicle_info_type` VALUES ('2', '特种车', null, '1');
INSERT INTO `vehicle_info_type` VALUES ('3', '乘用车', null, '1');
INSERT INTO `vehicle_info_type` VALUES ('4', '公交客车', '1', '2');
INSERT INTO `vehicle_info_type` VALUES ('5', '通勤客车', '1', '2');
INSERT INTO `vehicle_info_type` VALUES ('6', '旅游客车', '1', '2');
INSERT INTO `vehicle_info_type` VALUES ('7', '公路客车', '1', '2');
INSERT INTO `vehicle_info_type` VALUES ('8', '邮政特种车', '2', '2');
INSERT INTO `vehicle_info_type` VALUES ('9', '物流特种车', '2', '2');
INSERT INTO `vehicle_info_type` VALUES ('10', '环卫特种车', '2', '2');
INSERT INTO `vehicle_info_type` VALUES ('11', '工程特种车', '2', '2');
INSERT INTO `vehicle_info_type` VALUES ('12', '公务乘用车', '3', '2');
INSERT INTO `vehicle_info_type` VALUES ('13', '出租乘用车', '3', '2');
INSERT INTO `vehicle_info_type` VALUES ('14', '租赁乘用车', '3', '2');
INSERT INTO `vehicle_info_type` VALUES ('15', '私人乘用车', '3', '2');
