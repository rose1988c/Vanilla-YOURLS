/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : yourls

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-03-08 08:54:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yourls_log
-- ----------------------------
DROP TABLE IF EXISTS `yourls_log`;
CREATE TABLE `yourls_log` (
  `click_id` int(11) NOT NULL AUTO_INCREMENT,
  `click_time` datetime NOT NULL,
  `shorturl` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `referrer` varchar(200) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(41) NOT NULL,
  `country_code` char(2) NOT NULL,
  PRIMARY KEY (`click_id`),
  KEY `shorturl` (`shorturl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yourls_log
-- ----------------------------

-- ----------------------------
-- Table structure for yourls_options
-- ----------------------------
DROP TABLE IF EXISTS `yourls_options`;
CREATE TABLE `yourls_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`option_id`,`option_name`),
  KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yourls_options
-- ----------------------------
INSERT INTO `yourls_options` VALUES ('1', 'version', '1.7');
INSERT INTO `yourls_options` VALUES ('2', 'db_version', '482');
INSERT INTO `yourls_options` VALUES ('3', 'next_id', '4');
INSERT INTO `yourls_options` VALUES ('4', 'core_version_checks', 'O:8:\"stdClass\":4:{s:15:\"failed_attempts\";i:0;s:12:\"last_attempt\";i:1394239041;s:11:\"last_result\";O:8:\"stdClass\":2:{s:6:\"latest\";s:3:\"1.7\";s:6:\"zipurl\";s:54:\"https://api.github.com/repos/YOURLS/YOURLS/zipball/1.7\";}s:15:\"version_checked\";s:3:\"1.7\";}');

-- ----------------------------
-- Table structure for yourls_url
-- ----------------------------
DROP TABLE IF EXISTS `yourls_url`;
CREATE TABLE `yourls_url` (
  `keyword` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(41) NOT NULL,
  `clicks` int(10) unsigned NOT NULL,
  PRIMARY KEY (`keyword`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yourls_url
-- ----------------------------
INSERT INTO `yourls_url` VALUES ('1', 0x687474703A2F2F75726C2E34746F6F6C6B69742E636F6D2F61646D696E2F746F6F6C732E706870, 'Cool YOURLS Tools « YOURLS — Your Own URL Shortener | http://url.4toolkit.com/', '2014-03-08 00:38:44', '127.0.0.1', '0');
INSERT INTO `yourls_url` VALUES ('3', 0x687474703A2F2F62616964752E636F6D, 'http://baidu.com', '2014-03-08 00:51:47', '127.0.0.1', '0');
INSERT INTO `yourls_url` VALUES ('ozh', 0x687474703A2F2F6F7A682E6F72672F, 'ozh.org', '2014-03-08 00:35:07', '127.0.0.1', '0');
INSERT INTO `yourls_url` VALUES ('yourls', 0x687474703A2F2F796F75726C732E6F72672F, 'YOURLS: Your Own URL Shortener', '2014-03-08 00:35:07', '127.0.0.1', '0');
INSERT INTO `yourls_url` VALUES ('yourlsblog', 0x687474703A2F2F626C6F672E796F75726C732E6F72672F, 'YOURLS\' Blog', '2014-03-08 00:35:07', '127.0.0.1', '0');
