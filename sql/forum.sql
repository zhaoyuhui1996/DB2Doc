/*
 Navicat Premium Data Transfer

 Source Server         : Mysql_@localhost
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44)
 Source Host           : 127.0.0.1:3306
 Source Schema         : forum

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44)
 File Encoding         : 65001

 Date: 02/07/2024 14:44:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端唯一标识',
  `resource_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源ID标识',
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端安全码',
  `scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端授权范围',
  `authorized_grant_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端授权类型',
  `web_server_redirect_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器回调地址',
  `authorities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问资源所需权限',
  `access_token_validity` int(11) NULL DEFAULT NULL COMMENT '设定客户端的access_token的有效时间值（秒）',
  `refresh_token_validity` int(11) NULL DEFAULT NULL COMMENT '设定客户端的refresh_token的有效时间值（秒）',
  `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段',
  `autoapprove` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否登录时跳过授权（默认false）',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户端配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `area_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '区域ID',
  `area_code` varchar(62) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域代码',
  `area_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域名称',
  `parent_id` bigint(20) NOT NULL COMMENT '上级区域ID',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_area
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '初始化密码 123456', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_config` VALUES (4, '应用平台-平台名称', 'sys.index.title', '基层公权力大数据监督预警系统', 'Y', '登录页及主框架页的应用名称', 'admin', '2021-08-26 14:19:18', 'admin', '2024-06-13 17:15:38', '0');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `dept_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门编号',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `dept_short_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构简称',
  `dept_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门类型（TRIAL_DEPT表示审理部门，INVESTIGATION_DEPT表示审调部门）',
  `order_num` int(11) NOT NULL DEFAULT 0 COMMENT '显示顺序',
  `parent_id` bigint(20) NOT NULL COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '祖级列表',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  `up_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支撑平台的部门ID',
  `up_root_org_flag` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构根标识（1为根机构，2为下级机构）',
  `up_region_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政区划编码',
  `up_region_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政区划名称',
  `up_purpose` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构部门标志(1为机构，2为部门)',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 17, '360000000000', '江西省纪委', NULL, NULL, 0, 0, '0', NULL, NULL, NULL, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2022-01-26 16:08:47', '0', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', '性别男', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', '性别女', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', '性别未知', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', '显示菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', '隐藏菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', '正常状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', '停用状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', '正常状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', '停用状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', '默认分组', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', '系统分组', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', '系统默认是', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', '系统默认否', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', '通知', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', '公告', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', '正常状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', '关闭状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', '新增操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', '修改操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', '删除操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', '授权操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', '导出操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', '导入操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', '强退操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', '生成操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', '清空操作', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', '正常状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', '停用状态', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_dict_data` VALUES (29, 1, '是', 'true', 'sys_auto_auth', NULL, NULL, 'N', '0', '自动授权', 'admin', '2021-08-31 14:28:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (30, 2, '否', 'false', 'sys_auto_auth', NULL, NULL, 'N', '0', '非自动授权', 'admin', '2021-08-31 14:28:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (77, 0, '惠民补贴', 'type_fz_dx_hmbt', 'question_type', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 10:56:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (78, 2, '其他', 'type_fz_dx_qt', 'question_type', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 10:56:53', 'admin', '2024-06-17 15:12:20', NULL);
INSERT INTO `sys_dict_data` VALUES (79, 3, '“四风”问题', 'type_fz_dx_sfwt', 'question_type', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 10:57:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (80, 4, '工程建设', 'type_fz_dx_gcjs', 'question_type', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 10:57:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (81, 5, '“三资”管理', 'type_fz_dx_szgl', 'question_type', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 10:57:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (82, 4, '公职人员疑似违规领取救助补助', 'fz_dx_hmbt_gzryjzbz', 'type_fz_dx_hmbt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:06:31', 'admin', '2024-06-25 15:34:51', NULL);
INSERT INTO `sys_dict_data` VALUES (83, 2, '村小组组长疑似集体冒领救助补助', 'fz_dx_hmbt_jtmljzbz', 'type_fz_dx_hmbt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:06:44', 'admin', '2024-06-13 16:06:47', NULL);
INSERT INTO `sys_dict_data` VALUES (84, 3, '村组人员为企业股东领取救助补助', 'fz_dx_hmbt_gzrygdjzbz', 'type_fz_dx_hmbt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:07:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (85, 0, '村级采购疑似优亲厚友', 'fz_dx_szgl_cjcgyqhy', 'type_fz_dx_szgl', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:08:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (86, 1, '村级工程疑似优亲厚友', 'fz_dx_gcjs_cjgccbyqhy', 'type_fz_dx_gcjs', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:08:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 0, '公职人员疑似违规申请自建房', 'fz_dx_sfwt_wgsqzjf', 'type_fz_dx_sfwt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:08:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (88, 0, '劳务用工疑似优亲厚友', 'fz_dx_qt_zyqylwyg', 'type_fz_dx_qt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:08:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (89, 4, '已退回', 'BACK', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:17:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (90, 1, '已推送', 'PUSHED', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:18:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (91, 0, '未推送', 'NOTPUSH', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:19:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (92, 2, '已反馈', 'FEEDBACKED', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-13 16:19:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (93, 1, '问题线索', 'result_001', 'xf_whether_problem', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-19 15:46:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (94, 2, '活情况', 'result_002', 'xf_whether_problem', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-19 15:47:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (95, 3, '不予处置', 'result_003', 'xf_whether_problem', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-19 15:47:19', 'admin', '2024-06-19 17:03:29', NULL);
INSERT INTO `sys_dict_data` VALUES (97, 1, '厅局级', 'rank_333', 'zzjd_zj', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-20 16:00:13', 'admin', '2024-06-20 16:01:27', NULL);
INSERT INTO `sys_dict_data` VALUES (98, 2, '县处级', 'rank_334', 'zzjd_zj', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-20 16:01:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (99, 3, '乡科级', 'rank_335', 'zzjd_zj', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-20 16:01:43', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (100, 4, '一般干部', 'rank_336', 'zzjd_zj', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-20 16:01:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 5, '其他人员', 'rank_337', 'zzjd_zj', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-20 16:02:09', 'admin', '2024-06-20 16:02:30', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '疑似为死亡人员发放救助补助金', 'fz_dx_hmbt_swryffjzbzj', 'type_fz_dx_hmbt', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-25 15:34:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 3, '撤回失败', 'RETRACTFAIL', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-26 10:08:36', 'admin', '2024-06-26 10:08:48', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 5, '推送失败', 'PUSHFAIL', 'handle_state', NULL, NULL, 'N', '0', NULL, 'admin', '2024-06-26 10:09:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', '用户性别列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', '菜单状态列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', '系统开关列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', '任务状态列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', '任务分组列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', '系统是否列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', '通知类型列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', '通知状态列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', '操作类型列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', '登录状态列表', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '0');
INSERT INTO `sys_dict_type` VALUES (100, '性別類型', 'sex_status', '0', NULL, 'admin', '2020-06-02 10:18:20', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (101, '授权开关', 'sys_auto_auth', '0', '系统是否自动授权', 'admin', '2021-08-31 14:16:30', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (112, '应用场景', 'question_type', '0', NULL, 'admin', '2024-06-13 10:55:37', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (113, '惠民补贴', 'type_fz_dx_hmbt', '0', NULL, 'admin', '2024-06-13 10:58:46', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (114, '其他', 'type_fz_dx_qt', '0', '1', 'admin', '2024-06-13 10:58:56', 'admin', '2024-06-17 15:18:07', '0');
INSERT INTO `sys_dict_type` VALUES (115, '“四风”问题', 'type_fz_dx_sfwt', '0', NULL, 'admin', '2024-06-13 10:59:08', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (116, '工程建设', 'type_fz_dx_gcjs', '0', NULL, 'admin', '2024-06-13 10:59:16', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (117, '“三资”管理', 'type_fz_dx_szgl', '0', NULL, 'admin', '2024-06-13 10:59:26', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (118, '推送状态', 'handle_state', '0', NULL, 'admin', '2024-06-13 16:11:18', 'admin', '2024-06-13 16:11:26', '0');
INSERT INTO `sys_dict_type` VALUES (119, '研判结果', 'xf_whether_problem', '0', NULL, 'admin', '2024-06-19 15:46:20', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (120, '职级', 'zzjd_zj', '0', NULL, 'admin', '2024-06-20 15:59:40', '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (121, '所属法规', 'belongs_regulation', '0', NULL, '', NULL, '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (122, '实操类型', 'practical_oper_type', '0', NULL, '', NULL, '', NULL, '0');
INSERT INTO `sys_dict_type` VALUES (123, '所属环节', 'belongs_link', '0', NULL, '', NULL, '', NULL, '0');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `file_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名',
  `file_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件地址',
  `file_size` bigint(20) NOT NULL COMMENT '文件大小（单位字节）',
  `file_checksum` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件校验和',
  `upload_user` bigint(20) NOT NULL COMMENT '上传用户',
  `upload_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`file_id`) USING BTREE,
  INDEX `upload_user`(`upload_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_http_interface_call_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_http_interface_call_log`;
CREATE TABLE `sys_http_interface_call_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `request_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求地址',
  `request_method` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `request_headers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求头',
  `request_body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求体',
  `response_status_code` smallint(6) NULL DEFAULT NULL COMMENT '响应状态码',
  `response_headers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '响应头',
  `response_body` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '响应体',
  `interface_provider` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口提供者',
  `calling_user` bigint(20) NULL DEFAULT NULL COMMENT '调用者',
  `calling_user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用者账号',
  `calling_user_nick_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用者昵称',
  `calling_time` datetime NULL DEFAULT NULL COMMENT '调用时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'http接口调用日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_http_interface_call_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `ip_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定时任务运行的机器ip和端口',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机器ip',
  `port` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用端口',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_ktr_job_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_ktr_job_config`;
CREATE TABLE `sys_ktr_job_config`  (
  `id` int(11) NOT NULL,
  `service_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务关键词',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务名',
  `service_job_id` int(11) NULL DEFAULT NULL COMMENT '服务id， 数据中台jobId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_ktr_job_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'country_jw_u1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', NULL, '2024-07-01 17:23:49');
INSERT INTO `sys_logininfor` VALUES (2, 'country_jw_u1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', NULL, '2024-07-01 17:24:11');
INSERT INTO `sys_logininfor` VALUES (3, 'country_jw_u1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', NULL, '2024-07-01 18:06:17');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-01 18:06:29');

-- ----------------------------
-- Table structure for sys_manage
-- ----------------------------
DROP TABLE IF EXISTS `sys_manage`;
CREATE TABLE `sys_manage`  (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `sys_flag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统标识',
  `sys_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统名称',
  `sys_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_manage
-- ----------------------------
INSERT INTO `sys_manage` VALUES (1, '1', '基层公权力大数据监督预警系统', 1, '0', 'admin', '2021-08-24 19:30:22', 'admin', '2024-06-13 17:15:46');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(11) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `sys_flag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统标识',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1220 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '基础配置', 0, 180, '', NULL, 1, 'M', '0', '0', '', 'system', '1', '系统管理目录', 'admin', '2018-03-16 11:33:00', 'admin', '2021-11-15 09:55:11', NULL);
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 190, '', NULL, 1, 'M', '0', '0', '', 'monitor', '1', '系统监控目录', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 12:56:09', NULL);
INSERT INTO `sys_menu` VALUES (3, '开发工具', 0, 200, '', NULL, 1, 'M', '0', '0', '', 'tool', '1', '系统工具目录', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 12:56:14', NULL);
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 200, '/user', NULL, 1, 'C', '0', '0', 'system:user:list', 'user', '1', '用户管理菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:29:16', NULL);
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 210, '/role', NULL, 1, 'C', '0', '0', 'system:role:list', 'peoples', '1', '角色管理菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:29:20', NULL);
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 230, '/menu', NULL, 1, 'C', '0', '0', 'system:menu:list', 'tree-table', '1', '菜单管理菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:29:48', NULL);
INSERT INTO `sys_menu` VALUES (103, '机构管理', 1, 240, '/dept', NULL, 1, 'C', '0', '0', 'system:dept:list', 'tree', '1', '部门管理菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:29:52', NULL);
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 260, '/dict', NULL, 1, 'C', '0', '0', 'system:dict:list', 'dict', '1', '字典管理菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 17:18:21', NULL);
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 270, '/config', NULL, 1, 'C', '0', '0', 'system:config:list', 'edit', '1', '参数设置菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 17:17:03', NULL);
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 280, '/notice', NULL, 1, 'C', '0', '0', 'system:notice:list', 'message', '1', '通知公告菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 17:17:12', NULL);
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 220, '/online', NULL, 1, 'C', '0', '0', 'monitor:online:list', 'online', '1', '在线用户菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:33', NULL);
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 230, '/job', NULL, 1, 'C', '0', '0', 'monitor:job:list', 'job', '1', '定时任务菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:37', NULL);
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 240, '/druid', NULL, 1, 'C', '0', '0', 'monitor:druid:list', 'druid', '1', '数据监控菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:40', NULL);
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 250, '/server', NULL, 1, 'C', '0', '0', 'monitor:server:list', 'server', '1', '服务监控菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:44', NULL);
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/build', NULL, 1, 'C', '0', '0', 'tool:build:list', 'build', '1', '表单构建菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:49', NULL);
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/gen', NULL, 1, 'C', '0', '0', 'tool:gen:list', 'code', '1', '代码生成菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:52', NULL);
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/swagger', NULL, 1, 'C', '0', '0', 'tool:swagger:list', 'swagger', '1', '系统接口菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:56', NULL);
INSERT INTO `sys_menu` VALUES (500, '操作日志', 2, 200, '/operlog', NULL, 1, 'C', '0', '0', 'monitor:operlog:list', 'form', '1', '操作日志菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:26', NULL);
INSERT INTO `sys_menu` VALUES (501, '登录日志', 2, 210, '/logininfor', NULL, 1, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', '1', '登录日志菜单', 'admin', '2018-03-16 11:33:00', 'admin', '2021-10-23 16:30:30', NULL);
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', NULL, 1, 'F', '0', '0', 'system:user:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', NULL, 1, 'F', '0', '0', 'system:user:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', NULL, 1, 'F', '0', '0', 'system:user:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', NULL, 1, 'F', '0', '0', 'system:user:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', NULL, 1, 'F', '0', '0', 'system:user:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', NULL, 1, 'F', '0', '0', 'system:user:import', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', NULL, 1, 'F', '0', '0', 'system:user:resetPwd', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', NULL, 1, 'F', '0', '0', 'system:role:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', NULL, 1, 'F', '0', '0', 'system:role:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', NULL, 1, 'F', '0', '0', 'system:role:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', NULL, 1, 'F', '0', '0', 'system:role:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', NULL, 1, 'F', '0', '0', 'system:role:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', NULL, 1, 'F', '0', '0', 'system:menu:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', NULL, 1, 'F', '0', '0', 'system:menu:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', NULL, 1, 'F', '0', '0', 'system:menu:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', NULL, 1, 'F', '0', '0', 'system:menu:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', NULL, 1, 'F', '0', '0', 'system:dept:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', NULL, 1, 'F', '0', '0', 'system:dept:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', NULL, 1, 'F', '0', '0', 'system:dept:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', NULL, 1, 'F', '0', '0', 'system:dept:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', NULL, 1, 'F', '0', '0', 'system:dict:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', NULL, 1, 'F', '0', '0', 'system:dict:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', NULL, 1, 'F', '0', '0', 'system:dict:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', NULL, 1, 'F', '0', '0', 'system:dict:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', NULL, 1, 'F', '0', '0', 'system:dict:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', NULL, 1, 'F', '0', '0', 'system:config:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', NULL, 1, 'F', '0', '0', 'system:config:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', NULL, 1, 'F', '0', '0', 'system:config:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', NULL, 1, 'F', '0', '0', 'system:config:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', NULL, 1, 'F', '0', '0', 'system:config:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', NULL, 1, 'F', '0', '0', 'system:notice:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', NULL, 1, 'F', '0', '0', 'system:notice:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', NULL, 1, 'F', '0', '0', 'system:notice:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', NULL, 1, 'F', '0', '0', 'system:notice:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', NULL, 1, 'F', '0', '0', 'monitor:operlog:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', NULL, 1, 'F', '0', '0', 'monitor:operlog:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', NULL, 1, 'F', '0', '0', 'monitor:operlog:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', NULL, 1, 'F', '0', '0', 'monitor:logininfor:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', NULL, 1, 'F', '0', '0', 'monitor:logininfor:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', NULL, 1, 'F', '0', '0', 'monitor:logininfor:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', NULL, 1, 'F', '0', '0', 'monitor:online:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-31 14:51:59', NULL);
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', NULL, 1, 'F', '0', '0', 'monitor:online:batchLogout', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', NULL, 1, 'F', '0', '0', 'monitor:online:forceLogout', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', NULL, 1, 'F', '0', '0', 'monitor:job:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', NULL, 1, 'F', '0', '0', 'monitor:job:add', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', NULL, 1, 'F', '0', '0', 'monitor:job:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', NULL, 1, 'F', '0', '0', 'monitor:job:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', NULL, 1, 'F', '0', '0', 'monitor:job:changeStatus', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', NULL, 1, 'F', '0', '0', 'monitor:job:export', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 114, 1, '#', NULL, 1, 'F', '0', '0', 'tool:gen:query', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 114, 2, '#', NULL, 1, 'F', '0', '0', 'tool:gen:edit', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 114, 3, '#', NULL, 1, 'F', '0', '0', 'tool:gen:remove', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 114, 2, '#', NULL, 1, 'F', '0', '0', 'tool:gen:import', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', NULL, 1, 'F', '0', '0', 'tool:gen:preview', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', NULL, 1, 'F', '0', '0', 'tool:gen:code', '#', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', NULL);
INSERT INTO `sys_menu` VALUES (1065, '系统菜单配置', 1, 300, '/manage', NULL, 1, 'C', '0', '0', 'system:manage:list', 'system', '1', '', 'zhanghai', '2021-08-19 12:17:25', 'admin', '2021-10-23 17:17:19', NULL);
INSERT INTO `sys_menu` VALUES (1067, '系统查询', 1065, 1, '', NULL, 1, 'F', '0', '0', 'system:manage:query', '#', '1', '', 'zhanghai', '2021-08-25 09:50:19', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1068, '系统新增', 1065, 2, '', NULL, 1, 'F', '0', '0', 'system:manage:add', '#', '1', '', 'zhanghai', '2021-08-25 09:51:28', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1069, '系统修改', 1065, 3, '', NULL, 1, 'F', '0', '0', 'system:manage:edit', '#', '1', '', 'zhanghai', '2021-08-25 09:52:12', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1070, '系统删除', 1065, 4, '', NULL, 1, 'F', '0', '0', 'system:manage:remove', '#', '1', '', 'zhanghai', '2021-08-25 09:53:19', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1071, '用户属性扩展', 1, 310, '/info', NULL, 1, 'C', '0', '0', 'system:info:list', 'user', '1', '', 'admin', '2021-08-26 11:36:53', 'admin', '2021-10-23 17:17:23', NULL);
INSERT INTO `sys_menu` VALUES (1074, '用户属性扩展查询', 1071, 1, '', NULL, 1, 'F', '0', '0', 'system:info:query', '#', '1', '', 'lhx', '2021-08-30 16:55:42', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1075, '用户属性扩展新增', 1071, 2, '', NULL, 1, 'F', '0', '0', 'system:info:add', '#', '1', '', 'lhx', '2021-08-30 16:56:45', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1076, '用户属性扩展修改', 1071, 3, '', NULL, 1, 'F', '0', '0', 'system:info:edit', '#', '1', '', 'lhx', '2021-08-30 16:59:12', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1077, '用户属性扩展删除', 1071, 4, '', NULL, 1, 'F', '0', '0', 'system:info:remove', '#', '1', '', 'lhx', '2021-08-30 17:00:02', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1078, '统一认证管理', 1, 320, '/authentication', NULL, 1, 'C', '0', '0', 'system:authentication:list', 'people', '1', '', 'lhx', '2021-08-31 10:58:21', 'admin', '2021-10-23 17:17:27', NULL);
INSERT INTO `sys_menu` VALUES (1079, '统一认证管理查询', 1078, 1, '', NULL, 1, 'F', '0', '0', 'system:anthentication:query', '#', '1', '', 'admin', '2021-08-31 11:12:30', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1080, '统一认证管理新增', 1078, 2, '', NULL, 1, 'F', '0', '0', 'system:authentication:add', '#', '1', '', 'admin', '2021-08-31 11:13:42', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1081, '统一认证管理修改', 1078, 3, '', NULL, 1, 'F', '0', '0', 'system:authentication:edit', '#', '1', '', 'admin', '2021-08-31 11:14:38', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1082, '统一认证管理删除', 1078, 4, '', NULL, 1, 'F', '0', '0', 'system:authentication:remove', '#', '1', '', 'admin', '2021-08-31 11:15:22', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1083, '统一认证管理重置密钥', 1078, 5, '', NULL, 1, 'F', '0', '0', 'system:authentication:resetPwd', '#', '1', '', 'admin', '2021-08-31 17:03:42', '', NULL, NULL);
INSERT INTO `sys_menu` VALUES (1134, '主页', 0, 100, 'index', NULL, 1, 'M', '0', '0', '', '#', '1', '', 'admin', '2021-10-23 09:16:17', 'admin', '2024-06-11 15:53:41', NULL);
INSERT INTO `sys_menu` VALUES (1141, '个人中心', 0, 210, 'user/profile', NULL, 1, 'M', '0', '0', '', '#', '1', '', 'admin', '2021-10-23 09:23:56', 'admin', '2021-12-29 14:16:20', NULL);
INSERT INTO `sys_menu` VALUES (1190, '功能管理', 1186, 3, '/function', NULL, 1, 'M', '0', '0', '', '#', '1', '', 'admin', '2022-01-18 16:50:21', 'admin', '2022-01-25 13:57:07', NULL);
INSERT INTO `sys_menu` VALUES (1191, '接口日志', 2, 215, '/httpInterfaceCallLog', NULL, 1, 'C', '0', '0', '', '#', '1', '', 'admin', '2022-02-28 18:18:49', 'admin', '2022-03-16 15:58:02', NULL);
INSERT INTO `sys_menu` VALUES (1219, '测试', 0, 1, 'test', NULL, 1, 'C', '0', '0', '', 'cascader', '1', '', 'admin', '2024-06-11 15:29:50', 'admin', '2024-06-11 15:53:29', NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notification
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification`;
CREATE TABLE `sys_notification`  (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `notification_title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通知标题',
  `notification_content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通知内容',
  `publishment_user` bigint(20) NOT NULL COMMENT '发布者',
  `publishment_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notification
-- ----------------------------

-- ----------------------------
-- Table structure for sys_notification_receiver
-- ----------------------------
DROP TABLE IF EXISTS `sys_notification_receiver`;
CREATE TABLE `sys_notification_receiver`  (
  `notification_id` bigint(20) NOT NULL COMMENT '通知ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `read` bit(1) NOT NULL COMMENT '已读',
  PRIMARY KEY (`notification_id`, `user_id`) USING BTREE,
  INDEX `notification_id`(`notification_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知接收者' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notification_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_client_details`;
CREATE TABLE `sys_oauth_client_details`  (
  `client_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端唯一标识',
  `resource_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源ID标识',
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端安全码',
  `scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端授权范围',
  `authorized_grant_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户端授权类型',
  `web_server_redirect_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器回调地址',
  `authorities` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问资源所需权限',
  `access_token_validity` int(11) NULL DEFAULT NULL COMMENT '设定客户端的access_token的有效时间值（秒）',
  `refresh_token_validity` int(11) NULL DEFAULT NULL COMMENT '设定客户端的refresh_token的有效时间值（秒）',
  `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段',
  `autoapprove` tinyint(4) NULL DEFAULT NULL COMMENT '是否登录时跳过授权（默认false）',
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户端配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(16000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(11) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `error_info` longblob NULL COMMENT '错误详情',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用 3三员）',
  `sys_flag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统标识,0为管理员标识，可以有所有sysFlag系统权限',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '1', '', 'admin', '2018-03-16 11:33:00', 'admin', '2024-06-25 14:25:39', '0');
INSERT INTO `sys_role` VALUES (122, '系统管理员', '1_xtgly', 1, '3', '3', '1', NULL, 'admin', '2021-08-30 14:58:26', 'admin', '2021-10-23 11:49:28', '0');
INSERT INTO `sys_role` VALUES (123, '安全保密管理员', '1_aqbmgly', 2, '3', '3', '1', NULL, 'admin', '2021-08-30 14:58:26', NULL, NULL, '0');
INSERT INTO `sys_role` VALUES (124, '安全审计员', '1_aqsjy', 3, '3', '3', '1', NULL, 'admin', '2021-08-30 14:58:26', NULL, NULL, '0');
INSERT INTO `sys_role` VALUES (125, '室领导', 'ROLE_OFFICE_LEADER', 0, '1', '0', '1', NULL, 'admin', '2021-10-27 14:45:23', 'admin', '2021-12-29 14:15:21', '0');
INSERT INTO `sys_role` VALUES (127, '委领导', 'ROLE_COMMISSION_LEADER', 0, '1', '0', '1', NULL, 'admin', '2021-10-27 15:00:06', 'admin', '2022-01-07 17:45:37', '0');
INSERT INTO `sys_role` VALUES (128, '工作人员', 'ROLE_OFFICE_STAFF', 0, '1', '0', '1', NULL, 'admin', '2021-10-29 15:14:54', 'admin', '2021-12-29 14:15:07', '0');
INSERT INTO `sys_role` VALUES (129, '内勤', 'ROLE_OFFICE_CLERK', 0, '1', '0', '1', NULL, 'admin', '2021-10-30 17:25:17', 'admin', '2021-12-29 14:15:03', '0');
INSERT INTO `sys_role` VALUES (130, '主任', 'ROLE_OFFICE_DIRECTOR', 0, '1', '0', '1', NULL, 'admin', '2021-11-24 15:53:38', 'admin', '2022-01-07 17:45:24', '0');
INSERT INTO `sys_role` VALUES (131, '书记', 'ROLE_SECRETARY', 0, '1', '0', '1', NULL, 'admin', '2021-11-24 20:55:06', 'admin', '2021-12-29 14:15:00', '0');
INSERT INTO `sys_role` VALUES (132, '审调人员', 'ROLE_INVESTIGATOR', 0, '1', '0', '1', NULL, 'admin', '2021-12-04 19:01:21', 'admin', '2021-12-04 19:01:29', '2');
INSERT INTO `sys_role` VALUES (133, '其他人员', 'ROLE_OTHER', 0, '1', '0', '1', NULL, 'admin', '2021-12-04 19:04:34', NULL, NULL, '2');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 100);
INSERT INTO `sys_role_menu` VALUES (1, 101);
INSERT INTO `sys_role_menu` VALUES (1, 102);
INSERT INTO `sys_role_menu` VALUES (1, 103);
INSERT INTO `sys_role_menu` VALUES (1, 105);
INSERT INTO `sys_role_menu` VALUES (1, 106);
INSERT INTO `sys_role_menu` VALUES (1, 107);
INSERT INTO `sys_role_menu` VALUES (1, 109);
INSERT INTO `sys_role_menu` VALUES (1, 110);
INSERT INTO `sys_role_menu` VALUES (1, 111);
INSERT INTO `sys_role_menu` VALUES (1, 112);
INSERT INTO `sys_role_menu` VALUES (1, 113);
INSERT INTO `sys_role_menu` VALUES (1, 114);
INSERT INTO `sys_role_menu` VALUES (1, 115);
INSERT INTO `sys_role_menu` VALUES (1, 500);
INSERT INTO `sys_role_menu` VALUES (1, 501);
INSERT INTO `sys_role_menu` VALUES (1, 1001);
INSERT INTO `sys_role_menu` VALUES (1, 1002);
INSERT INTO `sys_role_menu` VALUES (1, 1003);
INSERT INTO `sys_role_menu` VALUES (1, 1004);
INSERT INTO `sys_role_menu` VALUES (1, 1005);
INSERT INTO `sys_role_menu` VALUES (1, 1006);
INSERT INTO `sys_role_menu` VALUES (1, 1007);
INSERT INTO `sys_role_menu` VALUES (1, 1008);
INSERT INTO `sys_role_menu` VALUES (1, 1009);
INSERT INTO `sys_role_menu` VALUES (1, 1010);
INSERT INTO `sys_role_menu` VALUES (1, 1011);
INSERT INTO `sys_role_menu` VALUES (1, 1012);
INSERT INTO `sys_role_menu` VALUES (1, 1013);
INSERT INTO `sys_role_menu` VALUES (1, 1014);
INSERT INTO `sys_role_menu` VALUES (1, 1015);
INSERT INTO `sys_role_menu` VALUES (1, 1016);
INSERT INTO `sys_role_menu` VALUES (1, 1017);
INSERT INTO `sys_role_menu` VALUES (1, 1018);
INSERT INTO `sys_role_menu` VALUES (1, 1019);
INSERT INTO `sys_role_menu` VALUES (1, 1020);
INSERT INTO `sys_role_menu` VALUES (1, 1026);
INSERT INTO `sys_role_menu` VALUES (1, 1027);
INSERT INTO `sys_role_menu` VALUES (1, 1028);
INSERT INTO `sys_role_menu` VALUES (1, 1029);
INSERT INTO `sys_role_menu` VALUES (1, 1030);
INSERT INTO `sys_role_menu` VALUES (1, 1031);
INSERT INTO `sys_role_menu` VALUES (1, 1032);
INSERT INTO `sys_role_menu` VALUES (1, 1033);
INSERT INTO `sys_role_menu` VALUES (1, 1034);
INSERT INTO `sys_role_menu` VALUES (1, 1035);
INSERT INTO `sys_role_menu` VALUES (1, 1036);
INSERT INTO `sys_role_menu` VALUES (1, 1037);
INSERT INTO `sys_role_menu` VALUES (1, 1038);
INSERT INTO `sys_role_menu` VALUES (1, 1039);
INSERT INTO `sys_role_menu` VALUES (1, 1040);
INSERT INTO `sys_role_menu` VALUES (1, 1041);
INSERT INTO `sys_role_menu` VALUES (1, 1042);
INSERT INTO `sys_role_menu` VALUES (1, 1043);
INSERT INTO `sys_role_menu` VALUES (1, 1044);
INSERT INTO `sys_role_menu` VALUES (1, 1045);
INSERT INTO `sys_role_menu` VALUES (1, 1046);
INSERT INTO `sys_role_menu` VALUES (1, 1047);
INSERT INTO `sys_role_menu` VALUES (1, 1048);
INSERT INTO `sys_role_menu` VALUES (1, 1049);
INSERT INTO `sys_role_menu` VALUES (1, 1050);
INSERT INTO `sys_role_menu` VALUES (1, 1051);
INSERT INTO `sys_role_menu` VALUES (1, 1052);
INSERT INTO `sys_role_menu` VALUES (1, 1053);
INSERT INTO `sys_role_menu` VALUES (1, 1054);
INSERT INTO `sys_role_menu` VALUES (1, 1055);
INSERT INTO `sys_role_menu` VALUES (1, 1056);
INSERT INTO `sys_role_menu` VALUES (1, 1057);
INSERT INTO `sys_role_menu` VALUES (1, 1058);
INSERT INTO `sys_role_menu` VALUES (1, 1059);
INSERT INTO `sys_role_menu` VALUES (1, 1060);
INSERT INTO `sys_role_menu` VALUES (1, 1065);
INSERT INTO `sys_role_menu` VALUES (1, 1067);
INSERT INTO `sys_role_menu` VALUES (1, 1068);
INSERT INTO `sys_role_menu` VALUES (1, 1069);
INSERT INTO `sys_role_menu` VALUES (1, 1070);
INSERT INTO `sys_role_menu` VALUES (1, 1071);
INSERT INTO `sys_role_menu` VALUES (1, 1074);
INSERT INTO `sys_role_menu` VALUES (1, 1075);
INSERT INTO `sys_role_menu` VALUES (1, 1076);
INSERT INTO `sys_role_menu` VALUES (1, 1077);
INSERT INTO `sys_role_menu` VALUES (1, 1078);
INSERT INTO `sys_role_menu` VALUES (1, 1079);
INSERT INTO `sys_role_menu` VALUES (1, 1080);
INSERT INTO `sys_role_menu` VALUES (1, 1081);
INSERT INTO `sys_role_menu` VALUES (1, 1082);
INSERT INTO `sys_role_menu` VALUES (1, 1083);
INSERT INTO `sys_role_menu` VALUES (1, 1134);
INSERT INTO `sys_role_menu` VALUES (1, 1141);
INSERT INTO `sys_role_menu` VALUES (1, 1191);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `order_num` bigint(20) NULL DEFAULT NULL COMMENT '序号',
  `up_inner_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支撑平台用户唯一标识',
  `sys_flag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0为管理员',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登陆时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE COMMENT '用户名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '超级管理员', '00', 'admin@mail.taiji.com.cn', '17053070000', '2', NULL, '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', 0, NULL, '0', '127.0.0.1', '2018-03-16 11:33:00', NULL, 'admin', '2018-03-16 11:33:00', 'admin', '2022-01-07 14:49:19', '0');

-- ----------------------------
-- Table structure for sys_user_expand
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_expand`;
CREATE TABLE `sys_user_expand`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '本地用户id',
  `open_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录，用户唯一标识',
  `user_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录，用户来源',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `openid`(`open_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '第三方登录 用户扩展' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_expand
-- ----------------------------
INSERT INTO `sys_user_expand` VALUES (1, 110, 'yang', 'tdf');

-- ----------------------------
-- Table structure for sys_user_expand_field
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_expand_field`;
CREATE TABLE `sys_user_expand_field`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `field_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展字段名',
  `field_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展字段值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sys_user用户表 字段动态扩展' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_expand_field
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段主键',
  `param_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `param_chinese_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段中文',
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插入表名',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（0启用，1停用）',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户扩展字段表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 125);
INSERT INTO `sys_user_role` VALUES (3, 127);
INSERT INTO `sys_user_role` VALUES (4, 127);
INSERT INTO `sys_user_role` VALUES (4, 131);
INSERT INTO `sys_user_role` VALUES (5, 128);
INSERT INTO `sys_user_role` VALUES (6, 128);
INSERT INTO `sys_user_role` VALUES (6, 129);
INSERT INTO `sys_user_role` VALUES (7, 128);
INSERT INTO `sys_user_role` VALUES (7, 129);
INSERT INTO `sys_user_role` VALUES (8, 128);
INSERT INTO `sys_user_role` VALUES (8, 129);
INSERT INTO `sys_user_role` VALUES (9, 128);
INSERT INTO `sys_user_role` VALUES (9, 129);
INSERT INTO `sys_user_role` VALUES (10, 128);
INSERT INTO `sys_user_role` VALUES (11, 128);
INSERT INTO `sys_user_role` VALUES (12, 128);
INSERT INTO `sys_user_role` VALUES (13, 127);
INSERT INTO `sys_user_role` VALUES (14, 127);
INSERT INTO `sys_user_role` VALUES (15, 127);
INSERT INTO `sys_user_role` VALUES (15, 131);
INSERT INTO `sys_user_role` VALUES (16, 125);
INSERT INTO `sys_user_role` VALUES (16, 130);
INSERT INTO `sys_user_role` VALUES (21, 127);
INSERT INTO `sys_user_role` VALUES (22, 125);
INSERT INTO `sys_user_role` VALUES (22, 130);
INSERT INTO `sys_user_role` VALUES (23, 125);
INSERT INTO `sys_user_role` VALUES (50, 125);
INSERT INTO `sys_user_role` VALUES (50, 128);
INSERT INTO `sys_user_role` VALUES (51, 125);
INSERT INTO `sys_user_role` VALUES (51, 128);
INSERT INTO `sys_user_role` VALUES (52, 125);
INSERT INTO `sys_user_role` VALUES (52, 128);
INSERT INTO `sys_user_role` VALUES (53, 128);
INSERT INTO `sys_user_role` VALUES (53, 129);
INSERT INTO `sys_user_role` VALUES (54, 128);
INSERT INTO `sys_user_role` VALUES (54, 129);
INSERT INTO `sys_user_role` VALUES (55, 127);
INSERT INTO `sys_user_role` VALUES (56, 127);
INSERT INTO `sys_user_role` VALUES (59, 127);
INSERT INTO `sys_user_role` VALUES (59, 131);

-- ----------------------------
-- Table structure for t_forum_business_operation_info
-- ----------------------------
DROP TABLE IF EXISTS `t_forum_business_operation_info`;
CREATE TABLE `t_forum_business_operation_info`  (
  `id` bigint(20) NOT NULL COMMENT '帖子ID',
  `theme` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `practical_oper_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实操类型',
  `belongs_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属环节',
  `practical_oper_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实操内容',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '业务实操类采集信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_forum_business_operation_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_forum_legal_statute_info
-- ----------------------------
DROP TABLE IF EXISTS `t_forum_legal_statute_info`;
CREATE TABLE `t_forum_legal_statute_info`  (
  `id` bigint(20) NOT NULL COMMENT '帖子ID',
  `theme` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `regulation` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属法规',
  `statute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法条',
  `statute_explanation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '法条释义',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '法规类采集信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_forum_legal_statute_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_forum_post_task_info
-- ----------------------------
DROP TABLE IF EXISTS `t_forum_post_task_info`;
CREATE TABLE `t_forum_post_task_info`  (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `task_count` int(8) NULL DEFAULT NULL COMMENT '任务数',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标识（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '帖子任务信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_forum_post_task_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
