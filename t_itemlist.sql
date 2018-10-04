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

 Date: 04/10/2018 11:30:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_itemlist
-- ----------------------------
DROP TABLE IF EXISTS `t_itemlist`;
CREATE TABLE `t_itemlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `menu_id` int(10) DEFAULT NULL COMMENT 'menu的id，所属栏目',
  `type_id` int(10) DEFAULT NULL COMMENT 'types的ID,列表类型',
  `createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_hot` int(10) DEFAULT '0' COMMENT '是否置顶0否1是',
  `is_delete` int(10) DEFAULT '0' COMMENT '是否删除0否1是',
  `is_images` varchar(255) NOT NULL DEFAULT 'none' COMMENT '是否有图片，没有默认none有则uri',
  `is_mv` varchar(255) NOT NULL DEFAULT 'none' COMMENT '是否有视频，没有默认none有则uri',
  `is_mp3` varchar(255) NOT NULL DEFAULT 'none' COMMENT '是否有音频，没有默认none有则uri',
  PRIMARY KEY (`id`),
   UNIQUE KEY `主键索引` (`id`) USING HASH COMMENT '主键索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
