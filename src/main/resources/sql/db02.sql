/*
 Navicat Premium Data Transfer

 Source Server         : james
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : db02

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 23/08/2018 00:43:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bom
-- ----------------------------
DROP TABLE IF EXISTS `bom`;
CREATE TABLE `bom`  (
  `cate_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物料编码',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父物料ID，一级物料为0',
  `cate_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `used_count` double(32, 4) NULL DEFAULT NULL,
  `specify` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `property` tinyint(4) NULL DEFAULT NULL COMMENT '2=自制件,1=采购件',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态(0:开启 1：禁用)',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物料表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom
-- ----------------------------
INSERT INTO `bom` VALUES (97, 0, 'YQ8/18-215-505（B-B）220N', '气弹簧01', '件', NULL, '262', NULL, 0, '');
INSERT INTO `bom` VALUES (98, 97, 'ABX102', '钢管', '个', 1.0000, '', NULL, 0, '');
INSERT INTO `bom` VALUES (99, 0, 'YQ8/18-441-152（B-B）300N', '气弹簧02', '件', NULL, '265', NULL, 0, '');
INSERT INTO `bom` VALUES (100, 99, 'ABX101', '钢管', '个', 1.0000, '', NULL, 0, '');

SET FOREIGN_KEY_CHECKS = 1;
