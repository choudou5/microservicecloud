/** 创建 数据库*/
CREATE DATABASE IF NOT EXISTS cloudDB01 DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cloudDB01`;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` bigint(20) NOT NULL AUTO_INCREMENT,
  `dname` varchar(60) DEFAULT NULL,
  `db_source` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事部', 'clouddb01');
INSERT INTO `dept` VALUES ('2', '财务部', 'clouddb01');
INSERT INTO `dept` VALUES ('3', '市场部', 'clouddb01');
INSERT INTO `dept` VALUES ('4', '运维部', 'clouddb01');
INSERT INTO `dept` VALUES ('5', '渠道部', 'clouddb01');



/** 创建 数据库*/
CREATE DATABASE IF NOT EXISTS cloudDB02 DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cloudDB02`;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` bigint(20) NOT NULL AUTO_INCREMENT,
  `dname` varchar(60) DEFAULT NULL,
  `db_source` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事部', 'clouddb02');
INSERT INTO `dept` VALUES ('2', '财务部', 'clouddb02');
INSERT INTO `dept` VALUES ('3', '市场部', 'clouddb02');
INSERT INTO `dept` VALUES ('4', '运维部', 'clouddb02');


/** 创建 数据库*/
CREATE DATABASE IF NOT EXISTS cloudDB03 DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cloudDB03`;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` bigint(20) NOT NULL AUTO_INCREMENT,
  `dname` varchar(60) DEFAULT NULL,
  `db_source` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事部', 'clouddb03');
INSERT INTO `dept` VALUES ('2', '财务部', 'clouddb03');
INSERT INTO `dept` VALUES ('3', '市场部', 'clouddb03');
INSERT INTO `dept` VALUES ('4', '运维部', 'clouddb03');