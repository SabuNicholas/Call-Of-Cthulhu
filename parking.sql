/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : parking

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2022-06-01 21:29:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `card_id` varchar(50) NOT NULL,
  `seat_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_gender` varchar(1) NOT NULL,
  `user_addr` varchar(50) NOT NULL,
  `car_num` varchar(50) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('20220422111111', '20220522100000', '李狗蛋', '女', '中心花园 3-102', '京A11111');
INSERT INTO `card` VALUES ('20220422111112', '20220522100001', '刘流梅', '女', '碧桂园 B区 3-201', '鲁BLV770');
INSERT INTO `card` VALUES ('20220422111113', '20220522100002', '特朗普', '男', '汪沟村 107号', '牛B66666');
INSERT INTO `card` VALUES ('20220422111114', '20220522100003', '夏洛', '男', '西红市小区 9-602', '西B54222');
INSERT INTO `card` VALUES ('20220422111115', '20220522100004', '约瑟夫·斯大林', '男', '复兴镇新居 3-302', '红A77777');
INSERT INTO `card` VALUES ('20220531202422', '20220512182303', '不不不', '男', '建同意同意', '鲁B25055');

-- ----------------------------
-- Table structure for fixed
-- ----------------------------
DROP TABLE IF EXISTS `fixed`;
CREATE TABLE `fixed` (
  `fixed_id` varchar(50) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  PRIMARY KEY (`fixed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of fixed
-- ----------------------------
INSERT INTO `fixed` VALUES ('20220317111111', '20220522104145', '2022-05-22', '10:41:45', '2022-12-23', '10:23:34');
INSERT INTO `fixed` VALUES ('20220408222222', '20220925102400', '2022-09-25', '10:24:00', '2022-12-23', '10:24:07');
INSERT INTO `fixed` VALUES ('20220428333333', '20220425104659', '2022-04-25', '10:46:59', '2022-12-23', '17:29:04');
INSERT INTO `fixed` VALUES ('20220508444444', '20220225180626', '2022-02-25', '18:06:26', '2022-12-23', '19:04:56');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('r001', '超级管理员');
INSERT INTO `role` VALUES ('r002', '普通管理员');

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `seat_id` varchar(50) NOT NULL,
  `seat_num` varchar(50) NOT NULL,
  `seat_section` varchar(50) NOT NULL,
  `seat_state` int NOT NULL,
  `seat_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES ('20220512182303', 'A1001', 'A区', '1', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182304', 'A1002', 'A区', '1', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182305', 'A1003', 'A区', '1', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182306', 'A1004', 'A区', '1', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182307', 'A1005', 'A区', '1', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182308', 'A1006', 'A区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182309', 'A1007', 'A区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182310', 'A1008', 'A区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182311', 'VIP1001', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182312', 'VIP1002', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182313', 'VIP1003', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182314', 'VIP1004', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182315', 'VIP1005', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182316', 'VIP1007', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182317', 'VIP1009', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182318', 'VIP10010', 'B区', '0', '固定车主车位');
INSERT INTO `seat` VALUES ('20220512182319', 'VIP10012', 'B区', '0', '固定车主车位');

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `temp_id` varchar(50) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `car_num` varchar(50) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `temp_money` float DEFAULT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of temp
-- ----------------------------
INSERT INTO `temp` VALUES ('20220425173007', '001', '鲁B12345', '2022-04-25', '17:30:07', '2022-05-22', '21:29:26', '20');
INSERT INTO `temp` VALUES ('20220425203021', '002', '京C12345', '2022-04-25', '20:30:21', '2022-05-22', '21:29:26', '15');
INSERT INTO `temp` VALUES ('20220501190239', '003', '川B11111', '2022-05-01', '19:02:39', '2022-05-22', '19:04:24', '3');
INSERT INTO `temp` VALUES ('20220501190418', '004', '沪A11122', '2022-05-01', '19:04:18', '2022-05-22', '19:04:28', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `user_pwd` varchar(20) NOT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin_01', 'r002', 'tiga', '迪迦', '123123', '10086000002');
INSERT INTO `user` VALUES ('admin_02', 'r002', 'taro', '泰罗', '123123', '10001000003');
INSERT INTO `user` VALUES ('zoffe', 'r001', 'zoffe', '佐菲', '123123', '10086000001');

-- ----------------------------
-- View structure for v_card
-- ----------------------------
DROP VIEW IF EXISTS `v_card`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_card` AS select `card`.`card_id` AS `card_id`,`card`.`seat_id` AS `seat_id`,`card`.`user_name` AS `user_name`,`card`.`user_gender` AS `user_gender`,`card`.`user_addr` AS `user_addr`,`card`.`car_num` AS `car_num`,`seat`.`seat_num` AS `seat_num` from (`card` join `seat` on((`card`.`seat_id` = `seat`.`seat_id`))) ;

-- ----------------------------
-- View structure for v_fixed
-- ----------------------------
DROP VIEW IF EXISTS `v_fixed`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fixed` AS select `fixed`.`fixed_id` AS `fixed_id`,`fixed`.`card_id` AS `card_id`,`fixed`.`entry_date` AS `entry_date`,`fixed`.`entry_time` AS `entry_time`,`fixed`.`out_date` AS `out_date`,`fixed`.`out_time` AS `out_time`,`card`.`car_num` AS `car_num`,`card`.`user_name` AS `user_name` from (`fixed` join `card` on((`fixed`.`card_id` = `card`.`card_id`))) ;

-- ----------------------------
-- View structure for v_user
-- ----------------------------
DROP VIEW IF EXISTS `v_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user` AS select `user`.`user_id` AS `user_id`,`user`.`role_id` AS `role_id`,`user`.`user_name` AS `user_name`,`user`.`real_name` AS `real_name`,`user`.`user_pwd` AS `user_pwd`,`user`.`user_phone` AS `user_phone`,`role`.`role_name` AS `role_name` from (`user` join `role` on((`user`.`role_id` = `role`.`role_id`))) ;
