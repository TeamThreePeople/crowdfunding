/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : crowdfunding

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 13/12/2021 09:08:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for great
-- ----------------------------
DROP TABLE IF EXISTS `great`;
CREATE TABLE `great`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL COMMENT '商品ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of great
-- ----------------------------
INSERT INTO `great` VALUES (22, 1, 11);
INSERT INTO `great` VALUES (23, 4, 11);
INSERT INTO `great` VALUES (24, 26, 11);
INSERT INTO `great` VALUES (25, 92, 11);
INSERT INTO `great` VALUES (26, 10, 11);

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 登录账号',
  `userpswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 登录密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电子邮箱',
  `authstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实名认证状态0一未实名认证，1 -实名认证申请中，| 2一已实名认证',
  `usertype` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型: 0一个人，1 一企业',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 真实名称',
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 身份证号码',
  `accttype` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户类型:0-企业，1-个体，2-个人，3-政府',
  `portrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (1, 'sjt01', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '刘一', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (2, 'sjt02', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '陈二', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (3, 'sjt03', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '张三', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (4, 'sjt04', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '李四', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (5, 'sjt05', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '王五', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (6, 'sjt06', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '1', NULL, '赵六', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (7, 'sjt07', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '孙七', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (8, 'sjt08', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '周八', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (9, 'sjt09', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '吴九', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (10, 'sjt10', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '郑十', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (11, 'sjt', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '法外狂徒', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (12, 'cjy', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '法外狂徒cjy', NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (13, 'hzl', 'e10adc3949ba59abbe56e057f20f883e', NULL, '123456@qq.com', '0', NULL, '法外狂徒hzl', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_member_address
-- ----------------------------
DROP TABLE IF EXISTS `t_member_address`;
CREATE TABLE `t_member_address`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `or` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `addreSs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `memberid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `FK_Reference_13`(`memberid`) USING BTREE,
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member_address
-- ----------------------------
INSERT INTO `t_member_address` VALUES (1, '张三', '123456', 1, '江苏无锡', NULL);
INSERT INTO `t_member_address` VALUES (2, '张三', '123456', 1, '江苏无锡', NULL);
INSERT INTO `t_member_address` VALUES (3, '李四', '123', 1, '123456', NULL);

-- ----------------------------
-- Table structure for t_member_project_view
-- ----------------------------
DROP TABLE IF EXISTS `t_member_project_view`;
CREATE TABLE `t_member_project_view`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `memberid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_12`(`memberid`) USING BTREE,
  INDEX `FK_Reference_11`(`projectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目关注表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_member_project_view
-- ----------------------------
INSERT INTO `t_member_project_view` VALUES (1, 1, 1);
INSERT INTO `t_member_project_view` VALUES (2, 1, 1);
INSERT INTO `t_member_project_view` VALUES (3, 2, 1);
INSERT INTO `t_member_project_view` VALUES (4, 2, 0);
INSERT INTO `t_member_project_view` VALUES (5, 2, 1);
INSERT INTO `t_member_project_view` VALUES (6, 2, 1);
INSERT INTO `t_member_project_view` VALUES (7, 2, 1);
INSERT INTO `t_member_project_view` VALUES (8, 2, 1);
INSERT INTO `t_member_project_view` VALUES (9, 2, 1);
INSERT INTO `t_member_project_view` VALUES (10, 7, 1);
INSERT INTO `t_member_project_view` VALUES (11, 5, 1);
INSERT INTO `t_member_project_view` VALUES (12, 5, 1);
INSERT INTO `t_member_project_view` VALUES (13, 7, 1);
INSERT INTO `t_member_project_view` VALUES (14, 3, 1);
INSERT INTO `t_member_project_view` VALUES (15, 2, 0);
INSERT INTO `t_member_project_view` VALUES (16, 2, 0);
INSERT INTO `t_member_project_view` VALUES (17, 3, 0);
INSERT INTO `t_member_project_view` VALUES (18, 4, 0);
INSERT INTO `t_member_project_view` VALUES (19, 2, 0);
INSERT INTO `t_member_project_view` VALUES (20, 2, 0);
INSERT INTO `t_member_project_view` VALUES (21, 2, 0);
INSERT INTO `t_member_project_view` VALUES (22, 2, 0);
INSERT INTO `t_member_project_view` VALUES (23, 2, 1);
INSERT INTO `t_member_project_view` VALUES (24, 2, 0);
INSERT INTO `t_member_project_view` VALUES (25, 2, 0);
INSERT INTO `t_member_project_view` VALUES (26, 2, 0);
INSERT INTO `t_member_project_view` VALUES (27, 2, 0);
INSERT INTO `t_member_project_view` VALUES (28, 2, 0);
INSERT INTO `t_member_project_view` VALUES (29, 2, 0);
INSERT INTO `t_member_project_view` VALUES (30, 2, 0);
INSERT INTO `t_member_project_view` VALUES (31, 2, 1);
INSERT INTO `t_member_project_view` VALUES (32, 2, 1);
INSERT INTO `t_member_project_view` VALUES (33, 2, 0);
INSERT INTO `t_member_project_view` VALUES (34, 2, 0);
INSERT INTO `t_member_project_view` VALUES (35, 1, 0);
INSERT INTO `t_member_project_view` VALUES (36, 1, 0);
INSERT INTO `t_member_project_view` VALUES (37, 2, 0);
INSERT INTO `t_member_project_view` VALUES (38, 2, 0);
INSERT INTO `t_member_project_view` VALUES (39, 2, 0);
INSERT INTO `t_member_project_view` VALUES (40, 2, 0);
INSERT INTO `t_member_project_view` VALUES (41, 2, 1);
INSERT INTO `t_member_project_view` VALUES (42, 2, 1);
INSERT INTO `t_member_project_view` VALUES (43, 2, 0);
INSERT INTO `t_member_project_view` VALUES (44, 1, 1);
INSERT INTO `t_member_project_view` VALUES (45, 1, 1);
INSERT INTO `t_member_project_view` VALUES (46, 99, 0);
INSERT INTO `t_member_project_view` VALUES (47, 11, 0);
INSERT INTO `t_member_project_view` VALUES (48, 2, 0);
INSERT INTO `t_member_project_view` VALUES (49, 26, 0);
INSERT INTO `t_member_project_view` VALUES (50, 26, 0);
INSERT INTO `t_member_project_view` VALUES (51, 4, 11);
INSERT INTO `t_member_project_view` VALUES (52, 26, 11);
INSERT INTO `t_member_project_view` VALUES (53, 92, 11);
INSERT INTO `t_member_project_view` VALUES (54, 26, 11);
INSERT INTO `t_member_project_view` VALUES (55, 92, 11);
INSERT INTO `t_member_project_view` VALUES (56, 10, 11);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '会员ID',
  `projectid` int(11) NULL DEFAULT NULL COMMENT '项目ID',
  `returnid` int(11) NULL DEFAULT NULL COMMENT '回报ID',
  `ordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `createdate` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT ' 创建时间',
  `money` double(11, 0) NULL DEFAULT NULL COMMENT ' 支持金额',
  `rtncount` int(11) NULL DEFAULT NULL COMMENT ' 回报数量',
  `status` int(1) NULL DEFAULT NULL COMMENT '0 -未支付，1 -已支付',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `invoice` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0 -不开发票，1一开发票',
  `invoictitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_16`(`returnid`) USING BTREE,
  INDEX `FK_Reference_18`(`memberid`) USING BTREE,
  INDEX `FK_Reference_17`(`projectid`) USING BTREE,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`returnid`) REFERENCES `t_return` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`memberid`) REFERENCES `t_member` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, 1, 2, NULL, '7b9ef26653504756b5679c86a3972c7a', '2021-12-10 22:12:36', 59, 5, 0, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (23, 1, 9, NULL, '1504baa8e3774fc39a4f6f074298a71c', '2021-12-10 22:12:36', 49, 5, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (24, 1, 2, NULL, '4fe7b1e8ded84152b0961936ceeea355', '2021-12-10 22:12:36', 39, 3, 0, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (25, 1, 5, NULL, '11d81b94d9d6451c9873233333312c65', '2021-12-10 22:12:36', 49, 5, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (26, 1, 13, NULL, '89b3e0baf91e4070927dc8783bd18fdd', '2021-12-10 22:12:36', 9, 1, 0, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (27, 1, 13, NULL, '1673e997666a418698fa852f8e38d73f', '2021-12-10 22:12:36', 9, 1, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (28, 1, 2, NULL, 'fe3f0356d7ab4554bf5a07e7139daf25', '2021-12-10 22:12:36', 19, 1, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (29, 11, 52, NULL, 'e634dc1a236f433f8d362f66ff8928cb', '2021-12-10 22:12:36', 301, 5, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);
INSERT INTO `t_order` VALUES (30, 11, 4, NULL, 'c78fb5be8be745d3858faf0d66eb191b', '2021-12-10 22:12:58', 107, 1, 1, 'ss', '13872127572', '江苏无锡', '0', '', NULL);

-- ----------------------------
-- Table structure for t_orderby
-- ----------------------------
DROP TABLE IF EXISTS `t_orderby`;
CREATE TABLE `t_orderby`  (
  `oid` int(11) NOT NULL,
  `oname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_orderby
