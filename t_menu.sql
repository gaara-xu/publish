/*
 Navicat MySQL Data Transfer

 Source Server         : master
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 123.207.70.60:3300
 Source Schema         : Travel

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 04/10/2018 10:43:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `menu_name` varchar(255) NOT NULL COMMENT '栏目名称',
  `menu_lv` int(20) DEFAULT NULL COMMENT '栏目等级',
  `menu_father` int(20) DEFAULT '0' COMMENT '父级栏目，默认0',
  `is_delete` int(10) DEFAULT '0' COMMENT '是否删除，0未删除',
  `is_images` int(10) DEFAULT '0' COMMENT '是否有图片，0没有',
  PRIMARY KEY (`id`),
  UNIQUE KEY `主键索引` (`id`) USING HASH COMMENT '主键索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
