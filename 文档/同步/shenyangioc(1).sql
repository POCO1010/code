/*
 Navicat Premium Data Transfer

 Source Server         : 沈阳ioc公司
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 10.0.8.111:3325
 Source Schema         : shenyangioc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 16/06/2022 11:01:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_bszl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_bszl_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_bszl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_办事总览_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_bszl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_bszl_zb` VALUES (NULL, NULL, NULL, 1, '好差评率', 98.60, '%');
INSERT INTO `t_ywym_ywtg_hbs_bszl_zb` VALUES (NULL, NULL, NULL, 2, '总办件量', 54645.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_bszl_zb` VALUES (NULL, NULL, NULL, 3, '一次办理成功率', 98.50, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_gcsp_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_gcsp_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_gcsp_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_工程审批_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_gcsp_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 1, '项目总金额', 2598.20, '万元');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 2, '开工项目总金额', 1956.80, '万元');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 3, '跟踪回访数量', 120.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 4, '开工项目占比', 56.80, '%');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 5, '逾期项目数', 21.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 6, '平均审批用时', 120.00, '分钟');
INSERT INTO `t_ywym_ywtg_hbs_gcsp_zb` VALUES (NULL, NULL, NULL, 7, '总项目数', 68.00, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_jszb_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_jszb_qs`;
CREATE TABLE `t_ywym_ywtg_hbs_jszb_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_技术指标_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_jszb_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 1, '对接系统数', '1月', 114.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 2, '对接系统数', '2月', 259.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 3, '对接系统数', '3月', 325.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 4, '对接系统数', '4月', 112.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 5, '对接系统数', '5月', 158.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 6, '对接系统数', '6月', 235.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 7, '对接系统数', '7月', 246.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 1, '对接数源数', '1月', 235.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 2, '对接数源数', '2月', 456.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 3, '对接数源数', '3月', 123.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 4, '对接数源数', '4月', 452.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 5, '对接数源数', '5月', 256.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 6, '对接数源数', '6月', 112.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 7, '对接数源数', '7月', 364.00);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 1, '共享材料占比', '1月', 75.20);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 2, '共享材料占比', '2月', 56.80);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 3, '共享材料占比', '3月', 45.60);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 4, '共享材料占比', '4月', 89.50);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 5, '共享材料占比', '5月', 76.90);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 6, '共享材料占比', '6月', 77.80);
INSERT INTO `t_ywym_ywtg_hbs_jszb_qs` VALUES (NULL, NULL, NULL, 7, '共享材料占比', '7月', 75.40);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_jszb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_jszb_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_jszb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_技术指标_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_jszb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_jszb_zb` VALUES (NULL, NULL, NULL, 1, '对接系统数', 4562.00, '个');
INSERT INTO `t_ywym_ywtg_hbs_jszb_zb` VALUES (NULL, NULL, NULL, 2, '对接数源数', 1545.00, '个');
INSERT INTO `t_ywym_ywtg_hbs_jszb_zb` VALUES (NULL, NULL, NULL, 3, '共享材料占比', 98.60, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_qybs_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_qybs_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_qybs_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_企业办事_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_qybs_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 1, '办件总人数', 9865.00, '人');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 2, '平均审批用时', 6.80, 'h');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 3, '减免材料总数', 2506.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 4, '企业办事总量', 87546.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 5, '一件事办理数', 1056.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 6, '超时办件占比', 16.50, '%');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 7, '好差评', 98.60, '%');
INSERT INTO `t_ywym_ywtg_hbs_qybs_zb` VALUES (NULL, NULL, NULL, 8, '一次办理成功率', 88.50, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hbs_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_数据赋能_标题与球对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', '社会组织服务管理平台', '办事总览');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '市级政府部门', '民政局', '办事总览');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '市级政府部门', '人社局', '办事总览');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '省级', '城乡居民养老保险信息系统', '办事总览');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '自然资源局', '技术指标');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '国家级', '驾驶证管理系统', '技术指标');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '国家级', '木材运输管理系统', '技术指标');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '省级', '工程项目监管数据集系统', '技术指标');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '国家级', '非药品类易制毒化学品系统', '技术指标');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '房产局', '工程审批');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '市级政府部门', '建设局', '工程审批');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '国家级', '全国排污许可管理信息平台', '工程审批');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '省级', '路政系统', '工程审批');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '人社局', '市民办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', '社会组织服务管理平台', '市民办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '省级', '城乡居民养老保险信息系统', '市民办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '省级', '辽宁省妇幼健康管理信息系统', '市民办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', '社会组织服务管理平台', '企业办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '省级', '辽宁省投资项目在线审批监管平台', '企业办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '省级', '工程项目监管数据集系统', '企业办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '国家级', '土地市场动态监测与监管系统', '企业办事');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '省级', '国家电网系统', '企业办事');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hbs_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_数据赋能_数据来源(球数量)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳', '户外广告管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳', '残疾人综合服务平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳', '医保系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳', '住房公积金网上服务大厅');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳', '住房登记租赁备案系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳', '保障性住房管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳', '住房租赁交易服务平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳', '科技创新管理平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳', 'CORS授权系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳', '自然资源局行政审批系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '沈阳', '居住证办理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '沈阳', '户籍系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '沈阳', '婚姻登记系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '沈阳', '社会组织服务管理平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '自然资源局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '市级政府部门', '公安局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '市级政府部门', '房产局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '市级政府部门', '民政局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '市级政府部门', '人社局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '市级政府部门', '建设局');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '省级', '出入境管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '省级', '金税三期系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '省级', '不动产交易核价系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '省级', '运输许可证管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '省级', '大件运输管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '省级', '路政系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '省级', '城乡居民养老保险信息系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '省级', '辽宁省投资项目在线审批监管平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '省级', '辽宁公安\"互联网\"+平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '省级', '取水许可登记系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '省级', '国家电网系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '省级', '辽宁省妇幼健康管理信息系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '省级', '工程项目监管数据集系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '省级', '金土工程系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '省级', '企业开办一网通办');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 16, '省级', '房地产业信息网');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '国家级', '林业植物检疫管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '国家级', '土地市场动态监测与监管系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '国家级', '医师护师执业注册联网管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '国家级', '非药品类易制毒化学品系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '国家级', '全国排污许可管理信息平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '国家级', '固体废物管理信息系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '国家级', '驾驶证管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '国家级', '木材运输管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '国家级', '旅游监管平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '国家级', '医疗机构注册管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '国家级', '消防监督管理平台');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '国家级', '出入境管理系统');
INSERT INTO `t_ywym_ywtg_hbs_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '国家级', '种业信息网');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_smbs_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_smbs_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_smbs_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_市民办事_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_smbs_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 1, '办件总人数', 2000.00, '人');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 2, '平均审批用时', 2.50, 'h');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 3, '减免材料总数', 853.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 4, '市民办事总量', 56242.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 5, '一件事办理数', 755.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 6, '超时办件占比', 11.00, '%');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 7, '好差评', 99.80, '%');
INSERT INTO `t_ywym_ywtg_hbs_smbs_zb` VALUES (NULL, NULL, NULL, 8, '一次办理成功率', 92.50, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hbs_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hbs_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hbs_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_页面_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hbs_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 1, '总览', '总办件量', 16532.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 2, '总览', '好评率', 98.00, '%');
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 3, '总览', '一次性办结率', 97.50, '%');
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 1, '今日', '今日办件', 206.00, '件');
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 2, '今日', '好评率', 99.50, '%');
INSERT INTO `t_ywym_ywtg_hbs_ym_zb` VALUES (NULL, NULL, NULL, 3, '今日', '一次性办结率', 91.20, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_cswtyxlyfx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_cswtyxlyfx_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_cswtyxlyfx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市问题运行来源分析_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_cswtyxlyfx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 1, '网格员上报数', 445, '件');
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 2, '社会公众举报数', 445, '件');
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 3, '固定摄像头智能识别', 445, '件');
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 4, '车载视频智能识别', 445, '件');
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 5, '路长考评上报', 445, '件');
INSERT INTO `t_ywym_ywtg_hcg_cswtyxlyfx_zb` VALUES (NULL, NULL, NULL, 6, '其他来源生成', 445, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类别',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行概览_城市运行问题处置数_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 1, '本日', '超时处置数', 10, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 2, '本日', '按时处置数', 9, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 1, '本周', '超时处置数', 11, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 2, '本周', '按时处置数', 5, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 1, '本月', '超时处置数', 3, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtczs_zb` VALUES (NULL, NULL, NULL, 2, '本月', '按时处置数', 25, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行概览_城市运行问题总数_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb` VALUES (NULL, NULL, NULL, 1, '总数', 685, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb` VALUES (NULL, NULL, NULL, 2, '待派遣数', 564, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb` VALUES (NULL, NULL, NULL, 3, '处置中', 456, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb` VALUES (NULL, NULL, NULL, 4, '已结案', 123, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_csyxwtzs_zb` VALUES (NULL, NULL, NULL, 5, '核查中', 12, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxgl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxgl_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxgl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行概览_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxgl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_zb` VALUES (NULL, NULL, NULL, 1, '城市运行问题处置数', 45615, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_zb` VALUES (NULL, NULL, NULL, 2, '城市运行公众上报问题数', 54622, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxgl_zb` VALUES (NULL, NULL, NULL, 3, '城市运行疑难问题数', 32656, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxgzsb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxgzsb_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxgzsb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行公众上报_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxgzsb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxgzsb_zb` VALUES (NULL, NULL, NULL, 1, '微信公众号');
INSERT INTO `t_ywym_ywtg_hcg_csyxgzsb_zb` VALUES (NULL, NULL, NULL, 2, '市民上报立案数');
INSERT INTO `t_ywym_ywtg_hcg_csyxgzsb_zb` VALUES (NULL, NULL, NULL, 3, '其他公众服务APP上报');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行热点分析_城市运行问题来源分析' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 1, '小广告');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 2, '服务质量');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 3, '立即清理');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 4, '焚烧垃圾');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 5, '工地扬尘');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 6, '施工占道');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 7, '店外经营');
INSERT INTO `t_ywym_ywtg_hcg_csyxrdfx_csyxwtlyfx` VALUES (NULL, NULL, NULL, 8, '道路遗洒');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxwtgbftop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxwtgbftop5_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxwtgbftop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行问题高发区域top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxwtgbftop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgbftop5_zb` VALUES (NULL, NULL, NULL, 1, '风雨坛街', 103, '次');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgbftop5_zb` VALUES (NULL, NULL, NULL, 2, '太原路', 88, '次');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgbftop5_zb` VALUES (NULL, NULL, NULL, 3, '铁北一路', 75, '次');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgbftop5_zb` VALUES (NULL, NULL, NULL, 4, '三号街', 72, '次');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgbftop5_zb` VALUES (NULL, NULL, NULL, 5, '东中街', 65, '次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxwtgflxtop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行问题高发类型top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxwtgflxtop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb` VALUES (NULL, NULL, NULL, 1, '张贴小广告', 156, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb` VALUES (NULL, NULL, NULL, 2, '垃圾未清理', 123, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb` VALUES (NULL, NULL, NULL, 3, '路灯损坏', 112, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb` VALUES (NULL, NULL, NULL, 4, '私搭乱建', 102, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgflxtop5_zb` VALUES (NULL, NULL, NULL, 5, '乱摆摊点', 98, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxwtgxcztop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行问题高效处置top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxwtgxcztop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb` VALUES (NULL, NULL, NULL, 1, '私搭乱建', 156, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb` VALUES (NULL, NULL, NULL, 2, '扰民施工', 123, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb` VALUES (NULL, NULL, NULL, 3, '工地扬尘', 112, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb` VALUES (NULL, NULL, NULL, 4, '施工占道', 102, '个');
INSERT INTO `t_ywym_ywtg_hcg_csyxwtgxcztop5_zb` VALUES (NULL, NULL, NULL, 5, '焚烧垃圾', 98, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_csyxynwtqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_csyxynwtqk_zb`;
CREATE TABLE `t_ywym_ywtg_hcg_csyxynwtqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_城市运行疑难问题情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_csyxynwtqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_csyxynwtqk_zb` VALUES (NULL, NULL, NULL, 1, '返工案件数', 1234, '件');
INSERT INTO `t_ywym_ywtg_hcg_csyxynwtqk_zb` VALUES (NULL, NULL, NULL, 2, '问题易反弹区域问题数', 2312, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hcg_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_数据赋能_标题与球对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '城管执法局', '城市运行概览');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '市级政府部门', '生态局', '城市运行概览');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '市级政府部门', '建设局', '城市运行概览');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '市级政府部门', '公安局', '城市运行概览');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '沈阳', '工地管理平台', '城市运行概览');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '社会', '智慧城管微信公众号', '城市问题运行来源分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '社会', '找公厕', '城市问题运行来源分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', '工地管理平台', '城市问题运行来源分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳', '环保监管平台', '城市问题运行来源分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', '工地管理平台', '城市运行公众上报');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', '环保监管平台', '城市运行公众上报');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', '智慧城管平台', '城市运行公众上报');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '社会', '找公厕', '城市运行公众上报');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '社会', '智慧城管微信公众号', '城市运行公众上报');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '社会', '找公园', '城市运行疑难问题情况');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '社会', '找公厕', '城市运行疑难问题情况');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', '货运管理平台', '城市运行疑难问题情况');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳', '车辆管理平台', '城市运行疑难问题情况');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', '驾驶员管理平台', '城市运行热点分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', '户外广告管理系统', '城市运行热点分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', '好店铺管理系统', '城市运行热点分析');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳', '公厕管理系统', '城市运行热点分析');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hcg_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hcg_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hcg_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好城管_数据赋能_数据来源(球数量)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hcg_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '社会', '找公园');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '社会', '找公厕');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '社会', '智慧城管微信公众号');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '社会侧', '便民惠民');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳', '货运管理平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳', '车辆管理平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳', '驾驶员管理平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳', '视频监控平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳', '工地管理平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳', '环保监管平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳', '智慧城管平台');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳', '智慧园林系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳', '公园管理系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳', '户外广告管理系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '沈阳', '好店铺管理系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '沈阳', '公厕管理系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '沈阳', '控渣土管理系统');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '市级政府部门', '城管执法局');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '市级政府部门', '生态局');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '市级政府部门', '建设局');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '市级政府部门', '公安局');
INSERT INTO `t_ywym_ywtg_hcg_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '市级政府部门', '交通局');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_frgy_qh_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_frgy_qh_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_frgy_qh_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_发热购药_切换_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_frgy_qh_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 1, '药品销售', '去痛片', 25686, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 2, '药品销售', '复方氨酚胶囊', 46526, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 3, '药品销售', '清咖黄敏', 2562, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 4, '药品销售', '感康', 45626, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 5, '药品销售', '布洛芬', 25462, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 6, '药品销售', '莲花清瘟', 222223, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 7, '药品销售', '腰痛宁', 15456, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 8, '药品销售', '六味地黄丸', 15654, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 1, '购药人群', '风险地区人员', 15462, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 2, '购药人群', '多次购买发热药人员', 25335, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 3, '购药人群', '隔离人员家属', 2534, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 4, '购药人群', '流调人员', 1245, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 5, '购药人群', '多症状就诊人员', 6563, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 6, '购药人群', '隔离人员', 4425, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 7, '购药人群', '某某A人员', 253, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_qh_zb` VALUES (NULL, NULL, NULL, 8, '购药人群', '某某B人员', 568, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_frgy_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_frgy_tips`;
CREATE TABLE `t_ywym_ywtg_hfy_frgy_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `jzdmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药店名称',
  `jzzs` decimal(12, 0) NULL DEFAULT NULL COMMENT '购药人数',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_发热购药_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_frgy_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_frgy_tips` VALUES (NULL, NULL, NULL, 1, '新民药店', 1452, NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_frgy_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_frgy_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_frgy_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_发热购药_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_frgy_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_frgy_zb` VALUES (NULL, NULL, NULL, 1, '当日购药', 1256, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_zb` VALUES (NULL, NULL, NULL, 2, '药房数', 6563, '家');
INSERT INTO `t_ywym_ywtg_hfy_frgy_zb` VALUES (NULL, NULL, NULL, 3, '购药人数', 256365, '人');
INSERT INTO `t_ywym_ywtg_hfy_frgy_zb` VALUES (NULL, NULL, NULL, 4, '风险地区购药', 246458, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_glbg_glbgqyqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `zb` decimal(10, 2) NULL DEFAULT NULL COMMENT '占比',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_隔离宾馆_隔离宾馆启用情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_glbg_glbgqyqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb` VALUES (NULL, NULL, NULL, 1, '启用宾馆', '启用宾馆', 430, 36.20, '家');
INSERT INTO `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb` VALUES (NULL, NULL, NULL, 2, '启用宾馆', '剩余房间数', 140, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb` VALUES (NULL, NULL, NULL, 1, '储备宾馆', '储备宾馆', 770, 63.80, '家');
INSERT INTO `t_ywym_ywtg_hfy_glbg_glbgqyqk_zb` VALUES (NULL, NULL, NULL, 2, '储备宾馆', '剩余房间数', 652, NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_glbg_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_glbg_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_glbg_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `zb` decimal(10, 2) NULL DEFAULT NULL COMMENT '占比',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_隔离宾馆_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_glbg_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_glbg_zb` VALUES (NULL, NULL, NULL, 1, '宾馆总数', 500, NULL, '家');
INSERT INTO `t_ywym_ywtg_hfy_glbg_zb` VALUES (NULL, NULL, NULL, 2, '已用房间数', 789, 67.26, '间');
INSERT INTO `t_ywym_ywtg_hfy_glbg_zb` VALUES (NULL, NULL, NULL, 3, '剩余房间数', 563, 33.20, '间');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_jwgk_jwrshb_lb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_jwgk_jwrshb_lb`;
CREATE TABLE `t_ywym_ywtg_hfy_jwgk_jwrshb_lb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lygj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源国家',
  `ljjc` decimal(12, 0) NULL DEFAULT NULL COMMENT '累计架次',
  `drjc` decimal(12, 0) NULL DEFAULT NULL COMMENT '当日架次',
  `ljrc` decimal(12, 0) NULL DEFAULT NULL COMMENT '累计人次',
  `drrc` decimal(12, 0) NULL DEFAULT NULL COMMENT '当日人次'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_境外管控_境外入沈航班TOP5_列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_jwgk_jwrshb_lb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_jwgk_jwrshb_lb` VALUES (NULL, NULL, NULL, 1, '韩国', 3000, 20, 50000, 325);
INSERT INTO `t_ywym_ywtg_hfy_jwgk_jwrshb_lb` VALUES (NULL, NULL, NULL, 2, '美国', 3000, 20, 50000, 325);
INSERT INTO `t_ywym_ywtg_hfy_jwgk_jwrshb_lb` VALUES (NULL, NULL, NULL, 3, '英国', 3000, 20, 50000, 325);
INSERT INTO `t_ywym_ywtg_hfy_jwgk_jwrshb_lb` VALUES (NULL, NULL, NULL, 4, '法国', 3000, 20, 50000, 325);
INSERT INTO `t_ywym_ywtg_hfy_jwgk_jwrshb_lb` VALUES (NULL, NULL, NULL, 5, '俄罗斯', 3000, 20, 50000, 325);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_jwgk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_jwgk_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_jwgk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(15, 0) NULL DEFAULT NULL COMMENT '值',
  `zb` decimal(10, 2) NULL DEFAULT NULL COMMENT '占比',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_境外管控_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_jwgk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 1, '累计航班', '总架次', 5000, NULL, '架');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 2, '累计航班', '客机架次', 1000, 20.00, '架');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 3, '累计航班', '货机架次', 2000, 30.00, '架');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 4, '累计航班', '包机架次', 3000, 50.00, '架');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 1, '累计旅客', '总人数', 4000, NULL, '人');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 2, '累计旅客', '中国籍', 3000, 60.00, '人');
INSERT INTO `t_ywym_ywtg_hfy_jwgk_zb` VALUES (NULL, NULL, NULL, 3, '累计旅客', '外国籍', 1000, 40.00, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_qydt_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_qydt_tips`;
CREATE TABLE `t_ywym_ywtg_hfy_qydt_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `qzrs` decimal(12, 0) NULL DEFAULT NULL COMMENT '确诊人数',
  `wzzrs` decimal(12, 0) NULL DEFAULT NULL COMMENT '无症状人数',
  `zyrs` decimal(12, 0) NULL DEFAULT NULL COMMENT '治愈人数',
  `swrs` decimal(12, 0) NULL DEFAULT NULL COMMENT '死亡人数',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_疫情动态_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_qydt_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_qydt_tips` VALUES (NULL, NULL, NULL, 1, '新民市', 6523, 2536, 3946, 32, NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_wzcb_fywz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_wzcb_fywz_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_wzcb_fywz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `rxh` decimal(12, 0) NULL DEFAULT NULL COMMENT '日消耗',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_物资储备_防疫物资_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_wzcb_fywz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_wzcb_fywz_zb` VALUES (NULL, NULL, NULL, 1, 'N95口罩', 20353, 253, '个');
INSERT INTO `t_ywym_ywtg_hfy_wzcb_fywz_zb` VALUES (NULL, NULL, NULL, 2, '一次性外科口罩', 1564256, 236, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_wzcb_shwz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_wzcb_shwz_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_wzcb_shwz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `wpzl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品种类',
  `zfcb` decimal(20, 0) NULL DEFAULT NULL COMMENT '政府储备',
  `sykc` decimal(20, 0) NULL DEFAULT NULL COMMENT '商业库存',
  `bzts` decimal(20, 0) NULL DEFAULT NULL COMMENT '保障天数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_物资储备_生活物资_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_wzcb_shwz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 1, '粮食', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 2, '猪肉', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 3, '鸡蛋', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 4, '牛奶', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 5, '水果', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 6, '水产品', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 7, '蔬菜', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 8, '食用油', 12452, 25314, 35);
INSERT INTO `t_ywym_ywtg_hfy_wzcb_shwz_zb` VALUES (NULL, NULL, NULL, 9, '牛羊肉', 12452, 25314, 35);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_wzcb_yywz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_wzcb_yywz_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_wzcb_yywz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_物资储备_医用物资_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_wzcb_yywz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_wzcb_yywz_zb` VALUES (NULL, NULL, NULL, 1, '化学剂及医用物品', 1253, '盒');
INSERT INTO `t_ywym_ywtg_hfy_wzcb_yywz_zb` VALUES (NULL, NULL, NULL, 2, '医疗设备', 1245, '台');
INSERT INTO `t_ywym_ywtg_hfy_wzcb_yywz_zb` VALUES (NULL, NULL, NULL, 3, '中成药', 523, '盒');
INSERT INTO `t_ywym_ywtg_hfy_wzcb_yywz_zb` VALUES (NULL, NULL, NULL, 4, '医疗器械及防护用品', 546, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjfl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_页面_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 1, '历史', '累计确诊', 23562, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 2, '历史', '累计无症状', 1423, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 3, '历史', '累计治愈', 22986, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 4, '历史', '累计死亡', 36, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 1, '昨日', '昨日确诊', 1423, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 2, '昨日', '昨日新增无症状', 226, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 3, '昨日', '昨日治愈', 132, '人');
INSERT INTO `t_ywym_ywtg_hfy_ym_zb` VALUES (NULL, NULL, NULL, 4, '昨日', '昨日死亡', 0, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ymjz_jznlgc_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt`;
CREATE TABLE `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `nljd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄阶段',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_疫苗接种_接种年龄构成_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ymjz_jznlgc_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt` VALUES (NULL, NULL, NULL, 1, '<12岁', 485);
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt` VALUES (NULL, NULL, NULL, 2, '12~14', 325);
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt` VALUES (NULL, NULL, NULL, 3, '15~17', 198);
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt` VALUES (NULL, NULL, NULL, 4, '18~60', 445);
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jznlgc_zzt` VALUES (NULL, NULL, NULL, 5, '>60岁', 365);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ymjz_jzqt_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ymjz_jzqt_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_ymjz_jzqt_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_疫苗接种_接种群体TOP6_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ymjz_jzqt_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 1, '家务待业', 125642, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 2, '服务业', 112535, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 3, '农林牧渔', 102353, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 4, '中小学生', 98645, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 5, '公职人员', 89564, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_jzqt_zb` VALUES (NULL, NULL, NULL, 6, '医护人员', 78945, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ymjz_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ymjz_tips`;
CREATE TABLE `t_ywym_ywtg_hfy_ymjz_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `jzdmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接种点名称',
  `jzzs` decimal(12, 0) NULL DEFAULT NULL COMMENT '接种总数',
  `drjzs` decimal(12, 0) NULL DEFAULT NULL COMMENT '当日接种数',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_疫苗接种_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ymjz_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ymjz_tips` VALUES (NULL, NULL, NULL, 1, '新民路1号接种点', 75642, 3562, NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ymjz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ymjz_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_ymjz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `zb` decimal(10, 2) NULL DEFAULT NULL COMMENT '占比',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_疫苗接种_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ymjz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ymjz_zb` VALUES (NULL, NULL, NULL, NULL, '接种点数量', 500, NULL, '个');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_zb` VALUES (NULL, NULL, NULL, NULL, '当日接种量', 12352, NULL, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_zb` VALUES (NULL, NULL, NULL, NULL, '未接种', 182, 5.00, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_zb` VALUES (NULL, NULL, NULL, NULL, '已接种', 25365, 93.78, '人');
INSERT INTO `t_ywym_ywtg_hfy_ymjz_zb` VALUES (NULL, NULL, NULL, NULL, '常住人口数', 36546, NULL, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ywgk_fkry_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ywgk_fkry_zzt`;
CREATE TABLE `t_ywym_ywtg_hfy_ywgk_fkry_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_域外管控_防控人员_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ywgk_fkry_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ywgk_fkry_zzt` VALUES (NULL, NULL, NULL, 1, '沈阳站', 12536);
INSERT INTO `t_ywym_ywtg_hfy_ywgk_fkry_zzt` VALUES (NULL, NULL, NULL, 2, '沈阳北站', 25462);
INSERT INTO `t_ywym_ywtg_hfy_ywgk_fkry_zzt` VALUES (NULL, NULL, NULL, 3, '沈阳南站', 35624);
INSERT INTO `t_ywym_ywtg_hfy_ywgk_fkry_zzt` VALUES (NULL, NULL, NULL, 4, '仙桃机场', 12546);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ywgk_jqrckqst_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs`;
CREATE TABLE `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_域外管控_近七日乘客趋势图_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ywgk_jqrckqst_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 1, '沈阳北站', 1425, '01');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 2, '沈阳北站', 2135, '02');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 3, '沈阳北站', 2462, '03');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 4, '沈阳北站', 1552, '04');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 5, '沈阳北站', 1335, '05');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 6, '沈阳北站', 1456, '06');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 7, '沈阳北站', 2356, '07');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 1, '沈阳南站', 1425, '01');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 2, '沈阳南站', 2135, '02');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 3, '沈阳南站', 2462, '03');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 4, '沈阳南站', 1552, '04');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 5, '沈阳南站', 1335, '05');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 6, '沈阳南站', 1456, '06');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 7, '沈阳南站', 2356, '07');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 1, '仙桃机场', 1425, '01');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 2, '仙桃机场', 2135, '02');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 3, '仙桃机场', 2462, '03');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 4, '仙桃机场', 1552, '04');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 5, '仙桃机场', 1335, '05');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 6, '仙桃机场', 1456, '06');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 7, '仙桃机场', 2356, '07');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 1, '沈阳站', 1425, '01');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 2, '沈阳站', 2135, '02');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 3, '沈阳站', 2462, '03');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 4, '沈阳站', 1552, '04');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 5, '沈阳站', 1335, '05');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 6, '沈阳站', 1456, '06');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_jqrckqst_qs` VALUES (NULL, NULL, NULL, 7, '沈阳站', 2356, '07');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ywgk_lsry_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ywgk_lsry_zzt`;
CREATE TABLE `t_ywym_ywtg_hfy_ywgk_lsry_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `qy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_域外管控_来沈人员_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ywgk_lsry_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ywgk_lsry_zzt` VALUES (NULL, NULL, NULL, 1, 12536, '沈阳站');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_lsry_zzt` VALUES (NULL, NULL, NULL, 2, 25462, '沈阳北站');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_lsry_zzt` VALUES (NULL, NULL, NULL, 3, 35624, '沈阳南站');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_lsry_zzt` VALUES (NULL, NULL, NULL, 4, 12546, '仙桃机场');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hfy_ywgk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hfy_ywgk_zb`;
CREATE TABLE `t_ywym_ywtg_hfy_ywgk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好防疫_域外管控_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hfy_ywgk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hfy_ywgk_zb` VALUES (NULL, NULL, NULL, 1, '来沈人员', 20, '人');
INSERT INTO `t_ywym_ywtg_hfy_ywgk_zb` VALUES (NULL, NULL, NULL, 2, '防控人员', 20, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_不同类型优惠政策统计孵化基地_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb` VALUES (NULL, NULL, NULL, 1, '公共就业服务机构', 2696.0000, '个');
INSERT INTO `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb` VALUES (NULL, NULL, NULL, 2, '非公共人力资源服务机构数量', 1591.0000, '个');
INSERT INTO `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb` VALUES (NULL, NULL, NULL, 3, '非公共人力资源服务机构注册金额', 10614.1428, '万元');
INSERT INTO `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb` VALUES (NULL, NULL, NULL, 4, '创业孵化基地数量', 38.0000, '个');
INSERT INTO `t_ywym_ywtg_hjy_btlxyhzctjfhjd_zb` VALUES (NULL, NULL, NULL, 5, '创业孵化基地占地面积', 224174.7500, '㎡');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_cjy_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_cjy_qs`;
CREATE TABLE `t_ywym_ywtg_hjy_cjy_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `sqrs` decimal(20, 0) NULL DEFAULT NULL COMMENT '申请人数',
  `fsje` decimal(20, 4) NULL DEFAULT NULL COMMENT '发放金额',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_促就业_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_cjy_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 6, '高效灵活就业社保补贴', 6, 0.0000, '2022');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 5, '高效灵活就业社保补贴', 80, 172304.0700, '2021');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 4, '高效灵活就业社保补贴', 55, 172701.7300, '2020');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 3, '高效灵活就业社保补贴', 56, 259894.9400, '2019');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 2, '高效灵活就业社保补贴', 82, 374949.2300, '2018');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 1, '高效灵活就业社保补贴', 27, 500511.0200, '2017');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 6, '就业困难社保补贴', 3893, 118700.0000, '2022');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 5, '就业困难社保补贴', 10831, 5746700.0000, '2021');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 4, '就业困难社保补贴', 0, 0.0000, '2020');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 3, '就业困难社保补贴', 2, 0.0000, '2019');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 2, '就业困难社保补贴', 0, 0.0000, '2018');
INSERT INTO `t_ywym_ywtg_hjy_cjy_qs` VALUES (NULL, NULL, NULL, 1, '就业困难社保补贴', 477, 0.0000, '2017');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_cjy_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_cjy_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_cjy_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_促就业_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_cjy_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_cjy_zb` VALUES (NULL, NULL, NULL, 1, '培训会场次', 2756, '场');
INSERT INTO `t_ywym_ywtg_hjy_cjy_zb` VALUES (NULL, NULL, NULL, 2, '培训后就业率', 85, '万元');
INSERT INTO `t_ywym_ywtg_hjy_cjy_zb` VALUES (NULL, NULL, NULL, 3, '参加就业培训人数', 118408, '人');
INSERT INTO `t_ywym_ywtg_hjy_cjy_zb` VALUES (NULL, NULL, NULL, 4, '培训后就业人数', 1567, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_cyfh_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_cyfh_qs`;
CREATE TABLE `t_ywym_ywtg_hjy_cyfh_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_创业孵化_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_cyfh_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 1, '创业场租补贴申请人数', 434, '1月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 2, '创业场租补贴申请人数', 583, '2月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 3, '创业场租补贴申请人数', 234, '3月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 4, '创业场租补贴申请人数', 532, '4月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 5, '创业场租补贴申请人数', 531, '5月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 6, '创业场租补贴申请人数', 235, '6月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 7, '创业场租补贴申请人数', 476, '7月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 1, '创业场租发放金额', 434, '1月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 2, '创业场租发放金额', 583, '2月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 3, '创业场租发放金额', 234, '3月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 4, '创业场租发放金额', 532, '4月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 5, '创业场租发放金额', 531, '5月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 6, '创业场租发放金额', 235, '6月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 7, '创业场租发放金额', 476, '7月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 1, '创业带头人申报人数', 434, '1月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 2, '创业带头人申报人数', 583, '2月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 3, '创业带头人申报人数', 234, '3月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 4, '创业带头人申报人数', 532, '4月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 5, '创业带头人申报人数', 531, '5月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 6, '创业带头人申报人数', 235, '6月');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_qs` VALUES (NULL, NULL, NULL, 7, '创业带头人申报人数', 476, '7月');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_cyfh_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_cyfh_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_cyfh_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `fl` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_创业孵化_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_cyfh_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (1, NULL, NULL, 1, '个人小额贷款申请人数', 352.0000, '人', '小额贷款申请');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (1, NULL, NULL, 2, '个人小额贷款申请金额', 6878.9000, '万元', '小额贷款申请');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (1, NULL, NULL, 3, '小额贷款小企业申请金额', 59278.4604, '万元', '小额贷款申请');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (1, NULL, NULL, 4, '小额贷款小企业申请企业数', 289.0000, '家', '小额贷款申请');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (2, NULL, NULL, 1, '创业带头人申报人数', 2990.0000, '人', '创业申请');
INSERT INTO `t_ywym_ywtg_hjy_cyfh_zb` VALUES (2, NULL, NULL, 2, '创业场租补贴申请企业数', 663.0000, '家', '创业申请');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_cyfhjd_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_cyfhjd_dd`;
CREATE TABLE `t_ywym_ywtg_hjy_cyfhjd_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `mc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `dz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `jj` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_创业孵化基地_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_cyfhjd_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_cyfhjd_dd` VALUES (NULL, NULL, NULL, 1, '康平县创业孵化基地', '28号', '康平县创业孵化基地是国家级示范基地', NULL, NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fnimg.ws.126.net%2F%3Furl%3Dhttp%253A%252F%252Fdingyue.ws.126.net%252F2021%252F0704%252F9ad87f29j00qvorog001wc000hs00bvc.jpg%26thumbnail%3D650x2147483647%26quality%3D80%26type%3Djpg&refer=http%3A%2F%2Fnimg.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651835679&t=b7d961799e3f79b17769d5ee3532f881');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_drsj_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_drsj_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_drsj_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_当日数据_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_drsj_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_drsj_zb` VALUES (NULL, NULL, NULL, 1, '就业率', 32.00, '%');
INSERT INTO `t_ywym_ywtg_hjy_drsj_zb` VALUES (NULL, NULL, NULL, 2, '今年就业登记人数', 5000.00, '人');
INSERT INTO `t_ywym_ywtg_hjy_drsj_zb` VALUES (NULL, NULL, NULL, 3, '今年登记失业人数', 4534.00, '人');
INSERT INTO `t_ywym_ywtg_hjy_drsj_zb` VALUES (NULL, NULL, NULL, 4, '今日就业登记人数', 4534.00, '人');
INSERT INTO `t_ywym_ywtg_hjy_drsj_zb` VALUES (NULL, NULL, NULL, 5, '今日求职人数', 112.00, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_fggrlzyfwjg_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_fggrlzyfwjg_dd`;
CREATE TABLE `t_ywym_ywtg_hjy_fggrlzyfwjg_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `jgmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `clsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成立时间',
  `jglx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型',
  `xxdz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `jgxz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构性质',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_非公共人力资源服务机构_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_fggrlzyfwjg_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_fggrlzyfwjg_dd` VALUES (NULL, NULL, NULL, 1, 'XXXXXXXX机构', '2021年9月', 'XXX类型', 'XX地址', 'XX性质', NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_ggjyfwjg_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_ggjyfwjg_dd`;
CREATE TABLE `t_ywym_ywtg_hjy_ggjyfwjg_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `cwhmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '村委会名称',
  `dh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `cczn` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '乘车指南',
  `dz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_公共就业服务机构_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_ggjyfwjg_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_ggjyfwjg_dd` VALUES (NULL, NULL, NULL, 1, '村委会名称', '18895645235', 'XXXXXXXXXXXXXXXX指南', 'XXXXXXXX地址', NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_个人求职职位企业招聘岗位TOP10_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 1, '客户经理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 2, '销售代表', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 3, '软件工程师', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 4, '项目经理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 5, '研发工程师', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 6, '业务拓展经理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 7, '程序开发', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 8, '销售助理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 9, '经理助理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 10, '部门经理', '个人求职职位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 1, '客户经理', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 2, '销售代表', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 3, '软件工程师', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 4, '项目经理', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 5, '研发工程师', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 6, '业务拓展经理', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 7, '程序开发', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 8, '销售助理', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 9, '经理助理', '企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_grqzzwqyzpgwtop_zb` VALUES (NULL, NULL, NULL, 10, '部门经理', '企业招聘岗位TOP10');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_jlrkqs_jl_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_jlrkqs_jl_qs`;
CREATE TABLE `t_ywym_ywtg_hjy_jlrkqs_jl_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `jlrkl` decimal(10, 0) NULL DEFAULT NULL COMMENT '简历入库量'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_简历入库趋势_简历_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_jlrkqs_jl_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 1, '2021-09', 234);
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 2, '2021-10', 444);
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 3, '2021-11', 564);
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 4, '2021-12', 435);
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 5, '2022-01', 494);
INSERT INTO `t_ywym_ywtg_hjy_jlrkqs_jl_qs` VALUES (NULL, NULL, NULL, 6, '2022-02', 387);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_不同类型优惠政策统计孵化基地_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb` VALUES (NULL, NULL, NULL, 1, 'A单位培训中心', 25.0000, NULL);
INSERT INTO `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb` VALUES (NULL, NULL, NULL, 2, 'B单位培训中心', 52.0000, NULL);
INSERT INTO `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb` VALUES (NULL, NULL, NULL, 3, 'C单位培训中心', 22.0000, NULL);
INSERT INTO `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb` VALUES (NULL, NULL, NULL, 4, 'D单位培训中心', 33.0000, NULL);
INSERT INTO `t_ywym_ywtg_hjy_jyfw_jntsjypxjgfl_zb` VALUES (NULL, NULL, NULL, 5, 'E单位培训中心', 11.0000, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_qsjyqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_qsjyqk_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_qsjyqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_全市就业情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_qsjyqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_qsjyqk_zb` VALUES (NULL, NULL, NULL, 1, '今年就业人数', 73843.00, '人', '新民市', NULL, NULL);
INSERT INTO `t_ywym_ywtg_hjy_qsjyqk_zb` VALUES (NULL, NULL, NULL, 2, '今年登记失业人数', 2345.00, '人', '新民市', NULL, NULL);
INSERT INTO `t_ywym_ywtg_hjy_qsjyqk_zb` VALUES (NULL, NULL, NULL, 3, '就业率', 83.00, '%', '新民市', NULL, NULL);
INSERT INTO `t_ywym_ywtg_hjy_qsjyqk_zb` VALUES (NULL, NULL, NULL, 4, '今日就业登记人数', 4534.00, '人', '新民市', NULL, NULL);
INSERT INTO `t_ywym_ywtg_hjy_qsjyqk_zb` VALUES (NULL, NULL, NULL, 5, '今天求职人数', 125.00, '人', '新民市', NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_scgqfx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_scgqfx_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_scgqfx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `qz` decimal(10, 0) NULL DEFAULT NULL COMMENT '求职',
  `zp` decimal(10, 0) NULL DEFAULT NULL COMMENT '招聘'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_个人求职职位企业招聘岗位TOP10_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_scgqfx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 1, '客户经理', '人', 235, 235);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 2, '销售代表', '人', 154, 53);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 3, '软件工程师', '人', 26, 253);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 4, '项目经理', '人', 356, 452);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 5, '研发工程师', '人', 245, 425);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 6, '业务拓展经理', '人', 556, 666);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 7, '程序开发', '人', 453, 88);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 8, '销售助理', '人', 125, 42);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 9, '经理助理', '人', 356, 354);
INSERT INTO `t_ywym_ywtg_hjy_scgqfx_zb` VALUES (NULL, NULL, NULL, 10, '部门经理', '人', 142, 125);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hjy_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_数据赋能_标题与球对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '社会', '残疾人就业系统', '找工作');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '人才市场', '找工作');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '技能培训机构', '找工作');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '人力资源市场系统', '找工作');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '人才市场', '找人才');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '人力资源市场系统', '找人才');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳下', '省级', '找人才');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳中', '信息中心', '找人才');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '职业介绍系统', '个人求职职位/企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '人才市场', '个人求职职位/企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业下', '数字化创新创业服务平台', '个人求职职位/企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳中', '信息中心', '个人求职职位/企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳下', '社区', '个人求职职位/企业招聘岗位TOP10');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳中', '信息中心', '无工作职工类型/工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '就业服务经办', '无工作职工类型/工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '一体化政务服务平台', '无工作职工类型/工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '人力资源市场系统', '无工作职工类型/工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳中', '信息中心', '页面指标');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业下', '人才网招聘信息', '页面指标');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '人才市场', '页面指标');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业下', '人才网招聘信息', '打点');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '人才市场', '打点');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '人力资源市场系统', '打点');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳下', '社区', '打点');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '创业服务', '促就业');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '盛事通平台', '促就业');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '政务数据共享交换平台', '促就业');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '创业服务', '创业孵化');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业下', '数字化创新创业服务平台', '创业孵化');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '人力资源市场系统', '创业孵化');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '企业上', '创业服务', '不同类型优惠政策统计孵化基地');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳上', '一体化政务服务平台', '不同类型优惠政策统计孵化基地');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, NULL, '沈阳下', '市级', '不同类型优惠政策统计孵化基地');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hjy_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_数据赋能_数据来源(球数量)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '社会', '残疾人就业系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '企业上', '人才市场');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '企业上', '创业服务');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '企业上', '技能培训机构');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '企业下', '人才网招聘信息');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '企业下', '残疾人就业系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '企业下', '就业服务系统经办');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '企业下', '数字化创新创业服务平台');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳上', '盛事通平台');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳上', '政务数据共享交换平台');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳上', '一体化政务服务平台');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳上', '职业介绍系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳上', '学历查询系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳上', '职业资格证书接口');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳上', '人力资源市场系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳上', '省统一身份认证');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳上', '就业服务经办');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳上', '养老保险系统');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳中', '营商');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳中', '人社');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳中', '房产');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳中', '医保');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳中', '工商');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳中', '民政');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳中', '信息中心');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳下', '国家级');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳下', '省级');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳下', '市级');
INSERT INTO `t_ywym_ywtg_hjy_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳下', '社区');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_无工作职工类型工人缺失企业类型TOP5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 1, '家庭主妇类', '无工作职工类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 2, '青年在家待业类', '无工作职工类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 3, '身体残障缺陷类', '无工作职工类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 4, '照顾老人及亲人类', '无工作职工类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 5, '无职业技能类', '无工作职工类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 1, '林业及其服务业', '工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 2, '煤炭开采企业', '工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 3, '天然气开采业', '工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 4, '畜牧业及其服务业', '工人缺失企业类型TOP5');
INSERT INTO `t_ywym_ywtg_hjy_wgzzglxgrqsqylxtop_zb` VALUES (NULL, NULL, NULL, 5, '渔业及其服务业', '工人缺失企业类型TOP5');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_xcwlzph_zp_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_xcwlzph_zp_qs`;
CREATE TABLE `t_ywym_ywtg_hjy_xcwlzph_zp_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `xszph` decimal(10, 0) NULL DEFAULT NULL COMMENT '线上招聘会',
  `xczph` decimal(10, 0) NULL DEFAULT NULL COMMENT '现场招聘会'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_现场网络招聘会_招聘_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_xcwlzph_zp_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 1, '年', '2019', 3287, 2000);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 2, '年', '2020', 4323, 2323);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 3, '年', '2021', 2343, 4444);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 4, '年', '2022', 3445, 4543);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 1, '月', '2021-09', 234, 434);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 2, '月', '2021-10', 444, 343);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 3, '月', '2021-11', 564, 435);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 4, '月', '2021-12', 435, 378);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 5, '月', '2022-01', 494, 346);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 6, '月', '2022-02', 387, 378);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 1, '日', '06-01', 23, 43);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 2, '日', '06-02', 44, 34);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 3, '日', '06-03', 56, 43);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 4, '日', '06-04', 43, 37);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 5, '日', '06-05', 49, 34);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 6, '日', '06-06', 38, 37);
INSERT INTO `t_ywym_ywtg_hjy_xcwlzph_zp_qs` VALUES (NULL, NULL, NULL, 7, '日', '06-07', 46, 42);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_zgz_qzrssltj_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_zgz_qzrssltj_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_zgz_qzrssltj_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_找工作_求职人数数量统计_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_zgz_qzrssltj_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 1, '学历', '研究生及以上', 2341, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 2, '学历', '本科', 34454, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 3, '学历', '大专', 2342, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 4, '学历', '其他', 11234, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 1, '行业', '党政机关', 2341, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 2, '行业', '事业单位', 34454, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 3, '行业', '国企', 2342, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 4, '行业', '私营单位', 11234, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 5, '行业', '公私合营', 12456, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 1, '地区', '本地', 34454, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 2, '地区', '省内其他城市', 2342, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 3, '地区', '省外', 11234, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 1, '求职意愿', '本地', 34454, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 2, '求职意愿', '省内其他城市', 2342, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 3, '求职意愿', '省外', 11234, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 1, '年龄', '18岁以下', 34454, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 2, '年龄', '18-35岁', 2342, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 3, '年龄', '35-60岁', 11234, '人');
INSERT INTO `t_ywym_ywtg_hjy_zgz_qzrssltj_zb` VALUES (NULL, NULL, NULL, 4, '年龄', '60岁以上', 34454, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_zphjl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_zphjl_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_zphjl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好办事_技术指标_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_zphjl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_zphjl_zb` VALUES (NULL, NULL, NULL, 1, '招聘会', 865, '场');
INSERT INTO `t_ywym_ywtg_hjy_zphjl_zb` VALUES (NULL, NULL, NULL, 2, '简历总数', 456, '份');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs`;
CREATE TABLE `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_找人才_接收简历参加就业培训_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 1, '接收简历', '2022-01', 324);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 2, '接收简历', '2022-02', 343);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 3, '接收简历', '2022-03', 645);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 4, '接收简历', '2022-04', 145);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 5, '接收简历', '2022-05', 467);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 6, '接收简历', '2022-06', 724);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 7, '接收简历', '2022-07', 356);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 1, '参加技能提升就业培训', '2022-01', 355);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 2, '参加技能提升就业培训', '2022-02', 565);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 3, '参加技能提升就业培训', '2022-03', 454);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 4, '参加技能提升就业培训', '2022-04', 566);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 5, '参加技能提升就业培训', '2022-05', 335);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 6, '参加技能提升就业培训', '2022-06', 215);
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_qs` VALUES (NULL, NULL, NULL, 7, '参加技能提升就业培训', '2022-07', 346);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_找人才_接收简历参加就业培训_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb` VALUES (NULL, NULL, NULL, 1, '接收简历', 23472, '份');
INSERT INTO `t_ywym_ywtg_hjy_zrc_jsjlcjjypx_zb` VALUES (NULL, NULL, NULL, 1, '参加技能提升就业培训', 2343, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjy_zrc_zpxxyrc_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb`;
CREATE TABLE `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就业_找人才_招聘信息与人才_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjy_zrc_zpxxyrc_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 1, '研究生及以上', 3287, '人', '学历');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 2, '本科', 4323, '人', '学历');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 3, '大专', 2343, '人', '学历');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 4, '其他', 3445, '人', '学历');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 1, '信息技术', 234, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 2, '化工', 444, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 1, '信息与电子科学', 564, '人', '专业');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 2, '仪器仪表', 435, '人', '专业');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 3, '地矿类', 494, '人', '专业');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 1, '有经验', 564, '人', '经验');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 2, '无经验', 435, '人', '经验');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 3, '艺术', 234, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 4, '舞蹈', 444, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 5, '体育', 564, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 6, '武术', 435, '人', '技能');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 4, '生物工程', 494, '人', '专业');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 5, '会计', 564, '人', '专业');
INSERT INTO `t_ywym_ywtg_hjy_zrc_zpxxyrc_zb` VALUES (NULL, NULL, NULL, 6, '外语', 435, '人', '专业');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_bgcx_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_bgcx_qs`;
CREATE TABLE `t_ywym_ywtg_hjyi_bgcx_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_报告查询_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_bgcx_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 1, '月', 1253, '2022-01');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 2, '月', 2536, '2022-02');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 3, '月', 4562, '2022-03');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 4, '月', 4125, '2022-04');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 5, '月', 2365, '2022-05');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 6, '月', 2235, '2022-06');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 1, '日', 235, '06-01');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 2, '日', 256, '06-02');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 3, '日', 425, '06-03');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 4, '日', 125, '06-04');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 5, '日', 365, '06-05');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 6, '日', 442, '06-06');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_qs` VALUES (NULL, NULL, NULL, 7, '日', 235, '06-07');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_bgcx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_bgcx_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_bgcx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_报告查询_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_bgcx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_zb` VALUES (NULL, NULL, NULL, 1, '检验检测结果互认医院数', 252, '家');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_zb` VALUES (NULL, NULL, NULL, 2, '报告查询接入医院数', 265, '家');
INSERT INTO `t_ywym_ywtg_hjyi_bgcx_zb` VALUES (NULL, NULL, NULL, 3, '业务使用量', 56645, '人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_jygl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_jygl_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_jygl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_就医概览_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_jygl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 1, '昨日挂号', '655', '人次');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 2, '累计挂号', '4561.23', '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 3, '昨日挂号费用', '45625', '元');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 4, '累计挂号费用', '1201', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 5, '预约挂号接入医院数', '658', '家');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 6, '医保结算费用', '789', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_jygl_zb` VALUES (NULL, NULL, NULL, 7, '医保结算费用占比', '78', '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_jzdf_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_jzdf_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_jzdf_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_门诊挂号_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_jzdf_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_jzdf_zb` VALUES (NULL, NULL, NULL, 1, '垫付人次', '4586', '人次');
INSERT INTO `t_ywym_ywtg_hjyi_jzdf_zb` VALUES (NULL, NULL, NULL, 2, '垫付金额', '9.89', '万次');
INSERT INTO `t_ywym_ywtg_hjyi_jzdf_zb` VALUES (NULL, NULL, NULL, 3, '违约人数', '123', '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_门诊挂号_医院挂号费用TOP5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb` VALUES (NULL, NULL, NULL, 1, '和康医院', '18.56', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb` VALUES (NULL, NULL, NULL, 2, '北部医院', '17.56', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb` VALUES (NULL, NULL, NULL, 3, '一五八医院', '14.23', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb` VALUES (NULL, NULL, NULL, 4, '沈阳市第一人民医院', '13.33', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghfytop5_zb` VALUES (NULL, NULL, NULL, 5, '辽宁省儿童医院', '12.14', '万元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_门诊挂号_医院挂号人次TOP5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb` VALUES (NULL, NULL, NULL, 1, '沈阳医学院附属医院', 4512, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb` VALUES (NULL, NULL, NULL, 2, '皇姑区中心医院', 3254, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb` VALUES (NULL, NULL, NULL, 3, '盛京医院', 2354, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb` VALUES (NULL, NULL, NULL, 4, '沈阳市股骨科医院', 1523, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_mzgh_yyghrctop5_zb` VALUES (NULL, NULL, NULL, 5, '沈阳中医药大学附属医院', 1111, '万人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hjyi_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_数据赋能_标题与球对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', 'FSI医疗保障平台', '预约挂号');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', '信用平台/玫瑰分', '预约挂号');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '企业中', '信贷', '预约挂号');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '企业下', '定点医院', '预约挂号');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业下', '定点医院', '报告查询');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '市政府部门', '信息中心', '报告查询');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '企业中', 'HIS系统', '报告查询');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳', 'FSI医疗保障平台', '先看病后付费');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', '信用平台/玫瑰分', '先看病后付费');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', '用户实名系统', '先看病后付费');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '企业中', '信贷', '先看病后付费');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业上', '挂号', '智能候诊');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '企业上', '诊疗/处方', '智能候诊');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '企业上', '候诊排队', '智能候诊');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业上', '聚合支付', '诊间缴费情况');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '企业上', '聚富通对账', '诊间缴费情况');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '企业下', '清分银行', '诊间缴费情况');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳', '用户实名系统', '诊间缴费情况');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业下', '定点医院', '医疗机构');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '市政府部门', '信息中心', '医疗机构');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳', 'FSI医疗保障平台', '医疗机构');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '市政府部门', '信息中心', '急诊垫付');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳', 'FSI医疗保障平台', '急诊垫付');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业下', '定点医院', '页面');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hjyi_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_数据赋能_数据来源(球数量)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳', 'FSI医疗保障平台');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳', '信用平台/玫瑰分');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳', '市民码/电子凭证');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳', '用户实名系统');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '市政府部门', '信息中心');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '市政府部门', '医保');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '企业上', '挂号');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '企业上', '诊疗/处方');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '企业上', '检验检查系统');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '企业上', '候诊排队');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '企业上', '聚合支付');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '企业上', '聚富通对账');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '企业上', '签约管理');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '企业上', '小额贷支付');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '企业上', '放款与还款');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 16, '企业上', '小额贷对账');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 17, '企业中', '支付');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 18, '企业中', '信贷');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 19, '企业中', 'HIS系统');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 20, '企业下', '清分银行');
INSERT INTO `t_ywym_ywtg_hjyi_sjfn_sjly` VALUES (NULL, NULL, NULL, 21, '企业下', '定点医院');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_xkbhff_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_xkbhff_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_xkbhff_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `zb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '占比'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_先看病后付费_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_xkbhff_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 1, '签约人数', '4562', '人', NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 2, '违约人数', '24', '人', NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 3, '违约率', '12', '%', NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 4, '医保结算费用', '564', '万元', NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 5, '自费费用', '2580', '万元', NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 6, '信用付费用', '175', '万元', '21');
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 7, '信用付指数', '0.81', NULL, NULL);
INSERT INTO `t_ywym_ywtg_hjyi_xkbhff_zb` VALUES (NULL, NULL, NULL, 8, '信用付人次', '658', '万人次', '26');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_yljg_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_yljg_dd`;
CREATE TABLE `t_ywym_ywtg_hjyi_yljg_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `yljgmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医疗机构名称',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `high` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高度',
  `zrjzrc` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昨日就诊人次',
  `zrghrc` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昨日挂号人次',
  `yygh` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约挂号',
  `zjjf` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊间缴费',
  `znhz` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '智能候诊',
  `bgcx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报告查询',
  `dz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片url'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_医疗机构_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_yljg_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_yljg_dd` VALUES (NULL, NULL, NULL, 1, '新民市医疗机构', NULL, NULL, NULL, '4568', '4565', '开通', '开通', '未开通', '开通', '沈阳市新民市339号', 'https://img0.baidu.com/it/u=4020881649,402711436&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_门诊挂号_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_ym_zb` VALUES (NULL, NULL, NULL, 1, '接入医院总数', '233', '家');
INSERT INTO `t_ywym_ywtg_hjyi_ym_zb` VALUES (NULL, NULL, NULL, 2, '昨日使用人次', '1254', '人次');
INSERT INTO `t_ywym_ywtg_hjyi_ym_zb` VALUES (NULL, NULL, NULL, 3, '累计使用人次', '562', '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_ym_zb` VALUES (NULL, NULL, NULL, 4, '昨日就医费用总额', '32564', '元');
INSERT INTO `t_ywym_ywtg_hjyi_ym_zb` VALUES (NULL, NULL, NULL, 5, '累计就医费用总额', '32.56', '万元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_诊间缴费情况_医院诊间缴费TOP5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb` VALUES (NULL, NULL, NULL, 1, '沈阳医学院附属医院', '18.56', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb` VALUES (NULL, NULL, NULL, 2, '皇姑区中心医院', '17.56', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb` VALUES (NULL, NULL, NULL, 3, '盛京医院', '14.23', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb` VALUES (NULL, NULL, NULL, 4, '沈阳市股骨科医院', '13.33', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjjftop5_zb` VALUES (NULL, NULL, NULL, 5, '沈阳中医药大学附属医院', '12.14', '万元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_诊间缴费情况_医院诊间人次TOP5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb` VALUES (NULL, NULL, NULL, 1, '和康医院', 4512, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb` VALUES (NULL, NULL, NULL, 2, '北部医院', 3254, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb` VALUES (NULL, NULL, NULL, 3, '一五八医院', 2354, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb` VALUES (NULL, NULL, NULL, 4, '沈阳市第一人民医院', 1523, '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_yyzjrctop5_zb` VALUES (NULL, NULL, NULL, 5, '辽宁省儿童医院', 1111, '万人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_zjjfqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_zjjfqk_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_zjjfqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_诊间缴费情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_zjjfqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 1, '昨日诊间人次', '4956', '人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 2, '昨日诊间费用', '69', '元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 3, '累计诊间人次', '12', '万人次');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 4, '累计诊间费用', '45646', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 5, '诊间缴费接入医院', '587', '家');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 6, '医保结算费用', '4564', '万元');
INSERT INTO `t_ywym_ywtg_hjyi_zjjfqk_zb` VALUES (NULL, NULL, NULL, 7, '医保结算费用占比', '57.9', '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_znhz_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_znhz_qs`;
CREATE TABLE `t_ywym_ywtg_hjyi_znhz_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_报告查询_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_znhz_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 1, '月', 1253, '2022-01');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 2, '月', 2536, '2022-02');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 3, '月', 4562, '2022-03');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 4, '月', 4125, '2022-04');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 5, '月', 2365, '2022-05');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 6, '月', 2235, '2022-06');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 1, '日', 235, '06-01');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 2, '日', 256, '06-02');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 3, '日', 425, '06-03');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 4, '日', 125, '06-04');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 5, '日', 365, '06-05');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 6, '日', 442, '06-06');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_qs` VALUES (NULL, NULL, NULL, 7, '日', 235, '06-07');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hjyi_znhz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hjyi_znhz_zb`;
CREATE TABLE `t_ywym_ywtg_hjyi_znhz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好就医_报告查询_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hjyi_znhz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hjyi_znhz_zb` VALUES (NULL, NULL, NULL, 1, '智能候诊接入医院数', 252, '家');
INSERT INTO `t_ywym_ywtg_hjyi_znhz_zb` VALUES (NULL, NULL, NULL, 2, '业务使用量', 56645, '人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_bwzs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_bwzs_zzt`;
CREATE TABLE `t_ywym_ywtg_htc_bwzs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `dd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `bwzs` decimal(10, 2) NULL DEFAULT NULL COMMENT '泊位指数',
  `rq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_泊位指数_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_bwzs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 1, '医院', '全市', 0.30, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 2, '商业', '全市', 0.50, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 3, '办公', '全市', 0.20, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 4, '景点', '全市', 0.80, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 5, '住宅', '全市', 0.90, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 1, '医院', '新民区', 0.30, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 2, '商业', '新民区', 0.50, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 3, '办公', '新民区', 0.60, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 4, '景点', '新民区', 0.80, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_bwzs_zzt` VALUES (NULL, NULL, NULL, 5, '住宅', '新民区', 0.90, '2022-06-08');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_jyxtcctczstop_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_jyxtcctczstop_zb`;
CREATE TABLE `t_ywym_ywtg_htc_jyxtcctczstop_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `zs` decimal(10, 2) NULL DEFAULT NULL COMMENT '指数',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_经营性停车场停车指数TOP10_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_jyxtcctczstop_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 1, '全市', '省委区域停车场', 0.90, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 2, '全市', '省政府停车场', 0.80, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 3, '全市', '市委停车场', 0.80, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 4, '全市', '北站停车场', 0.70, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 5, '全市', '机场停车场', 0.70, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 6, '全市', '南湖公园停车场', 0.60, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 7, '全市', '南站停车场', 0.50, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 8, '全市', '沈阳市医院停车场', 0.40, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 9, '全市', '沈阳一中停车场', 0.40, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 10, '全市', '沈阳理工停车场', 0.40, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 1, '新民区', '省委区域停车场', 0.90, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 2, '新民区', '省政府停车场', 0.80, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 3, '新民区', '市委停车场', 0.80, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 4, '新民区', '北站停车场', 0.70, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 5, '新民区', '机场停车场', 0.70, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 6, '新民区', '南湖公园停车场', 0.60, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 7, '新民区', '南站停车场', 0.50, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 8, '新民区', '沈阳市医院停车场', 0.40, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 9, '新民区', '沈阳一中停车场', 0.40, '办公');
INSERT INTO `t_ywym_ywtg_htc_jyxtcctczstop_zb` VALUES (NULL, NULL, NULL, 10, '新民区', '沈阳理工停车场', 0.40, '办公');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_khdsyqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_khdsyqk_zb`;
CREATE TABLE `t_ywym_ywtg_htc_khdsyqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_客户端使用情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_khdsyqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_khdsyqk_zb` VALUES (NULL, NULL, NULL, 1, '百度', 42.00, '%');
INSERT INTO `t_ywym_ywtg_htc_khdsyqk_zb` VALUES (NULL, NULL, NULL, 2, '高德', 35.01, '%');
INSERT INTO `t_ywym_ywtg_htc_khdsyqk_zb` VALUES (NULL, NULL, NULL, 3, '腾讯', 12.03, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_rjtcsc_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_rjtcsc_zzt`;
CREATE TABLE `t_ywym_ywtg_htc_rjtcsc_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `dd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `rjtcsc` decimal(10, 2) NULL DEFAULT NULL COMMENT '日均停车时长',
  `rq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_日均停车时长_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_rjtcsc_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 1, '全市', '医院', 4.50, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 2, '全市', '商业', 2.30, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 3, '全市', '办公', 3.60, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 4, '全市', '景点', 5.60, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 5, '全市', '住宅', 8.90, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 1, '新民区', '医院', 4.50, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 2, '新民区', '商业', 2.30, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 3, '新民区', '办公', 8.50, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 4, '新民区', '景点', 5.60, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_rjtcsc_zzt` VALUES (NULL, NULL, NULL, 5, '新民区', '住宅', 8.90, '2022-06-08');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_htc_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_数据赋能_标题与球对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '企业', '医院学校', '先离场后付费');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '企业', '医院学校', '先离场后付费');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '企业', '社区车场', '先离场后付费');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '企业', '景区车场', '先离场后付费');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '企业', '医院学校', '重点区域停泊情况');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 6, '企业', '医院学校', '重点区域停泊情况');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 7, '企业', '社区车场', '重点区域停泊情况');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 8, '企业', '景区车场', '重点区域停泊情况');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 9, '市政府部门', '信息中心', '重点区域停泊情况');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 10, '沈阳', '机动车登记系统', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 11, '沈阳', '经营备案系统', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 12, '沈阳', '盛事通（信号支付）', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 13, '市政府部门', '公安', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 14, '市政府部门', '信息中心', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 15, '企业', '医院学校', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 16, '企业', '社区车场', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 17, '企业', '景区车场', '停车概览');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 18, '企业', '商业停车场', '便捷停车服务');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 19, '企业', '公共停车场', '便捷停车服务');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 20, '市政府部门', '信息中心', '便捷停车服务');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 21, '企业', '医院学校', '便捷停车服务');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 22, '企业', '医院学校', '学校');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 23, '企业', '医院学校', '医院');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 24, '市政府部门', '信息中心', '办公');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 25, '企业', '景区车场', '景点');
INSERT INTO `t_ywym_ywtg_htc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 26, '市政府部门', '信息中心', '诱导屏');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_htc_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_数据赋能_数据来源(球数量)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳', '机动车登记系统');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳', '经营备案系统');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳', '盛事通（信号支付）');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '市政府部门', '公安');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '市政府部门', '信息中心');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '企业', '医院学校');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '企业', '社区车场');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '企业', '景区车场');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '企业', '机关单位');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '企业', '商业停车场');
INSERT INTO `t_ywym_ywtg_htc_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '企业', '公共停车场');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_smtctsrd_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_smtctsrd_zb`;
CREATE TABLE `t_ywym_ywtg_htc_smtctsrd_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_市民停车投诉热点_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_smtctsrd_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 1, '道路车位数量少');
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 2, '僵尸车占用车位');
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 3, '车位有地锁');
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 4, '门前乱划车位');
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 5, '小区车位数量不足');
INSERT INTO `t_ywym_ywtg_htc_smtctsrd_zb` VALUES (NULL, NULL, NULL, 6, '停车侵占人行道');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_tccfwpjb_lb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_tccfwpjb_lb`;
CREATE TABLE `t_ywym_ywtg_htc_tccfwpjb_lb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `bdlx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '榜单类型',
  `tccmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车场名称',
  `pf` decimal(10, 2) NULL DEFAULT NULL COMMENT '评分',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_停车场服务评价榜_列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_tccfwpjb_lb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 1, '高分榜', '某停车场A', 5.00, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 2, '高分榜', '某停车场B', 4.90, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 3, '高分榜', '某停车场C', 4.50, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 4, '高分榜', '某停车场D', 4.30, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 5, '高分榜', '某停车场E', 4.20, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 6, '高分榜', '某停车场F', 4.10, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 1, '低分榜', '某停车场A', 1.10, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 2, '低分榜', '某停车场B', 1.20, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 3, '低分榜', '某停车场C', 1.30, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 4, '低分榜', '某停车场D', 1.40, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 5, '低分榜', '某停车场E', 1.50, '医院类');
INSERT INTO `t_ywym_ywtg_htc_tccfwpjb_lb` VALUES (NULL, NULL, NULL, 6, '低分榜', '某停车场F', 1.60, '医院类');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_tcgl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_tcgl_zb`;
CREATE TABLE `t_ywym_ywtg_htc_tcgl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_停车概览_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_tcgl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 1, '实时停车指数', 93.00, '个');
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 2, '昨日泊位指数', 1.70, '次/泊位');
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 3, '昨日平均停车时长', 4.50, '小时');
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 4, '无感支付停车场数量', 297.00, '家');
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 5, '今日客户端累计访问量', 103.00, '次');
INSERT INTO `t_ywym_ywtg_htc_tcgl_zb` VALUES (NULL, NULL, NULL, 6, '昨日违停处罚数量', 253.00, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_tczs_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_tczs_qs`;
CREATE TABLE `t_ywym_ywtg_htc_tczs_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `dd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `dqtczs` decimal(10, 2) NULL DEFAULT NULL COMMENT '当前停车指数',
  `tczs` decimal(10, 2) NULL DEFAULT NULL COMMENT '停车指数',
  `rq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_停车指数_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_tczs_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '商业', '新民区', 0.10, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '商业', '新民区', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '商业', '新民区', 0.30, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '商业', '新民区', 0.50, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '商业', '新民区', 0.60, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '商业', '新民区', 0.40, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '商业', '新民区', 0.20, 0.50, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '商业', '新民区', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '商业', '新民区', 0.50, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '医院', '新民区', 0.30, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '医院', '新民区', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '医院', '新民区', 0.30, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '医院', '新民区', 0.50, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '医院', '新民区', 0.60, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '医院', '新民区', 0.40, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '医院', '新民区', 0.20, 0.30, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '医院', '新民区', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '医院', '新民区', 0.50, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '景点', '新民区', 0.10, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '景点', '新民区', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '景点', '新民区', 0.30, 0.90, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '景点', '新民区', 0.50, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '景点', '新民区', 0.60, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '景点', '新民区', 0.40, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '景点', '新民区', 0.20, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '景点', '新民区', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '景点', '新民区', 0.50, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '办公', '新民区', 0.10, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '办公', '新民区', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '办公', '新民区', 0.30, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '办公', '新民区', 0.10, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '办公', '新民区', 0.40, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '办公', '新民区', 0.30, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '办公', '新民区', 0.50, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '办公', '新民区', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '办公', '新民区', 0.40, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '住宅', '新民区', 0.20, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '住宅', '新民区', 0.60, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '住宅', '新民区', 0.50, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '住宅', '新民区', 0.10, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '住宅', '新民区', 0.40, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '住宅', '新民区', 0.30, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '住宅', '新民区', 0.50, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '住宅', '新民区', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '住宅', '新民区', 0.40, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '商业', '全市', 0.10, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '商业', '全市', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '商业', '全市', 0.30, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '商业', '全市', 0.50, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '商业', '全市', 0.60, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '商业', '全市', 0.40, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '商业', '全市', 0.20, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '商业', '全市', 0.60, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '商业', '全市', 0.50, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '医院', '全市', 0.10, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '医院', '全市', 0.10, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '医院', '全市', 0.40, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '医院', '全市', 0.30, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '医院', '全市', 0.50, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '医院', '全市', 0.60, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '医院', '全市', 0.40, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '医院', '全市', 0.20, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '医院', '全市', 0.60, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '景点', '全市', 0.50, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '景点', '全市', 0.10, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '景点', '全市', 0.10, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '景点', '全市', 0.40, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '景点', '全市', 0.30, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '景点', '全市', 0.50, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '景点', '全市', 0.60, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '景点', '全市', 0.40, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '景点', '全市', 0.20, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '办公', '全市', 0.60, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '办公', '全市', 0.50, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '办公', '全市', 0.10, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '办公', '全市', 0.40, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '办公', '全市', 0.30, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '办公', '全市', 0.10, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '办公', '全市', 0.40, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '办公', '全市', 0.30, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '办公', '全市', 0.50, 0.90, '2022-06-08', '24:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 1, '住宅', '全市', 0.60, 0.20, '2022-06-08', '00:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 2, '住宅', '全市', 0.40, 0.60, '2022-06-08', '03:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 3, '住宅', '全市', 0.20, 0.70, '2022-06-08', '06:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 4, '住宅', '全市', 0.60, 0.30, '2022-06-08', '09:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 5, '住宅', '全市', 0.50, 0.50, '2022-06-08', '12:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 6, '住宅', '全市', 0.10, 0.80, '2022-06-08', '15:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 7, '住宅', '全市', 0.10, 0.40, '2022-06-08', '18:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 8, '住宅', '全市', 0.40, 0.60, '2022-06-08', '21:00');
INSERT INTO `t_ywym_ywtg_htc_tczs_qs` VALUES (NULL, NULL, NULL, 9, '住宅', '全市', 0.30, 0.90, '2022-06-08', '24:00');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_wgzftcc_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_wgzftcc_tips`;
CREATE TABLE `t_ywym_ywtg_htc_wgzftcc_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `tccmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车场名称',
  `bwsl` decimal(20, 0) NULL DEFAULT NULL COMMENT '泊位数量',
  `zs` decimal(10, 2) NULL DEFAULT NULL COMMENT '指数',
  `zccls` decimal(20, 0) NULL DEFAULT NULL COMMENT '在场车辆数',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'url',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_无感支付停车场_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_wgzftcc_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_tips` VALUES (NULL, NULL, NULL, 1, 'ETC', '某某停车场A', 1002, 75.60, 568, 'https://img1.baidu.com/it/u=431459333,2160742133&fm=253&fmt=auto&app=120&f=JPEG?w=600&h=500', NULL, NULL);
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_tips` VALUES (NULL, NULL, NULL, 1, '先离场后付费', '某某停车场B', 1253, 56.26, 256, 'https://img2.baidu.com/it/u=715034713,2428387472&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=420', NULL, NULL);
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_tips` VALUES (NULL, NULL, NULL, 2, '先离场后付费', '某某停车场B', 1253, 56.26, 256, 'https://img1.baidu.com/it/u=923920636,2079332683&fm=253&fmt=auto&app=120&f=JPEG?w=867&h=500', NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_wgzftcc_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_wgzftcc_zb`;
CREATE TABLE `t_ywym_ywtg_htc_wgzftcc_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_无感支付停车场_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_wgzftcc_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 1, '开通ETC停车场', '开通ETC停车场', 216, '家');
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 2, '开通ETC停车场', '总泊位数', 45122, '个');
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 3, '开通ETC停车场', '今日订单', 526, '单');
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 1, '开通先离场后付费停车场', '开通先离场后付费停车场', 56, '家');
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 2, '开通先离场后付费停车场', '总泊位数', 4423, '个');
INSERT INTO `t_ywym_ywtg_htc_wgzftcc_zb` VALUES (NULL, NULL, NULL, 3, '开通先离场后付费停车场', '今日订单', 456, '单');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_yhqqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_yhqqk_zb`;
CREATE TABLE `t_ywym_ywtg_htc_yhqqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_优惠券情况_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_yhqqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 1, '电子优惠券发放金额', 1456253.00, '元');
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 2, '电子优惠券使用金额', 142535.00, '元');
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 3, '2元', 253.00, '张');
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 4, '5元', 3652.00, '张');
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 5, '10元', 2543.00, '张');
INSERT INTO `t_ywym_ywtg_htc_yhqqk_zb` VALUES (NULL, NULL, NULL, 6, '20元', 2523.00, '张');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_ym_zb`;
CREATE TABLE `t_ywym_ywtg_htc_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_页面_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 1, '中心城区小汽车普查数量', 148.2001, '万辆');
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 2, '中心城区泊位普查数量', 175.6000, '万个');
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 3, '经营性停车场数量', 2124.0000, '家');
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 4, '经营性停车场泊位数量', 33.5600, '万个');
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 5, '已接入经营性停车场数量', 648.0000, '家');
INSERT INTO `t_ywym_ywtg_htc_ym_zb` VALUES (NULL, NULL, NULL, 6, '已接入经营性停车场泊位数量', 22.5000, '万个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_zdqysstczs_lb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_zdqysstczs_lb`;
CREATE TABLE `t_ywym_ywtg_htc_zdqysstczs_lb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `szcq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城区',
  `bwzs` decimal(10, 0) NULL DEFAULT NULL COMMENT '泊位总数',
  `sybw` decimal(10, 0) NULL DEFAULT NULL COMMENT '剩余泊位',
  `tczs` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车指数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_重点区域实时停车指数_列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_zdqysstczs_lb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_zdqysstczs_lb` VALUES (NULL, NULL, NULL, 1, '省委区域', 20, 0, NULL);
INSERT INTO `t_ywym_ywtg_htc_zdqysstczs_lb` VALUES (NULL, NULL, NULL, 2, '省政府区域', 30, 1, NULL);
INSERT INTO `t_ywym_ywtg_htc_zdqysstczs_lb` VALUES (NULL, NULL, NULL, 3, '市委市政府区域', 10, 1, NULL);
INSERT INTO `t_ywym_ywtg_htc_zdqysstczs_lb` VALUES (NULL, NULL, NULL, 4, '北站CBD', 20, 1, NULL);
INSERT INTO `t_ywym_ywtg_htc_zdqysstczs_lb` VALUES (NULL, NULL, NULL, 5, '南站区域', 36, 0, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_zfglqk_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_zfglqk_zzt`;
CREATE TABLE `t_ywym_ywtg_htc_zfglqk_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `cflx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚类型',
  `ygl` decimal(10, 0) NULL DEFAULT NULL COMMENT '严管路',
  `fygl` decimal(10, 0) NULL DEFAULT NULL COMMENT '非严管路',
  `rq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_执法管理情况_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_zfglqk_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 1, '新民市', '电话短信通知', 125, 562, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 2, '新民市', '处罚', 235, 223, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 3, '新民市', '拖车', 321, 123, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 1, '康平县', '电话短信通知', 125, 562, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 2, '康平县', '处罚', 235, 223, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 3, '康平县', '拖车', 321, 123, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 1, '全市', '电话短信通知', 125, 562, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 2, '全市', '处罚', 235, 223, '2022-06-08');
INSERT INTO `t_ywym_ywtg_htc_zfglqk_zzt` VALUES (NULL, NULL, NULL, 3, '全市', '拖车', 321, 123, '2022-06-08');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_zhcgjdcltfmk_tp
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_zhcgjdcltfmk_tp`;
CREATE TABLE `t_ywym_ywtg_htc_zhcgjdcltfmk_tp`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'url',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_智慧城管机动车乱停放模块_图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_zhcgjdcltfmk_tp
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_tp` VALUES (NULL, NULL, NULL, 1, 'https://img2.baidu.com/it/u=1823634667,3879258837&fm=253&fmt=auto&app=138&f=JPEG?w=890&h=500', '2022-06-08 14:25:56');
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_tp` VALUES (NULL, NULL, NULL, 2, 'https://img1.baidu.com/it/u=2592210676,529233038&fm=253&fmt=auto&app=120&f=JPEG?w=550&h=413', '2022-06-08 14:25:57');
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_tp` VALUES (NULL, NULL, NULL, 3, 'https://img2.baidu.com/it/u=1844757630,3635812542&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=337', '2022-06-09 14:25:57');

-- ----------------------------
-- Table structure for t_ywym_ywtg_htc_zhcgjdcltfmk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_htc_zhcgjdcltfmk_zb`;
CREATE TABLE `t_ywym_ywtg_htc_zhcgjdcltfmk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好停车_智慧城管机动车乱停放模块_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_htc_zhcgjdcltfmk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_zb` VALUES (NULL, NULL, NULL, 1, '待处置', 25, '件');
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_zb` VALUES (NULL, NULL, NULL, 2, '处置中', 23, '件');
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_zb` VALUES (NULL, NULL, NULL, 3, '已处置', 12, '件');
INSERT INTO `t_ywym_ywtg_htc_zhcgjdcltfmk_zb` VALUES (NULL, NULL, NULL, 4, '累计处置', 362, '件');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_gl_fwrdtop_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_gl_fwrdtop_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_gl_fwrdtop_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_概览_服务热度TOP5_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_gl_fwrdtop_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_gl_fwrdtop_zb` VALUES (27711179879336243, '2022-05-22 00:00:00', '2022-05-23 17:29:54', 1, '室内清洁');
INSERT INTO `t_ywym_ywtg_hyl_gl_fwrdtop_zb` VALUES (27711179879336244, '2022-05-22 00:00:00', '2022-05-23 17:29:54', 2, '助浴');
INSERT INTO `t_ywym_ywtg_hyl_gl_fwrdtop_zb` VALUES (27711179879336245, '2022-05-22 00:00:00', '2022-05-23 17:29:54', 3, '送餐');
INSERT INTO `t_ywym_ywtg_hyl_gl_fwrdtop_zb` VALUES (27711179879336246, '2022-05-22 00:00:00', '2022-05-23 17:29:54', 4, '理发');
INSERT INTO `t_ywym_ywtg_hyl_gl_fwrdtop_zb` VALUES (27711179879336247, '2022-05-22 00:00:00', '2022-05-23 17:29:54', 5, '制作老年餐');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_gl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_gl_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_gl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_概览_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_gl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_gl_zb` VALUES (NULL, NULL, NULL, 1, '床位总数', 2351.00, '个');
INSERT INTO `t_ywym_ywtg_hyl_gl_zb` VALUES (NULL, NULL, NULL, 2, '老年高龄津贴人数', 235.00, '人');
INSERT INTO `t_ywym_ywtg_hyl_gl_zb` VALUES (NULL, NULL, NULL, 3, '床位入住率', 56.80, '%');
INSERT INTO `t_ywym_ywtg_hyl_gl_zb` VALUES (NULL, NULL, NULL, 4, '服务工单', 1235.00, '笔');
INSERT INTO `t_ywym_ywtg_hyl_gl_zb` VALUES (NULL, NULL, NULL, 5, '服务金额', 25634.00, '元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_lrsj_dqfb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_lrsj_dqfb_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_lrsj_dqfb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `dq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `lrsl` decimal(10, 0) NULL DEFAULT NULL COMMENT '60岁以上老人数量',
  `man` decimal(10, 0) NULL DEFAULT NULL COMMENT '男',
  `woman` decimal(10, 0) NULL DEFAULT NULL COMMENT '女'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_老人数据_地区分布_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_lrsj_dqfb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340864, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 1, '大东区', 206525, 119939, 137106);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340865, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 2, '沈北新区', 85041, 50618, 56647);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340866, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 3, '浑南区', 93271, 54474, 62661);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340867, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 4, '皇姑区', 233629, 136310, 155827);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340868, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 5, '辽中区', 131029, 77116, 84686);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340869, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 6, '于洪区', 111164, 63864, 74242);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340870, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 7, '经济技术开发区', 37, 31, 26);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340871, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 8, '苏家屯区', 119186, 70442, 78886);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340872, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 9, '铁西区', 289824, 168731, 193267);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340873, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 10, '沈河区', 214338, 123314, 140857);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340874, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 11, '和平区', 192354, 111035, 127217);
INSERT INTO `t_ywym_ywtg_hyl_lrsj_dqfb_zb` VALUES (27711179879340875, '2022-05-22 00:00:00', '2022-05-25 10:21:59', 12, '总', 2026938, 1186996, 1339334);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_lrsj_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_lrsj_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_lrsj_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_老人数据_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_lrsj_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_lrsj_zb` VALUES (NULL, NULL, NULL, 1, '全市60岁以上老人数量', 206525, '万人');
INSERT INTO `t_ywym_ywtg_hyl_lrsj_zb` VALUES (NULL, NULL, NULL, 2, '男', 85041, '万人');
INSERT INTO `t_ywym_ywtg_hyl_lrsj_zb` VALUES (NULL, NULL, NULL, 3, '女', 93271, '万人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_qyxjjylfwzx_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_qyxjjylfwzx_tips`;
CREATE TABLE `t_ywym_ywtg_hyl_qyxjjylfwzx_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `cgmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `tyshxydm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `dz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `jglb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类别',
  `yyfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运营方式',
  `jzmj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建筑面积',
  `xjdj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星级等级',
  `frdb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `frdblxdh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表联系电话'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_区域性居家养老服务中心_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_qyxjjylfwzx_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 1, NULL, NULL, '区域性居家养老服务中心A', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 2, NULL, NULL, '区域性居家养老服务中心B', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 3, NULL, NULL, '区域性居家养老服务中心C', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 4, NULL, NULL, '区域性居家养老服务中心D', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 5, NULL, NULL, '区域性居家养老服务中心E', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 6, NULL, NULL, '区域性居家养老服务中心F', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 7, NULL, NULL, '区域性居家养老服务中心G', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 8, NULL, NULL, '区域性居家养老服务中心H', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 9, NULL, NULL, '区域性居家养老服务中心I', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 10, NULL, NULL, '区域性居家养老服务中心J', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 11, NULL, NULL, '区域性居家养老服务中心K', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 12, NULL, NULL, '区域性居家养老服务中心L', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_qyxjjylfwzx_tips` VALUES (NULL, NULL, NULL, 13, NULL, NULL, '区域性居家养老服务中心M', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hyl_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_数据赋能_标题与球对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳中上', '养老服务专业及人数', '概览');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '疾控', '概览');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳下', '信息中心', '概览');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳下', '健康管理', '概览');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳中上', '养老服务专业及人数', '老人数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '健康管理', '老人数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '区政府部门', '老人数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳底层', '市政府部门', '老人数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '沈阳底层', '社区', '老人数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '市政府部门', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '信息中心', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '社会侧', '家政企业系统', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '社会', '家政企业', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '社会侧', '助餐企业系统', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '社会', '助餐企业', '好设施');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳上', '养老从业人员', '好服务');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳中上', '养老服务专业及人数', '好服务');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳中上', '残疾老年人', '好服务');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳中上', '养老服务专业及人数', '好政策');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳底层', '市政府部门', '好政策');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '社区', '好政策');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳上', '养老从业人员', '好环境');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳中上', '残疾老年人', '好环境');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳中上', '养老服务专业及人数', '好环境');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳底层', '市政府部门', '好环境');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '沈阳底层', '社区', '好环境');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '市政府部门', '打点');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '信息中心', '打点');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳下', '健康管理', '打点');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hyl_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_数据赋能_数据来源(球数量)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '社会侧', '家政企业系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '社会', '家政企业');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '社会侧', '助餐企业系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '社会', '助餐企业');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳上', '特困系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳上', '殡葬系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳上', '残疾人双补');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳上', '低保系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳上', '养老从业人员');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳上', '社会组织服务管理平台');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳上', '老年人口数量');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳中上', '家庭医生');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳中上', '住院数据、医养结合机构');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳中上', '社区医院');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳中上', '企业税务情况');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳中上', '消防检查信息');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳中上', '食品安全信息');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳中上', '长护险、老年人病床信息');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳中上', '退休金、养老护理培训');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳中上', '老年大学');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳中上', '养老服务专业及人数');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '沈阳中上', '实训基地');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '沈阳中上', '残疾老年人');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '沈阳中上', '残疾人适老化改造数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '沈阳中上', '相关补贴数据');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '沈阳中上', '医保死亡数据、安宁疗护机构');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳中下', '核酸检测');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳中下', '养老领域资金投入');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳中下', '相关补贴数据、资金统发系统');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳中下', '疫苗接种');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳中下', '企业信息');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳中下', '防疫管控');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳下', '财');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳下', '工商');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳下', '疾控');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳下', '信息中心');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳下', '健康管理');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳下', '财政');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳下', '公安');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳下', '民政');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳下', '卫健');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳下', '税务');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '沈阳下', '消防');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '沈阳下', '食品');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '沈阳下', '医保');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '沈阳下', '人社');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '沈阳下', '教育');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 16, '沈阳下', '残联');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '区政府部门');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳底层', '市政府部门');
INSERT INTO `t_ywym_ywtg_hyl_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '社区');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_sssj_gbmbjg_lb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_sssj_gbmbjg_lb`;
CREATE TABLE `t_ywym_ywtg_hyl_sssj_gbmbjg_lb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `jgmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `dz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `lb` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `fwzk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务概况'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_设施数据_公办民办机构_列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_sssj_gbmbjg_lb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 1, '铁西区老年公寓', '南街12号', '某某类别', '三星级');
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 2, '和平区福利中心养老院', '北街14号', '某某类别', '三星级');
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 3, '于洪区老年公寓', '于洪街道', '某某类别', '三星级');
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 1, '铁西区民办老年公寓', '南街12号', '某某类别', '三星级');
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 2, '和平区民办福利中心养老院', '北街14号', '某某类别', '三星级');
INSERT INTO `t_ywym_ywtg_hyl_sssj_gbmbjg_lb` VALUES (NULL, NULL, NULL, 3, '于洪区民办老年公寓', '于洪街道', '某某类别', '三星级');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_sssj_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_sssj_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_sssj_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `gbjg` decimal(10, 0) NULL DEFAULT NULL COMMENT '公办机构',
  `mbjg` decimal(10, 0) NULL DEFAULT NULL COMMENT '民办机构',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_设施数据_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_sssj_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_sssj_zb` VALUES (NULL, NULL, NULL, 1, '养老服务机构', 2560, NULL, NULL, '家');
INSERT INTO `t_ywym_ywtg_hyl_sssj_zb` VALUES (NULL, NULL, NULL, 2, '养老机构数', 1388, 587, 801, '家');
INSERT INTO `t_ywym_ywtg_hyl_sssj_zb` VALUES (NULL, NULL, NULL, 3, '床位总数', 43400, 26103, 17297, '个');
INSERT INTO `t_ywym_ywtg_hyl_sssj_zb` VALUES (NULL, NULL, NULL, 4, '自理床位总数', 13356, 6920, 6436, '个');
INSERT INTO `t_ywym_ywtg_hyl_sssj_zb` VALUES (NULL, NULL, NULL, 5, '区域性居家中心', 2306, NULL, NULL, '家');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_wfjgdjslxq_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_wfjgdjslxq_zzt`;
CREATE TABLE `t_ywym_ywtg_hyl_wfjgdjslxq_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_服务机构对接数量详情_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_wfjgdjslxq_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 1, '2021-12', 484);
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 2, '2022-01', 495);
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 3, '2022-02', 952);
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 4, '2022-03', 651);
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 5, '2022-04', 598);
INSERT INTO `t_ywym_ywtg_hyl_wfjgdjslxq_zzt` VALUES (NULL, NULL, NULL, 6, '2022-05', 456);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylfl_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylfl_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_ylfl_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老福利_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylfl_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 1, '90-99岁', 4189, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 2, '100岁以上', 686, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 3, '补贴申请总人数', 17, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 4, '高龄津贴发放总金额', 278, '万元');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 5, '接受老年人能力评估总数', 75, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 6, '重度失能', 12, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 7, '轻度失能', 125, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 8, '中度失能', 235, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfl_zb` VALUES (NULL, NULL, NULL, 9, '能力完好', 2356, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylfw_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylfw_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_ylfw_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老服务_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylfw_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zb` VALUES (NULL, NULL, NULL, 1, '政府购买服务人次', 5632, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zb` VALUES (NULL, NULL, NULL, 2, '政府购买服务惠及人数', 1253, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zb` VALUES (NULL, NULL, NULL, 3, '适老化改造人数', 5264, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylfw_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylfw_zzt`;
CREATE TABLE `t_ywym_ywtg_hyl_ylfw_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `fwjgdjs` decimal(10, 0) NULL DEFAULT NULL COMMENT '服务机构对接数',
  `jaylsmfw` decimal(10, 0) NULL DEFAULT NULL COMMENT '居家养老上门服务',
  `zfgmfws` decimal(10, 0) NULL DEFAULT NULL COMMENT '政府购买服务数',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老服务_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylfw_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 1, 123, 111, 123, '1月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 2, 135, 102, 135, '2月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 3, 142, 85, 142, '3月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 4, 110, 96, 110, '4月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 5, 103, 78, 103, '5月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 6, 95, 123, 95, '6月');
INSERT INTO `t_ywym_ywtg_hyl_ylfw_zzt` VALUES (NULL, NULL, NULL, 7, 88, 135, 88, '7月');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylfwjg_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylfwjg_tips`;
CREATE TABLE `t_ywym_ywtg_hyl_ylfwjg_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `yljg` decimal(10, 0) NULL DEFAULT NULL COMMENT '养老机构',
  `cw` decimal(20, 0) NULL DEFAULT NULL COMMENT '床位',
  `cwrzl` decimal(10, 2) NULL DEFAULT NULL COMMENT '床位入住率',
  `sykrnzrs` decimal(10, 0) NULL DEFAULT NULL COMMENT '剩余可容纳总人数',
  `qyxjjylfwzx` decimal(10, 0) NULL DEFAULT NULL COMMENT '区域性居家养老服务中心',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老服务机构_TIPS' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylfwjg_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 1, '全市', 562, 32653, 78.00, 135, 25, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 2, '和平区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 3, '沈河区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 4, '铁西区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 5, '皇姑区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 6, '大东区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 7, '浑南区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 8, '于洪区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 9, '沈北新区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 10, '苏家屯区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 11, '辽中区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 12, '新民区', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 13, '法库县', 101, 1253, 21.00, 14, 7, NULL, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylfwjg_tips` VALUES (NULL, NULL, NULL, 14, '康平县', 101, 1253, 21.00, 14, 7, NULL, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs`;
CREATE TABLE `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `ry` decimal(10, 0) NULL DEFAULT NULL COMMENT '入院',
  `ly` decimal(10, 0) NULL DEFAULT NULL COMMENT '离院'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老机构_机构入离院老人数量_趋势' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 1, '2022-01', 484, 125);
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 2, '2022-02', 495, 352);
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 3, '2022-03', 952, 112);
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 4, '2022-04', 651, 412);
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 5, '2022-05', 598, 332);
INSERT INTO `t_ywym_ywtg_hyl_yljg_jgrlylrsl_qs` VALUES (NULL, NULL, NULL, 6, '2022-06', 456, 126);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_yljg_tips
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_yljg_tips`;
CREATE TABLE `t_ywym_ywtg_hyl_yljg_tips`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `cgmc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `tyshxydm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `dz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `jglb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类别',
  `yyfs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运营方式',
  `jzmj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建筑面积',
  `xjdj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星级等级',
  `frdb` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `frdblxdh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表联系电话'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老机构_TIPS' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_yljg_tips
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 1, NULL, NULL, '沈河区养老服务机构A', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 2, NULL, NULL, '沈河区养老服务机构B', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 3, NULL, NULL, '沈河区养老服务机构C', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 4, NULL, NULL, '沈河区养老服务机构D', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 5, NULL, NULL, '沈河区养老服务机构E', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 6, NULL, NULL, '沈河区养老服务机构F', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 7, NULL, NULL, '沈河区养老服务机构G', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 8, NULL, NULL, '沈河区养老服务机构H', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 9, NULL, NULL, '沈河区养老服务机构I', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 10, NULL, NULL, '沈河区养老服务机构J', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 11, NULL, NULL, '沈河区养老服务机构K', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 12, NULL, NULL, '沈河区养老服务机构L', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');
INSERT INTO `t_ywym_ywtg_hyl_yljg_tips` VALUES (NULL, NULL, NULL, 13, NULL, NULL, '沈河区养老服务机构M', '15461254652x', '万泉路19号', '类别', 'XXXX运营方式', '23022', '三星级', '张三', '15536984562');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_yljg_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_yljg_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_yljg_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老机构_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_yljg_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_yljg_zb` VALUES (NULL, NULL, NULL, 1, '5000元以上', 15, '家');
INSERT INTO `t_ywym_ywtg_hyl_yljg_zb` VALUES (NULL, NULL, NULL, 2, '5000-4000元', 18, '家');
INSERT INTO `t_ywym_ywtg_hyl_yljg_zb` VALUES (NULL, NULL, NULL, 3, '4000-3000元', 35, '家');
INSERT INTO `t_ywym_ywtg_hyl_yljg_zb` VALUES (NULL, NULL, NULL, 4, '3000-2000元', 19, '家');
INSERT INTO `t_ywym_ywtg_hyl_yljg_zb` VALUES (NULL, NULL, NULL, 5, '2000元以下', 12, '家');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylkh_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylkh_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_ylkh_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老看护_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylkh_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 1, '家庭养老床位数量', 1006, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 2, '困难家庭适老改造', 8, '人');
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 3, '烟感报警', 25, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 4, '燃气报警', 40, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 5, '水浸报警', 98, NULL);
INSERT INTO `t_ywym_ywtg_hyl_ylkh_zb` VALUES (NULL, NULL, NULL, 6, '睡眠监测预警', 48, NULL);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylzyzs_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylzyzs_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_ylzyzs_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老主要指数_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylzyzs_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zb` VALUES (NULL, NULL, NULL, 1, '全市床位利用率', 80.20, '%');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zb` VALUES (NULL, NULL, NULL, 2, '全市护理型床位占比', 89.60, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ylzyzs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ylzyzs_zzt`;
CREATE TABLE `t_ywym_ywtg_hyl_ylzyzs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `lb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_养老主要指数_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ylzyzs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 1, '和平区', 82.50, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 2, '大东区', 26.30, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 3, '新民市', 75.60, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 4, '沈北新区', 56.40, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 5, '沈河区', 85.32, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 6, '法库县', 58.46, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 7, '康平县', 45.26, '床位利用率');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 1, '和平区', 82.50, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 2, '大东区', 26.30, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 3, '新民市', 75.60, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 4, '沈北新区', 56.40, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 5, '沈河区', 85.32, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 6, '法库县', 58.46, '护理型床位占比');
INSERT INTO `t_ywym_ywtg_hyl_ylzyzs_zzt` VALUES (NULL, NULL, NULL, 7, '康平县', 45.26, '护理型床位占比');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyl_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyl_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hyl_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好养老_页面_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyl_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 1, '养老服务机构总数', 320.00, '家');
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 2, '床位总数', 5000.00, '张');
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 3, '入住率', 82.70, '%');
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 4, '剩余可容纳人数', 1235.00, '人');
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 5, '服务工单总数', 256.00, '个');
INSERT INTO `t_ywym_ywtg_hyl_ym_zb` VALUES (NULL, NULL, NULL, 6, '服务工单总时长', 2531.00, '时');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_20mksry_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_20mksry_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_20mksry_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `smm` decimal(10, 0) NULL DEFAULT NULL COMMENT '市民码',
  `qt` decimal(10, 0) NULL DEFAULT NULL COMMENT '其他',
  `xy` decimal(10, 0) NULL DEFAULT NULL COMMENT '信用'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_20秒快速入园（当日）_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_20mksry_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 1, '00:00', 2, 0, 0);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 2, '02:00', 34, 12, 34);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 3, '04:00', 23, 56, 56);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 4, '06:00', 56, 34, 34);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 5, '08:00', 145, 456, 456);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 6, '10:00', 234, 324, 324);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 7, '12:00', 456, 453, 378);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 8, '14:00', 444, 323, 323);
INSERT INTO `t_ywym_ywtg_hyw_20mksry_qs` VALUES (NULL, NULL, NULL, 9, '16:00', 567, 443, 443);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_20mksry_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_20mksry_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_20mksry_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_20秒快速入园（当日）_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_20mksry_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_20mksry_zb` VALUES (NULL, NULL, NULL, 1, '市民码入园人数', 1233, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mksry_zb` VALUES (NULL, NULL, NULL, 2, '信用入园人数', 1222, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mksry_zb` VALUES (NULL, NULL, NULL, 3, '其他入园人数', 111, '人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_20mry_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_20mry_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_20mry_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_20秒入园_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_20mry_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 1, '景区总数', 789, '家');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 2, '接入景区总数', 653, '家');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 3, '景区当日游客总量', 23432, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 4, '接入景区当日游客总量', 19340, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 5, '当前游客人数', 6907, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 6, '景点接待人次上限', 30000, '人次');
INSERT INTO `t_ywym_ywtg_hyw_20mry_zb` VALUES (NULL, NULL, NULL, 7, '景区饱和指数', 78, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_30mrz_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_30mrz_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_30mrz_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_30秒入住_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_30mrz_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 1, '30秒入住使用率', 89, '%');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 2, '今日入住人数', 350, '人');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 3, '今日在住人数', 2342, '人');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 4, '酒店饱和指数', 80, '%');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 5, '当前住客人数', 368, '人');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 6, '星级酒店数量', 145, '家');
INSERT INTO `t_ywym_ywtg_hyw_30mrz_zb` VALUES (NULL, NULL, NULL, 7, '星级酒店接入数量', 145, '家');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_bkfx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_bkfx_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_bkfx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `man` decimal(10, 0) NULL DEFAULT NULL COMMENT '男',
  `woman` decimal(10, 0) NULL DEFAULT NULL COMMENT '女'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_宾客分析_占比' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_bkfx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_bkfx_zb` VALUES (NULL, NULL, NULL, 1, '本日', 58, 52);
INSERT INTO `t_ywym_ywtg_hyw_bkfx_zb` VALUES (NULL, NULL, NULL, 2, '本周', 55, 55);
INSERT INTO `t_ywym_ywtg_hyw_bkfx_zb` VALUES (NULL, NULL, NULL, 3, '本月', 53, 57);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_bklydtop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_bklydtop5_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_bklydtop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `zbx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_宾客分析_宾客来源地Top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_bklydtop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 1, '本日', '西安', 345, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 2, '本日', '长春', 234, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 3, '本日', '武汉', 222, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 4, '本日', '南京', 198, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 5, '本日', '成都', 187, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 1, '本周', '西安', 3450, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 2, '本周', '长春', 2340, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 3, '本周', '武汉', 2220, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 4, '本周', '南京', 1980, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 5, '本周', '成都', 1870, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 1, '本月', '西安', 12345, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 2, '本月', '长春', 11000, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 3, '本月', '武汉', 10000, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 4, '本月', '南京', 9987, '人次');
INSERT INTO `t_ywym_ywtg_hyw_bklydtop5_zb` VALUES (NULL, NULL, NULL, 5, '本月', '成都', 9674, '人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_bkmyytspmtop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_bkmyytspmtop5_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_bkmyytspmtop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_宾客满意与投诉排名Top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_bkmyytspmtop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 1, '满意度', '沈阳长岛司机酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 2, '满意度', '沈阳盛京之星酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 3, '满意度', '沈阳世茂希尔顿酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 4, '满意度', '沈阳山景花园酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 5, '满意度', '沈阳华强诺华庭酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 1, '投诉', '沈阳世贸希尔顿酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 2, '投诉', '沈阳瑞士酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 3, '投诉', '沈阳天丰国际酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 4, '投诉', '沈阳和平艾美酒店');
INSERT INTO `t_ywym_ywtg_hyw_bkmyytspmtop5_zb` VALUES (NULL, NULL, NULL, 5, '投诉', '沈阳丽都索菲特酒店');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt`;
CREATE TABLE `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlb` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类别',
  `cgmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场馆名称',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_公共文化场馆服务情况_各场馆当日or当年来访人数_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 1, '当日', '康平图书馆', 38);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 2, '当日', '于洪图书馆', 45);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 3, '当日', '和平图书馆', 68);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 4, '当日', '大东少儿图书馆', 102);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 5, '当日', '沈北新区图书馆', 36);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 1, '当年', '康平图书馆', 18562);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 2, '当年', '于洪图书馆', 25642);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 3, '当年', '和平图书馆', 22536);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 4, '当年', '大东少儿图书馆', 23154);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_gcgdrordnlfrs_zzt` VALUES (NULL, NULL, NULL, 5, '当年', '沈北新区图书馆', 19563);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_公共文化场馆服务情况_进馆人员年龄段统计_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb` VALUES (NULL, NULL, NULL, 1, '18岁以下', 1653, '人');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb` VALUES (NULL, NULL, NULL, 2, '18-35岁', 2003, '人');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb` VALUES (NULL, NULL, NULL, 3, '35-60岁', 1054, '人');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jgrynldtjzb_zb` VALUES (NULL, NULL, NULL, 4, '60岁以上', 653, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `cgmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场馆名称',
  `dwsjjgrs` decimal(10, 0) NULL DEFAULT NULL COMMENT '单位时间进馆人数',
  `jjxfx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '聚集性风险'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_公共文化场馆服务情况_聚集性风险预警_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb` VALUES (NULL, NULL, NULL, 1, '沈阳市图书馆', 261, '否');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb` VALUES (NULL, NULL, NULL, 2, '康平图书馆', 126, '否');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb` VALUES (NULL, NULL, NULL, 3, '和平图书馆', 569, '是');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_jjxfxyj_zb` VALUES (NULL, NULL, NULL, 4, '沈北新区图书馆', 112, '否');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_公共文化场馆服务情况_最近20人体温大数据情况_趋势' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 1, 36.20);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 2, 36.50);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 3, 36.40);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 4, 36.30);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 5, 35.80);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 6, 36.10);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 7, 36.60);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 8, 36.40);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 9, 36.30);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 10, 36.40);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 11, 36.10);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 12, 36.30);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 13, 35.80);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 14, 36.10);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 15, 36.60);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 16, 36.40);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 17, 36.30);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 18, 36.40);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 19, 36.10);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgfwqk_zj20rtwdsjqk_qs` VALUES (NULL, NULL, NULL, 20, 36.10);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ggwhcgkfqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ggwhcgkfqk_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_ggwhcgkfqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_公共文化场馆开放情况_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ggwhcgkfqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 1, '各场馆开馆时间', '大东图书馆', '9:00', NULL);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 2, '各场馆开馆时间', '大东少儿图书馆', '9:00', NULL);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 3, '各场馆开馆时间', '于洪图书馆', '9:00', NULL);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 4, '各场馆开馆时间', '沈北新区图书馆', '9:00', NULL);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 5, '各场馆开馆时间', '康平图书馆', '9:00', NULL);
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 1, '各场馆七日累计开放时间', '和平文化镇', '4', '天');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 2, '各场馆七日累计开放时间', '分拣中心', '4', '天');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 3, '各场馆七日累计开放时间', '沈河图书馆', '4', '天');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 4, '各场馆七日累计开放时间', '和平图书馆', '4', '天');
INSERT INTO `t_ywym_ywtg_hyw_ggwhcgkfqk_zb` VALUES (NULL, NULL, NULL, 5, '各场馆七日累计开放时间', '沈阳少儿图书馆', '4', '天');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_j14trzrszs_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_j14trzrszs_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_j14trzrszs_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rs` decimal(10, 0) NULL DEFAULT NULL COMMENT '人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_近14天入住人数走势_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_j14trzrszs_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 1, '3', 34);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 2, '4', 54);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 3, '5', 67);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 4, '6', 45);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 5, '7', 63);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 6, '8', 44);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 7, '9', 45);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 8, '10', 57);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 9, '11', 45);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 10, '12', 39);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 11, '13', 76);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 12, '14', 46);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 13, '15', 34);
INSERT INTO `t_ywym_ywtg_hyw_j14trzrszs_qs` VALUES (NULL, NULL, NULL, 14, '16', 57);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_jqykzs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_jqykzs_zzt`;
CREATE TABLE `t_ywym_ywtg_hyw_jqykzs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rc` decimal(10, 0) NULL DEFAULT NULL COMMENT '人次',
  `sjfl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间分类'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_景区游客走势_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_jqykzs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 1, '01', 235, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 2, '02', 232, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 3, '03', 456, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 4, '04', 452, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 5, '05', 234, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 6, '06', 100, '月');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 1, '03/01', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 2, '03/02', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 3, '03/03', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 4, '03/04', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 5, '03/05', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jqykzs_zzt` VALUES (NULL, NULL, NULL, 6, '03/06', 10, '日');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_jrjqdryy_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_jrjqdryy_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_jrjqdryy_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rc` decimal(10, 0) NULL DEFAULT NULL COMMENT '人次'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_接入景区当日预约_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_jrjqdryy_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 1, '00:00', 0);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 2, '02:00', 2);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 3, '04:00', 15);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 4, '06:00', 24);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 5, '08:00', 38);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 6, '10:00', 100);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 7, '12:00', 345);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 8, '14:00', 339);
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_qs` VALUES (NULL, NULL, NULL, 9, '16:00', 234);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_jrjqdryy_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_jrjqdryy_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_jrjqdryy_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_接入景区当日预约_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_jrjqdryy_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_jrjqdryy_zb` VALUES (NULL, NULL, NULL, 1, '接入景区当日预约人次', 1231, '人次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_jrjqlsyyzs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt`;
CREATE TABLE `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rc` decimal(10, 0) NULL DEFAULT NULL COMMENT '人次',
  `sjfl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间分类'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_接入景区历史预约走势_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_jrjqlsyyzs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 1, '8', 234, '当日预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 2, '12', 345, '当日预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 3, '16', 456, '当日预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 4, '20', 344, '当日预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 5, '24', 345, '当日预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 1, '01', 234, '历史预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 2, '02', 345, '历史预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 3, '03', 456, '历史预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 4, '04', 344, '历史预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 5, '05', 345, '历史预约');
INSERT INTO `t_ywym_ywtg_hyw_jrjqlsyyzs_zzt` VALUES (NULL, NULL, NULL, 6, '06', 386, '历史预约');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_jrjqykzs_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_jrjqykzs_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_jrjqykzs_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rc` decimal(10, 0) NULL DEFAULT NULL COMMENT '人次',
  `sjfl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间分类'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_接入景区游客走势_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_jrjqykzs_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 1, '01', 235, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 2, '02', 232, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 3, '03', 456, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 4, '04', 452, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 5, '05', 234, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 6, '06', 100, '月');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 1, '03/01', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 2, '03/02', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 3, '03/03', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 4, '03/04', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 5, '03/05', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_jrjqykzs_qs` VALUES (NULL, NULL, NULL, 6, '03/06', 10, '日');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_lyjd_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_lyjd_dd`;
CREATE TABLE `t_ywym_ywtg_hyw_lyjd_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `high` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高度',
  `jdmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点名称',
  `jdbhzs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点饱和指数',
  `lxfs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `dz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `jdjdrcsx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点接待人次上限',
  `dqykrs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前游客人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_旅游景点_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_lyjd_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_lyjd_dd` VALUES (NULL, NULL, NULL, 2, '1.29', '-2.9', '200', '沈阳怪坡风景区', '48%', '021-127328', '和平区解放路8号', '30000', '25000');
INSERT INTO `t_ywym_ywtg_hyw_lyjd_dd` VALUES (NULL, NULL, NULL, 4, '-1.54', '-7.19', '200', '张氏帅府', '48%', '021-127328', '和平区解放路8号', '30000', '25000');
INSERT INTO `t_ywym_ywtg_hyw_lyjd_dd` VALUES (NULL, NULL, NULL, 3, '-1.66', '-11.21', '200', '沈阳故宫', '48%', '021-127328', '和平区解放路8号', '30000', '25000');
INSERT INTO `t_ywym_ywtg_hyw_lyjd_dd` VALUES (NULL, NULL, NULL, 5, '-4.36', '-1.92', '200', '关东影视城', '48%', '021-127328', '和平区解放路8号', '30000', '25000');
INSERT INTO `t_ywym_ywtg_hyw_lyjd_dd` VALUES (NULL, NULL, NULL, 1, '-4.46', '-14.41', '200', '北陵公园', '48%', '021-127328', '和平区解放路8号', '30000', '25000');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_qcrmjdtop5_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_qcrmjdtop5_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_qcrmjdtop5_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_全城热门酒店Top5_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_qcrmjdtop5_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_qcrmjdtop5_zb` VALUES (NULL, NULL, NULL, 1, '沈阳世贸希尔顿酒店');
INSERT INTO `t_ywym_ywtg_hyw_qcrmjdtop5_zb` VALUES (NULL, NULL, NULL, 2, '沈阳瑞士酒店');
INSERT INTO `t_ywym_ywtg_hyw_qcrmjdtop5_zb` VALUES (NULL, NULL, NULL, 3, '沈阳天丰国际酒店');
INSERT INTO `t_ywym_ywtg_hyw_qcrmjdtop5_zb` VALUES (NULL, NULL, NULL, 4, '沈阳和平艾美酒店');
INSERT INTO `t_ywym_ywtg_hyw_qcrmjdtop5_zb` VALUES (NULL, NULL, NULL, 5, '沈阳丽都索菲特酒店');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_rzbltjfx_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_rzbltjfx_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_rzbltjfx_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_入住办理统计分析_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_rzbltjfx_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_rzbltjfx_zb` VALUES (NULL, NULL, NULL, 1, '身份证核验次数', 4565, '次');
INSERT INTO `t_ywym_ywtg_hyw_rzbltjfx_zb` VALUES (NULL, NULL, NULL, 2, '健康码核验次数', 4562, '次');
INSERT INTO `t_ywym_ywtg_hyw_rzbltjfx_zb` VALUES (NULL, NULL, NULL, 3, '行程码核验次数', 2354, '次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_rzhycsfx_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_rzhycsfx_zzt`;
CREATE TABLE `t_ywym_ywtg_hyw_rzhycsfx_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sjlx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_入住核验次数分析_柱状图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_rzhycsfx_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 1, '本周', 43, '身份证', '周一');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 2, '本周', 43, '身份证', '周二');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 3, '本周', 33, '身份证', '周三');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 4, '本周', 43, '身份证', '周四');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 5, '本周', 36, '身份证', '周五');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 6, '本周', 43, '身份证', '周六');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 7, '本周', 59, '身份证', '周日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 1, '本月', 43, '身份证', '1日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 2, '本月', 43, '身份证', '2日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 3, '本月', 33, '身份证', '3日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 4, '本月', 43, '身份证', '4日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 5, '本月', 36, '身份证', '5日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 6, '本月', 43, '身份证', '6日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 7, '本月', 59, '身份证', '7日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 1, '本年', 543, '身份证', '1月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 2, '本年', 734, '身份证', '2月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 3, '本年', 236, '身份证', '3月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 1, '本周', 48, '行程码', '周一');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 2, '本周', 48, '行程码', '周二');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 3, '本周', 48, '行程码', '周三');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 4, '本周', 48, '行程码', '周四');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 5, '本周', 33, '行程码', '周五');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 6, '本周', 33, '行程码', '周六');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 7, '本周', 48, '行程码', '周日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 1, '本月', 48, '行程码', '1日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 2, '本月', 48, '行程码', '2日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 3, '本月', 48, '行程码', '3日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 4, '本月', 48, '行程码', '4日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 5, '本月', 48, '行程码', '5日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 6, '本月', 48, '行程码', '6日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 7, '本月', 48, '行程码', '7日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 1, '本年', 48, '行程码', '1月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 2, '本年', 48, '行程码', '2月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 3, '本年', 48, '行程码', '3月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 1, '本周', 33, '健康码', '周一');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 2, '本周', 48, '健康码', '周二');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 3, '本周', 48, '健康码', '周三');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 4, '本周', 33, '健康码', '周四');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 5, '本周', 48, '健康码', '周五');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 6, '本周', 48, '健康码', '周六');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (1, NULL, NULL, 7, '本周', 48, '健康码', '周日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 1, '本月', 48, '健康码', '1日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 2, '本月', 48, '健康码', '2日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 3, '本月', 48, '健康码', '3日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 4, '本月', 345, '健康码', '4日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 5, '本月', 48, '健康码', '5日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 6, '本月', 566, '健康码', '6日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (2, NULL, NULL, 7, '本月', 345, '健康码', '7日');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 1, '本年', 764, '健康码', '1月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 2, '本年', 566, '健康码', '2月');
INSERT INTO `t_ywym_ywtg_hyw_rzhycsfx_zzt` VALUES (3, NULL, NULL, 3, '本年', 764, '健康码', '3月');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_rzrszs_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_rzrszs_qs`;
CREATE TABLE `t_ywym_ywtg_hyw_rzrszs_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `rc` decimal(10, 0) NULL DEFAULT NULL COMMENT '人次',
  `sjfl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间分类'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_入住人数走势_趋势' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_rzrszs_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 1, '01', 235, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 2, '02', 232, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 3, '03', 456, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 4, '04', 452, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 5, '05', 234, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 6, '06', 100, '月');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 1, '01', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 2, '02', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 3, '03', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 4, '04', 45, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 5, '05', 23, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 6, '06', 10, '日');
INSERT INTO `t_ywym_ywtg_hyw_rzrszs_qs` VALUES (NULL, NULL, NULL, 7, '07', 34, '日');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hyw_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_数据赋能_标题与球对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '沈阳上', '健康码', '20秒入园');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '沈阳上', '市民码', '20秒入园');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '20秒入园', '企业下', '美团', '20秒入园');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '沈阳上', '健康码', '20秒入园(当日)');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '沈阳上', '市民码', '20秒入园(当日)');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业上', '中央预定', '实名制分时预约');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '企业上', '在线预定', '实名制分时预约');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '20秒入园', '社会', 'OTA', '实名制分时预约');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业上', '在线预定', '景区游客走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '企业上', '中央预定', '景区游客走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业上', '中央预定', '接入景区游客走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业上', '在线预定', '接入景区历史预约人次走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '社会', 'OTA', '接入景区历史预约人次走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业上', '在线预定', '图游沈阳');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '20秒入园', '社会', 'TA', '图游沈阳');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '20秒入园', '沈阳上', '交通管理平台', '图游沈阳');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '20秒入园', '沈阳上', '好停车系统', '图游沈阳');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '社会', 'OTA', '30秒入住');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业上', '在线预定', '30秒入住');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '企业下', '星级酒店', '30秒入住');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '30秒入住', '企业下', '非星级酒店', '30秒入住');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '30秒入住', '沈阳上', '健康码', '30秒入住');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '社会', 'OTA', '宾客分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业上', '在线预定', '宾客分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '企业下', '星级酒店', '宾客分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '30秒入住', '企业下', '非星级酒店', '宾客分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '30秒入住', '沈阳上', '健康码', '宾客分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '企业上', '在线预定', '入住办理统计分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业下', '星级酒店', '入住办理统计分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '企业下', '非星级酒店', '入住办理统计分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '30秒入住', '沈阳上', '健康码', '入住办理统计分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '30秒入住', '沈阳上', '市民码', '入住办理统计分析');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '企业上', '在线预定', '入住人数走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业下', '星级酒店', '入住人数走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '企业下', '非星级酒店', '入住人数走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '30秒入住', '沈阳上', '健康码', '入住人数走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '30秒入住', '沈阳上', '市民码', '入住人数走势');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '企业下', '星级酒店', '全域热门酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业下', '非星级酒店', '全域热门酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '沈阳下', '市场监督管理局', '全域热门酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '企业下', '星级酒店', '宾客满意度酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '30秒入住', '企业下', '非星级酒店', '宾客满意度酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '30秒入住', '沈阳下', '市场监督管理局', '宾客满意度酒店Top5');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '30秒入住', '企业下', '星级酒店', '重要酒店');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '20秒入园', '企业下', '携程', '重要景点');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, NULL, '沈阳下', '城乡建设局', '一码一馆');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, NULL, '社会', 'OTA', '一码一馆');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, NULL, '沈阳上', '好停车系统', '一码一馆');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, NULL, '沈阳上', '好停车系统', '公共文化场馆开放情况');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, NULL, '沈阳上', '健康码', '公共文化场馆开放情况');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, NULL, '沈阳上', '好停车系统', '公共文化场馆服务情况');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, NULL, '沈阳上', '健康码', '公共文化场馆服务情况');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, NULL, '沈阳上', '市民码', '公共文化场馆服务情况');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hyw_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_数据赋能_数据来源(球数量)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '30秒入住', '社会', 'TA');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '30秒入住', '社会', 'OTA');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '30秒入住', '企业上', '中央预定');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '30秒入住', '企业上', '饭店资产管理');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '30秒入住', '企业上', '票务系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '30秒入住', '企业上', '语音讲解');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '30秒入住', '企业上', '手绘系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '30秒入住', '企业上', '在线预定');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '30秒入住', '企业下', '星级酒店');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '30秒入住', '企业下', '美团');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '30秒入住', '企业下', '携程');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '30秒入住', '企业下', '非星级酒店');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '30秒入住', '沈阳上', '旅业PSB登记');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '30秒入住', '沈阳上', '特行管理');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '30秒入住', '沈阳上', '防疫政策');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 16, '30秒入住', '沈阳上', '风险地区发布');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 17, '30秒入住', '沈阳上', '一所身份核验');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 18, '30秒入住', '沈阳上', '健康码');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 19, '30秒入住', '沈阳上', '市民码');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 20, '30秒入住', '沈阳上', '交通管理平台');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 21, '30秒入住', '沈阳上', '好停车系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 22, '30秒入住', '沈阳上', '食品监管系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 23, '30秒入住', '沈阳上', '工商管理系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 24, '30秒入住', '沈阳中', '部级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 25, '30秒入住', '沈阳中', '省级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 26, '30秒入住', '沈阳中', '市级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 27, '30秒入住', '沈阳下', '信息中心');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 28, '30秒入住', '沈阳下', '交通局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 29, '30秒入住', '沈阳下', '城乡建设局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 30, '30秒入住', '沈阳下', '市场监督管理局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 31, '30秒入住', '沈阳下', '公安局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 32, '30秒入住', '沈阳下', '公安部');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '20秒入园', '社会', 'TA');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '20秒入园', '社会', 'OTA');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '20秒入园', '企业上', '中央预定');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '20秒入园', '企业上', '饭店资产管理');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '20秒入园', '企业上', '票务系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '20秒入园', '企业上', '语音讲解');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '20秒入园', '企业上', '手绘系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '20秒入园', '企业上', '在线预定');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '20秒入园', '企业下', '星级酒店');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '20秒入园', '企业下', '美团');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '20秒入园', '企业下', '携程');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '20秒入园', '企业下', '非星级酒店');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '20秒入园', '沈阳上', '旅业PSB登记');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 14, '20秒入园', '沈阳上', '特行管理');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 15, '20秒入园', '沈阳上', '防疫政策');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 16, '20秒入园', '沈阳上', '风险地区发布');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 17, '20秒入园', '沈阳上', '一所身份核验');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 18, '20秒入园', '沈阳上', '健康码');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 19, '20秒入园', '沈阳上', '市民码');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 20, '20秒入园', '沈阳上', '交通管理平台');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 21, '20秒入园', '沈阳上', '好停车系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 22, '20秒入园', '沈阳上', '食品监管系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 23, '20秒入园', '沈阳上', '工商管理系统');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 24, '20秒入园', '沈阳中', '部级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 25, '20秒入园', '沈阳中', '省级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 26, '20秒入园', '沈阳中', '市级政府部门');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 27, '20秒入园', '沈阳下', '信息中心');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 28, '20秒入园', '沈阳下', '交通局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 29, '20秒入园', '沈阳下', '城乡建设局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 30, '20秒入园', '沈阳下', '市场监督管理局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 31, '20秒入园', '沈阳下', '公安局');
INSERT INTO `t_ywym_ywtg_hyw_sjfn_sjly` VALUES (NULL, NULL, NULL, 32, '20秒入园', '沈阳下', '公安部');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_smzfsyy_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_smzfsyy_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_smzfsyy_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `sjlx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_实名制分时预约_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_smzfsyy_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 1, '购票预约游玩人数', 234, '人', '本日');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 2, '健康码对比次数', 435, '次', '本日');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 3, '免费预约游玩人数', 234, '人', '本日');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 1, '购票预约游玩人数', 1231, '人', '本周');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 2, '健康码对比次数', 2342, '次', '本周');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 3, '免费预约游玩人数', 2343, '人', '本周');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 1, '购票预约游玩人数', 12312, '人', '本月');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 2, '健康码对比次数', 23424, '次', '本月');
INSERT INTO `t_ywym_ywtg_hyw_smzfsyy_zb` VALUES (NULL, NULL, NULL, 3, '免费预约游玩人数', 23432, '人', '本月');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp`;
CREATE TABLE `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片url',
  `tpbt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_图游沈阳_全域热门景区Top5_图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp` VALUES (NULL, NULL, NULL, 1, 'https://img0.baidu.com/it/u=4020881649,402711436&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375', '北陵公园');
INSERT INTO `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp` VALUES (NULL, NULL, NULL, 2, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.dahepiao.com%2Fuploads%2F181123%2F71704-1Q1231KU4E6.jpg&refer=http%3A%2F%2Fimg.dahepiao.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651835702&t=35b36b9ecc0eeaacacb2ee367851985b', '沈阳怪坡风景区');
INSERT INTO `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp` VALUES (NULL, NULL, NULL, 3, 'https://img1.baidu.com/it/u=3261564186,1620959800&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', '沈阳故宫');
INSERT INTO `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp` VALUES (NULL, NULL, NULL, 4, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fnimg.ws.126.net%2F%3Furl%3Dhttp%253A%252F%252Fdingyue.ws.126.net%252F2021%252F0704%252F9ad87f29j00qvorog001wc000hs00bvc.jpg%26thumbnail%3D650x2147483647%26quality%3D80%26type%3Djpg&refer=http%3A%2F%2Fnimg.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651835679&t=b7d961799e3f79b17769d5ee3532f881', '张氏帅府');
INSERT INTO `t_ywym_ywtg_hyw_tysy_qyrmjqtop5_tp` VALUES (NULL, NULL, NULL, 5, 'https://img0.baidu.com/it/u=2462632642,2252477935&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500', '关东影视城');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp`;
CREATE TABLE `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片url',
  `tpbt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_图游沈阳_游客接待满意度Top5_图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp` VALUES (NULL, NULL, NULL, 1, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fnimg.ws.126.net%2F%3Furl%3Dhttp%253A%252F%252Fdingyue.ws.126.net%252F2021%252F0704%252F9ad87f29j00qvorog001wc000hs00bvc.jpg%26thumbnail%3D650x2147483647%26quality%3D80%26type%3Djpg&refer=http%3A%2F%2Fnimg.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651835679&t=b7d961799e3f79b17769d5ee3532f881', '张氏帅府');
INSERT INTO `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp` VALUES (NULL, NULL, NULL, 2, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.dahepiao.com%2Fuploads%2F181123%2F71704-1Q1231KU4E6.jpg&refer=http%3A%2F%2Fimg.dahepiao.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651835702&t=35b36b9ecc0eeaacacb2ee367851985b', '沈阳怪坡风景区');
INSERT INTO `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp` VALUES (NULL, NULL, NULL, 3, 'https://img1.baidu.com/it/u=3261564186,1620959800&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', '沈阳故宫');
INSERT INTO `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp` VALUES (NULL, NULL, NULL, 4, 'https://img0.baidu.com/it/u=4020881649,402711436&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375', '北陵公园');
INSERT INTO `t_ywym_ywtg_hyw_tysy_ykjdmydtop5_tp` VALUES (NULL, NULL, NULL, 5, 'https://img0.baidu.com/it/u=2462632642,2252477935&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500', '关东影视城');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_xjjd_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_xjjd_dd`;
CREATE TABLE `t_ywym_ywtg_hyw_xjjd_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `high` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高度',
  `jdmc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `dz` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `lxfs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `jdbhzs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店饱和指数',
  `dqzkrs` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前住客人数'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_星级酒店_打点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_xjjd_dd
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_xjjd_dd` VALUES (NULL, NULL, NULL, 2, '1.29', '-2.9', '200', '沈阳盛京之星酒店', '和平区解放路18号', '021-878767', '98', '200');
INSERT INTO `t_ywym_ywtg_hyw_xjjd_dd` VALUES (NULL, NULL, NULL, 3, '-1.54', '-7.19', '200', '沈阳世茂希尔顿酒店', '和平区解放路18号', '021-878767', '98', '200');
INSERT INTO `t_ywym_ywtg_hyw_xjjd_dd` VALUES (NULL, NULL, NULL, 4, '-1.66', '-11.21', '200', '沈阳山景花园酒店', '和平区解放路18号', '021-878767', '98', '200');
INSERT INTO `t_ywym_ywtg_hyw_xjjd_dd` VALUES (NULL, NULL, NULL, 5, '-4.36', '-1.92', '200', '沈阳华强诺华庭酒店', '和平区解放路18号', '021-878767', '98', '200');
INSERT INTO `t_ywym_ywtg_hyw_xjjd_dd` VALUES (NULL, NULL, NULL, 1, '-4.46', '-14.41', '200', '沈阳长岛司机酒店', '和平区解放路18号', '021-878767', '98', '200');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_页面_指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 1, '接入景区总数', 2312, '家');
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 2, '景点饱和指数', 80, '%');
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 3, '20秒入园使用率', 78, '%');
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 4, '星级酒店接入数量', 342, '家');
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 5, '30秒入住使用率', 89, '%');
INSERT INTO `t_ywym_ywtg_hyw_ym_zb` VALUES (NULL, NULL, NULL, 6, '酒店饱和指数', 80, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hyw_ymyg_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hyw_ymyg_zb`;
CREATE TABLE `t_ywym_ywtg_hyw_ymyg_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好游玩_一码一馆_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hyw_ymyg_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hyw_ymyg_zb` VALUES (NULL, NULL, NULL, 1, '当日服务人数', 1650);
INSERT INTO `t_ywym_ywtg_hyw_ymyg_zb` VALUES (NULL, NULL, NULL, 2, '本月累计服务人数', 27600);
INSERT INTO `t_ywym_ywtg_hyw_ymyg_zb` VALUES (NULL, NULL, NULL, 3, '公共文化场馆开放数量', 102);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_czcxfq_qy_hb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_czcxfq_qy_hb`;
CREATE TABLE `t_ywym_ywtg_hzc_czcxfq_qy_hb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `hp` decimal(10, 0) NULL DEFAULT NULL COMMENT '和平区',
  `hg` decimal(10, 0) NULL DEFAULT NULL COMMENT '皇姑区',
  `hn` decimal(10, 0) NULL DEFAULT NULL COMMENT '浑南区',
  `sh` decimal(10, 0) NULL DEFAULT NULL COMMENT '沈河区',
  `tx` decimal(10, 0) NULL DEFAULT NULL COMMENT '铁西区',
  `sbx` decimal(10, 0) NULL DEFAULT NULL COMMENT '沈北新区',
  `dd` decimal(10, 0) NULL DEFAULT NULL COMMENT '大东区',
  `sjt` decimal(10, 0) NULL DEFAULT NULL COMMENT '苏家屯区',
  `yh` decimal(10, 0) NULL DEFAULT NULL COMMENT '于洪区',
  `kp` decimal(10, 0) NULL DEFAULT NULL COMMENT '康平县',
  `lz` decimal(10, 0) NULL DEFAULT NULL COMMENT '辽中区',
  `fk` decimal(10, 0) NULL DEFAULT NULL COMMENT '法库县',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_出租车消费券_区域_横表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_czcxfq_qy_hb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_hb` VALUES (NULL, NULL, NULL, NULL, 253, 236, 123, 145, 253, 223, 213, 56, 89, 94, 156, 187, '张');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_czcxfq_qy_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_czcxfq_qy_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_czcxfq_qy_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_出租车消费券_区域_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_czcxfq_qy_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 1, '和平区', 650, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 2, '皇姑区', 263, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 3, '浑南区', 378, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 4, '沈河区', 52, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 5, '铁西区', 120, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 6, '沈北新区', 422, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 7, '大东区', 65, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 8, '苏家屯区', 376, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 9, '于洪区', 420, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 10, '康平县', 26, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 11, '辽中区', 456, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_qy_zb` VALUES (NULL, NULL, NULL, 12, '法库县', 39, '张');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt`;
CREATE TABLE `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `sj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_出租车消费券_消费券申领趋势_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 1, '03-12', 2653);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 2, '03-13', 1235);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 3, '03-14', 2431);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 4, '03-15', 1235);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 5, '03-16', 2111);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 6, '03-17', 2036);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 7, '03-18', 2065);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 8, '03-19', 1985);
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_xfqslqs_zzt` VALUES (NULL, NULL, NULL, 9, '03-20', 1756);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_czcxfq_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_czcxfq_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_czcxfq_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_出租车消费券_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_czcxfq_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_zb` VALUES (NULL, NULL, NULL, 1, '消费券发放总数', 13065.00, '张');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_zb` VALUES (NULL, NULL, NULL, 2, '消费券发放总额', 65802.00, '元');
INSERT INTO `t_ywym_ywtg_hzc_czcxfq_zb` VALUES (NULL, NULL, NULL, 3, '消费券使用比例', 89.85, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_qy_dd
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_qy_dd`;
CREATE TABLE `t_ywym_ywtg_hzc_qy_dd`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qymc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `ddlx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打点类型',
  `qx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县',
  `jd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道',
  `sq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社区',
  `sqqy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '社区区域',
  `lon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_企业_打点' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_qy_dd
-- ----------------------------

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_qyrkqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_qyrkqk_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_qyrkqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qylx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业类型',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(15, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_企业入库情况_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_qyrkqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 1, '批零住餐', '本年企业总营收', 28659.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 2, '批零住餐', '本年企业总纳税', 3100.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 3, '批零住餐', '本年企业总产值', 87562.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 4, '批零住餐', '本年已补贴兑现', 609.3200, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 1, '工业企业', '本年企业总营收', 28564.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 2, '工业企业', '本年企业总纳税', 2922.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 3, '工业企业', '本年企业总产值', 56845.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 4, '工业企业', '本年已补贴兑现', 506.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 1, '服务业企业', '本年企业总营收', 28659.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 2, '服务业企业', '本年企业总纳税', 3100.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 3, '服务业企业', '本年企业总产值', 87562.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 4, '服务业企业', '本年已补贴兑现', 609.3200, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 1, '房地产企业', '本年企业总营收', 28564.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 2, '房地产企业', '本年企业总纳税', 2922.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 3, '房地产企业', '本年企业总产值', 56845.0000, '万元');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqk_zb` VALUES (NULL, NULL, NULL, 4, '房地产企业', '本年已补贴兑现', 506.0000, '万元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb`;
CREATE TABLE `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qylx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业类型',
  `qymc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `cfsx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚事项',
  `cfsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚时间',
  `cfxs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处罚形式'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_企业入库情况_企业处罚信息列表_列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 1, '工业企业', '企业E', '污染环境', '2021-12-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 1, '批零住餐', '企业A', '污染环境', '2020-09-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 2, '批零住餐', '企业B', '违规用电', '2021-05-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 3, '批零住餐', '企业C', '污染环境', '2020-08-11', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 2, '工业企业', '企业F', '违规用电', '2020-09-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 4, '批零住餐', '企业D', '违规用电', '2020-09-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 1, '服务业企业', '企业G', '污染环境', '2020-09-12', '罚款');
INSERT INTO `t_ywym_ywtg_hzc_qyrkqkqycfxxlb_lb` VALUES (NULL, NULL, NULL, 1, '房地产企业', '企业H', '违规用电', '2020-09-12', '罚款');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt`;
CREATE TABLE `t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人才类型',
  `rczs` decimal(10, 0) NULL DEFAULT NULL COMMENT '人才总数',
  `ydxzb` decimal(10, 0) NULL DEFAULT NULL COMMENT '已兑现人数',
  `zb` decimal(10, 2) NULL DEFAULT NULL COMMENT '占比'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_人才购房_各类人才已兑现占比_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt` VALUES (NULL, NULL, NULL, 1, '大学生', 2530, 2235, 89.00);
INSERT INTO `t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt` VALUES (NULL, NULL, NULL, 2, '技师', 1365, 1009, 87.56);
INSERT INTO `t_ywym_ywtg_hzc_rcgf_glrcydxzb_zzt` VALUES (NULL, NULL, NULL, 3, '高层次人才', 1109, 899, 73.90);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_rcgf_rcdyfb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `dy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地域',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_人才购房_人才地域分布_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_rcgf_rcdyfb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 1, '和平区', 3230, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 2, '沈河区', 3120, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 3, '大东区', 2560, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 4, '皇姑区', 1900, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 5, '铁西区', 2230, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 6, '苏家屯区', 2107, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_rcdyfb_zb` VALUES (NULL, NULL, NULL, 7, '于洪区', 2259, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_rcgf_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_rcgf_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_rcgf_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(10, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_人才购房_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_rcgf_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_rcgf_zb` VALUES (NULL, NULL, NULL, 1, '人才总数', 352711.00, '人');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_zb` VALUES (NULL, NULL, NULL, 2, '大学生', 54.00, '%');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_zb` VALUES (NULL, NULL, NULL, 3, '高层次人才', 32.00, '%');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_zb` VALUES (NULL, NULL, NULL, 4, '技师', 16.00, '%');
INSERT INTO `t_ywym_ywtg_hzc_rcgf_zb` VALUES (NULL, NULL, NULL, 5, '已兑现补贴总额', 35462.00, '元');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_sjfn_btyqdygx
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_sjfn_btyqdygx`;
CREATE TABLE `t_ywym_ywtg_hzc_sjfn_btyqdygx`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `bt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_数据赋能_标题与球对应关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_sjfn_btyqdygx
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '国家级政府部门', '政策清单');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳底层', '省级政府部门', '政策清单');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '市级政府部门', '政策清单');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳上', '税务信息平台', '政策执行');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '市信息中心', '政策执行');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '市级政府部门', '政策执行');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳下', '市统计局', '政策执行');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '市级政府部门', '页面指标');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳上', '企业收入情况信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳中上', '施工许可证信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳中上', '企业工商注册信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳中上', '工商处罚信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '沈阳中上', '工业法人信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 6, '沈阳中上', '高新技术企业证书信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 7, '沈阳上', '规上工业企业信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 8, '沈阳上', '不动产权证书信息系统', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 9, '沈阳底层', '省级政府部门', '企业入库情况');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳下', '市信息中心', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '教育局', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳中下', '网签合同信息系统', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳中下', '毕业证信息系统', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 5, '沈阳中下', '房地产企业信息系统', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 6, '沈阳中下', '户籍系统', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 7, '沈阳中下', '身份证信息管理系统', '人才购房');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 1, '沈阳下', '市场监督管理局', '出租车消费券');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 2, '沈阳下', '市信息中心', '出租车消费券');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 3, '沈阳上', '税务信息平台', '出租车消费券');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_btyqdygx` VALUES (NULL, NULL, NULL, 4, '沈阳上', '税务处罚信息系统', '出租车消费券');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_sjfn_sjly
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_sjfn_sjly`;
CREATE TABLE `t_ywym_ywtg_hzc_sjfn_sjly`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zslx` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中枢类型',
  `sjly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_数据赋能_数据来源(球数量)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_sjfn_sjly
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳上', '规上批零住餐企业信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳上', '规上服务业企业信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳上', '规上工业企业信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳上', '不动产权证书信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳上', '资质房地产开发企业信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳上', '税务信息平台');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳上', '税务处罚信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳上', '企业信用数据信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳上', '企业收入情况信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳中上', '施工许可证信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳中上', '企业工商注册信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳中上', '工商处罚信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳中上', '工业法人信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳中上', '高新技术企业证书信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳中上', '社保缴纳平台');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳中上', '社保证明信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳中上', '房地产项目名称');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳中下', '网签合同信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳中下', '毕业证信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳中下', '房地产企业信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳中下', '户籍系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳中下', '身份证信息管理系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳中下', '外籍留学生护照信息系统');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳下', '社保中心');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳下', '市自然资源局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳下', '市统计局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 4, '沈阳下', '市水务局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 5, '沈阳下', '市信息中心');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 6, '沈阳下', '教育局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 7, '沈阳下', '市场监督管理局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 8, '沈阳下', '科技局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 9, '沈阳下', '公安局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 10, '沈阳下', '公安部');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 11, '沈阳下', '房产局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 12, '沈阳下', '城乡建设局');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 13, '沈阳下', '住建厅');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 1, '沈阳底层', '国家级政府部门');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 2, '沈阳底层', '省级政府部门');
INSERT INTO `t_ywym_ywtg_hzc_sjfn_sjly` VALUES (NULL, NULL, NULL, 3, '沈阳底层', '市级政府部门');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_ym_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_ym_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_ym_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 2) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_页面_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_ym_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_ym_zb` VALUES (NULL, NULL, NULL, 1, '政策总数', 162.00, '条');
INSERT INTO `t_ywym_ywtg_hzc_ym_zb` VALUES (NULL, NULL, NULL, 2, '政策直达执行金额', 58265102.00, '元');
INSERT INTO `t_ywym_ywtg_hzc_ym_zb` VALUES (NULL, NULL, NULL, 3, '好评率', 98.30, '%');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_zcqd_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_zcqd_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_zcqd_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `fbsj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布时间',
  `fbdw` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_政策清单_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_zcqd_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 3, '人才住房保障支持项目二期', '2020年7月13日', '住房办发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 5, '新成长高级技师成长项目二期', '2021年2月23日', '市政府发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 4, '人才住房保障支持项目三期', '2020年7月18日', '住房办发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 6, '人才住房保障支持项目四期', '2021年5月18日', '住房办发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 7, '新成长高级技师成长项目二期', '2020年6月13日', '市政府发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 1, '人才住房保障支持项目', '2020年4月1日', '住房办发布');
INSERT INTO `t_ywym_ywtg_hzc_zcqd_zb` VALUES (NULL, NULL, NULL, 2, '新成长高级技师成长项目', '2020年4月5日', '市政府发布');

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_zczx_clyydxds_zzt
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_zczx_clyydxds_zzt`;
CREATE TABLE `t_ywym_ywtg_hzc_zczx_clyydxds_zzt`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `qy` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` decimal(10, 0) NULL DEFAULT NULL COMMENT '值'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_政策执行_存量异议兑现单数_柱状图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_zczx_clyydxds_zzt
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 1, '全市', 859);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 2, '沈河区', 95);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 3, '和平区', 36);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 4, '大东区', 54);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 5, '皇姑区', 86);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 6, '铁西区', 95);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 7, '苏家屯区', 25);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 8, '浑南区', 48);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 9, '沈北新区', 65);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 10, '于洪区', 84);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 11, '辽中区', 52);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 12, '新民市', 75);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 13, '康平县', 66);
INSERT INTO `t_ywym_ywtg_hzc_zczx_clyydxds_zzt` VALUES (NULL, NULL, NULL, 14, '法库县', 98);

-- ----------------------------
-- Table structure for t_ywym_ywtg_hzc_zczxqk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_hzc_zczxqk_zb`;
CREATE TABLE `t_ywym_ywtg_hzc_zczxqk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(15, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '好政策_政策执行_政策执行情况_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_hzc_zczxqk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_hzc_zczxqk_zb` VALUES (NULL, NULL, NULL, 1, '已申报企业', 267.0000, '个');
INSERT INTO `t_ywym_ywtg_hzc_zczxqk_zb` VALUES (NULL, NULL, NULL, 2, '已兑付资金', 2018.2500, '万元');
INSERT INTO `t_ywym_ywtg_hzc_zczxqk_zb` VALUES (NULL, NULL, NULL, 3, '已兑付企业', 258.0000, '个');
INSERT INTO `t_ywym_ywtg_hzc_zczxqk_zb` VALUES (NULL, NULL, NULL, 4, '受益主体', 2068.0000, '人');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_gxjhptgk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_gxjhptgk_zb`;
CREATE TABLE `t_ywym_ywtg_zs_gxjhptgk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_共享交换平台概况_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_gxjhptgk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_gxjhptgk_zb` VALUES (NULL, NULL, NULL, 1, '接入数据总量', 125643, '条');
INSERT INTO `t_ywym_ywtg_zs_gxjhptgk_zb` VALUES (NULL, NULL, NULL, 2, '调用数据总量', 253456, '次');
INSERT INTO `t_ywym_ywtg_zs_gxjhptgk_zb` VALUES (NULL, NULL, NULL, 3, '共享数据总量', 146625, '条');
INSERT INTO `t_ywym_ywtg_zs_gxjhptgk_zb` VALUES (NULL, NULL, NULL, 4, '接入单位', 152, '家');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_gzzyml_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_gzzyml_zb`;
CREATE TABLE `t_ywym_ywtg_zs_gzzyml_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_挂载资源目录_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_gzzyml_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 1, '挂载资源目录总数', 7894, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 2, '市场监督管理局', 1235, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 3, '房改资金管理系统', 879, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 4, '政务数据交换平台', 785, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 5, '社会组织服务管理平台', 654, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 6, '户外广告管理系统', 541, '个');
INSERT INTO `t_ywym_ywtg_zs_gzzyml_zb` VALUES (NULL, NULL, NULL, 7, '商品房预售资金监管系统', 341, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_jrapi_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_jrapi_zb`;
CREATE TABLE `t_ywym_ywtg_zs_jrapi_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_接入API_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_jrapi_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 1, '接入API接口总数', 7894, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 2, '市场监督管理局', 1235, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 3, '房改资金管理系统', 879, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 4, '政务数据交换平台', 785, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 5, '社会组织服务管理平台', 654, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 6, '户外广告管理系统', 541, '个');
INSERT INTO `t_ywym_ywtg_zs_jrapi_zb` VALUES (NULL, NULL, NULL, 7, '商品房预售资金监管系统', 341, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_jrkb_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_jrkb_zb`;
CREATE TABLE `t_ywym_ywtg_zs_jrkb_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_接入库表_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_jrkb_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 1, '接入A库表总数', 7894, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 2, '市场监督管理局', 1235, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 3, '房改资金管理系统', 879, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 4, '政务数据交换平台', 785, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 5, '社会组织服务管理平台', 654, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 6, '户外广告管理系统', 541, '个');
INSERT INTO `t_ywym_ywtg_zs_jrkb_zb` VALUES (NULL, NULL, NULL, 7, '商品房预售资金监管系统', 341, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_sjzs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_sjzs`;
CREATE TABLE `t_ywym_ywtg_zs_sjzs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `sjy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据源',
  `sjysfdj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据源是否对接'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_数据中枢' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_sjzs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好停车', '机动车登记系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好停车', '经营备案系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好停车', '盛事通（信号支付）', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好停车', '公安', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好停车', '信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好停车', '医院学校', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好停车', '社区车场', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好停车', '景区车场', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好停车', '机关单位', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好停车', '商业停车场', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好停车', '公共停车场', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好办事', '户外广告管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好办事', '残疾人综合服务平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好办事', '医保系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好办事', '住房公积金网上服务大厅', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好办事', '住房登记租赁备案系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好办事', '保障性住房管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好办事', '住房租赁交易服务平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好办事', '科技创新管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好办事', 'CORS授权系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好办事', '自然资源局行政审批系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好办事', '居住证办理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好办事', '户籍系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好办事', '婚姻登记系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好办事', '社会组织服务管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好办事', '自然资源局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好办事', '公安局', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好办事', '房产局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好办事', '民政局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好办事', '人社局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好办事', '建设局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好办事', '出入境管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好办事', '金税三期系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 23, '好办事', '不动产交易核价系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 24, '好办事', '运输许可证管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 25, '好办事', '大件运输管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 26, '好办事', '路政系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 27, '好办事', '城乡居民养老保险信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 28, '好办事', '辽宁省投资项目在线审批监管平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 29, '好办事', '辽宁公安\"互联网\"+平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 30, '好办事', '取水许可登记系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 31, '好办事', '国家电网系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 32, '好办事', '辽宁省妇幼健康管理信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 33, '好办事', '工程项目监管数据集系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 34, '好办事', '金土工程系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 35, '好办事', '企业开办一网通办', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 36, '好办事', '房地产业信息网', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 37, '好办事', '林业植物检疫管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 38, '好办事', '土地市场动态监测与监管系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 39, '好办事', '医师护师执业注册联网管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 40, '好办事', '非药品类易制毒化学品系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 41, '好办事', '全国排污许可管理信息平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 42, '好办事', '固体废物管理信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 43, '好办事', '驾驶证管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 44, '好办事', '木材运输管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 45, '好办事', '旅游监管平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 46, '好办事', '医疗机构注册管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 47, '好办事', '消防监督管理平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 48, '好办事', '出入境管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 49, '好办事', '种业信息网', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好城管', '找公园', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好城管', '找公厕', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好城管', '智慧城管微信公众号', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好城管', '便民惠民', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好城管', '货运管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好城管', '车辆管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好城管', '驾驶员管理平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好城管', '视频监控平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好城管', '工地管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好城管', '环保监管平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好城管', '智慧城管平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好城管', '智慧园林系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好城管', '公园管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好城管', '户外广告管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好城管', '好店铺管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好城管', '公厕管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好城管', '控渣土管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好城管', '城管执法局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好城管', '生态局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好城管', '建设局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好城管', '公安局', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好城管', '交通局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好就业', '残疾人就业系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好就业', '人才市场', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好就业', '创业服务', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好就业', '技能培训机构', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好就业', '人才网招聘信息', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好就业', '残疾人就业系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好就业', '就业服务系统经办', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好就业', '数字化创新创业服务平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好就业', '盛事通平台', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好就业', '政务数据共享交换平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好就业', '一体化政务服务平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好就业', '职业介绍系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好就业', '学历查询系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好就业', '职业资格证书接口', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好就业', '人力资源市场系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好就业', '省统一身份认证', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好就业', '就业服务经办', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好就业', '养老保险系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好就业', '营商', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好就业', '人社', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好就业', '房产', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好就业', '医保', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 23, '好就业', '工商', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 24, '好就业', '民政', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 25, '好就业', '信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 26, '好就业', '国家级', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 27, '好就业', '省级', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 28, '好就业', '市级', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 29, '好就业', '社区', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好就医', 'FSI医疗保障平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好就医', '信用平台/玫瑰分', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好就医', '市民码/电子凭证', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好就医', '用户实名系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好就医', '信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好就医', '医保', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好就医', '挂号', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好就医', '诊疗/处方', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好就医', '检验检查系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好就医', '候诊排队', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好就医', '聚合支付', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好就医', '聚富通对账', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好就医', '签约管理', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好就医', '小额贷支付', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好就医', '放款与还款', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好就医', '小额贷对账', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好就医', '支付', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好就医', '信贷', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好就医', 'HIS系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好就医', '清分银行', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好就医', '定点医院', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好养老', '家政企业系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好养老', '家政企业', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好养老', '助餐企业系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好养老', '助餐企业', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好养老', '特困系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好养老', '殡葬系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好养老', '残疾人双补', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好养老', '低保系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好养老', '养老从业人员', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好养老', '社会组织服务管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好养老', '老年人口数量', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好养老', '家庭医生', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好养老', '住院数据、医养结合机构', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好养老', '社区医院', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好养老', '企业税务情况', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好养老', '消防检查信息', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好养老', '食品安全信息', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好养老', '长护险、老年人病床信息', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好养老', '退休金、养老护理培训', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好养老', '老年大学', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好养老', '养老服务专业及人数', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好养老', '实训基地', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 23, '好养老', '残疾老年人', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 24, '好养老', '残疾人适老化改造数据', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 25, '好养老', '相关补贴数据', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 26, '好养老', '医保死亡数据、安宁疗护机构', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 27, '好养老', '核酸检测', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 28, '好养老', '养老领域资金投入', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 29, '好养老', '相关补贴数据、资金统发系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 30, '好养老', '疫苗接种', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 31, '好养老', '企业信息', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 32, '好养老', '防疫管控', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 33, '好养老', '财', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 34, '好养老', '工商', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 35, '好养老', '疾控', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 36, '好养老', '信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 37, '好养老', '健康管理', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 38, '好养老', '财政', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 39, '好养老', '公安', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 40, '好养老', '民政', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 41, '好养老', '卫健', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 42, '好养老', '税务', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 43, '好养老', '消防', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 44, '好养老', '食品', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 45, '好养老', '医保', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 46, '好养老', '人社', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 47, '好养老', '教育', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 48, '好养老', '残联', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 49, '好养老', '区政府部门', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 50, '好养老', '市政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 51, '好养老', '社区', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好游玩', 'TA', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好游玩', 'OTA', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好游玩', '中央预定', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好游玩', '饭店资产管理', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好游玩', '票务系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好游玩', '语音讲解', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好游玩', '手绘系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好游玩', '在线预定', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好游玩', '星级酒店', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好游玩', '美团', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好游玩', '携程', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好游玩', '非星级酒店', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好游玩', '旅业PSB登记', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好游玩', '特行管理', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好游玩', '防疫政策', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好游玩', '风险地区发布', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好游玩', '一所身份核验', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好游玩', '健康码', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好游玩', '市民码', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好游玩', '交通管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好游玩', '好停车系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好游玩', '食品监管系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 23, '好游玩', '工商管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 24, '好游玩', '部级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 25, '好游玩', '省级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 26, '好游玩', '市级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 27, '好游玩', '信息中心', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 28, '好游玩', '交通局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 29, '好游玩', '城乡建设局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 30, '好游玩', '市场监督管理局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 31, '好游玩', '公安局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 32, '好游玩', '公安部', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 33, '好游玩', 'TA', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 34, '好游玩', 'OTA', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 35, '好游玩', '中央预定', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 36, '好游玩', '饭店资产管理', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 37, '好游玩', '票务系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 38, '好游玩', '语音讲解', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 39, '好游玩', '手绘系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 40, '好游玩', '在线预定', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 41, '好游玩', '星级酒店', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 42, '好游玩', '美团', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 43, '好游玩', '携程', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 44, '好游玩', '非星级酒店', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 45, '好游玩', '旅业PSB登记', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 46, '好游玩', '特行管理', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 47, '好游玩', '防疫政策', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 48, '好游玩', '风险地区发布', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 49, '好游玩', '一所身份核验', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 50, '好游玩', '健康码', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 51, '好游玩', '市民码', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 52, '好游玩', '交通管理平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 53, '好游玩', '好停车系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 54, '好游玩', '食品监管系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 55, '好游玩', '工商管理系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 56, '好游玩', '部级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 57, '好游玩', '省级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 58, '好游玩', '市级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 59, '好游玩', '信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 60, '好游玩', '交通局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 61, '好游玩', '城乡建设局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 62, '好游玩', '市场监督管理局', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 63, '好游玩', '公安局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 64, '好游玩', '公安部', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 1, '好政策', '规上批零住餐企业信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 2, '好政策', '规上服务业企业信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 3, '好政策', '规上工业企业信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 4, '好政策', '不动产权证书信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 5, '好政策', '资质房地产开发企业信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 6, '好政策', '税务信息平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 7, '好政策', '税务处罚信息系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 8, '好政策', '企业信用数据信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 9, '好政策', '企业收入情况信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 10, '好政策', '施工许可证信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 11, '好政策', '企业工商注册信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 12, '好政策', '工商处罚信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 13, '好政策', '工业法人信息系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 14, '好政策', '高新技术企业证书信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 15, '好政策', '社保缴纳平台', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 16, '好政策', '社保证明信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 17, '好政策', '房地产项目名称', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 18, '好政策', '网签合同信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 19, '好政策', '毕业证信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 20, '好政策', '房地产企业信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 21, '好政策', '户籍系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 22, '好政策', '身份证信息管理系统', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 23, '好政策', '外籍留学生护照信息系统', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 24, '好政策', '社保中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 25, '好政策', '市自然资源局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 26, '好政策', '市统计局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 27, '好政策', '市水务局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 28, '好政策', '市信息中心', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 29, '好政策', '教育局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 30, '好政策', '市场监督管理局', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 31, '好政策', '科技局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 32, '好政策', '公安局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 33, '好政策', '公安部', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 34, '好政策', '房产局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 35, '好政策', '城乡建设局', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 36, '好政策', '住建厅', '0');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 37, '好政策', '国家级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 38, '好政策', '省级政府部门', '1');
INSERT INTO `t_ywym_ywtg_zs_sjzs` VALUES (NULL, NULL, NULL, 39, '好政策', '市级政府部门', '0');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_sjzyml_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_sjzyml_zb`;
CREATE TABLE `t_ywym_ywtg_zs_sjzyml_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_数据资源目录_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_sjzyml_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 1, '数据资源目录发布总数', 7894, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 2, '市场监督管理局', 1235, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 3, '房改资金管理系统', 879, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 4, '政务数据交换平台', 785, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 5, '社会组织服务管理平台', 654, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 6, '户外广告管理系统', 541, '个');
INSERT INTO `t_ywym_ywtg_zs_sjzyml_zb` VALUES (NULL, NULL, NULL, 7, '商品房预售资金监管系统', 341, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_APIdycspm_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_API调用次数排名_指标(单日数据)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_APIdycspm_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 1, '某某调用型接口', 987456, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 2, '某某调用型接口', 874561, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 3, '某某调用型接口', 654123, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 4, '某某调用型接口', 541236, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 5, '某某调用型接口', 412365, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 6, '某某调用型接口', 321456, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 7, '某某调用型接口', 214562, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_APIdycspm_zb` VALUES (NULL, NULL, NULL, 8, '某某调用型接口', 112354, '次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_API调用趋势分析_趋势（近7天）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 2, 874561, '06-02');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 3, 654123, '06-03');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 4, 541236, '06-04');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 5, 412365, '06-05');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 6, 321456, '06-06');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_apidyqsfx_qs` VALUES (NULL, NULL, NULL, 7, 214562, '06-07');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_jryxtpm_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_接入源系统排名_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_jryxtpm_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 1, '沈阳市高新区某某局', 987456, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 2, '沈阳市高新区某某局', 874561, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 3, '沈阳市高新区某某局', 745612, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 4, '沈阳市高新区某某局', 645612, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 5, '沈阳市高新区某某局', 541365, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 6, '沈阳市高新区某某局', 531456, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 7, '沈阳市高新区某某局', 521345, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 8, '沈阳市高新区某某局', 501235, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 9, '沈阳市高新区某某局', 498546, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 10, '沈阳市高新区某某局', 487625, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 11, '沈阳市高新区某某局', 475612, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 12, '沈阳市高新区某某局', 462356, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_jryxtpm_zb` VALUES (NULL, NULL, NULL, 13, '沈阳市高新区某某局', 441256, '个');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_kbdycspm_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(12, 0) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_库表调用次数排名_指标（累计）' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_kbdycspm_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 1, '某某库表调用次数', 987456, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 2, '某某库表调用次数', 874561, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 3, '某某库表调用次数', 654123, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 4, '某某库表调用次数', 541236, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 5, '某某库表调用次数', 412365, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 6, '某某库表调用次数', 321456, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 7, '某某库表调用次数', 214562, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdycspm_zb` VALUES (NULL, NULL, NULL, 8, '某某库表调用次数', 112354, '次');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `value` decimal(20, 0) NULL DEFAULT NULL COMMENT '值',
  `sj` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_库表调用趋势分析_趋势（近7天)' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 1, 987456, '06-01');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 2, 874561, '06-02');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 3, 654123, '06-03');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 4, 541236, '06-04');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 5, 412365, '06-05');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 6, 321456, '06-06');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_kbdyqsfx_qs` VALUES (NULL, NULL, NULL, 7, 214562, '06-07');

-- ----------------------------
-- Table structure for t_ywym_ywtg_zs_zsptgk_zb
-- ----------------------------
DROP TABLE IF EXISTS `t_ywym_ywtg_zs_zsptgk_zb`;
CREATE TABLE `t_ywym_ywtg_zs_zsptgk_zb`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `px` int(11) NULL DEFAULT NULL COMMENT '排序',
  `zbx` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标项',
  `value` decimal(15, 4) NULL DEFAULT NULL COMMENT '值',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中枢_中枢平台概况_指标' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ywym_ywtg_zs_zsptgk_zb
-- ----------------------------
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 1, '接入源系统总数', 1235.0000, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 2, '接入API接口总数', 24523.0000, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 3, '接入库表总数', 2356425.0000, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 4, '开放API接口总数', 253456.0000, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 5, '开放数据库表总数', 5465242.0000, '个');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 6, '累计数据消费次数', 14526.0000, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 7, '累计API调用次数', 54356.0000, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 8, '累计推送数据次数', 54568925.0000, '次');
INSERT INTO `t_ywym_ywtg_zs_zsptgk_zb` VALUES (NULL, NULL, NULL, 9, '累计推送数据条数', 4568.3564, '万条');

SET FOREIGN_KEY_CHECKS = 1;