-- ----------------------------
INSERT INTO `t_orderby` VALUES (1, '最新上线');
INSERT INTO `t_orderby` VALUES (2, '金额最多');
INSERT INTO `t_orderby` VALUES (3, '支持最多');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目简介',
  `money` bigint(11) NULL DEFAULT NULL COMMENT '筹资金额',
  `day` int(11) NULL DEFAULT NULL COMMENT '筹资天数',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0 -众筹中，1 -众筹成功',
  `deploydate` date NULL DEFAULT NULL COMMENT ' 发布日期',
  `supportmoney` bigint(11) NOT NULL COMMENT '支持金额',
  `supporter` int(11) NULL DEFAULT NULL COMMENT ' 支持者数量',
  `completion` int(3) NULL DEFAULT NULL COMMENT ' 完成度',
  `memberid` int(11) NULL DEFAULT NULL COMMENT ' 发起人ID',
  `createdate` date NULL DEFAULT NULL COMMENT ' 创建日期',
  `pimgs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `follower` int(11) NULL DEFAULT 0 COMMENT '关注者数量',
  `cid` int(11) NULL DEFAULT NULL COMMENT '类型id',
  PRIMARY KEY (`id`, `supportmoney`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '项目表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (1, '奇魔猪烹饪锅', '给全家健康营养的美食', 5000, 30, '0', '2021-12-01', 3000, 21, NULL, 1, '2021-12-01', 'pic/c_0001.jpg', 123, 1);
INSERT INTO `t_project` VALUES (2, '奇魔猪取暖器', '给自己享受健康的温暖', 10000, 30, '1', '2021-12-01', 36207, 454, NULL, 1, '2021-12-01', 'pic/c_0002.jpg', 123, 1);
INSERT INTO `t_project` VALUES (3, '蓝牙耳机米奇米妮特定款', '迪士尼正版授权', 10000, 28, '1', '2021-12-01', 55036, 292, NULL, 1, '2021-12-01', 'pic/c_0003.jpg', 2334, 1);
INSERT INTO `t_project` VALUES (4, '布朗熊专属蓝牙耳机', 'LINE FRIENDS正版授权', 10000, 28, '1', '2021-10-18', 10594, 46, NULL, 1, '2021-10-18', 'pic/c_0004.jpg', 125, 1);
INSERT INTO `t_project` VALUES (5, '家用冰淇淋机', '给家人健康营养的享受', 10000, 15, '1', '2021-08-15', 24894, 60, NULL, 2, '2021-08-15', 'pic/c_0005.jpg', 1213, 1);
INSERT INTO `t_project` VALUES (6, '时钟光影灯', '光影科技的空间装饰艺术', 35000, 60, '1', '2021-05-30', 38314, 283, NULL, 1, '2021-05-30', 'pic/c_0006.jpg', 12, 1);
INSERT INTO `t_project` VALUES (7, '稚果云电脑', '跨时代的个人计算机，将电影变成现实', 50000, 40, '0', '2021-11-28', 44500, 62, NULL, 2, '2021-11-28', 'pic/c_0007.jpg', 54, 1);
INSERT INTO `t_project` VALUES (8, '动漫涂鸦风格游戏双模鼠标\r\n', '斗鱼官方授权', 5000, 30, '0', '2021-11-24', 3850, 8, NULL, 2, '2021-11-24', 'pic/c_0008.jpg', 1, 1);
INSERT INTO `t_project` VALUES (9, 'PARON黑胶唱片机', 'HIFI体验畅游复古 穿梭未来', 20000, 30, '1', '2021-01-19', 74531, 56, NULL, 3, '2021-01-19', 'pic/c_0009.jpg', 125, 1);
INSERT INTO `t_project` VALUES (10, '人体工学智能机械数字键盘', '墨壳家族新成员', 10000, 20, '0', '2021-12-10', 6697, 296, NULL, 3, '2021-02-10', 'pic/c_0010.jpg', 347, 1);
INSERT INTO `t_project` VALUES (11, '猫爪耳机', '萌萌猫爪肉垫等你来摸', 2200, 25, '1', '2021-11-01', 2212, 163, NULL, 4, '2021-11-01', 'pic/c_0011.jpg', 123, 1);
INSERT INTO `t_project` VALUES (12, '路飞索隆款无线蓝牙耳机', '《航海王-和之国篇》', 10000, 20, '0', '2021-11-28', 8955, 195, NULL, 4, '2021-11-28', 'pic/c_0012.jpg', 345, 1);
INSERT INTO `t_project` VALUES (13, '御米粮仓等离子杀菌米箱', '每一粒米都值得被保护', 12000, 25, '0', '2021-12-01', 10193, 29, NULL, 4, '2021-12-01', 'pic/c_0013.jpg', 123, 1);
INSERT INTO `t_project` VALUES (14, '钢铁侠U盘', 'MK46超可动高速闪存盘', 10000, 30, '1', '2021-12-01', 21459, 1422, NULL, 3, '2021-12-01', 'pic/c_0014.jpg', 567, 1);
INSERT INTO `t_project` VALUES (15, '墨动精灵打印盒', '巨量潮萌纸玩超集合!!「纸」此一家!', 66666, 37, '0', '2021-11-13', 29279, 71, NULL, 5, '2021-11-13', 'pic/c_0015.jpg', 123, 1);
INSERT INTO `t_project` VALUES (16, '棒棒糖智能吊坠', '做个心有灵犀的小女孩', 50000, 21, '1', '2021-05-25', 52991, 77, NULL, 5, '2021-05-25', 'pic/c_0016.jpg', 123, 1);
INSERT INTO `t_project` VALUES (17, '小嘿电动车', '出行与拳术的结合！', 20000, 26, '0', '2021-11-18', 1071, 26, NULL, 5, '2021-11-18', 'pic/c_0017.jpg', 123, 1);
INSERT INTO `t_project` VALUES (18, '突破次元壁的格斗机器人', '颤抖吧，人类！Ganker', 20000, 20, '1', '2021-10-01', 21000, 77, NULL, 5, '2021-10-01', 'pic/c_0018.jpg', 46, 1);
INSERT INTO `t_project` VALUES (19, '纯天然高科技滤芯口罩', '舒适透气', 4000, 15, '0', '2021-11-30', 573, 10, NULL, 6, '2021-11-30', 'pic/c_0019.jpg', 567, 1);
INSERT INTO `t_project` VALUES (20, '虚拟偶像动画创作APP', '邀请你来此突破次元壁！', 23333, 30, '1', '2021-09-06', 25935, 168, NULL, 7, '2021-09-06', 'pic/c_0020.jpg', 234, 1);
INSERT INTO `t_project` VALUES (21, '驾驶舱式机动装甲参水猿', '国民机甲，中国智造', 20000, 26, '0', '2021-11-18', 19999, 369, NULL, 8, '2021-11-18', 'pic/c_0021.jpg', 78, 1);
INSERT INTO `t_project` VALUES (22, '少数派 6 周年限定周边', '我们想多方位地融入你的生活', 31400, 21, '1', '2021-04-04', 92711, 360, NULL, 9, '2021-04-04', 'pic/c_0022.jpg', 54, 1);
INSERT INTO `t_project` VALUES (23, 'VIRGOO FEVER控制器', '因DJMAX而生', 50000, 30, '0', '2021-11-12', 47703, 572, NULL, 11, '2021-11-12', 'pic/c_0023.jpg', 89, 1);
INSERT INTO `t_project` VALUES (24, '移动车间', '移动车间', 10000, 18, '1', '2021-05-26', 16755, 66, NULL, 12, '2021-05-26', 'pic/c_0024.jpg', 43, 1);
INSERT INTO `t_project` VALUES (25, '电动便携式咖啡机', '一机在手喝遍全球', 30000, 28, '0', '2021-11-17', 8344, 25, NULL, 10, '2021-11-17', 'pic/c_0025.jpg', 0, 1);
INSERT INTO `t_project` VALUES (26, '故宫华羽金翠手账本', '王源邀您一起守护绿孔雀', 60000, 20, '1', '2021-12-20', 83424, 3265, NULL, 1, '2021-12-20', 'pic/c_0026.jpg', 37, 2);
INSERT INTO `t_project` VALUES (27, '宠物粮众筹捐赠计划', '感谢您的支持', 6000, 27, '1', '2021-01-13', 6647, 145, NULL, 3, '2021-01-13', 'pic/c_0027.jpg', 78, 2);
INSERT INTO `t_project` VALUES (28, '公益诗歌记事本', '会写诗的孩子不砸玻璃', 25000, 20, '1', '2021-12-02', 27237, 171, NULL, 2, '2021-12-02', 'pic/c_0028.jpg', 0, 2);
INSERT INTO `t_project` VALUES (29, '助销百万斤黄河滩枣', '守护陕北枣农', 50000, 21, '0', '2021-05-25', 26771, 93, NULL, 10, '2021-05-25', 'pic/c_0029.jpg', 45, 2);
INSERT INTO `t_project` VALUES (30, '被遗忘的自然', '保护自然人人有责', 3000, 30, '1', '2021-04-01', 11463, 84, NULL, 3, '2021-04-01', 'pic/c_0030.jpg', 0, 2);
INSERT INTO `t_project` VALUES (31, '“助农计划”天水花牛苹果', '天水秦安花牛苹果为中国国家地理标志产品', 2000, 30, '0', '2021-11-14', 707, 19, NULL, 4, '2021-11-14', 'pic/c_0031.jpg', 45, 2);
INSERT INTO `t_project` VALUES (32, '一起守护濒危水中生灵', '心系华夏文明，共同关爱中国珍稀濒危野生动物', 94500, 25, '1', '2021-08-12', 99641, 547, NULL, 5, '2021-08-12', 'pic/c_0032.jpg', 0, 2);
INSERT INTO `t_project` VALUES (33, '国漫偶像联名丝巾', '“丝路千年，传递精品”', 50000, 24, '1', '2021-06-10', 52900, 172, NULL, 6, '2021-06-10', 'pic/c_0033.jpg', 845, 2);
INSERT INTO `t_project` VALUES (34, '流浪动物救助', '友善诱捕；适龄绝育；安全放归', 5000, 20, '1', '2021-12-01', 8543, 115, NULL, 7, '2021-12-01', 'pic/c_0034.jpg', 0, 2);
INSERT INTO `t_project` VALUES (35, '募集流浪猫手术费', '募集狗咬至瘫流浪布偶猫手术住院费', 9000, 10, '0', '2021-12-02', 1077, 23, NULL, 9, '2021-12-02', 'pic/c_0035.jpg', 89, 2);
INSERT INTO `t_project` VALUES (36, '被三轮车碾压的可怜小猫咪', '被三轮车碾压可怜小猫咪', 4500, 18, '0', '2021-11-25', 1068, 54, NULL, 8, '2021-11-25', 'pic/c_0036.jpg', 7, 2);
INSERT INTO `t_project` VALUES (37, '拾爱共筑安心之所', '救助流浪狗', 1600, 30, '0', '2021-11-20', 1502, 21, NULL, 9, '2021-11-20', 'pic/c_0037.jpg', 0, 2);
INSERT INTO `t_project` VALUES (38, '流浪动物猫瘟救助', '流浪动物猫瘟救助', 6000, 24, '1', '2021-10-23', 6130, 142, NULL, 8, '2021-10-23', 'pic/c_0038.jpg', 6845, 2);
INSERT INTO `t_project` VALUES (39, '为顺义小院筹集房租', '为顺义小院筹集新一年的房租', 4000, 30, '1', '2021-09-25', 6558, 58, NULL, 10, '2021-09-25', 'pic/c_0039.jpg', 756, 2);
INSERT INTO `t_project` VALUES (40, '电影短片《小晖和牛》', '纽约大学研究生电影短片《小晖和牛》', 60000, 10, '0', '2021-12-05', 11480, 11, NULL, 12, '2021-12-05', 'pic/c_0040.jpg', 678, 2);
INSERT INTO `t_project` VALUES (41, '《银海拾遗》纪录片', '《银海拾遗》纪录片-清北高校联合作品', 50000, 27, '0', '2021-12-06', 6245, 43, NULL, 11, '2021-12-06', 'pic/c_0041.jpg', 0, 2);
INSERT INTO `t_project` VALUES (42, '一张有“芯”的玫瑰贺卡', '情人送礼专属 ', 5000, 0, '0', '2021-12-01', 140, 7, NULL, 1, '2021-12-01', 'pic/c_0042.jpg', 45, 2);
INSERT INTO `t_project` VALUES (43, '毕业电影《老李》众筹计划', '厦门大学毕业电影短片《老李》众筹计划', 20000, 30, '1', '2021-11-11', 23000, 299, NULL, 2, '2021-11-11', 'pic/c_0043.jpg', 0, 2);
INSERT INTO `t_project` VALUES (44, '动画短片《熊》', '阿尔兹海默症定格动画短片《熊》', 22000, 26, '0', '2021-11-25', 22, 11, NULL, 2, '2021-11-25', 'pic/c_0044.jpg', 79, 2);
INSERT INTO `t_project` VALUES (45, '孩子想吃狗粮', '给孩子喂点狗粮吧', 5000, 20, '1', '2021-11-01', 6000, 119, NULL, 8, '2021-11-01', 'pic/c_0045.jpg', 0, 2);
INSERT INTO `t_project` VALUES (46, '拯救流浪猫', '不断救治流浪猫', 180000, 60, '1', '2021-06-01', 185000, 2218, NULL, 9, '2021-06-01', 'pic/c_0046.jpg', 79, 2);
INSERT INTO `t_project` VALUES (47, '拯救眼疾流浪猫', '我们需要大家的支撑', 100000, 45, '0', '2021-11-08', 91904, 894, NULL, 3, '2021-11-08', 'pic/c_0047.jpg', 0, 2);
INSERT INTO `t_project` VALUES (48, '王阿姨小院的毛孩子们', '王阿姨小院的毛孩子们来了！', 50000, 30, '0', '2021-12-01', 10087, 177, NULL, 8, '2021-12-01', 'pic/c_0048.jpg', 567, 2);
INSERT INTO `t_project` VALUES (49, '奶牛猫干饭王猫传腹众筹', '奶牛猫干饭王猫传腹众筹', 4000, 20, '1', '2021-11-01', 5535, 321, NULL, 6, '2021-11-01', 'pic/c_0049.jpg', 0, 2);
INSERT INTO `t_project` VALUES (50, '误食有毒食物的流浪狗', '误食了有毒的食物又急性中毒', 3000, 20, '1', '2021-03-08', 3006, 95, NULL, 8, '2021-03-08', 'pic/c_0050.jpg', 123, 2);
INSERT INTO `t_project` VALUES (51, '九伦鲜烹酥卤鸡爪', '万能的拿手菜，生活的小滋味', 5000, 14, '0', '2021-11-30', 3708, 46, NULL, 1, '2021-11-30', 'pic/c_0051.jpg', 465, 3);
INSERT INTO `t_project` VALUES (52, '大口吃肉的粽子', '随享地道的枫泾粽子！', 5000, 30, '1', '2021-11-01', 10660, 137, NULL, 12, '2021-11-01', 'pic/c_0052.jpg', 1, 3);
INSERT INTO `t_project` VALUES (53, '鲍汁年糕', '泡着吃，更方便好吃！', 5000, 20, '1', '2021-01-01', 5573, 81, NULL, 10, '2021-01-01', 'pic/c_0053.jpg', 1, 3);
INSERT INTO `t_project` VALUES (54, '真鲍鱼·鲜面条', '冬天就得“补”一下', 5000, 30, '1', '2021-06-30', 15625, 243, NULL, 7, '2021-06-30', 'pic/c_0054.jpg', 23, 3);
INSERT INTO `t_project` VALUES (55, '即食鲍鱼彩虹捞饭', '你饱腹的样子，很有范儿！', 5000, 30, '1', '2021-04-29', 16678, 218, NULL, 8, '2021-04-29', 'pic/c_0055.jpg', 5, 3);
INSERT INTO `t_project` VALUES (56, '红楼喵来啦！', '红楼喵来啦！！一本红楼与君浪~', 4999, 29, '0', '2021-11-27', 2963, 31, NULL, 4, '2021-11-27', 'pic/c_0056.jpg', 345, 3);
INSERT INTO `t_project` VALUES (57, '雷司令白葡萄酒', '一口清爽甜蜜，沁入心间', 2000, 30, '1', '2021-11-08', 20292, 64, NULL, 5, '2021-11-08', 'pic/c_0057.jpg', 6, 3);
INSERT INTO `t_project` VALUES (58, '故宫脊兽巧克力', '紫禁城里的甜蜜守望', 40000, 36, '0', '2021-12-03', 3616, 21, NULL, 8, '2021-12-03', 'pic/c_0058.jpg', 7, 3);
INSERT INTO `t_project` VALUES (59, '陨石月饼', '中秋佳节超炫礼品 平行次元', 20000, 25, '0', '2021-12-08', 4604, 7, NULL, 6, '2021-12-08', 'pic/c_0059.jpg', 3, 3);
INSERT INTO `t_project` VALUES (60, '观中圆-宫廷白茶', '老少皆宜！人气袭来！', 2000, 20, '1', '2021-12-01', 7980, 17, NULL, 9, '2021-12-01', 'pic/c_0060.jpg', 8, 3);
INSERT INTO `t_project` VALUES (61, '高颜人气「茉莉柚柚」', '水獭吨吨超即溶果茶块', 5000, 33, '1', '2021-11-03', 84371, 519, NULL, 3, '2021-11-03', 'pic/c_0061.jpg', 213, 3);
INSERT INTO `t_project` VALUES (62, '夏黑葡萄 x 手打柠檬', '早晚安蒟蒻果冻零食组合 ', 15000, 30, '1', '2021-10-20', 33745, 403, NULL, 8, '2021-10-20', 'pic/c_0062.jpg', 9, 3);
INSERT INTO `t_project` VALUES (63, '新桔普洱', '小青柑界的尖子生，鲜爽来袭', 5000, 28, '1', '2021-11-11', 6303, 13, NULL, 4, '2021-11-11', 'pic/c_0063.jpg', 34, 3);
INSERT INTO `t_project` VALUES (64, '小龙虾腰果', ' 香酥腰果碰撞麻辣小龙虾', 5000, 21, '1', '2021-12-01', 5960, 60, NULL, 4, '2021-12-01', 'pic/c_0064.jpg', 9, 3);
INSERT INTO `t_project` VALUES (65, '麻小花家的小麻花', '吃一口就停不下来！', 2000, 15, '1', '2021-11-29', 5520, 114, NULL, 3, '2021-11-29', 'pic/c_0065.jpg', 2, 3);
INSERT INTO `t_project` VALUES (66, '脆皮烤五花', '拒做“老腊肉”，只做小“鲜”肉', 50000, 21, '0', '2021-11-22', 27974, 316, NULL, 1, '2021-11-22', 'pic/c_0066.jpg', 0, 3);
INSERT INTO `t_project` VALUES (67, '复合维生素牛奶饮', '嘎嘎好喝', 5000, 40, '1', '2021-06-16', 7041, 213, NULL, 3, '2021-06-16', 'pic/c_0067.jpg', 4, 3);
INSERT INTO `t_project` VALUES (68, '五花肉粽', '传承手作工艺 ，大口吃肉', 5000, 30, '0', '2021-11-18', 4108, 640, NULL, 11, '2021-11-18', 'pic/c_0068.jpg', 8, 3);
INSERT INTO `t_project` VALUES (69, '目连黑粽', '来自江南水乡的“黑暗料理”', 20000, 14, '0', '2021-11-10', 14669, 103, NULL, 12, '2021-11-10', 'pic/c_0069.jpg', 0, 3);
INSERT INTO `t_project` VALUES (70, '龙头鱼干', '鲜甜微辣，上头不刺喉', 50000, 41, '0', '2021-11-07', 14468, 271, NULL, 7, '2021-11-07', 'pic/c_0070.jpg', 657, 3);
INSERT INTO `t_project` VALUES (71, '《大理寺日志》春节福袋', '神都闹元宵，捕获出逃萌“虎”', 18888, 22, '1', '2021-11-07', 21817, 114, NULL, 9, '2021-11-07', 'pic/c_0071.jpg', 4, 4);
INSERT INTO `t_project` VALUES (72, '超精致木质榫卯上色模型', '中国顶级建筑', 10000, 31, '1', '2021-11-15', 13845, 136, NULL, 8, '2021-11-15', 'pic/c_0072.jpg', 7, 4);
INSERT INTO `t_project` VALUES (73, '纯银茶树叶书签', '纯银茶树叶', 30000, 22, '0', '2021-11-30', 4011, 18, NULL, 1, '2021-11-30', 'pic/c_0073.jpg', 8, 4);
INSERT INTO `t_project` VALUES (74, '苗族敬酒习俗月历礼盒', '原创首发', 5000, 30, '0', '2021-11-26', 2000, 20, NULL, 2, '2021-11-26', 'pic/c_0074.jpg', 56, 4);
INSERT INTO `t_project` VALUES (75, '东方美人x字美敦煌', '壬寅虎年新年礼', 26888, 20, '0', '2021-12-03', 2157, 11, NULL, 2, '2021-12-03', 'pic/c_0075.jpg', 34, 4);
INSERT INTO `t_project` VALUES (76, '青绾镯', '一款既是成年礼，又是定情物的非遗手工银饰', 5000, 30, '1', '2021-11-19', 8081, 49, NULL, 5, '2021-11-19', 'pic/c_0076.jpg', 7, 4);
INSERT INTO `t_project` VALUES (77, '波若波罗蜜多心经杯', '波若波罗蜜多心经杯', 3000, 30, '0', '2021-11-17', 1542, 8, NULL, 6, '2021-11-17', 'pic/c_0077.jpg', 45, 4);
INSERT INTO `t_project` VALUES (78, '非遗手工錾刻技艺', '非遗手工錾刻技艺 ', 2000, 40, '0', '2021-11-18', 1542, 11, NULL, 8, '2021-11-18', 'pic/c_0078.jpg', 57, 4);
INSERT INTO `t_project` VALUES (79, '夏茉梅花主题香水', '疏影横斜 暗香浮动', 20000, 30, '1', '2021-12-01', 21000, 100, NULL, 12, '2021-12-01', 'pic/c_0079.jpg', 45, 4);
INSERT INTO `t_project` VALUES (80, '祥虎纳福手链', '新年好贺礼', 5000, 20, '1', '2021-11-12', 5458, 24, NULL, 11, '2021-11-17', 'pic/c_0080.jpg', 34, 4);
INSERT INTO `t_project` VALUES (81, '2022小老腐功能手帐', '2022小老腐功能手帐', 2000, 21, '0', '2021-11-30', 1524, 26, NULL, 1, '2021-11-30', 'pic/c_0081.jpg', 78, 4);
INSERT INTO `t_project` VALUES (82, '《山海经》瑞兽福墩', '神兽信使传递幸福佳音', 110000, 50, '1', '2021-11-05', 120000, 1000, NULL, 2, '2021-11-05', 'pic/c_0082.jpg', 345, 4);
INSERT INTO `t_project` VALUES (83, '虎嗷喵创意虎头帽', '虎嗷喵创意虎头帽', 10000, 30, '0', '2021-11-16', 9000, 90, NULL, 5, '2021-11-16', 'pic/c_0083.jpg', 78, 4);
INSERT INTO `t_project` VALUES (84, '《步辇图》卷轴纪念章套装', '国宝邮局十大名画系列第三弹', 50000, 27, '1', '2021-11-03', 131167, 331, NULL, 8, '2021-11-03', 'pic/c_0084.jpg', 54, 4);
INSERT INTO `t_project` VALUES (85, '传世敦煌集换式收藏卡牌', '官方授权 限定首发', 5000, 31, '1', '2021-12-08', 6000, 100, NULL, 7, '2021-12-08', 'pic/c_0085.jpg', 78, 4);
INSERT INTO `t_project` VALUES (86, '《山海经》国风手盘铜件', '三十年匠人出品\r\n', 10000, 21, '0', '2021-11-23', 4159, 12, NULL, 6, '2021-11-23', 'pic/c_0086.jpg', 21, 4);
INSERT INTO `t_project` VALUES (87, '解谜拼图《十二生肖·阵》', '镇兽师征集令', 10000, 18, '0', '2021-11-26', 6813, 56, NULL, 5, '2021-11-26', 'pic/c_0087.jpg', 243, 4);
INSERT INTO `t_project` VALUES (88, '欢乐年品福气礼盒', '年画', 20000, 21, '0', '2021-12-01', 168, 1, NULL, 4, '2021-12-01', 'pic/c_0088.jpg', 12, 4);
INSERT INTO `t_project` VALUES (89, '数纱绣镯', ' 苗族图腾纹样手工制作', 2000, 24, '1', '2021-11-25', 4406, 24, NULL, 3, '2021-11-25', 'pic/c_0089.jpg', 123, 4);
INSERT INTO `t_project` VALUES (90, '纯手工高温柴烧制品', '可以软水的茶具', 5000, 33, '1', '2021-11-19', 5400, 27, NULL, 9, '2021-11-19', 'pic/c_0090.jpg', 645, 4);
INSERT INTO `t_project` VALUES (91, '2022虎年甲骨文利是封', '甲骨文利是封红包', 2000, 18, '0', '2021-12-10', 1500, 30, NULL, 8, '2021-12-10', 'pic/c_0091.jpg', 789, 4);
INSERT INTO `t_project` VALUES (92, '《婴戏-风筝》马克杯', '嘉德千万级拍品艺术家郭文连推出', 47100, 30, '0', '2021-12-10', 1000, 10, NULL, 7, '2021-12-10', 'pic/c_0092.jpg', 46, 4);
INSERT INTO `t_project` VALUES (93, '《狮鼓喧天》舞醒狮快客杯', '瑞狮送礼吉祥如意', 70000, 27, '0', '2021-12-08', 800, 2, NULL, 6, '2021-12-08', 'pic/c_0093.jpg', 56, 4);
INSERT INTO `t_project` VALUES (94, '徽州白芝麻酥', '脱皮芝麻的香一吃难忘', 5000, 20, '0', '2021-12-10', 2000, 100, NULL, 12, '2021-12-10', 'pic/c_0094.jpg', 435, 3);
INSERT INTO `t_project` VALUES (95, '「东方汉露」银耳饮品', '鲜通江银耳熬制，拂走你的燥！', 7800, 14, '0', '2021-12-09', 2800, 14, NULL, 1, '2021-12-09', 'pic/c_0095.jpg', 435, 3);
INSERT INTO `t_project` VALUES (96, '圆亮牌江南青团', '清新艾草 软糯香甜', 5000, 27, '0', '2021-12-05', 1000, 10, NULL, 6, '2021-12-05', 'pic/c_0096.jpg', 5, 3);
INSERT INTO `t_project` VALUES (97, '“魔豆妈妈的手工坐垫', '纯手工制作', 1000, 28, '0', '2021-12-07', 800, 40, NULL, 2, '2021-12-07', 'pic/c_0097.jpg', 0, 2);
INSERT INTO `t_project` VALUES (98, '毛孩子们需要个家', '毛孩子们需要个家，房租加油', 65000, 25, '0', '2021-12-06', 10000, 25, NULL, 8, '2021-12-06', 'pic/c_0098.jpg', 56, 2);
INSERT INTO `t_project` VALUES (99, '复古科幻黑胶唱机', '来自80年代的未来之声', 6800, 40, '0', '2021-12-10', 1200, 12, NULL, 9, '2021-12-10', 'pic/c_0099.jpg', 7, 1);
INSERT INTO `t_project` VALUES (100, '虚拟机器人手表', 'Mars ONE:打破次元壁', 5000, 21, '0', '2021-12-09', 1000, 10, NULL, 3, '2021-12-09', 'pic/c_0100.jpg', 7, 1);

-- ----------------------------
-- Table structure for t_project_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_project_tag`;
CREATE TABLE `t_project_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `tagid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_8`(`tagid`) USING BTREE,
  INDEX `FK_Reference_7`(`projectid`) USING BTREE,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`tagid`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 项目标签关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_project_type
-- ----------------------------
DROP TABLE IF EXISTS `t_project_type`;
CREATE TABLE `t_project_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_5`(`projectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 项目分类关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project_type
-- ----------------------------
INSERT INTO `t_project_type` VALUES (1, 1, 1);
INSERT INTO `t_project_type` VALUES (2, 2, 1);
INSERT INTO `t_project_type` VALUES (3, 3, 2);
INSERT INTO `t_project_type` VALUES (4, 4, 2);
INSERT INTO `t_project_type` VALUES (5, 5, 3);
INSERT INTO `t_project_type` VALUES (6, 6, 3);
INSERT INTO `t_project_type` VALUES (7, 7, 4);
INSERT INTO `t_project_type` VALUES (8, 8, 4);

