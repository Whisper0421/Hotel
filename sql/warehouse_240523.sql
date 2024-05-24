/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : 127.0.0.1:3306
 Source Schema         : warehouse

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 23/05/2024 23:26:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `carno` varchar(20) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` smallint(2) DEFAULT '1',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
BEGIN;
INSERT INTO `bus_car` (`id`, `carno`, `contract`, `phone`, `remark`, `status`, `createtime`) VALUES (1, '豫A L32B36', '张三', '17638435434', 'sss', 1, '2024-05-22 14:32:27');
INSERT INTO `bus_car` (`id`, `carno`, `contract`, `phone`, `remark`, `status`, `createtime`) VALUES (2, '豫A L32B35', '李四', '17638435433', NULL, 2, '2024-05-23 04:37:44');
INSERT INTO `bus_car` (`id`, `carno`, `contract`, `phone`, `remark`, `status`, `createtime`) VALUES (3, '豫A L32B31', '张三1', '17638435434', '', 1, '2024-05-23 14:06:58');
INSERT INTO `bus_car` (`id`, `carno`, `contract`, `phone`, `remark`, `status`, `createtime`) VALUES (4, '121', 'zs', '17638435434', '1', 1, '2024-05-23 15:12:27');
INSERT INTO `bus_car` (`id`, `carno`, `contract`, `phone`, `remark`, `status`, `createtime`) VALUES (5, '豫A L32B322', '李四1', '17638435432', '', 0, '2024-05-23 15:17:29');
COMMIT;

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `connectionperson` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
BEGIN;
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (1, '校园超市', '111', '长沙雨花区六街', '027-9123131', '李老板', '138123123123', '中国银行', '654431331343413', '213123@sina.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (2, '步步高超市', '222', '长沙雨花区六街', '0755-9123131', '张老板', '138123123123', '中国银行', '654431331343413', '213123@sina.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (3, '刘某人超市', '430000', '长沙雨花区六街', '027-11011011', '刘总', '13434134131', '招商银行', '6543123341334133', '6666@66.com', '545341', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (7, '天天旺超市', '1412', '长沙雨花区六街', '13728191321', '李总', '13728191321', '招商银行', '654431331343413', '13728191321@163.com', '121213', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (9, 'shop', '412723', '长沙雨花区六街', '13576489382', '罗总', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (10, 'shop1', '412723', '长沙雨花区六街', '13728191321', '小龙', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (11, 'shop2', '333', '长沙雨花区六街', '13728191321', '小卓', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (12, 'shop3', '555', '长沙雨花区六街', '13728191321', '小旺', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (13, 'shop4', '666', '长沙雨花区六街', '13728191321', '小玲', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (14, 'shop5', '777', '长沙雨花区六街', '13728191321', '小建', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
INSERT INTO `bus_customer` (`id`, `customername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (15, '新型超市', '888', '长沙雨花区六街', '13728191321', '小焕', '13576489382', '招商银行', '654431331343413', '13576489382@qq.com', '430000', 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_deliver
-- ----------------------------
DROP TABLE IF EXISTS `bus_deliver`;
CREATE TABLE `bus_deliver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `delivertime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `carno` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `deliverprice` decimal(10,2) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_deliver
-- ----------------------------
BEGIN;
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (3, 1, NULL, '2021-04-12 10:32:44', '最终管理员', '豫A L32B35', 2, '', 2, 5.00, 7);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (5, 1, NULL, '2021-04-12 10:55:05', '最终管理员', '豫A L32B35', 1000, '', 2, 5.00, 3);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (6, 1, NULL, '2021-04-12 10:55:48', '最终管理员', '豫A L32B35', 2, '', 2, 5.00, 3);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (7, 1, NULL, '2021-04-12 11:41:16', '最终管理员', '豫A L32B35', 2, '', 2, 5.00, 2);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (8, 3, NULL, '2021-04-13 03:16:09', '最终管理员', '豫A L32B35', 1000, 'test111', 1, 5.00, 5);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (9, 1, NULL, '2021-04-13 08:14:29', '最终管理员', '豫A L32B36', 2, '', 2, 5.00, 2);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (10, 3, NULL, '2024-05-23 14:07:53', '最终管理员', '豫A L32B36', 2, 'ss', 2, 20.00, 2);
INSERT INTO `bus_deliver` (`id`, `customerid`, `paytype`, `delivertime`, `operateperson`, `carno`, `number`, `remark`, `status`, `deliverprice`, `goodsid`) VALUES (11, 1, NULL, '2024-05-23 15:12:56', '最终管理员', '121', 2, '', 2, 5.00, 1);
COMMIT;

-- ----------------------------
-- Table structure for bus_goods
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods`;
CREATE TABLE `bus_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) DEFAULT NULL,
  `produceplace` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `goodspackage` varchar(255) DEFAULT NULL,
  `productcode` varchar(255) DEFAULT NULL,
  `promitcode` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `dangernum` int(11) DEFAULT NULL,
  `goodsimg` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_sq0btr2v2lq8gt8b4gb8tlk0i` (`providerid`) USING BTREE,
  CONSTRAINT `bus_goods_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_goods
