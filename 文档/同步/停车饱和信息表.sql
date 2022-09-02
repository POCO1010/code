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