-- ----------------------------
-- Table structure for t_return
-- ----------------------------
DROP TABLE IF EXISTS `t_return`;
CREATE TABLE `t_return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL COMMENT '项目ID',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0 -实物回报，1 虚拟物品回报',
  `supportmoney` int(11) NULL DEFAULT NULL COMMENT '支持 金额',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `count` int(11) NULL DEFAULT NULL COMMENT '0 为不限回报数量',
  `signalpurchase` int(11) NULL DEFAULT NULL COMMENT ' 单笔限购',
  `purchase` int(11) NULL DEFAULT NULL COMMENT '限购数量',
  `freight` int(11) NULL DEFAULT NULL COMMENT '运费',
  `invoice` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0 -不开发票，1 -开发票',
  `rtndate` int(11) NULL DEFAULT NULL COMMENT ' 回报时间,众筹成功后多少天进行回报',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '回报表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_return
-- ----------------------------
INSERT INTO `t_return` VALUES (1, 1, '', 3000, '奇魔猪蒸煮烹饪锅', 1, 0, NULL, 8, NULL, 7);
INSERT INTO `t_return` VALUES (2, 2, NULL, 36207, '常规款取暖器', 1, 0, NULL, 5, NULL, 14);
INSERT INTO `t_return` VALUES (3, 3, NULL, 55036, '米奇真无线蓝牙耳机', 1, 1, 50, 0, NULL, 7);
INSERT INTO `t_return` VALUES (4, 4, NULL, 10494, 'LINE FRIENDS正版授权', 1, 1, 99, 7, NULL, 15);
INSERT INTO `t_return` VALUES (5, 5, NULL, 24894, '冰淇淋机', 1, 1, 50, 7, NULL, 7);
INSERT INTO `t_return` VALUES (6, 6, NULL, 38314, '时钟光影灯', 1, 1, 900, 0, NULL, 10);
INSERT INTO `t_return` VALUES (7, 7, NULL, 44500, '稚果云电脑', 1, 1, 50, 10, NULL, 15);
INSERT INTO `t_return` VALUES (8, 8, NULL, 3850, '斗鱼涂鸦鼠标', 1, 1, 50, 3, NULL, 3);
INSERT INTO `t_return` VALUES (9, 9, NULL, 74531, 'paron黑胶唱片机', 1, 0, NULL, 20, NULL, 7);
INSERT INTO `t_return` VALUES (10, 10, NULL, 6697, '小墨壳经典款数字键盘', 1, 1, 99, 10, NULL, 4);
INSERT INTO `t_return` VALUES (11, 11, NULL, 2212, '猫爪耳机', 1, 1, 100, 5, NULL, 5);
INSERT INTO `t_return` VALUES (12, 12, NULL, 8955, '路飞款航海王TWS蓝牙耳机', 1, 1, 100, 10, NULL, 15);
INSERT INTO `t_return` VALUES (13, 13, NULL, 10193, '等离子杀菌智能米箱', 1, 1, 99, 7, NULL, 2);
INSERT INTO `t_return` VALUES (14, 14, NULL, 21459, '钢铁侠U盘', 1, 1, 199, 10, NULL, 5);
INSERT INTO `t_return` VALUES (15, 15, NULL, 29279, '墨动精灵打印盒', 1, 0, NULL, 7, NULL, 7);
INSERT INTO `t_return` VALUES (16, 16, NULL, 52991, '棒棒糖智能吊坠', 1, 1, 200, 5, NULL, 2);
INSERT INTO `t_return` VALUES (17, 17, NULL, 10673, '小嘿电动车', 1, 1, 59, 16, NULL, 6);
INSERT INTO `t_return` VALUES (18, 18, NULL, 21000, '突破次元壁的格斗机器人', 1, 1, 39, 20, NULL, 2);
INSERT INTO `t_return` VALUES (19, 19, NULL, 573, '纯天然高科技滤芯口罩', 1, 0, NULL, 0, NULL, 7);
INSERT INTO `t_return` VALUES (20, 20, NULL, 25935, '魔法少女的谢礼', 1, 0, NULL, 5, NULL, 1);
INSERT INTO `t_return` VALUES (21, 21, NULL, 19999, '大型驾驶舱式机动装甲参水猿', 1, 1, 100, 9, NULL, 2);
INSERT INTO `t_return` VALUES (22, 22, NULL, 92711, '少数派 6 周年限定周边', 1, 0, NULL, 8, NULL, 4);
INSERT INTO `t_return` VALUES (23, 23, NULL, 47703, 'VIRGOO FEVER控制器', 1, 1, 99, 9, NULL, 3);
INSERT INTO `t_return` VALUES (24, 24, NULL, 16755, 'PORTABLE WORKSTATION', 1, 1, 79, 9, NULL, 5);
INSERT INTO `t_return` VALUES (25, 25, NULL, 8344, '『OMNICUP』电动便携式咖啡机', 1, 1, 25, 8, NULL, 1);
INSERT INTO `t_return` VALUES (26, 26, NULL, 83424, '故宫华羽金翠手账本', 1, 1, 50, 0, NULL, 2);
INSERT INTO `t_return` VALUES (27, 27, NULL, 6647, '不需要回报', 1, 0, NULL, 0, NULL, 1);
INSERT INTO `t_return` VALUES (28, 28, NULL, 27237, '公益诗歌记事本', 1, 1, 100, 0, NULL, 2);
INSERT INTO `t_return` VALUES (29, 29, NULL, 26771, '四斤滩枣', 1, 0, NULL, 8, NULL, 2);
INSERT INTO `t_return` VALUES (30, 30, NULL, 11463, '动物钥匙扣（全4款）一套', 1, 1, 199, 0, NULL, 1);
INSERT INTO `t_return` VALUES (31, 31, NULL, 707, '天水花牛苹果精品装', 1, 1, 99, 6, NULL, 2);
INSERT INTO `t_return` VALUES (32, 32, NULL, 99641, '故宫宫廷江豚杯', 1, 1, 99, 9, NULL, 6);
INSERT INTO `t_return` VALUES (33, 33, NULL, 52900, '江厌离款丝巾', 1, 1, 69, 8, NULL, 3);
INSERT INTO `t_return` VALUES (34, 34, NULL, 8543, '不需要回报', 1, 0, NULL, 0, NULL, 1);
INSERT INTO `t_return` VALUES (35, 35, NULL, 1077, '感谢信一封', 1, 0, NULL, 0, NULL, 1);
INSERT INTO `t_return` VALUES (36, 36, NULL, 1068, '感谢信一封', 1, 1, 99, 0, NULL, 0);
INSERT INTO `t_return` VALUES (37, 37, NULL, 1502, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (38, 38, NULL, 6130, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (39, 39, NULL, 6558, '感谢信一封', 1, 1, 199, 0, '0', 0);
INSERT INTO `t_return` VALUES (40, 40, NULL, 11480, '电子感谢信', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (41, 41, NULL, 6245, '感谢信一封', 1, 1, 199, 0, NULL, 0);
INSERT INTO `t_return` VALUES (42, 42, NULL, 140, '感谢信一封', 1, 1, 99, 0, NULL, 0);
INSERT INTO `t_return` VALUES (43, 43, NULL, 23000, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (44, 44, NULL, 22, '您的名字将出现在片尾感谢名单中', 1, 1, 999, 0, NULL, 0);
INSERT INTO `t_return` VALUES (45, 45, NULL, 6000, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (46, 46, NULL, 185000, '招财猫钥匙扣', 1, 1, 200, 8, NULL, 3);
INSERT INTO `t_return` VALUES (47, 47, NULL, 91904, '逗猫棒', 1, 1, 200, 5, NULL, 0);
INSERT INTO `t_return` VALUES (48, 48, NULL, 10087, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (49, 49, NULL, 5535, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (50, 50, NULL, 3006, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (51, 51, NULL, 3708, '鲜烹酥卤鸡爪1盒', 1, 1, 30, 0, NULL, 1);
INSERT INTO `t_return` VALUES (52, 52, NULL, 10361, '大口吃肉的粽子 自热锅', 1, 1, 59, 2, NULL, 2);
INSERT INTO `t_return` VALUES (53, 53, NULL, 5573, '鲍汁年糕', 1, 1, 99, 8, NULL, 5);
INSERT INTO `t_return` VALUES (54, 54, NULL, 15625, '鲍鱼拌面', 1, 1, 199, 6, NULL, 4);
INSERT INTO `t_return` VALUES (55, 55, NULL, 16678, '即食鲍鱼彩虹捞饭', 1, 1, 200, 0, NULL, 0);
INSERT INTO `t_return` VALUES (56, 56, NULL, 2963, '球小浪的茶', 1, 1, 100, 0, NULL, 0);
INSERT INTO `t_return` VALUES (57, 57, NULL, 20292, '雷司令白葡萄酒', 1, 1, 100, 0, NULL, 0);
INSERT INTO `t_return` VALUES (58, 58, NULL, 3616, '故宫脊兽巧克力', 1, 1, 99, 8, NULL, 0);
INSERT INTO `t_return` VALUES (59, 59, NULL, 4604, '陨石月饼', 1, 0, NULL, 6, NULL, 2);
INSERT INTO `t_return` VALUES (60, 60, NULL, 7980, '宫廷白茶高颜人气「茉莉柚柚」', 1, 1, 20, 3, NULL, 0);
INSERT INTO `t_return` VALUES (61, 61, NULL, 84371, '高颜人气「茉莉柚柚」', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (62, 62, NULL, 33745, '夏黑葡萄 x 手打柠檬|', 1, 0, NULL, 2, NULL, 1);
INSERT INTO `t_return` VALUES (63, 63, NULL, 6303, '新桔普洱', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (64, 64, NULL, 5960, '小龙虾腰果', 1, 1, 100, 8, NULL, 1);
INSERT INTO `t_return` VALUES (65, 65, NULL, 5520, '麻小花家的小麻花', 1, 1, 100, 0, NULL, 0);
INSERT INTO `t_return` VALUES (66, 66, NULL, 27974, '脆皮烤五花', 1, 1, 100, 7, NULL, 0);
INSERT INTO `t_return` VALUES (67, 67, NULL, 7041, '有朝气复合维生素0蔗糖牛奶饮', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (68, 68, NULL, 4108, '五花肉粽', 1, 1, 88, 8, NULL, 8);
INSERT INTO `t_return` VALUES (69, 69, NULL, 14669, '目连黑粽', 1, 1, 99, 5, NULL, 1);
INSERT INTO `t_return` VALUES (70, 70, NULL, 14468, '龙头鱼干', 1, 1, 77, 8, NULL, 0);
INSERT INTO `t_return` VALUES (71, 71, NULL, 21817, '《大理寺日志》春节福袋', 1, 1, 99, 0, NULL, 0);
INSERT INTO `t_return` VALUES (72, 72, NULL, 13844, '超精致木质榫卯上色模型 ', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (73, 73, NULL, 4011, '纯银茶树叶书签与红楼梦日历2022', 1, 0, NULL, 7, NULL, 0);
INSERT INTO `t_return` VALUES (74, 74, NULL, 2000, '2022苗族敬酒习俗儿童画月历礼盒', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (75, 75, NULL, 2157, '礼见东方', 1, 1, 88, 0, NULL, 5);
INSERT INTO `t_return` VALUES (76, 76, NULL, 8081, '青绾镯', 1, 1, 99, 0, NULL, 2);
INSERT INTO `t_return` VALUES (77, 77, NULL, 1542, '波若波罗蜜多心经杯', 1, 0, NULL, 8, NULL, 0);
INSERT INTO `t_return` VALUES (78, 78, NULL, 1542, '盒花系列——水仙', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (79, 79, NULL, 21000, '夏茉梅花主题香水', 1, 1, 100, 4, NULL, 1);
INSERT INTO `t_return` VALUES (80, 80, NULL, 5458, '祥虎纳福手链', 1, 0, NULL, 10, NULL, 0);
INSERT INTO `t_return` VALUES (81, 81, NULL, 1524, '2022小老腐功能手帐', 1, 1, 99, 0, NULL, 6);
INSERT INTO `t_return` VALUES (82, 82, NULL, 120000, '《山海经》三青鸟•瑞兽福墩', 1, 0, NULL, 8, NULL, 2);
INSERT INTO `t_return` VALUES (83, 83, NULL, 9000, '虎嗷喵创意虎头帽', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (84, 84, NULL, 131167, '《步辇图》卷轴纪念章套装', 1, 0, NULL, 1, NULL, 1);
INSERT INTO `t_return` VALUES (85, 85, NULL, 6000, '传世敦煌集换式收藏卡牌', 1, 1, 188, 0, NULL, 4);
INSERT INTO `t_return` VALUES (86, 86, NULL, 4159, '神兽九尾狐〖新国风手盘铜件〗', 1, 0, NULL, 2, NULL, 1);
INSERT INTO `t_return` VALUES (87, 87, NULL, 6813, '解谜拼图《十二生肖·阵》', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (88, 88, NULL, 168, '寻年记：欢乐年品福气礼盒', 1, 0, NULL, 10, NULL, 1);
INSERT INTO `t_return` VALUES (89, 89, NULL, 4406, '【传统工艺】 数纱绣镯', 1, 0, NULL, 5, NULL, 0);
INSERT INTO `t_return` VALUES (90, 90, NULL, 5400, '茶具', 1, 1, 199, 10, NULL, 0);
INSERT INTO `t_return` VALUES (91, 91, NULL, 1500, '甲骨文利是封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (92, 92, NULL, 1000, '《婴戏-风筝》马克杯', 1, 1, 99, 6, NULL, 7);
INSERT INTO `t_return` VALUES (93, 93, NULL, 800, '《狮鼓喧天》舞醒狮快客杯', 1, 1, 129, 8, NULL, 2);
INSERT INTO `t_return` VALUES (94, 94, NULL, 2000, '徽州白芝麻酥', 1, 0, 299, 5, NULL, 0);
INSERT INTO `t_return` VALUES (95, 95, NULL, 2800, '「东方汉露」银耳饮品', 1, 0, NULL, 6, NULL, 2);
INSERT INTO `t_return` VALUES (96, 96, NULL, 1000, '圆亮牌江南青团', 1, 1, 99, 5, NULL, 0);
INSERT INTO `t_return` VALUES (97, 97, NULL, 800, '“魔豆妈妈”田爱梅的手工坐垫', 1, 0, NULL, 6, NULL, 3);
INSERT INTO `t_return` VALUES (98, 98, NULL, 10000, '感谢信一封', 1, 0, NULL, 0, NULL, 0);
INSERT INTO `t_return` VALUES (99, 99, NULL, 1200, '复古科幻黑胶唱机', 1, 1, 99, 8, NULL, 2);
INSERT INTO `t_return` VALUES (100, 100, NULL, 1000, '虚拟机器人手表', 1, 1, 120, 6, NULL, 0);

-- ----------------------------
-- Table structure for t_status
-- ----------------------------
DROP TABLE IF EXISTS `t_status`;
CREATE TABLE `t_status`  (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_status
-- ----------------------------
INSERT INTO `t_status` VALUES (1, '众筹中');
INSERT INTO `t_status` VALUES (2, '众筹成功');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 项目标签' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, NULL, NULL);

-- ----------------------------
-- Table structure for t_transaction
-- ----------------------------
DROP TABLE IF EXISTS `t_transaction`;
CREATE TABLE `t_transaction`  (
  `id` int(11) NOT NULL,
  `ordersn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paysn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报酬',
  `memberid` int(11) NULL DEFAULT NULL,
  `amount` float NULL DEFAULT NULL,
  `paystate` tinyint(4) NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `completiontime` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createat` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updateat` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 项目分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '科技', NULL);
INSERT INTO `t_type` VALUES (2, '公益', NULL);
INSERT INTO `t_type` VALUES (3, '食品', NULL);
INSERT INTO `t_type` VALUES (4, '文化', NULL);

SET FOREIGN_KEY_CHECKS = 1;
