/*
 Navicat Premium Data Transfer

 Source Server         : james
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : db01

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 23/08/2018 00:43:28
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
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物料表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bom
-- ----------------------------
INSERT INTO `bom` VALUES (53, 0, 'H50030100', '修脚刀套装（六件套）', '套', NULL, '六件套', NULL, 0, '测试');
INSERT INTO `bom` VALUES (54, 0, 'L20060100', '鹤形剪', '把', NULL, '', NULL, 0, '测试');
INSERT INTO `bom` VALUES (55, 0, 'J12350400', '鎏金匠艺剪', '把', NULL, '110mm', NULL, 0, '测试');
INSERT INTO `bom` VALUES (56, 0, 'J12350300', '鎏金匠心剪', '把', NULL, '153mm', NULL, 0, '测试');
INSERT INTO `bom` VALUES (57, 0, 'L20090100', '印月剪', '把', NULL, '', NULL, 0, '测试');
INSERT INTO `bom` VALUES (58, 0, 'L20100100', '08动感', '把', NULL, '', NULL, 0, '测试');
INSERT INTO `bom` VALUES (59, 0, 'L20110100', '福慧剪', '把', NULL, '', NULL, 0, '测试');
INSERT INTO `bom` VALUES (60, 0, 'J20440100-F', '半成品渔工系列厨房剪195装配完成', '把', NULL, 'J20440100/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (61, 0, 'J20450100-F', '半成品如意系列厨房剪200装配完成', '把', NULL, 'J20450100/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (62, 53, 'H50030110-F', '半成品大平口刀（修脚刀套装HT-7）装配完成', '把', 1.0000, 'H50030110/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (63, 53, 'H50030110-H', '半成品大平口刀（修脚刀套装HT-7）', '把', 1.0000, 'HT-7/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (64, 53, 'H50030120-F', '半成品枪刀（修脚刀套装HT-7）装配完成', '把', 1.0000, 'H50030120/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (65, 53, 'H50030120-H', '半成品枪刀（修脚刀套装HT-7）', '把', 1.0000, 'HT-7/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (66, 53, 'H50030130-F', '半成品平刀（修脚刀套装HT-7）装配完成', '把', 1.0000, '把', NULL, 0, '测试');
INSERT INTO `bom` VALUES (67, 53, 'H50030130-H', '半成品平刀（修脚刀套装HT-7）', '把', 1.0000, 'HT-7/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (68, 53, 'H50030140-F', '半成品斜刀（修脚刀套装HT-7）装配完成', '把', 1.0000, 'H50030140/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (69, 53, 'H50030140-H', '半成品斜刀（修脚刀套装HT-7）', '把', 1.0000, 'HT-7/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (70, 53, 'H50030150-F', '半成品刮刀（修脚刀套装HT-7）装配完成', '把', 1.0000, 'H50030150/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (71, 53, 'H50030150-H', '半成品刮刀（修脚刀套装HT-7）', '把', 1.0000, 'HT-7/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (72, 53, 'H50030160-O', 'OEM半成品指甲锉（修脚刀套装HT-7）', '把', 1.0000, 'H50030160/O', NULL, 0, '测试');
INSERT INTO `bom` VALUES (73, 54, 'L20060100-F', '半成品鹤形剪装配完成', '把', 1.0000, 'HX-1/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (74, 54, 'L20060100-H', '半成品鹤形剪', '把', 1.0000, 'HX-1/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (75, 55, 'H11010110-F', '半成品合金指甲剪110（镀真金）装配完成', '把', 1.0000, 'NS-9/F（镀真金）', NULL, 0, '测试');
INSERT INTO `bom` VALUES (76, 55, 'H11010100-H', '半成品合金指甲剪110', '把', 1.0000, 'NS-9/H', NULL, 0, '测试');
INSERT INTO `bom` VALUES (77, 56, 'J12000370-F', '半成品民用剪2000型153(镀真金)装配完成', '把', 1.0000, 'MY2000-3/F(镀真金)', NULL, 0, '测试');
INSERT INTO `bom` VALUES (78, 56, 'J12000300-A', '半成品民用剪2000型153-圆孔', '把', 0.5000, 'MY2000-3/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (79, 56, 'J12000300-B', '半成品民用剪2000型153-方孔', '把', 0.5000, 'MY2000-3/B', NULL, 0, '测试');
INSERT INTO `bom` VALUES (80, 57, 'L20090100-F', '半成品印月剪装配完成', '把', 1.0000, 'LYJ-01/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (81, 57, 'L20090100-A', '半成品印月剪-无字', '把', 0.5000, 'LYJ-01/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (82, 57, 'L20090100-B', '半成品印月剪-外字', '把', 0.5000, 'LYJ-01/B', NULL, 0, '测试');
INSERT INTO `bom` VALUES (83, 58, 'L20100100-F', '半成品08动感剪装配完成', '把', 1.0000, 'LYJ-02/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (84, 58, 'L20100100-A', '半成品08动感剪-无字', '把', 1.0000, 'LYJ-02/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (85, 58, 'L20100100-B', '半成品08动感剪-有字', '把', 1.0000, 'LYJ-02/B', NULL, 0, '测试');
INSERT INTO `bom` VALUES (86, 59, 'L20110100-F', '半成品福慧剪180装配完成', '把', 1.0000, 'LYJ-03/F', NULL, 0, '测试');
INSERT INTO `bom` VALUES (87, 59, 'L20110100-A', '半成品福慧剪180-圆孔', '把', 0.5000, 'LYJ-03/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (88, 59, 'L20110100-B', '半成品福慧剪180-方孔', '把', 0.5000, 'LYJ-03/B', NULL, 0, '测试');
INSERT INTO `bom` VALUES (89, 60, 'J20440100-A', '半成品渔工系列厨房剪195-圆孔', '把', 0.5000, 'J20440100/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (90, 60, 'J20440100-B', '半成品渔工系列厨房剪195-方孔', '把', 0.5000, 'J20440100-B', NULL, 0, '测试');
INSERT INTO `bom` VALUES (91, 61, 'J20450100-A', '半成品如意系列厨房剪200-圆孔', '把', 0.5000, 'J20450100/A', NULL, 0, '测试');
INSERT INTO `bom` VALUES (92, 61, 'J20450100-B', '半成品如意系列厨房剪200-方孔', '把', 0.5000, 'J20450100/B', NULL, 0, '测试');

SET FOREIGN_KEY_CHECKS = 1;
