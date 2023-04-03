use tdcloudx;

-- ----------------------------
-- Table structure for sys_tenant_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_menu`;
CREATE TABLE `sys_tenant_menu`(
                                  `id`          bigint(0) NOT NULL,
                                  `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '租户菜单名称',
                                  `menu_ids`    text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单id集合',
                                  `status`      char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci      NOT NULL DEFAULT '0' COMMENT '租户菜单,9:冻结,0:正常',
                                  `del_flag`    char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
                                  `create_by`   varchar(64) CHARACTER SET utf8bm4 COLLATE utf8bm4_general_ci  NOT NULL DEFAULT ' ' COMMENT '创建人',
                                  `update_by`   varchar(64) CHARACTER SET utf8bm4 COLLATE utf8bm4_general_ci  NOT NULL DEFAULT ' ' COMMENT '修改人',
                                  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP (0) COMMENT '创建',
                                  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP (0) ON UPDATE CURRENT_TIMESTAMP (0) COMMENT '更新时间',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tenant_menu
-- ----------------------------
INSERT INTO `sys_tenant_menu` VALUES (1, '套餐1', '1000,1100,1101,1102,1103,1104,1200,1201,1202,1203,1300,1301,1302,1303,1304,1305,1400,1401,1402,1403,1404,1500,1501,1502,1503,1600,1601,1602,1603,1604,1605', '0', '0', 'admin', ' ', '2022-12-09 14:39:56', '2022-12-09 06:39:56');

INSERT INTO `sys_menu` VALUES (15103, '租户菜单新增', 'admin_systenantmenu_add', NULL, 15100, NULL, '1', 1, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2022-12-12 09:02:00', '0', 1);
INSERT INTO `sys_menu` VALUES (15102, '租户菜单编辑', 'admin_systenantmenu_edit', NULL, 15100, NULL, '1', 999, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2022-12-12 09:02:11', '0', 1);
INSERT INTO `sys_menu` VALUES (15101, '租户菜单删除', 'admin_systenantmenu_del', NULL, 15100, NULL, '1', 999, '0', '1', 'admin', '2022-12-09 14:04:19', 'admin', '2022-12-12 09:02:06', '0', 1);
INSERT INTO `sys_menu` VALUES (15100, '租户菜单', 'admin_systenant_tenantmenu', NULL, 1500, NULL, '1', 999, '0', '1', 'admin', '2022-12-12 09:01:41', ' ', NULL, '0', 1);


ALTER TABLE `sys_tenant`
    ADD COLUMN `menu_id` bigint NULL COMMENT '租户菜单id' AFTER `update_time`;
