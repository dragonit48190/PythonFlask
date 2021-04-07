/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-04-07 12:51:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `membertb`
-- ----------------------------
DROP TABLE IF EXISTS `membertb`;
CREATE TABLE `membertb` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_fname` varchar(200) NOT NULL,
  `m_lname` varchar(200) NOT NULL,
  `m_sex` varchar(10) NOT NULL,
  `m_birthdate` date NOT NULL,
  `m_email` varchar(200) NOT NULL,
  `m_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of membertb
-- ----------------------------
INSERT INTO `membertb` VALUES ('1', 'DragonIT', 'nakrub', 'ชาย', '1975-04-04', '    phonsawan48190@gmail.com', '2021-04-04 15:10:36');

-- ----------------------------
-- Table structure for `usertb`
-- ----------------------------
DROP TABLE IF EXISTS `usertb`;
CREATE TABLE `usertb` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_username` varchar(200) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_date` date NOT NULL,
  `u_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertb
-- ----------------------------