-- ----------------------------
BEGIN;
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (1, '矿泉水', '湖北', '500ML', '瓶', 'PH12345', 'PZ1234', '好喝', 2, 998, 10, '2018-12-25/userface1.jpg', 1, 3);
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (2, '旺旺饼干', '长沙', '包', '袋', 'PH12312312', 'PZ12312', '好吃不上火', 4, 980, 10, '2018-12-25/userface2.jpg', 1, 1);
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (3, '旺旺大礼包', '长沙', '盒', '盒', '11', '11', '111', 28, 500, 10, '2018-12-25/userface3.jpg', 1, 1);
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (4, '牛奶', '武汉', '200ML', '瓶', '11', '111', '12321', 3, 1000, 10, '2018-12-25/userface4.jpg', 1, 3);
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (5, '饮料', '武汉', '300ML', '瓶', '1234', '12321', '22221111', 3, 10000, 100, '2018-12-25/userface5.jpg', 1, 3);
INSERT INTO `bus_goods` (`id`, `goodsname`, `produceplace`, `size`, `goodspackage`, `productcode`, `promitcode`, `description`, `price`, `number`, `dangernum`, `goodsimg`, `available`, `providerid`) VALUES (7, '饼干', '湖北', '包', '袋', '12312', '2132', '213', 123, 1000, 100, '2019-09-27/48E8C8FE8F2D4536820435CCCD968AEC.jpg', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for bus_inport
-- ----------------------------
DROP TABLE IF EXISTS `bus_inport`;
CREATE TABLE `bus_inport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) DEFAULT NULL,
  `inporttime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_1o4bujsyd2kl4iqw48fie224v` (`providerid`) USING BTREE,
  KEY `FK_ho29poeu4o2dxu4rg1ammeaql` (`goodsid`) USING BTREE,
  CONSTRAINT `bus_inport_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`),
  CONSTRAINT `bus_inport_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `bus_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_inport
-- ----------------------------
BEGIN;
INSERT INTO `bus_inport` (`id`, `paytype`, `inporttime`, `operateperson`, `number`, `remark`, `inportprice`, `providerid`, `goodsid`) VALUES (16, NULL, '2021-04-12 04:54:48', '超级管理员', 2, '', 2, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for bus_outport
-- ----------------------------
DROP TABLE IF EXISTS `bus_outport`;
CREATE TABLE `bus_outport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `outputtime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `outportprice` double(10,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_outport
-- ----------------------------
BEGIN;
INSERT INTO `bus_outport` (`id`, `providerid`, `paytype`, `outputtime`, `operateperson`, `outportprice`, `number`, `remark`, `goodsid`) VALUES (9, 1, NULL, '2021-04-12 06:24:00', '超级管理员', 2.00, 2, '', 2);
INSERT INTO `bus_outport` (`id`, `providerid`, `paytype`, `outputtime`, `operateperson`, `outportprice`, `number`, `remark`, `goodsid`) VALUES (10, 1, NULL, '2021-04-17 02:21:54', '最终管理员', 2.00, 2, '', 2);
COMMIT;

-- ----------------------------
-- Table structure for bus_provider
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `connectionperson` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
BEGIN;
INSERT INTO `bus_provider` (`id`, `providername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (1, '旺旺食品', '434000', '湖北', '0728-4124312', '李毅', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` (`id`, `providername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (2, '好丽友集团', '430000', '湖南', '0728-4124312', '张磊', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` (`id`, `providername`, `zip`, `address`, `telephone`, `connectionperson`, `phone`, `bank`, `account`, `email`, `fax`, `available`) VALUES (3, '农夫山泉集团', '513131', '湖南', '0789-21312', '小晨', '15867873291', '建设银行', '512314141541', '123131', '312312', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码【为了调事显示顺序】',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (1, 0, '总公司', 1, 'BOSS', '长沙', 1, 1, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (2, 1, '物流部', 0, '发货进货', '长沙', 1, 2, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (3, 1, '运营部', 0, '无', '武汉', 1, 3, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (4, 1, '人事部门', 0, '无', '长沙', 1, 4, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (5, 2, '物流一部', 0, '物流一部', '武汉', 1, 5, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (6, 2, '物流二部', 0, '', '武汉', 1, 6, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (7, 3, '运营一部', 0, '运营一部', '武汉', 1, 7, '2021-04-12 14:06:32');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (24, 4, '人事一部', 1, '333', '长沙', 1, 12, '2021-04-12 02:11:09');
INSERT INTO `sys_dept` (`id`, `pid`, `title`, `open`, `remark`, `address`, `available`, `ordernum`, `createtime`) VALUES (25, 4, '人事二部', 1, '444', '长沙', 1, 13, '2021-04-17 02:11:25');
COMMIT;

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
BEGIN;
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (310, '最终管理员-system', '0:0:0:0:0:0:0:1', '2024-05-23 04:49:09');
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (311, '最终管理员-system', '0:0:0:0:0:0:0:1', '2024-05-23 04:50:55');
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (312, '最终管理员-system', '0:0:0:0:0:0:0:1', '2024-05-23 13:55:36');
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (313, '最终管理员-system', '0:0:0:0:0:0:0:1', '2024-05-23 14:06:03');
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (314, '最终管理员-system', '0:0:0:0:0:0:0:1', '2024-05-23 15:11:44');
INSERT INTO `sys_loginfo` (`id`, `loginname`, `loginip`, `logintime`) VALUES (315, '孙七-sq', '0:0:0:0:0:0:0:1', '2024-05-23 15:14:40');
COMMIT;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) DEFAULT NULL,
  `percode` varchar(255) DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (1, 0, 'menu', '仓库物流管理系统', NULL, '&#xe668;', NULL, NULL, 1, 1, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (2, 1, 'menu', '基础管理', NULL, '&#xe857;', '', '', 0, 2, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (3, 1, 'menu', '物流管理', NULL, '&#xe63c;', '', NULL, 0, 3, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (5, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 0, 5, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (7, 2, 'menu', '客户管理', NULL, '&#xe651;', '/bus/toCustomerManager', '', 0, 7, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (8, 2, 'menu', '供应商管理', NULL, '&#xe658;', '/bus/toProviderManager', '', 0, 8, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (9, 2, 'menu', '商品管理', NULL, '&#xe657;', '/bus/toGoodsManager', '', 0, 9, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (10, 3, 'menu', '商品进货', NULL, '&#xe756;', '/bus/toInportManager', '', 0, 10, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (11, 3, 'menu', '退货查询', NULL, '&#xe65a;', '/bus/toOutportManager', '', 0, 11, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (14, 5, 'menu', '部门管理', NULL, '&#xe770;', '/sys/toDeptManager', '', 0, 14, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (15, 5, 'menu', '菜单管理', NULL, '&#xe857;', '/sys/toMenuManager', '', 0, 15, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (16, 96, 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', '', 0, 16, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (17, 96, 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', '', 0, 17, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (18, 96, 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', 0, 18, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (21, 97, 'menu', '登陆日志', NULL, '&#xe675;', '/sys/toLoginfoManager', '', 0, 21, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (23, 97, 'menu', '图标展示', NULL, '&#xe670;', '../resources/page/icon.html', NULL, 0, 23, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (30, 14, 'permission', '添加部门', 'dept:create', '', NULL, NULL, 0, 24, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (31, 14, 'permission', '修改部门', 'dept:update', '', NULL, NULL, 0, 26, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (32, 14, 'permission', '删除部门', 'dept:delete', '', NULL, NULL, 0, 27, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (42, 17, 'permission', '添加角色', 'role:create', '', NULL, NULL, 0, 37, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (43, 17, 'permission', '修改角色', 'role:update', '', NULL, NULL, 0, 38, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (44, 17, 'permission', '角色删除', 'role:delete', '', NULL, NULL, 0, 39, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (46, 17, 'permission', '分配权限', 'role:selectPermission', '', NULL, NULL, 0, 41, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (47, 18, 'permission', '添加用户', 'user:create', '', NULL, NULL, 0, 42, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (48, 18, 'permission', '修改用户', 'user:update', '', NULL, NULL, 0, 43, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (49, 18, 'permission', '删除用户', 'user:delete', '', NULL, NULL, 0, 44, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (51, 18, 'permission', '用户分配角色', 'user:selectRole', '', NULL, NULL, 0, 46, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (52, 18, 'permission', '重置密码', 'user:resetPwd', NULL, NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (53, 14, 'permission', '部门查询', 'dept:view', NULL, NULL, NULL, 0, 48, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (56, 17, 'permission', '角色查询', 'role:view', NULL, NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (57, 18, 'permission', '用户查询', 'user:view', NULL, NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (68, 7, 'permission', '客户查询', 'customer:view', NULL, NULL, NULL, NULL, 60, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (69, 7, 'permission', '客户添加', 'customer:create', NULL, NULL, NULL, NULL, 61, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (70, 7, 'permission', '客户修改', 'customer:update', NULL, NULL, NULL, NULL, 62, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (71, 7, 'permission', '客户删除', 'customer:delete', NULL, NULL, NULL, NULL, 63, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (81, 8, 'permission', '供应商查询', 'provider:view', NULL, NULL, NULL, NULL, 73, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (82, 8, 'permission', '供应商添加', 'provider:create', NULL, NULL, NULL, NULL, 74, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (83, 8, 'permission', '供应商修改', 'provider:update', NULL, NULL, NULL, NULL, 75, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (84, 8, 'permission', '供应商删除', 'provider:delete', NULL, NULL, NULL, NULL, 76, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (91, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, NULL, 0, 79, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (92, 9, 'permission', '商品添加', 'goods:create', NULL, NULL, NULL, 0, 80, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (94, 9, 'permission', '商品修改', 'goods:update', NULL, 'goods:update', NULL, 0, 81, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (96, 1, 'menu', '人事管理', NULL, '&#xe613;', '', NULL, 0, 83, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (97, 1, 'menu', '其他', '7', '&#xe631;', '', NULL, 0, 20, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (98, 3, 'menu', '商品发货', NULL, '&#xe609;', '/bus/toDelivertManager', NULL, 0, 16, 1);
INSERT INTO `sys_permission` (`id`, `pid`, `type`, `title`, `percode`, `icon`, `href`, `target`, `open`, `ordernum`, `available`) VALUES (100, 3, 'menu', '货车管理', NULL, '&#xe609;', '/bus/toCarManager', NULL, 0, 84, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `name`, `remark`, `available`, `createtime`) VALUES (1, '最终管理员', '拥有所有菜单权限', 1, '2021-02-08 14:06:32');
INSERT INTO `sys_role` (`id`, `name`, `remark`, `available`, `createtime`) VALUES (4, '基础管理员', '可以对基础管理进行操作', 1, '2021-02-09 14:28:32');
INSERT INTO `sys_role` (`id`, `name`, `remark`, `available`, `createtime`) VALUES (5, '物流管理员', '可以对仓库进行操作', 1, '2021-02-09 14:29:33');
INSERT INTO `sys_role` (`id`, `name`, `remark`, `available`, `createtime`) VALUES (6, '人事管理员', '人事管理员', 1, '2021-04-12 14:06:32');
INSERT INTO `sys_role` (`id`, `name`, `remark`, `available`, `createtime`) VALUES (7, '系统管理员', '可以对系统进行操作', 1, '2021-02-09 14:29:48');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`,`rid`) USING BTREE,
  KEY `FK_tcsr9ucxypb3ce1q5qngsfk33` (`rid`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 1);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 2);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 3);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 5);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 7);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 8);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 9);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 10);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 11);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 14);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 15);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 16);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 17);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 18);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 21);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 23);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 30);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 31);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 32);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 34);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 35);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 36);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 38);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 39);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 40);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 42);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 43);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 44);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 46);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 47);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 48);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 49);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 51);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 52);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 53);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 54);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 55);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 56);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 57);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 68);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 69);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 70);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 71);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 73);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 74);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 75);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 81);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 82);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 83);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 84);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 91);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 92);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 94);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 96);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (1, 97);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 2);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 7);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 8);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 9);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 68);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 69);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 70);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 71);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 81);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 82);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 83);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 84);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 91);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 92);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (4, 94);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 1);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 3);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 10);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 11);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 98);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (5, 100);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 1);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 16);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 17);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 18);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 38);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 39);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 40);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 42);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 43);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 44);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 46);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 47);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 48);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 49);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 51);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 52);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 55);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 56);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 57);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (6, 96);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 5);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 14);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 15);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 16);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 17);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 18);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 21);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 23);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 30);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 31);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 34);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 35);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 36);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 38);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 39);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 40);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 42);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 43);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 44);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 46);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 47);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 48);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 49);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 51);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 52);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 53);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 54);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 55);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 56);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 57);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 73);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 74);
