/*
 Navicat Premium Data Transfer

 Source Server         : springboot
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : confrenceroom

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/05/2022 21:22:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator_info
-- ----------------------------
DROP TABLE IF EXISTS `administrator_info`;
CREATE TABLE `administrator_info` (
  `a_i_id` int NOT NULL AUTO_INCREMENT,
  `a_i_name` varchar(20) NOT NULL,
  `a_i_sex` int NOT NULL DEFAULT '0',
  `a_i_password` varchar(20) DEFAULT '123456',
  `a_i_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`a_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of administrator_info
-- ----------------------------
BEGIN;
INSERT INTO `administrator_info` VALUES (1, 'admin', 0, '123456', '1281277918@qq.com');
COMMIT;

-- ----------------------------
-- Table structure for appointment_info
-- ----------------------------
DROP TABLE IF EXISTS `appointment_info`;
CREATE TABLE `appointment_info` (
  `ap_i_id` int NOT NULL AUTO_INCREMENT,
  `u_i_id` int NOT NULL,
  `m_i_id` int NOT NULL,
  `ap_number` int NOT NULL,
  `ap_starttime` datetime(6) NOT NULL,
  `ap_endtime` datetime(6) NOT NULL,
  `ap_status` int NOT NULL DEFAULT '0',
  `ap_duration` float NOT NULL,
  PRIMARY KEY (`ap_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of appointment_info
-- ----------------------------
BEGIN;
INSERT INTO `appointment_info` VALUES (15, 1, 2, 3, '2022-05-06 00:00:00.000000', '2022-05-07 00:00:00.000000', 1, 24);
INSERT INTO `appointment_info` VALUES (16, 2, 3, 4, '2022-05-06 00:00:00.000000', '2022-05-07 00:00:00.000000', 1, 24);
INSERT INTO `appointment_info` VALUES (17, 3, 4, 4, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 1, 0);
INSERT INTO `appointment_info` VALUES (18, 2, 4, 4, '2022-05-06 00:00:00.000000', '2022-05-07 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (19, 2, 3, 3, '2022-05-06 00:00:00.000000', '2022-05-07 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (20, 2, 4, 2, '2022-05-06 00:00:00.000000', '2022-05-07 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (21, 1, 4, 2, '2022-05-07 00:00:00.000000', '2022-05-08 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (23, 2, 3, 4, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (24, 2, 1, 5, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 1, 0);
INSERT INTO `appointment_info` VALUES (25, 2, 1, 4, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (26, 2, 1, 4, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (27, 5, 4, 2, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (28, 5, 4, 2, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (31, 1, 3, 3, '2022-05-06 00:00:00.000000', '2022-05-06 00:00:00.000000', 0, 0);
INSERT INTO `appointment_info` VALUES (32, 2, 5, 5, '2022-05-06 00:00:00.000000', '2022-05-06 02:30:00.000000', 1, 2.5);
INSERT INTO `appointment_info` VALUES (33, 5, 5, 3, '2022-05-07 00:00:00.000000', '2022-05-08 00:00:00.000000', 1, 24);
INSERT INTO `appointment_info` VALUES (36, 1, 2, 1, '2022-04-26 00:00:00.000000', '2022-05-09 00:00:00.000000', 0, 312);
INSERT INTO `appointment_info` VALUES (38, 5, 10, 4, '2022-05-12 09:40:00.000000', '2022-05-12 11:40:00.000000', 0, 2);
INSERT INTO `appointment_info` VALUES (39, 5, 10, 4, '2022-05-13 14:00:00.000000', '2022-05-13 16:00:00.000000', 0, 2);
INSERT INTO `appointment_info` VALUES (40, 5, 4, 2, '2022-05-12 00:00:00.000000', '2022-05-13 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (41, 5, 3, 4, '2022-05-13 00:00:00.000000', '2022-05-14 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (42, 5, 3, 3, '2022-05-12 00:00:00.000000', '2022-05-13 00:00:00.000000', 0, 24);
INSERT INTO `appointment_info` VALUES (43, 5, 4, 2, '2022-05-12 16:00:00.000000', '2022-05-12 18:00:00.000000', 1, 2);
INSERT INTO `appointment_info` VALUES (45, 5, 6, 3, '2022-05-13 02:00:00.000000', '2022-05-13 03:00:00.000000', 1, 1);
INSERT INTO `appointment_info` VALUES (46, 5, 6, 2, '2022-05-13 14:00:00.000000', '2022-05-15 00:00:00.000000', 0, 34);
INSERT INTO `appointment_info` VALUES (47, 5, 7, 3, '2022-05-13 14:00:00.000000', '2022-05-13 15:00:00.000000', 1, 1);
INSERT INTO `appointment_info` VALUES (48, 5, 4, 3, '2022-05-13 14:03:11.000000', '2022-05-13 15:00:00.000000', 0, 0.946944);
COMMIT;

-- ----------------------------
-- Table structure for attendworkers
-- ----------------------------
DROP TABLE IF EXISTS `attendworkers`;
CREATE TABLE `attendworkers` (
  `aw_id` int NOT NULL AUTO_INCREMENT,
  `ap_i_id` int DEFAULT NULL,
  `u_i_id` int DEFAULT NULL,
  PRIMARY KEY (`aw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of attendworkers
-- ----------------------------
BEGIN;
INSERT INTO `attendworkers` VALUES (1, 1, 2);
INSERT INTO `attendworkers` VALUES (2, 1, 2);
INSERT INTO `attendworkers` VALUES (3, 1, 3);
INSERT INTO `attendworkers` VALUES (7, 1, 4);
INSERT INTO `attendworkers` VALUES (8, 1, 1);
INSERT INTO `attendworkers` VALUES (30, 1, 1);
INSERT INTO `attendworkers` VALUES (31, 1, 2);
INSERT INTO `attendworkers` VALUES (32, 1, 3);
INSERT INTO `attendworkers` VALUES (34, 1, 11);
INSERT INTO `attendworkers` VALUES (35, 1, 12);
INSERT INTO `attendworkers` VALUES (36, 1, 10);
INSERT INTO `attendworkers` VALUES (37, 1, 11);
INSERT INTO `attendworkers` VALUES (38, 1, 12);
INSERT INTO `attendworkers` VALUES (39, 32, 8);
INSERT INTO `attendworkers` VALUES (40, 32, 9);
INSERT INTO `attendworkers` VALUES (41, 32, 5);
INSERT INTO `attendworkers` VALUES (42, 32, 11);
INSERT INTO `attendworkers` VALUES (43, 33, 10);
INSERT INTO `attendworkers` VALUES (44, 33, 11);
INSERT INTO `attendworkers` VALUES (45, 33, 12);
INSERT INTO `attendworkers` VALUES (46, 34, 5);
INSERT INTO `attendworkers` VALUES (47, 34, 26);
INSERT INTO `attendworkers` VALUES (48, 34, 27);
INSERT INTO `attendworkers` VALUES (49, 35, 1);
INSERT INTO `attendworkers` VALUES (50, 35, 2);
INSERT INTO `attendworkers` VALUES (51, 35, 4);
INSERT INTO `attendworkers` VALUES (52, 35, 5);
INSERT INTO `attendworkers` VALUES (53, 36, 1);
INSERT INTO `attendworkers` VALUES (54, 37, 5);
INSERT INTO `attendworkers` VALUES (55, 37, 4);
INSERT INTO `attendworkers` VALUES (56, 37, 9);
INSERT INTO `attendworkers` VALUES (57, 32, 1);
INSERT INTO `attendworkers` VALUES (58, 38, 5);
INSERT INTO `attendworkers` VALUES (59, 38, 4);
INSERT INTO `attendworkers` VALUES (60, 38, 3);
INSERT INTO `attendworkers` VALUES (61, 38, 2);
INSERT INTO `attendworkers` VALUES (62, 39, 5);
INSERT INTO `attendworkers` VALUES (63, 39, 4);
INSERT INTO `attendworkers` VALUES (64, 39, 3);
INSERT INTO `attendworkers` VALUES (65, 39, 2);
INSERT INTO `attendworkers` VALUES (66, 40, 5);
INSERT INTO `attendworkers` VALUES (67, 40, 2);
INSERT INTO `attendworkers` VALUES (68, 41, 1);
INSERT INTO `attendworkers` VALUES (69, 41, 3);
INSERT INTO `attendworkers` VALUES (70, 41, 4);
INSERT INTO `attendworkers` VALUES (71, 41, 5);
INSERT INTO `attendworkers` VALUES (72, 42, 5);
INSERT INTO `attendworkers` VALUES (73, 42, 3);
INSERT INTO `attendworkers` VALUES (74, 42, 2);
INSERT INTO `attendworkers` VALUES (75, 43, 5);
INSERT INTO `attendworkers` VALUES (76, 43, 3);
INSERT INTO `attendworkers` VALUES (77, 44, 5);
INSERT INTO `attendworkers` VALUES (78, 44, 3);
INSERT INTO `attendworkers` VALUES (79, 44, 2);
INSERT INTO `attendworkers` VALUES (80, 45, 5);
INSERT INTO `attendworkers` VALUES (81, 45, 3);
INSERT INTO `attendworkers` VALUES (82, 45, 2);
INSERT INTO `attendworkers` VALUES (83, 46, 1);
INSERT INTO `attendworkers` VALUES (84, 46, 2);
INSERT INTO `attendworkers` VALUES (85, 47, 5);
INSERT INTO `attendworkers` VALUES (86, 47, 3);
INSERT INTO `attendworkers` VALUES (87, 47, 2);
INSERT INTO `attendworkers` VALUES (88, 48, 1);
INSERT INTO `attendworkers` VALUES (89, 48, 2);
INSERT INTO `attendworkers` VALUES (90, 48, 3);
COMMIT;

-- ----------------------------
-- Table structure for meetingroo_info
-- ----------------------------
DROP TABLE IF EXISTS `meetingroo_info`;
CREATE TABLE `meetingroo_info` (
  `m_i_id` int NOT NULL AUTO_INCREMENT,
  `m_i_name` varchar(50) DEFAULT NULL,
  `m_i_capacity` int DEFAULT NULL,
  `m_i_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`m_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of meetingroo_info
-- ----------------------------
BEGIN;
INSERT INTO `meetingroo_info` VALUES (2, 'N202', 5, '三楼二号');
INSERT INTO `meetingroo_info` VALUES (3, 'N203', 6, '三楼三号');
INSERT INTO `meetingroo_info` VALUES (4, 'N204', 5, '三楼四号');
INSERT INTO `meetingroo_info` VALUES (5, 'N205', 5, '三楼五号');
INSERT INTO `meetingroo_info` VALUES (6, 'Y301', 10, '四楼一号');
INSERT INTO `meetingroo_info` VALUES (7, 'Y303', 12, '四楼二号');
INSERT INTO `meetingroo_info` VALUES (8, 'Y305', 10, '四楼三号');
INSERT INTO `meetingroo_info` VALUES (9, 'Y307', 10, '四楼五号');
INSERT INTO `meetingroo_info` VALUES (10, 'Y309', 10, '四楼六号');
INSERT INTO `meetingroo_info` VALUES (11, 'Z402', 16, '五楼二号');
INSERT INTO `meetingroo_info` VALUES (12, 'Z404', 15, '五楼四号');
INSERT INTO `meetingroo_info` VALUES (19, 'Z406', 15, '五楼六号');
INSERT INTO `meetingroo_info` VALUES (21, 'Z408', 10, '五楼八号');
COMMIT;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `sd_id` int NOT NULL AUTO_INCREMENT,
  `m_i_id` int NOT NULL,
  `u_i_id` int NOT NULL,
  `ap_i_id` int NOT NULL,
  `sd_starttime` datetime NOT NULL,
  `sd_endtime` datetime NOT NULL,
  `sd_status` int DEFAULT '0',
  PRIMARY KEY (`sd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of schedule
-- ----------------------------
BEGIN;
INSERT INTO `schedule` VALUES (2, 2, 1, 1, '2022-04-26 00:00:00', '2022-04-26 20:00:00', 0);
INSERT INTO `schedule` VALUES (4, 1, 2, 1, '2022-12-03 22:03:19', '2022-12-03 22:03:20', 0);
INSERT INTO `schedule` VALUES (5, 1, 1, 1, '2022-12-03 22:03:19', '2022-12-03 22:03:20', 1);
INSERT INTO `schedule` VALUES (6, 1, 1, 1, '2021-12-03 22:06:00', '2021-12-03 22:07:00', 0);
INSERT INTO `schedule` VALUES (7, 1, 1, 1, '2022-12-03 22:03:19', '2022-12-03 22:03:20', 0);
INSERT INTO `schedule` VALUES (8, 1, 1, 1, '2022-12-03 22:03:19', '2022-12-03 22:03:20', 0);
INSERT INTO `schedule` VALUES (15, 1, 1, 1, '2022-12-03 22:03:19', '2022-12-03 22:03:20', 0);
INSERT INTO `schedule` VALUES (16, 2, 1, 1, '2022-04-26 00:00:00', '2022-04-26 20:00:00', 0);
INSERT INTO `schedule` VALUES (17, 5, 2, 32, '2022-04-27 00:00:00', '2022-04-27 03:00:00', 0);
INSERT INTO `schedule` VALUES (18, 5, 2, 33, '2022-04-27 00:00:00', '2022-04-27 03:00:00', 0);
INSERT INTO `schedule` VALUES (19, 2, 1, 1, '2022-04-27 00:00:00', '2022-04-27 04:00:00', 0);
INSERT INTO `schedule` VALUES (20, 2, 1, 1, '2022-05-05 00:00:00', '2022-05-05 03:00:00', 0);
INSERT INTO `schedule` VALUES (25, 4, 5, 37, '2022-05-10 12:00:00', '2022-05-10 14:00:00', 2);
INSERT INTO `schedule` VALUES (26, 2, 1, 12, '2022-05-05 00:00:00', '2022-05-05 02:00:00', 0);
INSERT INTO `schedule` VALUES (27, 1, 2, 24, '2022-05-06 00:00:00', '2022-05-06 00:00:00', 0);
INSERT INTO `schedule` VALUES (29, 1, 5, 44, '2022-05-12 20:00:00', '2022-05-12 22:00:00', 2);
INSERT INTO `schedule` VALUES (30, 2, 1, 15, '2022-05-06 00:00:00', '2022-05-07 00:00:00', 0);
INSERT INTO `schedule` VALUES (31, 3, 2, 16, '2022-05-06 00:00:00', '2022-05-07 00:00:00', 0);
INSERT INTO `schedule` VALUES (32, 4, 3, 17, '2022-05-06 00:00:00', '2022-05-06 00:00:00', 0);
INSERT INTO `schedule` VALUES (33, 6, 5, 45, '2022-05-13 02:00:00', '2022-05-13 03:00:00', 0);
INSERT INTO `schedule` VALUES (34, 7, 5, 47, '2022-05-13 14:00:00', '2022-05-13 15:00:00', 1);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `u_i_id` int NOT NULL AUTO_INCREMENT,
  `u_i_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_i_sex` int NOT NULL DEFAULT '0',
  `u_i_star` int NOT NULL DEFAULT '0',
  `u_i_password` varchar(20) DEFAULT '123456',
  `u_i_number` int DEFAULT '0',
  `u_i_time` int DEFAULT '0',
  `u_i_contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, '聂源樟', 1, 1, '123456', 5, 8, '17781914269');
INSERT INTO `user_info` VALUES (2, '王静', 0, 1, '123456', 5, 6, '17781914269');
INSERT INTO `user_info` VALUES (3, 'admin', 0, 1, '123456', 1, 2, '17781914269');
INSERT INTO `user_info` VALUES (4, 'wj', 0, 0, '123456', 1, 2, '17781914269');
INSERT INTO `user_info` VALUES (5, 'nyz', 0, 1, '123456', 8, 13, '1811171709】、、');
INSERT INTO `user_info` VALUES (6, '聂伟君', 0, 0, '123456', 3, 6, '17781914269');
INSERT INTO `user_info` VALUES (7, 'nwj', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (8, '傅正', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (9, 'fz', 0, 0, '123456', 3, 4, '17781914269');
INSERT INTO `user_info` VALUES (10, 'wyk', 1, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (18, 'sjj', 0, 0, '123456', 1, 1, '17781914269');
INSERT INTO `user_info` VALUES (22, 'zyj', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (25, 'wsc', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (26, 'hyc', 0, 0, '123456', 3, 6, '17781914269');
INSERT INTO `user_info` VALUES (27, 'wl', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (29, 'zdz', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (31, 'lql', 0, 0, '123456', 0, 0, '17781914269');
INSERT INTO `user_info` VALUES (32, 'ag', 0, 0, '123456', 0, 0, '17781914269');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
