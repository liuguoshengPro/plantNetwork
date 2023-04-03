USE tdcloudx_boot;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
                            `dept_id` bigint NOT NULL,
                            `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `sort_order` int NOT NULL DEFAULT '0' COMMENT '排序',
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime DEFAULT NULL COMMENT '修改时间',
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `parent_id` bigint DEFAULT NULL,
                            `tenant_id` bigint DEFAULT NULL,
                            PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, '山东', 1, ' ', ' ', '2018-01-22 19:00:23', '2019-05-18 14:56:06', '0', 0, 1);
INSERT INTO `sys_dept` VALUES (2, '沙县国际', 2, ' ', ' ', '2018-01-22 19:00:38', '2019-05-18 14:12:07', '0', 0, 1);
INSERT INTO `sys_dept` VALUES (3, '潍坊', 3, ' ', ' ', '2018-01-22 19:00:44', '2019-05-18 14:56:11', '0', 1, 1);
INSERT INTO `sys_dept` VALUES (4, '高新', 4, ' ', ' ', '2018-01-22 19:00:52', '2019-05-18 14:56:09', '0', 3, 1);
INSERT INTO `sys_dept` VALUES (5, '院校', 5, ' ', ' ', '2018-01-22 19:00:57', '2019-05-18 14:56:13', '0', 4, 1);
INSERT INTO `sys_dept` VALUES (6, '潍院', 6, ' ', ' ', '2018-01-22 19:01:06', '2019-05-18 14:56:16', '1', 5, 1);
INSERT INTO `sys_dept` VALUES (7, '山东沙县', 7, ' ', ' ', '2018-01-22 19:01:57', '2019-05-18 14:12:17', '0', 2, 1);
INSERT INTO `sys_dept` VALUES (8, '潍坊沙县', 8, ' ', ' ', '2018-01-22 19:02:03', '2019-05-18 14:12:19', '0', 7, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_relation`;
CREATE TABLE `sys_dept_relation` (
                                     `ancestor` bigint NOT NULL COMMENT '祖先节点',
                                     `descendant` bigint NOT NULL COMMENT '后代节点',
                                     PRIMARY KEY (`ancestor`,`descendant`) USING BTREE,
                                     KEY `idx1` (`ancestor`) USING BTREE,
                                     KEY `idx2` (`descendant`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门关系表';

-- ----------------------------
-- Records of sys_dept_relation
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept_relation` VALUES (1, 1);
INSERT INTO `sys_dept_relation` VALUES (1, 3);
INSERT INTO `sys_dept_relation` VALUES (1, 4);
INSERT INTO `sys_dept_relation` VALUES (1, 5);
INSERT INTO `sys_dept_relation` VALUES (2, 2);
INSERT INTO `sys_dept_relation` VALUES (2, 7);
INSERT INTO `sys_dept_relation` VALUES (2, 8);
INSERT INTO `sys_dept_relation` VALUES (2, 11);
INSERT INTO `sys_dept_relation` VALUES (2, 12);
INSERT INTO `sys_dept_relation` VALUES (3, 3);
INSERT INTO `sys_dept_relation` VALUES (3, 4);
INSERT INTO `sys_dept_relation` VALUES (3, 5);
INSERT INTO `sys_dept_relation` VALUES (4, 4);
INSERT INTO `sys_dept_relation` VALUES (4, 5);
INSERT INTO `sys_dept_relation` VALUES (5, 5);
INSERT INTO `sys_dept_relation` VALUES (7, 7);
INSERT INTO `sys_dept_relation` VALUES (7, 8);
INSERT INTO `sys_dept_relation` VALUES (7, 11);
INSERT INTO `sys_dept_relation` VALUES (7, 12);
INSERT INTO `sys_dept_relation` VALUES (8, 8);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
                             `post_id` bigint NOT NULL COMMENT '岗位ID',
                             `post_code` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '岗位编码',
                             `post_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL COMMENT '岗位名称',
                             `post_sort` int(0) NOT NULL COMMENT '岗位排序',
                             `remark` varchar(500) CHARACTER SET utf8mb4 NULL DEFAULT NULL COMMENT '岗位描述',
                             `del_flag` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
                             `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                             `create_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '创建人',
                             `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                             `update_by` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '更新人',
                             `tenant_id` bigint(0) NULL DEFAULT NULL COMMENT '租户ID',
                             PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'CTO', 'CTO', 0, 'CTO', '0', '2022-03-26 13:48:17', '', '2022-03-26 13:50:14', '', 1);
INSERT INTO `sys_post` VALUES (2, 'CEO', 'CEO', 1, 'CEO', '0', '2022-03-26 13:48:27', '', '2022-03-26 13:48:38', '', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
                                  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
                                  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
                                  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT = '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
                            `id` bigint NOT NULL COMMENT '编号',
                            `dict_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `description` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `system_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '所属租户',
                            PRIMARY KEY (`id`) USING BTREE,
                            KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (1, 'log_type', '日志类型', ' ', ' ', '2019-03-19 11:06:44', '2019-03-19 11:06:44', '异常、正常', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (2, 'social_type', '社交登录', ' ', ' ', '2019-03-19 11:09:44', '2019-03-19 11:09:44', '微信、QQ', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (4, 'job_type', '定时任务类型', ' ', ' ', '2019-03-19 11:22:21', '2019-03-19 11:22:21', 'quartz', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (5, 'job_status', '定时任务状态', ' ', ' ', '2019-03-19 11:24:57', '2019-03-19 11:24:57', '发布状态、运行状态', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (6, 'job_execute_status', '定时任务执行状态', ' ', ' ', '2019-03-19 11:26:15', '2019-03-19 11:26:15', '正常、异常', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (7, 'misfire_policy', '定时任务错失执行策略', ' ', ' ', '2019-03-19 11:27:19', '2019-03-19 11:27:19', '周期', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (8, 'gender', '性别', ' ', ' ', '2019-03-27 13:44:06', '2019-03-27 13:44:06', '微信用户性别', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (9, 'subscribe', '订阅状态', ' ', ' ', '2019-03-27 13:48:33', '2019-03-27 13:48:33', '公众号订阅状态', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (10, 'response_type', '回复', ' ', ' ', '2019-03-28 21:29:21', '2019-03-28 21:29:21', '微信消息是否已回复', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (11, 'param_type', '参数配置', ' ', ' ', '2019-04-29 18:20:47', '2019-04-29 18:20:47', '检索、原文、报表、安全、文档、消息、其他', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (12, 'status_type', '租户状态', ' ', ' ', '2019-05-15 16:31:08', '2019-05-15 16:31:08', '租户状态', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (13, 'dict_type', '字典类型', ' ', ' ', '2019-05-16 14:16:20', '2019-05-16 14:20:16', '系统类不能修改', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (17, 'grant_types', '授权类型', ' ', ' ', '2019-08-13 07:34:10', '2019-08-13 07:34:10', NULL, '1', '0', 1);
INSERT INTO `sys_dict` VALUES (18, 'style_type', '前端风格', ' ', ' ', '2020-02-07 03:49:28', '2020-02-07 03:50:40', '0-Avue 1-element', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (19, 'captcha_flag_types', '验证码开关', ' ', ' ', '2020-11-18 06:53:25', '2020-11-18 06:53:25', '是否校验验证码', '1', '0', 1);
INSERT INTO `sys_dict` VALUES (20, 'enc_flag_types', '前端密码加密', ' ', ' ', '2020-11-18 06:54:44', '2020-11-18 06:54:44', '前端密码是否加密传输', '1', '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
                                 `id` bigint NOT NULL COMMENT '编号',
                                 `dict_id` bigint NOT NULL,
                                 `item_value` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                                 `label` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                                 `dict_type` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                                 `description` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                                 `sort_order` int NOT NULL DEFAULT '0' COMMENT '排序（升序）',
                                 `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                                 `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                                 `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                 `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                 `remarks` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                                 `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                 `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '所属租户',
                                 PRIMARY KEY (`id`) USING BTREE,
                                 KEY `sys_dict_value` (`item_value`) USING BTREE,
                                 KEY `sys_dict_label` (`label`) USING BTREE,
                                 KEY `sys_dict_item_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典项';

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_item` VALUES (1, 1, '9', '异常', 'log_type', '日志异常', 1, ' ', ' ', '2019-03-19 11:08:59', '2019-03-25 12:49:13', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (2, 1, '0', '正常', 'log_type', '日志正常', 0, ' ', ' ', '2019-03-19 11:09:17', '2019-03-25 12:49:18', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (3, 2, 'WX', '微信', 'social_type', '微信登录', 0, ' ', ' ', '2019-03-19 11:10:02', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (4, 2, 'QQ', 'QQ', 'social_type', 'QQ登录', 1, ' ', ' ', '2019-03-19 11:10:14', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (9, 4, '1', 'java类', 'job_type', 'java类', 1, ' ', ' ', '2019-03-19 11:22:37', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (10, 4, '2', 'spring bean', 'job_type', 'spring bean容器实例', 2, ' ', ' ', '2019-03-19 11:23:05', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (11, 4, '9', '其他', 'job_type', '其他类型', 9, ' ', ' ', '2019-03-19 11:23:31', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (12, 4, '3', 'Rest 调用', 'job_type', 'Rest 调用', 3, ' ', ' ', '2019-03-19 11:23:57', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (13, 4, '4', 'jar', 'job_type', 'jar类型', 4, ' ', ' ', '2019-03-19 11:24:20', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (14, 5, '1', '未发布', 'job_status', '未发布', 1, ' ', ' ', '2019-03-19 11:25:18', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (15, 5, '2', '运行中', 'job_status', '运行中', 2, ' ', ' ', '2019-03-19 11:25:31', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (16, 5, '3', '暂停', 'job_status', '暂停', 3, ' ', ' ', '2019-03-19 11:25:42', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (17, 6, '0', '正常', 'job_execute_status', '正常', 0, ' ', ' ', '2019-03-19 11:26:27', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (18, 6, '1', '异常', 'job_execute_status', '异常', 1, ' ', ' ', '2019-03-19 11:26:41', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (19, 7, '1', '错失周期立即执行', 'misfire_policy', '错失周期立即执行', 1, ' ', ' ', '2019-03-19 11:27:45', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (20, 7, '2', '错失周期执行一次', 'misfire_policy', '错失周期执行一次', 2, ' ', ' ', '2019-03-19 11:27:57', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (21, 7, '3', '下周期执行', 'misfire_policy', '下周期执行', 3, ' ', ' ', '2019-03-19 11:28:08', '2019-03-25 12:49:36', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (22, 8, '1', '男', 'gender', '微信-男', 0, ' ', ' ', '2019-03-27 13:45:13', '2019-03-27 13:45:13', '微信-男', '0', 1);
INSERT INTO `sys_dict_item` VALUES (23, 8, '2', '女', 'gender', '女-微信', 1, ' ', ' ', '2019-03-27 13:45:34', '2019-03-27 13:45:34', '女-微信', '0', 1);
INSERT INTO `sys_dict_item` VALUES (24, 8, '0', '未知', 'gender', 'x性别未知', 3, ' ', ' ', '2019-03-27 13:45:57', '2019-03-27 13:45:57', 'x性别未知', '0', 1);
INSERT INTO `sys_dict_item` VALUES (25, 9, '0', '未关注', 'subscribe', '公众号-未关注', 0, ' ', ' ', '2019-03-27 13:49:07', '2019-03-27 13:49:07', '公众号-未关注', '0', 1);
INSERT INTO `sys_dict_item` VALUES (26, 9, '1', '已关注', 'subscribe', '公众号-已关注', 1, ' ', ' ', '2019-03-27 13:49:26', '2019-03-27 13:49:26', '公众号-已关注', '0', 1);
INSERT INTO `sys_dict_item` VALUES (27, 10, '0', '未回复', 'response_type', '微信消息-未回复', 0, ' ', ' ', '2019-03-28 21:29:47', '2019-03-28 21:29:47', '微信消息-未回复', '0', 1);
INSERT INTO `sys_dict_item` VALUES (28, 10, '1', '已回复', 'response_type', '微信消息-已回复', 1, ' ', ' ', '2019-03-28 21:30:08', '2019-03-28 21:30:08', '微信消息-已回复', '0', 1);
INSERT INTO `sys_dict_item` VALUES (29, 11, '1', '检索', 'param_type', '检索', 0, ' ', ' ', '2019-04-29 18:22:17', '2019-04-29 18:22:17', '检索', '0', 1);
INSERT INTO `sys_dict_item` VALUES (30, 11, '2', '原文', 'param_type', '原文', 0, ' ', ' ', '2019-04-29 18:22:27', '2019-04-29 18:22:27', '原文', '0', 1);
INSERT INTO `sys_dict_item` VALUES (31, 11, '3', '报表', 'param_type', '报表', 0, ' ', ' ', '2019-04-29 18:22:36', '2019-04-29 18:22:36', '报表', '0', 1);
INSERT INTO `sys_dict_item` VALUES (32, 11, '4', '安全', 'param_type', '安全', 0, ' ', ' ', '2019-04-29 18:22:46', '2019-04-29 18:22:46', '安全', '0', 1);
INSERT INTO `sys_dict_item` VALUES (33, 11, '5', '文档', 'param_type', '文档', 0, ' ', ' ', '2019-04-29 18:22:56', '2019-04-29 18:22:56', '文档', '0', 1);
INSERT INTO `sys_dict_item` VALUES (34, 11, '6', '消息', 'param_type', '消息', 0, ' ', ' ', '2019-04-29 18:23:05', '2019-04-29 18:23:05', '消息', '0', 1);
INSERT INTO `sys_dict_item` VALUES (35, 11, '9', '其他', 'param_type', '其他', 0, ' ', ' ', '2019-04-29 18:23:16', '2019-04-29 18:23:16', '其他', '0', 1);
INSERT INTO `sys_dict_item` VALUES (36, 11, '0', '默认', 'param_type', '默认', 0, ' ', ' ', '2019-04-29 18:23:30', '2019-04-29 18:23:30', '默认', '0', 1);
INSERT INTO `sys_dict_item` VALUES (37, 12, '0', '正常', 'status_type', '状态正常', 0, ' ', ' ', '2019-05-15 16:31:34', '2019-05-16 22:30:46', '状态正常', '0', 1);
INSERT INTO `sys_dict_item` VALUES (38, 12, '9', '冻结', 'status_type', '状态冻结', 1, ' ', ' ', '2019-05-15 16:31:56', '2019-05-16 22:30:50', '状态冻结', '0', 1);
INSERT INTO `sys_dict_item` VALUES (39, 13, '1', '系统类', 'dict_type', '系统类字典', 0, ' ', ' ', '2019-05-16 14:20:40', '2019-05-16 14:20:40', '不能修改删除', '0', 1);
INSERT INTO `sys_dict_item` VALUES (40, 13, '0', '业务类', 'dict_type', '业务类字典', 0, ' ', ' ', '2019-05-16 14:20:59', '2019-05-16 14:20:59', '可以修改', '0', 1);
INSERT INTO `sys_dict_item` VALUES (49, 2, 'GITEE', '码云', 'social_type', '码云', 2, ' ', ' ', '2019-06-28 09:59:12', '2019-06-28 09:59:12', '码云', '0', 1);
INSERT INTO `sys_dict_item` VALUES (50, 2, 'OSC', '开源中国', 'social_type', '开源中国登录', 2, ' ', ' ', '2019-06-28 10:04:32', '2019-06-28 10:04:32', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (51, 17, 'password', '密码模式', 'grant_types', '支持oauth密码模式', 0, ' ', ' ', '2019-08-13 07:35:28', '2019-08-13 07:35:28', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (52, 17, 'authorization_code', '授权码模式', 'grant_types', 'oauth2 授权码模式', 1, ' ', ' ', '2019-08-13 07:36:07', '2019-08-13 07:36:07', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (53, 17, 'client_credentials', '客户端模式', 'grant_types', 'oauth2 客户端模式', 2, ' ', ' ', '2019-08-13 07:36:30', '2019-08-13 07:36:30', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (54, 17, 'refresh_token', '刷新模式', 'grant_types', 'oauth2 刷新token', 3, ' ', ' ', '2019-08-13 07:36:54', '2019-08-13 07:36:54', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (55, 17, 'implicit', '简化模式', 'grant_types', 'oauth2 简化模式', 4, ' ', ' ', '2019-08-13 07:39:32', '2019-08-13 07:39:32', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (56, 18, '0', 'Avue', 'style_type', 'Avue风格', 0, ' ', ' ', '2020-02-07 03:52:52', '2020-02-07 03:52:52', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (57, 18, '1', 'element', 'style_type', 'element-ui', 1, ' ', ' ', '2020-02-07 03:53:12', '2020-02-07 03:53:12', '', '0', 1);
INSERT INTO `sys_dict_item` VALUES (58, 19, '0', '关', 'captcha_flag_types', '不校验验证码', 0, ' ', ' ', '2020-11-18 06:53:58', '2020-11-18 06:53:58', '不校验验证码 -0', '0', 1);
INSERT INTO `sys_dict_item` VALUES (59, 19, '1', '开', 'captcha_flag_types', '校验验证码', 1, ' ', ' ', '2020-11-18 06:54:15', '2020-11-18 06:54:15', '不校验验证码-1', '0', 1);
INSERT INTO `sys_dict_item` VALUES (60, 20, '0', '否', 'enc_flag_types', '不加密', 0, ' ', ' ', '2020-11-18 06:55:31', '2020-11-18 06:55:31', '不加密-0', '0', 1);
INSERT INTO `sys_dict_item` VALUES (61, 20, '1', '是', 'enc_flag_types', '加密', 1, ' ', ' ', '2020-11-18 06:55:51', '2020-11-18 06:55:51', '加密-1', '0', 1);
INSERT INTO `sys_dict_item` VALUES (62, 15, 'MERGE_PAY', '聚合支付', 'channel_id', '聚合支付', 1, ' ', ' ', '2019-05-30 19:08:08', '2019-06-18 13:51:53', '聚合支付', '0', 1);
INSERT INTO `sys_dict_item` VALUES (63, 2, 'CAS', 'CAS登录', 'social_type', 'CAS 单点登录系统', 3, ' ', ' ', '2022-02-18 13:56:25', '2022-02-18 13:56:28', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (64, 2, 'DINGTALK', '钉钉', 'social_type', '钉钉', 3, ' ', ' ', '2022-02-18 13:56:25', '2022-02-18 13:56:28', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (65, 2, 'WEIXIN_CP', '企业微信', 'social_type', '企业微信', 3, ' ', ' ', '2022-02-18 13:56:25', '2022-02-18 13:56:28', NULL, '0', 1);
INSERT INTO `sys_dict_item` VALUES (66, 18, '2', 'APP', 'style_type', 'uview风格', 1, ' ', ' ', '2020-02-07 03:53:12', '2020-02-07 03:53:12', '', '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
                            `id` bigint NOT NULL COMMENT '编号',
                            `file_name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `bucket_name` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `original` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `type` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `file_size` bigint DEFAULT NULL COMMENT '文件大小',
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `create_time` datetime DEFAULT NULL COMMENT '上传时间',
                            `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `tenant_id` bigint DEFAULT NULL COMMENT '所属租户',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文件管理表';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
                           `id` bigint NOT NULL COMMENT '编号',
                           `log_type` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                           `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `service_id` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                           `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                           `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                           `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                           `remote_addr` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `user_agent` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `request_uri` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `method` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
                           `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
                           `time` bigint DEFAULT NULL COMMENT '执行时间',
                           `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                           `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
                           `tenant_id` bigint DEFAULT '0' COMMENT '所属租户',
                           PRIMARY KEY (`id`) USING BTREE,
                           KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
                           KEY `sys_log_type` (`log_type`) USING BTREE,
                           KEY `sys_log_create_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
                            `menu_id` bigint NOT NULL COMMENT '菜单ID',
                            `name` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `permission` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `path` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `parent_id` bigint DEFAULT NULL COMMENT '父菜单ID',
                            `icon` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `sort_order` int DEFAULT '1' COMMENT '排序值',
                            `keep_alive` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `menu_type` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `tenant_id` bigint unsigned DEFAULT NULL COMMENT '租户ID',
                            PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1000, '权限管理', NULL, '/admin', -1, 'icon-quanxianguanli', 0, '0', '0', ' ', '2018-09-28 08:29:53', ' ', '2022-01-25 17:24:21', '0', 1);
INSERT INTO `sys_menu` VALUES (1100, '用户管理', NULL, '/admin/user/index', 1000, 'icon-yonghuguanli', 1, '0', '0', ' ', '2017-11-02 22:24:37', ' ', '2022-01-27 11:58:48', '0', 1);
INSERT INTO `sys_menu` VALUES (1101, '用户新增', 'sys_user_add', NULL, 1100, NULL, 1, '0', '1', ' ', '2017-11-08 09:52:09', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1102, '用户修改', 'sys_user_edit', NULL, 1100, NULL, 1, '0', '1', ' ', '2017-11-08 09:52:48', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1103, '用户删除', 'sys_user_del', NULL, 1100, NULL, 1, '0', '1', ' ', '2017-11-08 09:54:01', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1104, '导入导出', 'sys_user_export', NULL, 1100, NULL, 1, '0', '1', ' ', '2017-11-08 09:54:01', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1200, '菜单管理', NULL, '/admin/menu/index', 1000, 'icon-caidanguanli', 2, '0', '0', ' ', '2017-11-08 09:57:27', ' ', '2022-01-27 11:58:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1201, '菜单新增', 'sys_menu_add', NULL, 1200, NULL, 1, '0', '1', ' ', '2017-11-08 10:15:53', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1202, '菜单修改', 'sys_menu_edit', NULL, 1200, NULL, 1, '0', '1', ' ', '2017-11-08 10:16:23', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1203, '菜单删除', 'sys_menu_del', NULL, 1200, NULL, 1, '0', '1', ' ', '2017-11-08 10:16:43', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1300, '角色管理', NULL, '/admin/role/index', 1000, 'icon-jiaoseguanli', 3, '0', '0', ' ', '2017-11-08 10:13:37', ' ', '2022-01-27 11:59:01', '0', 1);
INSERT INTO `sys_menu` VALUES (1301, '角色新增', 'sys_role_add', NULL, 1300, NULL, 1, '0', '1', ' ', '2017-11-08 10:14:18', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1302, '角色修改', 'sys_role_edit', NULL, 1300, NULL, 1, '0', '1', ' ', '2017-11-08 10:14:41', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1303, '角色删除', 'sys_role_del', NULL, 1300, NULL, 1, '0', '1', ' ', '2017-11-08 10:14:59', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1304, '分配权限', 'sys_role_perm', NULL, 1300, NULL, 1, '0', '1', ' ', '2018-04-20 07:22:55', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1305, '角色导入导出', 'sys_role_export', NULL, 1300, NULL, 4, '0', '1', ' ', '2022-03-26 15:54:34', ' ', NULL, '0', 1);
INSERT INTO `sys_menu` VALUES (1400, '部门管理', NULL, '/admin/dept/index', 1000, 'icon-web-icon-', 4, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2022-01-27 11:59:06', '0', 1);
INSERT INTO `sys_menu` VALUES (1401, '部门新增', 'sys_dept_add', NULL, 1400, NULL, 1, '0', '1', ' ', '2018-01-20 14:56:16', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1402, '部门修改', 'sys_dept_edit', NULL, 1400, NULL, 1, '0', '1', ' ', '2018-01-20 14:56:59', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1403, '部门删除', 'sys_dept_del', NULL, 1400, NULL, 1, '0', '1', ' ', '2018-01-20 14:57:28', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1404, '开放互联', 'sys_connect_sync', NULL, 1400, NULL, 1, '0', '1', ' ', '2018-01-20 14:57:28', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (1500, '租户管理', '', '/admin/tenant/index', 1000, 'icon-erji-zuhushouye', 5, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2022-01-27 11:59:14', '0', 1);
INSERT INTO `sys_menu` VALUES (1501, '租户新增', 'admin_systenant_add', NULL, 1500, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:56:52', '0', 1);
INSERT INTO `sys_menu` VALUES (1502, '租户修改', 'admin_systenant_edit', NULL, 1500, '1', 1, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:56:53', '0', 1);
INSERT INTO `sys_menu` VALUES (1503, '租户删除', 'admin_systenant_del', NULL, 1500, '1', 2, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:56:54', '0', 1);
INSERT INTO `sys_menu` VALUES (1600, '岗位管理', NULL, '/admin/post/index', 1000, 'icon-record', 6, '0', '0', ' ', '2022-03-26 13:04:14', ' ', NULL, '0', 1);
INSERT INTO `sys_menu` VALUES (1601, '岗位信息查看', 'sys_post_view', NULL, 1600, NULL, 0, '0', '1', ' ', '2022-03-26 13:05:34', ' ', NULL, '0', 1);
INSERT INTO `sys_menu` VALUES (1602, '岗位信息新增', 'sys_post_add', NULL, 1600, NULL, 1, '0', '1', ' ', '2022-03-26 13:06:00', ' ', NULL, '0', 1);
INSERT INTO `sys_menu` VALUES (1603, '岗位信息修改', 'sys_post_edit', NULL, 1600, NULL, 2, '0', '1', ' ', '2022-03-26 13:06:31', ' ', '2022-03-26 13:06:38', '0', 1);
INSERT INTO `sys_menu` VALUES (1604, '岗位信息删除', 'sys_post_del', NULL, 1600, NULL, 3, '0', '1', ' ', '2022-03-26 13:06:31', ' ', NULL, '0', 1);
INSERT INTO `sys_menu` VALUES (1605, '岗位导入导出', 'sys_post_export', NULL, 1600, NULL, 4, '0', '1', ' ', '2022-03-26 13:06:31', ' ', '2022-03-26 06:32:02', '0', 1);
INSERT INTO `sys_menu` VALUES (2000, '系统管理', NULL, '/system', -1, 'icon-xitongpeizhi', 1, '0', '0', ' ', '2017-11-07 20:56:00', ' ', '2022-02-05 16:15:14', '0', 1);
INSERT INTO `sys_menu` VALUES (2100, '日志管理', NULL, '/admin/log/index', 2000, 'icon-rizhi', 5, '0', '0', ' ', '2017-11-20 14:06:22', ' ', '2020-03-24 08:56:56', '0', 1);
INSERT INTO `sys_menu` VALUES (2101, '日志删除', 'sys_log_del', NULL, 2100, NULL, 1, '0', '1', ' ', '2017-11-20 20:37:37', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2102, '导入导出', 'sys_log_export', NULL, 2100, NULL, 1, '0', '1', ' ', '2017-11-08 09:54:01', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2200, '字典管理', NULL, '/admin/dict/index', 2000, 'icon-navicon-zdgl', 6, '0', '0', ' ', '2017-11-29 11:30:52', ' ', '2020-03-24 08:56:58', '0', 1);
INSERT INTO `sys_menu` VALUES (2201, '字典删除', 'sys_dict_del', NULL, 2200, NULL, 1, '0', '1', ' ', '2017-11-29 11:30:11', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2202, '字典新增', 'sys_dict_add', NULL, 2200, NULL, 1, '0', '1', ' ', '2018-05-11 22:34:55', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2203, '字典修改', 'sys_dict_edit', NULL, 2200, NULL, 1, '0', '1', ' ', '2018-05-11 22:36:03', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2210, '参数管理', NULL, '/admin/param/index', 2000, 'icon-canshu', 7, '1', '0', ' ', '2019-04-29 22:16:50', ' ', '2020-03-24 08:57:10', '0', 1);
INSERT INTO `sys_menu` VALUES (2211, '参数新增', 'admin_syspublicparam_add', NULL, 2210, NULL, 1, '0', '1', ' ', '2019-04-29 22:17:36', ' ', '2020-03-24 08:57:11', '0', 1);
INSERT INTO `sys_menu` VALUES (2212, '参数删除', 'admin_syspublicparam_del', NULL, 2210, NULL, 1, '0', '1', ' ', '2019-04-29 22:17:55', ' ', '2020-03-24 08:57:12', '0', 1);
INSERT INTO `sys_menu` VALUES (2213, '参数编辑', 'admin_syspublicparam_edit', NULL, 2210, NULL, 1, '0', '1', ' ', '2019-04-29 22:18:14', ' ', '2020-03-24 08:57:13', '0', 1);
INSERT INTO `sys_menu` VALUES (2300, '代码生成', '', '/gen/index', 9000, 'icon-weibiaoti46', 1, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:57:14', '0', 1);
INSERT INTO `sys_menu` VALUES (2400, '终端管理', '', '/admin/client/index', 2000, 'icon-bangzhushouji', 9, '1', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:57:15', '0', 1);
INSERT INTO `sys_menu` VALUES (2401, '客户端新增', 'sys_client_add', NULL, 2400, '1', 1, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2402, '客户端修改', 'sys_client_edit', NULL, 2400, NULL, 1, '0', '1', ' ', '2018-05-15 21:37:06', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2403, '客户端删除', 'sys_client_del', NULL, 2400, NULL, 1, '0', '1', ' ', '2018-05-15 21:39:16', ' ', '2021-05-25 03:12:55', '0', 1);
INSERT INTO `sys_menu` VALUES (2500, '密钥管理', '', '/admin/social/index', 2000, 'icon-miyue', 10, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:57:18', '0', 1);
INSERT INTO `sys_menu` VALUES (2501, '密钥新增', 'sys_social_details_add', NULL, 2500, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:19', '0', 1);
INSERT INTO `sys_menu` VALUES (2502, '密钥修改', 'sys_social_details_edit', NULL, 2500, '1', 1, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:19', '0', 1);
INSERT INTO `sys_menu` VALUES (2503, '密钥删除', 'sys_social_details_del', NULL, 2500, '1', 2, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:23', '0', 1);
INSERT INTO `sys_menu` VALUES (2600, '令牌管理', NULL, '/admin/token/index', 2000, 'icon-denglvlingpai', 11, '0', '0', ' ', '2018-09-04 05:58:41', ' ', '2020-03-24 08:57:24', '0', 1);
INSERT INTO `sys_menu` VALUES (2601, '令牌删除', 'sys_token_del', NULL, 2600, NULL, 1, '0', '1', ' ', '2018-09-04 05:59:50', ' ', '2020-03-24 08:57:24', '0', 1);
INSERT INTO `sys_menu` VALUES (2800, 'Quartz管理', '', '/daemon/job-manage/index', 2000, 'icon-guanwangfangwen', 8, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:57:26', '0', 1);
INSERT INTO `sys_menu` VALUES (2810, '任务新增', 'job_sys_job_add', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:26', '0', 1);
INSERT INTO `sys_menu` VALUES (2820, '任务修改', 'job_sys_job_edit', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:27', '0', 1);
INSERT INTO `sys_menu` VALUES (2830, '任务删除', 'job_sys_job_del', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:28', '0', 1);
INSERT INTO `sys_menu` VALUES (2840, '任务暂停', 'job_sys_job_shutdown_job', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:28', '0', 1);
INSERT INTO `sys_menu` VALUES (2850, '任务开始', 'job_sys_job_start_job', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:29', '0', 1);
INSERT INTO `sys_menu` VALUES (2860, '任务刷新', 'job_sys_job_refresh_job', NULL, 2800, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:57:30', '0', 1);
INSERT INTO `sys_menu` VALUES (2870, '执行任务', 'job_sys_job_run_job', NULL, 2800, '1', 0, '0', '1', ' ', '2019-08-08 15:35:18', ' ', '2020-03-24 08:57:31', '0', 1);
INSERT INTO `sys_menu` VALUES (3000, '系统监控', NULL, '/daemon', -1, 'icon-msnui-supervise', 2, '0', '2', ' ', '2018-07-27 01:13:21', ' ', '2020-03-24 08:57:31', '0', 1);
INSERT INTO `sys_menu` VALUES (3500, '文档扩展', NULL, 'http://tdcloud-gateway:9999/admin/doc.html', 3000, 'icon-wendang', 2, '0', '0', ' ', '2018-06-26 10:50:32', ' ', '2020-03-24 08:57:36', '0', 1);
INSERT INTO `sys_menu` VALUES (3600, 'Quartz日志', '', '/daemon/job-log/index', 3000, 'icon-gtsquanjushiwufuwuGTS', 8, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:57:37', '0', 1);
INSERT INTO `sys_menu` VALUES (3700, '注册配置', NULL, '', 3000, 'icon-line', 10, '0', '0', ' ', '2018-01-25 11:08:52', ' ', '2020-03-24 08:57:37', '1', 1);
INSERT INTO `sys_menu` VALUES (8000, '文件管理', NULL, '/admin/file/index', 2000, 'icon-wenjianguanli', 6, '0', '0', ' ', '2019-06-25 12:44:46', ' ', '2020-03-24 08:58:41', '0', 1);
INSERT INTO `sys_menu` VALUES (8001, '删除文件', 'sys_file_del', NULL, 8000, NULL, 1, '0', '1', ' ', '2019-06-25 13:41:41', ' ', '2020-03-24 08:58:42', '0', 1);
INSERT INTO `sys_menu` VALUES (9000, '开发平台', NULL, '/gen', -1, 'icon-shejiyukaifa-', 9, '0', '0', ' ', '2019-08-12 09:35:16', ' ', '2020-03-24 08:58:48', '0', 1);
INSERT INTO `sys_menu` VALUES (9001, '表单管理', '', '/gen/form', 9000, 'icon-record', 3, '0', '0', ' ', '2018-01-20 13:17:19', ' ', '2020-03-24 08:58:44', '0', 1);
INSERT INTO `sys_menu` VALUES (9002, '表单新增', 'gen_form_add', NULL, 9001, '1', 0, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:58:45', '0', 1);
INSERT INTO `sys_menu` VALUES (9003, '表单修改', 'gen_form_edit', NULL, 9001, '1', 1, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:58:46', '0', 1);
INSERT INTO `sys_menu` VALUES (9004, '表单删除', 'gen_form_del', NULL, 9001, '1', 2, '0', '1', ' ', '2018-05-15 21:35:18', ' ', '2020-03-24 08:58:47', '0', 1);
INSERT INTO `sys_menu` VALUES (9005, '数据源管理', NULL, '/gen/datasource', 9000, 'icon-mysql', 0, '0', '0', ' ', '2019-08-12 09:42:11', ' ', '2020-03-24 08:58:49', '0', 1);
INSERT INTO `sys_menu` VALUES (9006, '表单设计', NULL, '/gen/design', 9000, 'icon-biaodanbiaoqian', 2, '0', '0', ' ', '2019-08-16 10:08:56', ' ', '2020-03-24 08:58:53', '0', 1);
INSERT INTO `sys_menu` VALUES (9007, '低代码', 'gen_api_designer', NULL , 9001, '1', 3, '0', '1', ' ', '2019-08-16 10:08:56', ' ', '2020-03-24 08:58:53', '0', 1);
INSERT INTO `sys_menu` VALUES (15100, '租户菜单', 'admin_systenant_tenantmenu', NULL, 1500, '1', 1, '0', '1', 'admin', '2022-12-12 09:01:41', ' ', '2023-01-11 05:52:51', '0', 1);
INSERT INTO `sys_menu` VALUES (15101, '租户菜单删除', 'admin_systenantmenu_del', NULL, 15100, '1', 1, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2023-01-11 05:52:51', '0', 1);
INSERT INTO `sys_menu` VALUES (15102, '租户菜单编辑', 'admin_systenantmenu_edit', NULL, 15100, '1', 1, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2023-01-11 05:52:51', '0', 1);
INSERT INTO `sys_menu` VALUES (15103, '租户菜单新增', 'admin_systenantmenu_add', NULL, 15100, '1', 1, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2022-12-12 09:02:00', '0', 1);

COMMIT;

-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_client_details`;
CREATE TABLE `sys_oauth_client_details`
(
                                    `id`  bigint NOT NULL COMMENT 'ID',
                                    `client_id` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
                                    `resource_ids` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `client_secret` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `scope` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `authorities` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `access_token_validity` int DEFAULT NULL,
                                    `refresh_token_validity` int DEFAULT NULL,
                                    `additional_information` varchar(4096) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `autoapprove` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                    `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                                    `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                                    `create_time` datetime DEFAULT NULL COMMENT '上传时间',
                                    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
                                    `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '所属租户',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='终端信息表';

-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_oauth_client_details` VALUES (1, 'app', NULL, 'app', 'server', 'password,refresh_token,authorization_code,client_credentials,mobile', 'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso', NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (2, 'daemon', NULL, 'daemon', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (3, 'gen', NULL, 'gen', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (4, 'mp', NULL, 'mp', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (5, 'pig', NULL, 'pig', 'server', 'password,refresh_token,authorization_code,client_credentials,mobile', 'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso', NULL, 43200, 2592001, '{\"enc_flag\":\"1\",\"captcha_flag\":\"1\"}', 'false', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (6, 'test', NULL, 'test', 'server', 'password,refresh_token', NULL, NULL, 43200, 2592001, '{ \"enc_flag\":\"1\",\"captcha_flag\":\"0\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
INSERT INTO `sys_oauth_client_details` VALUES (7, 'social', NULL, 'social', 'server', 'password,refresh_token,mobile', NULL, NULL, 43200, 2592001, '{ \"enc_flag\":\"0\",\"captcha_flag\":\"0\"}', 'true', '0', ' ', ' ', NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_public_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_public_param`;
CREATE TABLE `sys_public_param` (
                                    `public_id` bigint NOT NULL COMMENT '编号',
                                    `public_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `public_key` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `public_value` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `status` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                    `validate_code` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
                                    `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                                    `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                                    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                                    `public_type` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                    `system_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                    `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                                    `tenant_id` bigint DEFAULT NULL COMMENT '租户ID',
                                    PRIMARY KEY (`public_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='公共参数配置表';

-- ----------------------------
-- Records of sys_public_param
-- ----------------------------
BEGIN;
INSERT INTO `sys_public_param` VALUES (1, '租户默认来源', 'TENANT_DEFAULT_ID', '1', '0', '', ' ', ' ', '2020-05-12 04:03:46', '2020-06-20 08:56:30', '2', '0', '1', 1);
INSERT INTO `sys_public_param` VALUES (2, '租户默认部门名称', 'TENANT_DEFAULT_DEPTNAME', '租户默认部门', '0', '', ' ', ' ', '2020-05-12 03:36:32', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (3, '租户默认账户', 'TENANT_DEFAULT_USERNAME', 'admin', '0', '', ' ', ' ', '2020-05-12 04:05:04', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (4, '租户默认密码', 'TENANT_DEFAULT_PASSWORD', '123456', '0', '', ' ', ' ', '2020-05-12 04:05:24', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (5, '租户默认角色编码', 'TENANT_DEFAULT_ROLECODE', 'ROLE_ADMIN', '0', '', ' ', ' ', '2020-05-12 04:05:57', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (6, '租户默认角色名称', 'TENANT_DEFAULT_ROLENAME', '租户默认角色', '0', '', ' ', ' ', '2020-05-12 04:06:19', NULL, '2', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (7, '表前缀', 'GEN_TABLE_PREFIX', 'tb_', '0', '', ' ', ' ', '2020-05-12 04:23:04', NULL, '9', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (8, '接口文档不显示的字段', 'GEN_HIDDEN_COLUMNS', 'tenant_id', '0', '', ' ', ' ', '2020-05-12 04:25:19', NULL, '9', '1', '0', 1);
INSERT INTO `sys_public_param` VALUES (9, '注册用户默认角色', 'USER_DEFAULT_ROLE', 'GENERAL_USER', '0', NULL, ' ', ' ', '2022-03-31 16:52:24', NULL, '2', '1', '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
                            `role_id` bigint NOT NULL,
                            `role_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `role_code` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `role_desc` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `ds_type` char(1) CHARACTER SET utf8mb4 DEFAULT '2',
                            `ds_scope` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                            `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `tenant_id` bigint DEFAULT NULL,
                            PRIMARY KEY (`role_id`) USING BTREE,
                            KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '管理员', 'ROLE_ADMIN', '管理员', '3', '2', ' ', ' ', '2017-10-29 15:45:51', '2022-01-25 18:21:23', '0', 1);
INSERT INTO `sys_role` VALUES (2, '普通用户', 'GENERAL_USER', '普通用户', '3', NULL, ' ', ' ', '2022-03-31 17:03:15', NULL, '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
                                 `role_id` bigint NOT NULL COMMENT '角色ID',
                                 `menu_id` bigint NOT NULL COMMENT '菜单ID',
                                 PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1000);
INSERT INTO `sys_role_menu` VALUES (1, 1100);
INSERT INTO `sys_role_menu` VALUES (1, 1101);
INSERT INTO `sys_role_menu` VALUES (1, 1102);
INSERT INTO `sys_role_menu` VALUES (1, 1103);
INSERT INTO `sys_role_menu` VALUES (1, 1104);
INSERT INTO `sys_role_menu` VALUES (1, 1200);
INSERT INTO `sys_role_menu` VALUES (1, 1201);
INSERT INTO `sys_role_menu` VALUES (1, 1202);
INSERT INTO `sys_role_menu` VALUES (1, 1203);
INSERT INTO `sys_role_menu` VALUES (1, 1300);
INSERT INTO `sys_role_menu` VALUES (1, 1301);
INSERT INTO `sys_role_menu` VALUES (1, 1302);
INSERT INTO `sys_role_menu` VALUES (1, 1303);
INSERT INTO `sys_role_menu` VALUES (1, 1304);
INSERT INTO `sys_role_menu` VALUES (1, 1305);
INSERT INTO `sys_role_menu` VALUES (1, 1400);
INSERT INTO `sys_role_menu` VALUES (1, 1401);
INSERT INTO `sys_role_menu` VALUES (1, 1402);
INSERT INTO `sys_role_menu` VALUES (1, 1403);
INSERT INTO `sys_role_menu` VALUES (1, 1404);
INSERT INTO `sys_role_menu` VALUES (1, 1500);
INSERT INTO `sys_role_menu` VALUES (1, 1501);
INSERT INTO `sys_role_menu` VALUES (1, 1502);
INSERT INTO `sys_role_menu` VALUES (1, 1503);
INSERT INTO `sys_role_menu` VALUES (1, 1600);
INSERT INTO `sys_role_menu` VALUES (1, 1601);
INSERT INTO `sys_role_menu` VALUES (1, 1602);
INSERT INTO `sys_role_menu` VALUES (1, 1603);
INSERT INTO `sys_role_menu` VALUES (1, 1604);
INSERT INTO `sys_role_menu` VALUES (1, 1605);
INSERT INTO `sys_role_menu` VALUES (1, 2000);
INSERT INTO `sys_role_menu` VALUES (1, 2100);
INSERT INTO `sys_role_menu` VALUES (1, 2101);
INSERT INTO `sys_role_menu` VALUES (1, 2102);
INSERT INTO `sys_role_menu` VALUES (1, 2200);
INSERT INTO `sys_role_menu` VALUES (1, 2201);
INSERT INTO `sys_role_menu` VALUES (1, 2202);
INSERT INTO `sys_role_menu` VALUES (1, 2203);
INSERT INTO `sys_role_menu` VALUES (1, 2210);
INSERT INTO `sys_role_menu` VALUES (1, 2211);
INSERT INTO `sys_role_menu` VALUES (1, 2212);
INSERT INTO `sys_role_menu` VALUES (1, 2213);
INSERT INTO `sys_role_menu` VALUES (1, 2300);
INSERT INTO `sys_role_menu` VALUES (1, 2400);
INSERT INTO `sys_role_menu` VALUES (1, 2401);
INSERT INTO `sys_role_menu` VALUES (1, 2402);
INSERT INTO `sys_role_menu` VALUES (1, 2403);
INSERT INTO `sys_role_menu` VALUES (1, 2500);
INSERT INTO `sys_role_menu` VALUES (1, 2501);
INSERT INTO `sys_role_menu` VALUES (1, 2502);
INSERT INTO `sys_role_menu` VALUES (1, 2503);
INSERT INTO `sys_role_menu` VALUES (1, 2600);
INSERT INTO `sys_role_menu` VALUES (1, 2601);
INSERT INTO `sys_role_menu` VALUES (1, 2700);
INSERT INTO `sys_role_menu` VALUES (1, 2800);
INSERT INTO `sys_role_menu` VALUES (1, 2810);
INSERT INTO `sys_role_menu` VALUES (1, 2820);
INSERT INTO `sys_role_menu` VALUES (1, 2830);
INSERT INTO `sys_role_menu` VALUES (1, 2840);
INSERT INTO `sys_role_menu` VALUES (1, 2850);
INSERT INTO `sys_role_menu` VALUES (1, 2860);
INSERT INTO `sys_role_menu` VALUES (1, 2870);
INSERT INTO `sys_role_menu` VALUES (1, 3000);
INSERT INTO `sys_role_menu` VALUES (1, 3500);
INSERT INTO `sys_role_menu` VALUES (1, 3600);
INSERT INTO `sys_role_menu` VALUES (1, 8000);
INSERT INTO `sys_role_menu` VALUES (1, 8001);
INSERT INTO `sys_role_menu` VALUES (1, 9000);
INSERT INTO `sys_role_menu` VALUES (1, 9001);
INSERT INTO `sys_role_menu` VALUES (1, 9002);
INSERT INTO `sys_role_menu` VALUES (1, 9003);
INSERT INTO `sys_role_menu` VALUES (1, 9004);
INSERT INTO `sys_role_menu` VALUES (1, 9005);
INSERT INTO `sys_role_menu` VALUES (1, 9006);
INSERT INTO `sys_role_menu` VALUES (1, 9007);
INSERT INTO `sys_role_menu` VALUES (1, 15100);
INSERT INTO `sys_role_menu` VALUES (1, 15101);
INSERT INTO `sys_role_menu` VALUES (1, 15102);
INSERT INTO `sys_role_menu` VALUES (1, 15103);
COMMIT;

-- ----------------------------
-- Table structure for sys_social_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_social_details`;
CREATE TABLE `sys_social_details`
(
    `id`  bigint  NOT NULL COMMENT '主鍵',
    `type`  varchar(16) CHARACTER SET utf8mb4     DEFAULT NULL,
    `remark`  varchar(64) CHARACTER SET utf8mb4     DEFAULT NULL,
    `app_id` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
    `app_secret` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
    `redirect_url` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
    `ext` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拓展字段',
    `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
    `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
    `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '所属租户',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统社交登录账号表';


-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant`  (
                               `id` bigint(0) NOT NULL COMMENT '租户id',
                               `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                               `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                               `tenant_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                               `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
                               `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
                               `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
                               `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
                               `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
                               `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
                               `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建',
                               `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
                               `menu_id` bigint(0) NULL DEFAULT NULL,
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '租户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant` VALUES (1, '北京分公司', '1', '', '2019-05-15 00:00:00', '2029-05-15 00:00:00', '0', '0', '', 'admin', '2019-05-15 15:44:57', '2022-12-09 15:27:50', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_tenant_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_menu`;
CREATE TABLE `sys_tenant_menu`  (
                                    `id` bigint(0) NOT NULL,
                                    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户菜单名称',
                                    `menu_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单id集合',
                                    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '租户菜单,9:冻结,0:正常',
                                    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
                                    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '创建人',
                                    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ' ' COMMENT '修改人',
                                    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建',
                                    `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant_menu
-- ----------------------------
INSERT INTO `sys_tenant_menu` VALUES (1, '1231', '1000,1100,1101,1102,1103,1104,1200,1201,1202,1203,1300,1301,1302,1303,1304,1305,1400,1401,1402,1403,1404,1500,1501,1502,1503,1600,1601,1602,1603,1604,1605,1601095373834067969,1601095530717814785,1601095569972305921,1601095611131011073', '0', '0', 'admin', ' ', '2022-12-09 14:39:56', '2022-12-09 06:39:56');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
                            `user_id` bigint NOT NULL COMMENT '主键ID',
                            `username` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `salt` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `phone` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `avatar` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
                            `nickname` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拓展字段:昵称',
                            `name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拓展字段:姓名',
                            `email` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拓展字段:邮箱',
                            `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
                            `create_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '创建人',
                            `update_by` varchar(64) CHARACTER SET utf8  NOT NULL DEFAULT ' ' COMMENT '修改人',
                            `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
                            `lock_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `del_flag` char(1) CHARACTER SET utf8mb4 DEFAULT '0',
                            `wx_openid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '微信登录openId',
                            `mini_openid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '小程序openId',
                            `qq_openid` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'QQ openId',
                            `gitee_login` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '码云 标识',
                            `osc_id` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '开源中国 标识',
                            `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '所属租户',
                            PRIMARY KEY (`user_id`) USING BTREE,
                            KEY `user_wx_openid` (`wx_openid`) USING BTREE,
                            KEY `user_qq_openid` (`qq_openid`) USING BTREE,
                            KEY `user_idx1_username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$cE02oZ1N4mkdA6JHJUP7/uAJ3TQdVgO3kLRvLoe5KvvMU99W5r5hG', '', '17034642888', '/admin/sys-file/tdcloud/c5a85e0770cd4fe78bc14b63b3bd05ae.jpg', '管理员', '管理员', 'admin@mail.com', 1, ' ', ' ', '2018-04-20 07:15:18', '2022-02-18 14:02:09', '0', '0', 'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', 'oBxPy5E-v82xWGsfzZVzkD3wEX64', NULL, 'log4j', '2303656', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
                                 `user_id` bigint NOT NULL COMMENT '用户ID',
                                 `role_id` bigint NOT NULL COMMENT '角色ID',
                                 PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
                                      `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                      `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                      `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                      `blob_data` blob,
                                      PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
                                      CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
                                  `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                  `calendar_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                  `calendar` blob NOT NULL,
                                  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
                                      `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                      `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                      `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                      `cron_expression` varchar(200) CHARACTER SET utf8  NOT NULL,
                                      `time_zone_id` varchar(80) CHARACTER SET utf8  DEFAULT NULL,
                                      PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
                                      CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
                                       `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                       `entry_id` varchar(95) CHARACTER SET utf8  NOT NULL,
                                       `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                       `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                       `instance_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                       `fired_time` bigint NOT NULL,
                                       `sched_time` bigint NOT NULL,
                                       `priority` int NOT NULL,
                                       `state` varchar(16) CHARACTER SET utf8  NOT NULL,
                                       `job_name` varchar(200) CHARACTER SET utf8  DEFAULT NULL,
                                       `job_group` varchar(200) CHARACTER SET utf8  DEFAULT NULL,
                                       `is_nonconcurrent` varchar(1) CHARACTER SET utf8  DEFAULT NULL,
                                       `requests_recovery` varchar(1) CHARACTER SET utf8  DEFAULT NULL,
                                       PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
                                    `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                    `job_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                    `job_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                    `description` varchar(250) CHARACTER SET utf8  DEFAULT NULL,
                                    `job_class_name` varchar(250) CHARACTER SET utf8  NOT NULL,
                                    `is_durable` varchar(1) CHARACTER SET utf8  NOT NULL,
                                    `is_nonconcurrent` varchar(1) CHARACTER SET utf8  NOT NULL,
                                    `is_update_data` varchar(1) CHARACTER SET utf8  NOT NULL,
                                    `requests_recovery` varchar(1) CHARACTER SET utf8  NOT NULL,
                                    `job_data` blob,
                                    PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
                              `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                              `lock_name` varchar(40) CHARACTER SET utf8  NOT NULL,
                              PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
                                            `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                            `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                            PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
                                        `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                        `instance_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                        `last_checkin_time` bigint NOT NULL,
                                        `checkin_interval` bigint NOT NULL,
                                        PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
                                        `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                        `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                        `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                        `repeat_count` bigint NOT NULL,
                                        `repeat_interval` bigint NOT NULL,
                                        `times_triggered` bigint NOT NULL,
                                        PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
                                        CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
                                         `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                         `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                         `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                         `str_prop_1` varchar(512) CHARACTER SET utf8  DEFAULT NULL,
                                         `str_prop_2` varchar(512) CHARACTER SET utf8  DEFAULT NULL,
                                         `str_prop_3` varchar(512) CHARACTER SET utf8  DEFAULT NULL,
                                         `int_prop_1` int DEFAULT NULL,
                                         `int_prop_2` int DEFAULT NULL,
                                         `long_prop_1` bigint DEFAULT NULL,
                                         `long_prop_2` bigint DEFAULT NULL,
                                         `dec_prop_1` decimal(13,4) DEFAULT NULL,
                                         `dec_prop_2` decimal(13,4) DEFAULT NULL,
                                         `bool_prop_1` varchar(1) CHARACTER SET utf8  DEFAULT NULL,
                                         `bool_prop_2` varchar(1) CHARACTER SET utf8  DEFAULT NULL,
                                         PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
                                         CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_IBFK_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
                                 `sched_name` varchar(120) CHARACTER SET utf8  NOT NULL,
                                 `trigger_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                 `trigger_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                 `job_name` varchar(200) CHARACTER SET utf8  NOT NULL,
                                 `job_group` varchar(200) CHARACTER SET utf8  NOT NULL,
                                 `description` varchar(250) CHARACTER SET utf8  DEFAULT NULL,
                                 `next_fire_time` bigint DEFAULT NULL,
                                 `prev_fire_time` bigint DEFAULT NULL,
                                 `priority` int DEFAULT NULL,
                                 `trigger_state` varchar(16) CHARACTER SET utf8  NOT NULL,
                                 `trigger_type` varchar(8) CHARACTER SET utf8  NOT NULL,
                                 `start_time` bigint NOT NULL,
                                 `end_time` bigint DEFAULT NULL,
                                 `calendar_name` varchar(200) CHARACTER SET utf8  DEFAULT NULL,
                                 `misfire_instr` smallint DEFAULT NULL,
                                 `job_data` blob,
                                 PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
                                 KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
                                 CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
                           `job_id` bigint NOT NULL COMMENT '任务id',
                           `job_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '任务名称',
                           `job_group` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '任务组名',
                           `job_order` char(1) CHARACTER SET utf8mb4 DEFAULT '1' COMMENT '组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
                           `job_type` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1' COMMENT '1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
                           `execute_path` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'job_type=3时，rest调用地址，仅支持rest get协议,需要增加String返回值，0成功，1失败;job_type=4时，jar路径;其它值为空',
                           `class_name` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
                           `method_name` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '任务方法',
                           `method_params_value` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '参数值',
                           `cron_expression` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'cron执行表达式',
                           `misfire_policy` varchar(20) CHARACTER SET utf8mb4 DEFAULT '3' COMMENT '错失执行策略（1错失周期立即执行 2错失周期执行一次 3下周期执行）',
                           `job_tenant_type` char(1) CHARACTER SET utf8mb4 DEFAULT '1' COMMENT '1、多租户任务;2、非多租户任务',
                           `job_status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '状态（1、未发布;2、运行中;3、暂停;4、删除;）',
                           `job_execute_status` char(1) CHARACTER SET utf8mb4 DEFAULT '0' COMMENT '状态（0正常 1异常）',
                           `create_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '创建者',
                           `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `update_by` varchar(64) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '更新者',
                           `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
                           `start_time` timestamp NULL DEFAULT NULL COMMENT '初次执行时间',
                           `previous_time` timestamp NULL DEFAULT NULL COMMENT '上次执行时间',
                           `next_time` timestamp NULL DEFAULT NULL COMMENT '下次执行时间',
                           `tenant_id` bigint DEFAULT '1' COMMENT '租户',
                           `remark` varchar(500) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '备注信息',
                           PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
                               `job_log_id` bigint NOT NULL COMMENT '任务日志ID',
                               `job_id` bigint NOT NULL COMMENT '任务id',
                               `job_name` varchar(64) CHARACTER SET utf8  DEFAULT NULL COMMENT '任务名称',
                               `job_group` varchar(64) CHARACTER SET utf8  DEFAULT NULL COMMENT '任务组名',
                               `job_order` char(1) CHARACTER SET utf8  DEFAULT NULL COMMENT '组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
                               `job_type` char(1) CHARACTER SET utf8  NOT NULL DEFAULT '1' COMMENT '1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
                               `execute_path` varchar(500) CHARACTER SET utf8  DEFAULT NULL COMMENT 'job_type=3时，rest调用地址，仅支持post协议;job_type=4时，jar路径;其它值为空',
                               `class_name` varchar(500) CHARACTER SET utf8  DEFAULT NULL COMMENT 'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
                               `method_name` varchar(500) CHARACTER SET utf8  DEFAULT NULL COMMENT '任务方法',
                               `method_params_value` varchar(2000) CHARACTER SET utf8  DEFAULT NULL COMMENT '参数值',
                               `cron_expression` varchar(255) CHARACTER SET utf8  DEFAULT NULL COMMENT 'cron执行表达式',
                               `job_message` varchar(500) CHARACTER SET utf8  DEFAULT NULL COMMENT '日志信息',
                               `job_log_status` char(1) CHARACTER SET utf8  DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
                               `execute_time` varchar(30) CHARACTER SET utf8  DEFAULT NULL COMMENT '执行时间',
                               `exception_info` varchar(2000) CHARACTER SET utf8  DEFAULT '' COMMENT '异常信息',
                               `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                               `tenant_id` bigint NOT NULL DEFAULT '1' COMMENT '租户id',
                               PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务执行日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;


SET FOREIGN_KEY_CHECKS = 1;