INSERT INTO `sys_role_permission` (`rid`, `pid`) VALUES (7, 75);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE,
  KEY `FK_203gdpkwgtow7nxlo2oap5jru` (`rid`) USING BTREE,
  CONSTRAINT `sys_role_user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `sys_role_user_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (1, 2);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (4, 3);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (4, 8);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (5, 4);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (5, 5);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (5, 8);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (6, 5);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (6, 8);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (7, 6);
INSERT INTO `sys_role_user` (`rid`, `uid`) VALUES (7, 8);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `loginname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT '1',
  `ordernum` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `imgpath` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_3rrcpvho2w1mx1sfiuuyir1h` (`deptid`) USING BTREE,
  CONSTRAINT `sys_user_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (1, '最终管理员', 'system', '长沙', 1, '超级管理员', '532ac00e86893901af5f0be6b704dbc7', 1, '2021-04-12 11:06:34', NULL, 1, 1, 0, '../resources/images/defaultusertitle.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (2, '李四', 'ls', '长沙', 0, '长沙', 'b07b848d69e0553b80e601d31571797e', 1, '2021-04-10 11:06:36', 1, 1, 2, 1, '../resources/images/defaultusertitle.jpg', 'FC1EE06AE4354D3FBF7FDD15C8FCDA71');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (3, '王五', 'ww', '长沙', 1, '管理员', '3c3f971eae61e097f59d52360323f1c8', 3, '2021-04-10 11:06:38', 2, 1, 3, 1, '../resources/images/defaultusertitle.jpg', '3D5F956E053C4E85B7D2681386E235D2');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (4, '赵六', 'zl', '长沙', 1, '程序员', '2e969742a7ea0c7376e9551d578e05dd', 4, '2021-04-10 11:06:40', 3, 1, 4, 1, '../resources/images/defaultusertitle.jpg', '6480EE1391E34B0886ACADA501E31145');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (5, '孙七', 'sq', '长沙', 1, '程序员', '76d4cd7482309896f3ed1cd38adccaad', 4, '2021-04-10 11:06:43', 4, 1, 5, 1, '../resources/images/defaultusertitle.jpg', 'FD7A545437344C6290AEBC501F69E35C');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (6, '刘八', 'lb', '长沙', 1, '程序员', 'bcee2b05b4b591106829aec69a094806', 4, '2021-04-10 11:21:12', 3, 1, 6, 1, '../resources/images/defaultusertitle.jpg', 'E6CCF54A09894D998225878BBD139B20');
INSERT INTO `sys_user` (`id`, `name`, `loginname`, `address`, `sex`, `remark`, `pwd`, `deptid`, `hiredate`, `mgr`, `available`, `ordernum`, `type`, `imgpath`, `salt`) VALUES (8, '秦九', 'lp', '长沙', 1, '长沙', '83c6312d3124527c06f9f32c9f0f4122', 7, '2021-04-10 08:47:38', 3, 1, 7, 1, NULL, '9A77217BD788418683C5D69CDC85B4AA');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
