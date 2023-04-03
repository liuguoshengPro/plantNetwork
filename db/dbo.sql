/*
 Navicat Premium Data Transfer

 Source Server         : sqlservice
 Source Server Type    : SQL Server
 Source Server Version : 14003460 (14.00.3460)
 Source Host           : localhost:1433
 Source Catalog        : tdcloudx_boot
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003460 (14.00.3460)
 File Encoding         : 65001

 Date: 29/03/2023 13:56:21
*/


-- ----------------------------
-- Table structure for plant_maintain
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[plant_maintain]') AND type IN ('U'))
	DROP TABLE [dbo].[plant_maintain]
GO

CREATE TABLE [dbo].[plant_maintain] (
  [id] int  NOT NULL,
  [maintain_problem] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [maintain_unit] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [maintain_user] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [maintain_time] datetime2(7)  NULL,
  [solution] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [is_solve] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [problem_other] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[plant_maintain] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'维护问题',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'maintain_problem'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维护单位及人员',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'maintain_unit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维护人员',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'maintain_user'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维护时间',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'maintain_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'解决办法',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'solution'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'问题是否解决0 否 1是',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'is_solve'
GO

EXEC sp_addextendedproperty
'MS_Description', N'其他填写',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain',
'COLUMN', N'problem_other'
GO

EXEC sp_addextendedproperty
'MS_Description', N'维护信息数据',
'SCHEMA', N'dbo',
'TABLE', N'plant_maintain'
GO


-- ----------------------------
-- Records of plant_maintain
-- ----------------------------
INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'7', N'0', N'做饭', N'啊，回复', N'2023-03-28 00:00:00.0000000', N'很高大酒店安抚客户丧服谁的观点和顾客，大美女hi东方红郡那麻烦', N'2022-03-03 16:53:19.0000000', N'0', N'张三')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'9', N'5', N'你吃吧', N'ZCM', N'2023-03-13 00:00:00.0000000', N'BXZ建筑科学', N'2023-03-06 13:37:37.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'10', N'1', N'好舒服', N'发出把房间', N'2023-03-20 00:00:00.0000000', N'法警队', N'2023-03-06 13:37:56.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'11', N'3', N'京东方', N'方式爆发', N'2023-03-05 00:00:00.0000000', N'CFJ否', N'2023-03-06 13:38:21.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'12', N'4', N'好的', N'沙发， 阿飞', N'2023-03-13 00:00:00.0000000', N'ACBSA', N'2023-03-06 13:38:38.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'13', N'6', N'按实际发', N'AV和S', N'2023-03-05 00:00:00.0000000', N'AD更好的', N'2023-03-06 13:38:57.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'14', N'7', N'cGBS ', N'ADBNSDNA', N'2023-03-05 00:00:00.0000000', N'CMCVSNDC', N'2023-03-06 13:39:14.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'15', N'8', N'救护车', N'大酒店', N'2023-03-14 00:00:00.0000000', N'阿萨德办公室', N'2023-03-06 13:39:40.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'16', N'1', N'jkzdf z', N'asfjknksf ', N'2023-03-08 00:00:00.0000000', N'12314462152647285723852', N'2023-03-06 16:12:53.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'17', N'4', N'WAR', N'A', N'2023-03-05 00:00:00.0000000', N'FSFGS', N'2023-03-10 15:41:16.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'18', N'2', N'ZCZF', N'SAFASF', N'2022-02-14 00:00:00.0000000', N'FSAFASF', N'2023-03-10 15:41:51.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'19', N'4', N'是当时', N'公司的', N'2021-03-02 00:00:00.0000000', N'DGDFHD', N'2023-03-10 15:43:17.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'20', N'3', N'45555555665', N'33333', N'2023-03-13 00:00:00.0000000', N'sdfsdfsdf11111', N'2023-03-10 16:11:38.0000000', N'0', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'21', N'1', N'张三', N'金涛', N'2023-03-13 00:00:00.0000000', N'已处理', N'2023-03-14 10:07:23.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'22', N'1', N'11', N'122', N'2023-03-22 00:00:00.0000000', N'sadas', N'2023-03-14 12:16:44.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'23', N'', N'', N'', N'2023-03-13 00:00:00.0000000', N'', N'2023-03-14 13:43:05.0000000', N'1', N'')
GO

INSERT INTO [dbo].[plant_maintain] ([id], [maintain_problem], [maintain_unit], [maintain_user], [maintain_time], [solution], [create_time], [is_solve], [problem_other]) VALUES (N'24', N'0', N'', N'', N'2023-03-13 00:00:00.0000000', N'', N'2023-03-14 13:46:30.0000000', N'0', N'')
GO


-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_blob_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_blob_triggers]
GO

CREATE TABLE [dbo].[qrtz_blob_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [blob_data] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[qrtz_blob_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_calendars]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_calendars]
GO

CREATE TABLE [dbo].[qrtz_calendars] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [calendar_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [calendar] varbinary(max)  NOT NULL
)
GO

ALTER TABLE [dbo].[qrtz_calendars] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_cron_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_cron_triggers]
GO

CREATE TABLE [dbo].[qrtz_cron_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [cron_expression] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [time_zone_id] nvarchar(80) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[qrtz_cron_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_fired_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_fired_triggers]
GO

CREATE TABLE [dbo].[qrtz_fired_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [entry_id] nvarchar(95) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [instance_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [fired_time] bigint  NOT NULL,
  [sched_time] bigint  NOT NULL,
  [priority] int  NOT NULL,
  [state] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [is_nonconcurrent] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [requests_recovery] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[qrtz_fired_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_job_details]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_job_details]
GO

CREATE TABLE [dbo].[qrtz_job_details] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_class_name] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [is_durable] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [is_nonconcurrent] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [is_update_data] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [requests_recovery] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_data] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[qrtz_job_details] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_locks]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_locks]
GO

CREATE TABLE [dbo].[qrtz_locks] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [lock_name] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[qrtz_locks] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO [dbo].[qrtz_locks] ([sched_name], [lock_name]) VALUES (N'clusteredScheduler', N'STATE_ACCESS')
GO

INSERT INTO [dbo].[qrtz_locks] ([sched_name], [lock_name]) VALUES (N'clusteredScheduler', N'TRIGGER_ACCESS')
GO


-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_paused_trigger_grps]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_paused_trigger_grps]
GO

CREATE TABLE [dbo].[qrtz_paused_trigger_grps] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[qrtz_paused_trigger_grps] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_scheduler_state]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_scheduler_state]
GO

CREATE TABLE [dbo].[qrtz_scheduler_state] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [instance_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [last_checkin_time] bigint  NOT NULL,
  [checkin_interval] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[qrtz_scheduler_state] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO [dbo].[qrtz_scheduler_state] ([sched_name], [instance_name], [last_checkin_time], [checkin_interval]) VALUES (N'clusteredScheduler', N'DESKTOP-U8PROSC1680065649303', N'1680069378632', N'10000')
GO


-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_simple_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_simple_triggers]
GO

CREATE TABLE [dbo].[qrtz_simple_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [repeat_count] bigint  NOT NULL,
  [repeat_interval] bigint  NOT NULL,
  [times_triggered] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[qrtz_simple_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_simprop_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_simprop_triggers]
GO

CREATE TABLE [dbo].[qrtz_simprop_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [str_prop_1] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [str_prop_2] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [str_prop_3] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [int_prop_1] int  NULL,
  [int_prop_2] int  NULL,
  [long_prop_1] bigint  NULL,
  [long_prop_2] bigint  NULL,
  [dec_prop_1] decimal(13,4)  NULL,
  [dec_prop_2] decimal(13,4)  NULL,
  [bool_prop_1] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [bool_prop_2] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[qrtz_simprop_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_triggers]') AND type IN ('U'))
	DROP TABLE [dbo].[qrtz_triggers]
GO

CREATE TABLE [dbo].[qrtz_triggers] (
  [sched_name] nvarchar(120) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_group] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [next_fire_time] bigint  NULL,
  [prev_fire_time] bigint  NULL,
  [priority] int  NULL,
  [trigger_state] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [trigger_type] nvarchar(8) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [start_time] bigint  NOT NULL,
  [end_time] bigint  NULL,
  [calendar_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [misfire_instr] smallint  NULL,
  [job_data] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[qrtz_triggers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dept]
GO

CREATE TABLE [dbo].[sys_dept] (
  [dept_id] bigint  NOT NULL,
  [name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort_order] int  NOT NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dept] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'sort_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门管理',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept'
GO


-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'1', N'山东', N'1', N' ', N'admin', N'2018-01-22 19:00:23.0000000', N'2023-03-28 11:57:02.0000000', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'2', N'沙县国际', N'2', N' ', N'admin', N'2018-01-22 19:00:38.0000000', N'2023-03-28 11:56:16.0000000', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'3', N'潍坊', N'3', N' ', N'admin', N'2018-01-22 19:00:44.0000000', N'2023-03-28 11:57:02.0000000', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'4', N'高新', N'4', N' ', N'admin', N'2018-01-22 19:00:52.0000000', N'2023-03-28 11:57:02.0000000', N'1', N'3', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'5', N'院校', N'5', N' ', N'admin', N'2018-01-22 19:00:57.0000000', N'2023-03-28 11:57:02.0000000', N'1', N'4', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'6', N'潍院', N'6', N' ', N' ', N'2018-01-22 19:01:06.0000000', N'2019-05-18 14:56:16.0000000', N'1', N'5', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'7', N'山东沙县', N'7', N' ', N'admin', N'2018-01-22 19:01:57.0000000', N'2023-03-28 11:56:16.0000000', N'1', N'2', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'8', N'潍坊沙县', N'8', N' ', N'admin', N'2018-01-22 19:02:03.0000000', N'2023-03-28 11:56:16.0000000', N'1', N'7', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'1640563358288424961', N'管理员', N'999', N'admin', N' ', N'2023-03-28 11:55:59.0000000', NULL, N'0', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dept] ([dept_id], [name], [sort_order], [create_by], [update_by], [create_time], [update_time], [del_flag], [parent_id], [tenant_id]) VALUES (N'1640563398440497154', N'用户', N'999', N'admin', N' ', N'2023-03-28 11:56:09.0000000', NULL, N'0', N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept_relation]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dept_relation]
GO

CREATE TABLE [dbo].[sys_dept_relation] (
  [ancestor] bigint  NOT NULL,
  [descendant] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_dept_relation] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'祖先节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept_relation',
'COLUMN', N'ancestor'
GO

EXEC sp_addextendedproperty
'MS_Description', N'后代节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept_relation',
'COLUMN', N'descendant'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门关系表',
'SCHEMA', N'dbo',
'TABLE', N'sys_dept_relation'
GO


-- ----------------------------
-- Records of sys_dept_relation
-- ----------------------------
INSERT INTO [dbo].[sys_dept_relation] ([ancestor], [descendant]) VALUES (N'1640563358288424961', N'1640563358288424961')
GO

INSERT INTO [dbo].[sys_dept_relation] ([ancestor], [descendant]) VALUES (N'1640563398440497154', N'1640563398440497154')
GO


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict]
GO

CREATE TABLE [dbo].[sys_dict] (
  [id] bigint  NOT NULL,
  [dict_type] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [system_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_dict] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典表',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict'
GO


-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'1', N'log_type', N'日志类型', N' ', N' ', N'2019-03-19 11:06:44.0000000', N'2019-03-19 11:06:44.0000000', N'异常、正常', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'2', N'social_type', N'社交登录', N' ', N' ', N'2019-03-19 11:09:44.0000000', N'2019-03-19 11:09:44.0000000', N'微信、QQ', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'4', N'job_type', N'定时任务类型', N' ', N' ', N'2019-03-19 11:22:21.0000000', N'2019-03-19 11:22:21.0000000', N'quartz', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'5', N'job_status', N'定时任务状态', N' ', N' ', N'2019-03-19 11:24:57.0000000', N'2019-03-19 11:24:57.0000000', N'发布状态、运行状态', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'6', N'job_execute_status', N'定时任务执行状态', N' ', N' ', N'2019-03-19 11:26:15.0000000', N'2019-03-19 11:26:15.0000000', N'正常、异常', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'7', N'misfire_policy', N'定时任务错失执行策略', N' ', N' ', N'2019-03-19 11:27:19.0000000', N'2019-03-19 11:27:19.0000000', N'周期', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'8', N'gender', N'性别', N' ', N' ', N'2019-03-27 13:44:06.0000000', N'2019-03-27 13:44:06.0000000', N'微信用户性别', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'9', N'subscribe', N'订阅状态', N' ', N' ', N'2019-03-27 13:48:33.0000000', N'2019-03-27 13:48:33.0000000', N'公众号订阅状态', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'10', N'response_type', N'回复', N' ', N' ', N'2019-03-28 21:29:21.0000000', N'2019-03-28 21:29:21.0000000', N'微信消息是否已回复', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'11', N'param_type', N'参数配置', N' ', N' ', N'2019-04-29 18:20:47.0000000', N'2019-04-29 18:20:47.0000000', N'检索、原文、报表、安全、文档、消息、其他', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'12', N'status_type', N'租户状态', N' ', N' ', N'2019-05-15 16:31:08.0000000', N'2019-05-15 16:31:08.0000000', N'租户状态', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'13', N'dict_type', N'字典类型', N' ', N' ', N'2019-05-16 14:16:20.0000000', N'2019-05-16 14:20:16.0000000', N'系统类不能修改', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'17', N'grant_types', N'授权类型', N' ', N' ', N'2019-08-13 07:34:10.0000000', N'2019-08-13 07:34:10.0000000', NULL, N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'18', N'style_type', N'前端风格', N' ', N' ', N'2020-02-07 03:49:28.0000000', N'2020-02-07 03:50:40.0000000', N'0-Avue 1-element', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'19', N'captcha_flag_types', N'验证码开关', N' ', N' ', N'2020-11-18 06:53:25.0000000', N'2020-11-18 06:53:25.0000000', N'是否校验验证码', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict] ([id], [dict_type], [description], [create_by], [update_by], [create_time], [update_time], [remarks], [system_flag], [del_flag], [tenant_id]) VALUES (N'20', N'enc_flag_types', N'前端密码加密', N' ', N' ', N'2020-11-18 06:54:44.0000000', N'2020-11-18 06:54:44.0000000', N'前端密码是否加密传输', N'1', N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_item]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_item]
GO

CREATE TABLE [dbo].[sys_dict_item] (
  [id] bigint  NOT NULL,
  [dict_id] bigint  NOT NULL,
  [item_value] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [label] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [dict_type] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort_order] int  NOT NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_dict_item] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序（升序）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'sort_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典项',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item'
GO


-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'1', N'1', N'9', N'异常', N'log_type', N'日志异常', N'1', N' ', N' ', N'2019-03-19 11:08:59.0000000', N'2019-03-25 12:49:13.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'2', N'1', N'0', N'正常', N'log_type', N'日志正常', N'0', N' ', N' ', N'2019-03-19 11:09:17.0000000', N'2019-03-25 12:49:18.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'3', N'2', N'WX', N'微信', N'social_type', N'微信登录', N'0', N' ', N' ', N'2019-03-19 11:10:02.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'4', N'2', N'QQ', N'QQ', N'social_type', N'QQ登录', N'1', N' ', N' ', N'2019-03-19 11:10:14.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'9', N'4', N'1', N'java类', N'job_type', N'java类', N'1', N' ', N' ', N'2019-03-19 11:22:37.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'10', N'4', N'2', N'spring bean', N'job_type', N'spring bean容器实例', N'2', N' ', N' ', N'2019-03-19 11:23:05.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'11', N'4', N'9', N'其他', N'job_type', N'其他类型', N'9', N' ', N' ', N'2019-03-19 11:23:31.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'12', N'4', N'3', N'Rest 调用', N'job_type', N'Rest 调用', N'3', N' ', N' ', N'2019-03-19 11:23:57.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'13', N'4', N'4', N'jar', N'job_type', N'jar类型', N'4', N' ', N' ', N'2019-03-19 11:24:20.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'14', N'5', N'1', N'未发布', N'job_status', N'未发布', N'1', N' ', N' ', N'2019-03-19 11:25:18.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'15', N'5', N'2', N'运行中', N'job_status', N'运行中', N'2', N' ', N' ', N'2019-03-19 11:25:31.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'16', N'5', N'3', N'暂停', N'job_status', N'暂停', N'3', N' ', N' ', N'2019-03-19 11:25:42.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'17', N'6', N'0', N'正常', N'job_execute_status', N'正常', N'0', N' ', N' ', N'2019-03-19 11:26:27.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'18', N'6', N'1', N'异常', N'job_execute_status', N'异常', N'1', N' ', N' ', N'2019-03-19 11:26:41.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'19', N'7', N'1', N'错失周期立即执行', N'misfire_policy', N'错失周期立即执行', N'1', N' ', N' ', N'2019-03-19 11:27:45.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'20', N'7', N'2', N'错失周期执行一次', N'misfire_policy', N'错失周期执行一次', N'2', N' ', N' ', N'2019-03-19 11:27:57.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'21', N'7', N'3', N'下周期执行', N'misfire_policy', N'下周期执行', N'3', N' ', N' ', N'2019-03-19 11:28:08.0000000', N'2019-03-25 12:49:36.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'22', N'8', N'1', N'男', N'gender', N'微信-男', N'0', N' ', N' ', N'2019-03-27 13:45:13.0000000', N'2019-03-27 13:45:13.0000000', N'微信-男', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'23', N'8', N'2', N'女', N'gender', N'女-微信', N'1', N' ', N' ', N'2019-03-27 13:45:34.0000000', N'2019-03-27 13:45:34.0000000', N'女-微信', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'24', N'8', N'0', N'未知', N'gender', N'x性别未知', N'3', N' ', N' ', N'2019-03-27 13:45:57.0000000', N'2019-03-27 13:45:57.0000000', N'x性别未知', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'25', N'9', N'0', N'未关注', N'subscribe', N'公众号-未关注', N'0', N' ', N' ', N'2019-03-27 13:49:07.0000000', N'2019-03-27 13:49:07.0000000', N'公众号-未关注', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'26', N'9', N'1', N'已关注', N'subscribe', N'公众号-已关注', N'1', N' ', N' ', N'2019-03-27 13:49:26.0000000', N'2019-03-27 13:49:26.0000000', N'公众号-已关注', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'27', N'10', N'0', N'未回复', N'response_type', N'微信消息-未回复', N'0', N' ', N' ', N'2019-03-28 21:29:47.0000000', N'2019-03-28 21:29:47.0000000', N'微信消息-未回复', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'28', N'10', N'1', N'已回复', N'response_type', N'微信消息-已回复', N'1', N' ', N' ', N'2019-03-28 21:30:08.0000000', N'2019-03-28 21:30:08.0000000', N'微信消息-已回复', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'29', N'11', N'1', N'检索', N'param_type', N'检索', N'0', N' ', N' ', N'2019-04-29 18:22:17.0000000', N'2019-04-29 18:22:17.0000000', N'检索', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'30', N'11', N'2', N'原文', N'param_type', N'原文', N'0', N' ', N' ', N'2019-04-29 18:22:27.0000000', N'2019-04-29 18:22:27.0000000', N'原文', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'31', N'11', N'3', N'报表', N'param_type', N'报表', N'0', N' ', N' ', N'2019-04-29 18:22:36.0000000', N'2019-04-29 18:22:36.0000000', N'报表', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'32', N'11', N'4', N'安全', N'param_type', N'安全', N'0', N' ', N' ', N'2019-04-29 18:22:46.0000000', N'2019-04-29 18:22:46.0000000', N'安全', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'33', N'11', N'5', N'文档', N'param_type', N'文档', N'0', N' ', N' ', N'2019-04-29 18:22:56.0000000', N'2019-04-29 18:22:56.0000000', N'文档', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'34', N'11', N'6', N'消息', N'param_type', N'消息', N'0', N' ', N' ', N'2019-04-29 18:23:05.0000000', N'2019-04-29 18:23:05.0000000', N'消息', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'35', N'11', N'9', N'其他', N'param_type', N'其他', N'0', N' ', N' ', N'2019-04-29 18:23:16.0000000', N'2019-04-29 18:23:16.0000000', N'其他', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'36', N'11', N'0', N'默认', N'param_type', N'默认', N'0', N' ', N' ', N'2019-04-29 18:23:30.0000000', N'2019-04-29 18:23:30.0000000', N'默认', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'37', N'12', N'0', N'正常', N'status_type', N'状态正常', N'0', N' ', N' ', N'2019-05-15 16:31:34.0000000', N'2019-05-16 22:30:46.0000000', N'状态正常', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'38', N'12', N'9', N'冻结', N'status_type', N'状态冻结', N'1', N' ', N' ', N'2019-05-15 16:31:56.0000000', N'2019-05-16 22:30:50.0000000', N'状态冻结', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'39', N'13', N'1', N'系统类', N'dict_type', N'系统类字典', N'0', N' ', N' ', N'2019-05-16 14:20:40.0000000', N'2019-05-16 14:20:40.0000000', N'不能修改删除', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'40', N'13', N'0', N'业务类', N'dict_type', N'业务类字典', N'0', N' ', N' ', N'2019-05-16 14:20:59.0000000', N'2019-05-16 14:20:59.0000000', N'可以修改', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'49', N'2', N'GITEE', N'码云', N'social_type', N'码云', N'2', N' ', N' ', N'2019-06-28 09:59:12.0000000', N'2019-06-28 09:59:12.0000000', N'码云', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'50', N'2', N'OSC', N'开源中国', N'social_type', N'开源中国登录', N'2', N' ', N' ', N'2019-06-28 10:04:32.0000000', N'2019-06-28 10:04:32.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'51', N'17', N'password', N'密码模式', N'grant_types', N'支持oauth密码模式', N'0', N' ', N' ', N'2019-08-13 07:35:28.0000000', N'2019-08-13 07:35:28.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'52', N'17', N'authorization_code', N'授权码模式', N'grant_types', N'oauth2 授权码模式', N'1', N' ', N' ', N'2019-08-13 07:36:07.0000000', N'2019-08-13 07:36:07.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'53', N'17', N'client_credentials', N'客户端模式', N'grant_types', N'oauth2 客户端模式', N'2', N' ', N' ', N'2019-08-13 07:36:30.0000000', N'2019-08-13 07:36:30.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'54', N'17', N'refresh_token', N'刷新模式', N'grant_types', N'oauth2 刷新token', N'3', N' ', N' ', N'2019-08-13 07:36:54.0000000', N'2019-08-13 07:36:54.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'55', N'17', N'implicit', N'简化模式', N'grant_types', N'oauth2 简化模式', N'4', N' ', N' ', N'2019-08-13 07:39:32.0000000', N'2019-08-13 07:39:32.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'56', N'18', N'0', N'Avue', N'style_type', N'Avue风格', N'0', N' ', N' ', N'2020-02-07 03:52:52.0000000', N'2020-02-07 03:52:52.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'57', N'18', N'1', N'element', N'style_type', N'element-ui', N'1', N' ', N' ', N'2020-02-07 03:53:12.0000000', N'2020-02-07 03:53:12.0000000', N'', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'58', N'19', N'0', N'关', N'captcha_flag_types', N'不校验验证码', N'0', N' ', N' ', N'2020-11-18 06:53:58.0000000', N'2020-11-18 06:53:58.0000000', N'不校验验证码 -0', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'59', N'19', N'1', N'开', N'captcha_flag_types', N'校验验证码', N'1', N' ', N' ', N'2020-11-18 06:54:15.0000000', N'2020-11-18 06:54:15.0000000', N'不校验验证码-1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'60', N'20', N'0', N'否', N'enc_flag_types', N'不加密', N'0', N' ', N' ', N'2020-11-18 06:55:31.0000000', N'2020-11-18 06:55:31.0000000', N'不加密-0', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'61', N'20', N'1', N'是', N'enc_flag_types', N'加密', N'1', N' ', N' ', N'2020-11-18 06:55:51.0000000', N'2020-11-18 06:55:51.0000000', N'加密-1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'62', N'15', N'MERGE_PAY', N'聚合支付', N'channel_id', N'聚合支付', N'1', N' ', N' ', N'2019-05-30 19:08:08.0000000', N'2019-06-18 13:51:53.0000000', N'聚合支付', N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'63', N'2', N'CAS', N'CAS登录', N'social_type', N'CAS 单点登录系统', N'3', N' ', N' ', N'2022-02-18 13:56:25.0000000', N'2022-02-18 13:56:28.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'64', N'2', N'DINGTALK', N'钉钉', N'social_type', N'钉钉', N'3', N' ', N' ', N'2022-02-18 13:56:25.0000000', N'2022-02-18 13:56:28.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'65', N'2', N'WEIXIN_CP', N'企业微信', N'social_type', N'企业微信', N'3', N' ', N' ', N'2022-02-18 13:56:25.0000000', N'2022-02-18 13:56:28.0000000', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_dict_item] ([id], [dict_id], [item_value], [label], [dict_type], [description], [sort_order], [create_by], [update_by], [create_time], [update_time], [remarks], [del_flag], [tenant_id]) VALUES (N'66', N'18', N'2', N'APP', N'style_type', N'uview风格', N'1', N' ', N' ', N'2020-02-07 03:53:12.0000000', N'2020-02-07 03:53:12.0000000', N'', N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_file]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_file]
GO

CREATE TABLE [dbo].[sys_file] (
  [id] bigint  NOT NULL,
  [file_name] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [bucket_name] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [original] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_size] bigint  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_file] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件大小',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'file_size'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上传时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_file',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件管理表',
'SCHEMA', N'dbo',
'TABLE', N'sys_file'
GO


-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO [dbo].[sys_file] ([id], [file_name], [bucket_name], [original], [type], [file_size], [create_by], [update_by], [create_time], [update_time], [del_flag], [tenant_id]) VALUES (N'1640598476558278658', N'89d5a89e401c403397be804c304be1d8.pptx', N'local', N'3-种子-二级页面示意图(1).pptx', N'pptx', N'41939', N'admin', N'admin', N'2023-03-28 14:15:32.0000000', N'2023-03-28 14:16:00.0000000', N'1', N'1')
GO


-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_job]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_job]
GO

CREATE TABLE [dbo].[sys_job] (
  [job_id] bigint  NOT NULL,
  [job_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_group] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [job_order] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [execute_path] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [class_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_params_value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [cron_expression] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [misfire_policy] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_tenant_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_status] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_execute_status] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [update_time] datetime2(7)  NOT NULL,
  [start_time] datetime2(7)  NULL,
  [previous_time] datetime2(7)  NULL,
  [next_time] datetime2(7)  NULL,
  [tenant_id] bigint  NULL,
  [remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_job] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务id',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务组名',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_group'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'job_type=3时，rest调用地址，仅支持rest get协议,需要增加String返回值，0成功，1失败;job_type=4时，jar路径;其它值为空',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'execute_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务方法',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数值',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'method_params_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron执行表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'cron_expression'
GO

EXEC sp_addextendedproperty
'MS_Description', N'错失执行策略（1错失周期立即执行 2错失周期执行一次 3下周期执行）',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'misfire_policy'
GO

EXEC sp_addextendedproperty
'MS_Description', N'1、多租户任务;2、非多租户任务',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_tenant_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（1、未发布;2、运行中;3、暂停;4、删除;）',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（0正常 1异常）',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'job_execute_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'初次执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上次执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'previous_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下次执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'next_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_job',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务调度表',
'SCHEMA', N'dbo',
'TABLE', N'sys_job'
GO


-- ----------------------------
-- Records of sys_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_job_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_job_log]
GO

CREATE TABLE [dbo].[sys_job_log] (
  [job_log_id] bigint  NOT NULL,
  [job_id] bigint  NOT NULL,
  [job_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_group] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_order] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [execute_path] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [class_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_name] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [method_params_value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [cron_expression] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_message] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [job_log_status] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [execute_time] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [exception_info] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NOT NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_job_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务日志ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_log_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务id',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务组名',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_group'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组内执行顺利，值越大执行优先级越高，最大值9，最小值1',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'1、java类;2、spring bean名称;3、rest调用;4、jar调用;9其他',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'job_type=3时，rest调用地址，仅支持post协议;job_type=4时，jar路径;其它值为空',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'execute_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'job_type=1时，类完整路径;job_type=2时，spring bean名称;其它值为空',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务方法',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'method_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数值',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'method_params_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron执行表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'cron_expression'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_message'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行状态（0正常 1失败）',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'job_log_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'execute_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'异常信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'exception_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'定时任务执行日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_job_log'
GO


-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_log]
GO

CREATE TABLE [dbo].[sys_log] (
  [id] bigint  NOT NULL,
  [log_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [title] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [service_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [remote_addr] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_agent] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [request_uri] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [params] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [time] bigint  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [exception] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_log'
GO


-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640561159260975106', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 11:47:15.0000000', NULL, N'192.168.1.112', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640561645653438465', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 11:49:11.0000000', NULL, N'192.168.1.112', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563160195641345', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 11:55:12.0000000', NULL, N'192.168.1.112', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563358355533825', N'0', N'添加部门', NULL, N'admin', N' ', N'2023-03-28 11:55:59.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/dept/', N'POST', NULL, N'16', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563398503411714', N'0', N'添加部门', NULL, N'admin', N' ', N'2023-03-28 11:56:09.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/dept/', N'POST', NULL, N'13', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563426223566849', N'0', N'删除部门', NULL, N'admin', N' ', N'2023-03-28 11:56:16.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/dept/2', N'DELETE', NULL, N'21', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563512341016578', N'0', N'更新用户信息', NULL, N'admin', N' ', N'2023-03-28 11:56:36.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/user', N'PUT', NULL, N'21', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563566971826178', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 11:56:49.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563620319178753', N'0', N'删除部门', NULL, N'admin', N' ', N'2023-03-28 11:57:02.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/dept/1', N'DELETE', NULL, N'19', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640563969717284866', N'0', N'添加用户', NULL, N'admin', N' ', N'2023-03-28 11:58:25.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/user', N'POST', NULL, N'143', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640564344163774465', N'0', N'添加用户', NULL, N'admin', N' ', N'2023-03-28 11:59:55.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/user', N'POST', NULL, N'148', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640567873578315777', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 12:13:56.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640567994755952642', N'0', N'更新角色菜单', NULL, N'admin', N' ', N'2023-03-28 12:14:25.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/role/menu', N'PUT', NULL, N'155', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640568249346011138', N'0', N'修改角色', NULL, N'admin', N' ', N'2023-03-28 12:15:26.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/role', N'PUT', NULL, N'8', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640568368036425730', N'0', N'删除用户信息', NULL, N'admin', N' ', N'2023-03-28 12:15:54.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/user/1640564344100859906', N'DELETE', NULL, N'23', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640581849947156481', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 13:09:28.0000000', NULL, N'192.168.1.112', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640591983855382530', N'0', N'登录成功', NULL, N'admin', N' ', N'2023-03-28 13:49:44.0000000', NULL, N'192.168.1.112', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', N'/admin/oauth2/token', N'POST', N'randomStr=%5BblockPuzzle%5D&password=%5BJFat0Zdc%5D&code=%5B%5D&grant_type=%5Bpassword%5D&scope=%5Bserver%5D&username=%5Badmin%5D', NULL, N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_log] ([id], [log_type], [title], [service_id], [create_by], [update_by], [create_time], [update_time], [remote_addr], [user_agent], [request_uri], [method], [params], [time], [del_flag], [exception], [tenant_id]) VALUES (N'1640598592136519682', N'0', N'删除文件管理', NULL, N'admin', N' ', N'2023-03-28 14:16:00.0000000', NULL, N'192.168.1.125', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54', N'/admin/sys-file/1640598476558278658', N'DELETE', NULL, N'16', N'0', NULL, N'1')
GO


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [menu_id] bigint  NOT NULL,
  [name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [permission] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [path] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_id] bigint  NULL,
  [icon] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort_order] int  NULL,
  [keep_alive] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [menu_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父菜单ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序值',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'sort_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_menu'
GO


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1000', N'权限管理', NULL, N'/admin', N'-1', N'icon-quanxianguanli', N'0', N'0', N'0', N' ', N'2018-09-28 08:29:53.0000000', N' ', N'2022-01-25 17:24:21.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1100', N'用户管理', NULL, N'/admin/user/index', N'1000', N'icon-yonghuguanli', N'1', N'0', N'0', N' ', N'2017-11-02 22:24:37.0000000', N' ', N'2022-01-27 11:58:48.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1101', N'用户新增', N'sys_user_add', NULL, N'1100', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 09:52:09.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1102', N'用户修改', N'sys_user_edit', NULL, N'1100', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 09:52:48.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1103', N'用户删除', N'sys_user_del', NULL, N'1100', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 09:54:01.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1104', N'导入导出', N'sys_user_export', NULL, N'1100', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 09:54:01.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1200', N'菜单管理', NULL, N'/admin/menu/index', N'1000', N'icon-caidanguanli', N'2', N'0', N'0', N' ', N'2017-11-08 09:57:27.0000000', N' ', N'2022-01-27 11:58:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1201', N'菜单新增', N'sys_menu_add', NULL, N'1200', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:15:53.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1202', N'菜单修改', N'sys_menu_edit', NULL, N'1200', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:16:23.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1203', N'菜单删除', N'sys_menu_del', NULL, N'1200', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:16:43.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1300', N'角色管理', NULL, N'/admin/role/index', N'1000', N'icon-jiaoseguanli', N'3', N'0', N'0', N' ', N'2017-11-08 10:13:37.0000000', N' ', N'2022-01-27 11:59:01.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1301', N'角色新增', N'sys_role_add', NULL, N'1300', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:14:18.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1302', N'角色修改', N'sys_role_edit', NULL, N'1300', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:14:41.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1303', N'角色删除', N'sys_role_del', NULL, N'1300', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 10:14:59.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1304', N'分配权限', N'sys_role_perm', NULL, N'1300', NULL, N'1', N'0', N'1', N' ', N'2018-04-20 07:22:55.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1305', N'角色导入导出', N'sys_role_export', NULL, N'1300', NULL, N'4', N'0', N'1', N' ', N'2022-03-26 15:54:34.0000000', N' ', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1400', N'部门管理', NULL, N'/admin/dept/index', N'1000', N'icon-web-icon-', N'4', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2022-01-27 11:59:06.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1401', N'部门新增', N'sys_dept_add', NULL, N'1400', NULL, N'1', N'0', N'1', N' ', N'2018-01-20 14:56:16.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1402', N'部门修改', N'sys_dept_edit', NULL, N'1400', NULL, N'1', N'0', N'1', N' ', N'2018-01-20 14:56:59.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1403', N'部门删除', N'sys_dept_del', NULL, N'1400', NULL, N'1', N'0', N'1', N' ', N'2018-01-20 14:57:28.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1404', N'开放互联', N'sys_connect_sync', NULL, N'1400', NULL, N'1', N'0', N'1', N' ', N'2018-01-20 14:57:28.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1500', N'租户管理', N'', N'/admin/tenant/index', N'1000', N'icon-erji-zuhushouye', N'5', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2022-01-27 11:59:14.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1501', N'租户新增', N'admin_systenant_add', NULL, N'1500', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:56:52.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1502', N'租户修改', N'admin_systenant_edit', NULL, N'1500', N'1', N'1', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:56:53.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1503', N'租户删除', N'admin_systenant_del', NULL, N'1500', N'1', N'2', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:56:54.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1600', N'岗位管理', NULL, N'/admin/post/index', N'1000', N'icon-record', N'6', N'0', N'0', N' ', N'2022-03-26 13:04:14.0000000', N' ', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1601', N'岗位信息查看', N'sys_post_view', NULL, N'1600', NULL, N'0', N'0', N'1', N' ', N'2022-03-26 13:05:34.0000000', N' ', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1602', N'岗位信息新增', N'sys_post_add', NULL, N'1600', NULL, N'1', N'0', N'1', N' ', N'2022-03-26 13:06:00.0000000', N' ', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1603', N'岗位信息修改', N'sys_post_edit', NULL, N'1600', NULL, N'2', N'0', N'1', N' ', N'2022-03-26 13:06:31.0000000', N' ', N'2022-03-26 13:06:38.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1604', N'岗位信息删除', N'sys_post_del', NULL, N'1600', NULL, N'3', N'0', N'1', N' ', N'2022-03-26 13:06:31.0000000', N' ', NULL, N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'1605', N'岗位导入导出', N'sys_post_export', NULL, N'1600', NULL, N'4', N'0', N'1', N' ', N'2022-03-26 13:06:31.0000000', N' ', N'2022-03-26 06:32:02.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2000', N'系统管理', NULL, N'/system', N'-1', N'icon-xitongpeizhi', N'1', N'0', N'0', N' ', N'2017-11-07 20:56:00.0000000', N' ', N'2022-02-05 16:15:14.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2100', N'日志管理', NULL, N'/admin/log/index', N'2000', N'icon-rizhi', N'5', N'0', N'0', N' ', N'2017-11-20 14:06:22.0000000', N' ', N'2020-03-24 08:56:56.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2101', N'日志删除', N'sys_log_del', NULL, N'2100', NULL, N'1', N'0', N'1', N' ', N'2017-11-20 20:37:37.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2102', N'导入导出', N'sys_log_export', NULL, N'2100', NULL, N'1', N'0', N'1', N' ', N'2017-11-08 09:54:01.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2200', N'字典管理', NULL, N'/admin/dict/index', N'2000', N'icon-navicon-zdgl', N'6', N'0', N'0', N' ', N'2017-11-29 11:30:52.0000000', N' ', N'2020-03-24 08:56:58.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2201', N'字典删除', N'sys_dict_del', NULL, N'2200', NULL, N'1', N'0', N'1', N' ', N'2017-11-29 11:30:11.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2202', N'字典新增', N'sys_dict_add', NULL, N'2200', NULL, N'1', N'0', N'1', N' ', N'2018-05-11 22:34:55.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2203', N'字典修改', N'sys_dict_edit', NULL, N'2200', NULL, N'1', N'0', N'1', N' ', N'2018-05-11 22:36:03.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2210', N'参数管理', NULL, N'/admin/param/index', N'2000', N'icon-canshu', N'7', N'1', N'0', N' ', N'2019-04-29 22:16:50.0000000', N' ', N'2020-03-24 08:57:10.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2211', N'参数新增', N'admin_syspublicparam_add', NULL, N'2210', NULL, N'1', N'0', N'1', N' ', N'2019-04-29 22:17:36.0000000', N' ', N'2020-03-24 08:57:11.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2212', N'参数删除', N'admin_syspublicparam_del', NULL, N'2210', NULL, N'1', N'0', N'1', N' ', N'2019-04-29 22:17:55.0000000', N' ', N'2020-03-24 08:57:12.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2213', N'参数编辑', N'admin_syspublicparam_edit', NULL, N'2210', NULL, N'1', N'0', N'1', N' ', N'2019-04-29 22:18:14.0000000', N' ', N'2020-03-24 08:57:13.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2300', N'代码生成', N'', N'/gen/index', N'9000', N'icon-weibiaoti46', N'1', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:57:14.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2400', N'终端管理', N'', N'/admin/client/index', N'2000', N'icon-bangzhushouji', N'9', N'1', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:57:15.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2401', N'客户端新增', N'sys_client_add', NULL, N'2400', N'1', N'1', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2402', N'客户端修改', N'sys_client_edit', NULL, N'2400', NULL, N'1', N'0', N'1', N' ', N'2018-05-15 21:37:06.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2403', N'客户端删除', N'sys_client_del', NULL, N'2400', NULL, N'1', N'0', N'1', N' ', N'2018-05-15 21:39:16.0000000', N' ', N'2021-05-25 03:12:55.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2500', N'密钥管理', N'', N'/admin/social/index', N'2000', N'icon-miyue', N'10', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:57:18.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2501', N'密钥新增', N'sys_social_details_add', NULL, N'2500', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:19.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2502', N'密钥修改', N'sys_social_details_edit', NULL, N'2500', N'1', N'1', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:19.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2503', N'密钥删除', N'sys_social_details_del', NULL, N'2500', N'1', N'2', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:23.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2600', N'令牌管理', NULL, N'/admin/token/index', N'2000', N'icon-denglvlingpai', N'11', N'0', N'0', N' ', N'2018-09-04 05:58:41.0000000', N' ', N'2020-03-24 08:57:24.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2601', N'令牌删除', N'sys_token_del', NULL, N'2600', NULL, N'1', N'0', N'1', N' ', N'2018-09-04 05:59:50.0000000', N' ', N'2020-03-24 08:57:24.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2800', N'Quartz管理', N'', N'/daemon/job-manage/index', N'2000', N'icon-guanwangfangwen', N'8', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:57:26.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2810', N'任务新增', N'job_sys_job_add', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:26.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2820', N'任务修改', N'job_sys_job_edit', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:27.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2830', N'任务删除', N'job_sys_job_del', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:28.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2840', N'任务暂停', N'job_sys_job_shutdown_job', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:28.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2850', N'任务开始', N'job_sys_job_start_job', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:29.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2860', N'任务刷新', N'job_sys_job_refresh_job', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:57:30.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'2870', N'执行任务', N'job_sys_job_run_job', NULL, N'2800', N'1', N'0', N'0', N'1', N' ', N'2019-08-08 15:35:18.0000000', N' ', N'2020-03-24 08:57:31.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'3000', N'系统监控', NULL, N'/daemon', N'-1', N'icon-msnui-supervise', N'2', N'0', N'2', N' ', N'2018-07-27 01:13:21.0000000', N' ', N'2020-03-24 08:57:31.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'3500', N'文档扩展', NULL, N'http://tdcloud-gateway:9999/admin/doc.html', N'3000', N'icon-wendang', N'2', N'0', N'0', N' ', N'2018-06-26 10:50:32.0000000', N' ', N'2020-03-24 08:57:36.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'3600', N'Quartz日志', N'', N'/daemon/job-log/index', N'3000', N'icon-gtsquanjushiwufuwuGTS', N'8', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:57:37.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'3700', N'注册配置', NULL, N'', N'3000', N'icon-line', N'10', N'0', N'0', N' ', N'2018-01-25 11:08:52.0000000', N' ', N'2020-03-24 08:57:37.0000000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'8000', N'文件管理', NULL, N'/admin/file/index', N'2000', N'icon-wenjianguanli', N'6', N'0', N'0', N' ', N'2019-06-25 12:44:46.0000000', N' ', N'2020-03-24 08:58:41.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'8001', N'删除文件', N'sys_file_del', NULL, N'8000', NULL, N'1', N'0', N'1', N' ', N'2019-06-25 13:41:41.0000000', N' ', N'2020-03-24 08:58:42.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9000', N'开发平台', NULL, N'/gen', N'-1', N'icon-shejiyukaifa-', N'9', N'0', N'0', N' ', N'2019-08-12 09:35:16.0000000', N' ', N'2020-03-24 08:58:48.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9001', N'表单管理', N'', N'/gen/form', N'9000', N'icon-record', N'3', N'0', N'0', N' ', N'2018-01-20 13:17:19.0000000', N' ', N'2020-03-24 08:58:44.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9002', N'表单新增', N'gen_form_add', NULL, N'9001', N'1', N'0', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:58:45.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9003', N'表单修改', N'gen_form_edit', NULL, N'9001', N'1', N'1', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:58:46.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9004', N'表单删除', N'gen_form_del', NULL, N'9001', N'1', N'2', N'0', N'1', N' ', N'2018-05-15 21:35:18.0000000', N' ', N'2020-03-24 08:58:47.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9005', N'数据源管理', NULL, N'/gen/datasource', N'9000', N'icon-mysql', N'0', N'0', N'0', N' ', N'2019-08-12 09:42:11.0000000', N' ', N'2020-03-24 08:58:49.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9006', N'表单设计', NULL, N'/gen/design', N'9000', N'icon-biaodanbiaoqian', N'2', N'0', N'0', N' ', N'2019-08-16 10:08:56.0000000', N' ', N'2020-03-24 08:58:53.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'9007', N'低代码', N'gen_api_designer', NULL, N'9001', N'1', N'3', N'0', N'1', N' ', N'2019-08-16 10:08:56.0000000', N' ', N'2020-03-24 08:58:53.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'15100', N'租户菜单', N'admin_systenant_tenantmenu', NULL, N'1500', N'1', N'1', N'0', N'1', N'admin', N'2022-12-12 09:01:41.0000000', N' ', N'2023-01-11 05:52:51.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'15101', N'租户菜单删除', N'admin_systenantmenu_del', NULL, N'15100', N'1', N'1', N'0', N'1', N'admin', N'2022-12-09 14:04:19.0000000', N'admin', N'2023-01-11 05:52:51.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'15102', N'租户菜单编辑', N'admin_systenantmenu_edit', NULL, N'15100', N'1', N'1', N'0', N'1', N'admin', N'2022-12-09 14:04:19.0000000', N'admin', N'2023-01-11 05:52:51.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_menu] ([menu_id], [name], [permission], [path], [parent_id], [icon], [sort_order], [keep_alive], [menu_type], [create_by], [create_time], [update_by], [update_time], [del_flag], [tenant_id]) VALUES (N'15103', N'租户菜单新增', N'admin_systenantmenu_add', NULL, N'15100', N'1', N'1', N'0', N'1', N'admin', N'2022-12-09 14:04:19.0000000', N'admin', N'2022-12-12 09:02:00.0000000', N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_oauth_client_details
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_oauth_client_details]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_oauth_client_details]
GO

CREATE TABLE [dbo].[sys_oauth_client_details] (
  [id] bigint  NOT NULL,
  [client_id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [resource_ids] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [client_secret] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [scope] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorized_grant_types] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [web_server_redirect_uri] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [authorities] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [access_token_validity] int  NULL,
  [refresh_token_validity] int  NULL,
  [additional_information] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [autoapprove] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_oauth_client_details] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'上传时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'终端信息表',
'SCHEMA', N'dbo',
'TABLE', N'sys_oauth_client_details'
GO


-- ----------------------------
-- Records of sys_oauth_client_details
-- ----------------------------
INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'1', N'app', NULL, N'app', N'server', N'password,refresh_token,authorization_code,client_credentials,mobile', N'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso', NULL, N'43200', N'2592001', N'{"enc_flag":"1","captcha_flag":"1"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'2', N'daemon', NULL, N'daemon', N'server', N'password,refresh_token', NULL, NULL, N'43200', N'2592001', N'{"enc_flag":"1","captcha_flag":"1"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'3', N'gen', NULL, N'gen', N'server', N'password,refresh_token', NULL, NULL, N'43200', N'2592001', N'{"enc_flag":"1","captcha_flag":"1"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'4', N'mp', NULL, N'mp', N'server', N'password,refresh_token', NULL, NULL, N'43200', N'2592001', N'{"enc_flag":"1","captcha_flag":"1"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'5', N'pig', NULL, N'pig', N'server', N'password,refresh_token,authorization_code,client_credentials,mobile', N'http://localhost:4040/sso1/login,http://localhost:4041/sso1/login,http://localhost:8080/renren-admin/sys/oauth2-sso,http://localhost:8090/sys/oauth2-sso', NULL, N'43200', N'2592001', N'{"enc_flag":"1","captcha_flag":"1"}', N'false', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'6', N'test', NULL, N'test', N'server', N'password,refresh_token', NULL, NULL, N'43200', N'2592001', N'{ "enc_flag":"1","captcha_flag":"0"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_oauth_client_details] ([id], [client_id], [resource_ids], [client_secret], [scope], [authorized_grant_types], [web_server_redirect_uri], [authorities], [access_token_validity], [refresh_token_validity], [additional_information], [autoapprove], [del_flag], [create_by], [update_by], [create_time], [update_time], [tenant_id]) VALUES (N'7', N'social', NULL, N'social', N'server', N'password,refresh_token,mobile', NULL, NULL, N'43200', N'2592001', N'{ "enc_flag":"0","captcha_flag":"0"}', N'true', N'0', N' ', N' ', NULL, NULL, N'1')
GO


-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_post]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_post]
GO

CREATE TABLE [dbo].[sys_post] (
  [post_id] bigint  NOT NULL,
  [post_code] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [post_name] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [post_sort] int  NOT NULL,
  [remark] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_time] datetime2(7)  NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_post] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'post_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'post_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'post_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'post_sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否删除  -1：已删除  0：正常',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_post',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位信息表',
'SCHEMA', N'dbo',
'TABLE', N'sys_post'
GO


-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [remark], [del_flag], [create_time], [create_by], [update_time], [update_by], [tenant_id]) VALUES (N'1', N'CTO', N'CTO', N'0', N'CTO', N'0', N'2022-03-26 13:48:17.0000000', N'', N'2022-03-26 13:50:14.0000000', N'', N'1')
GO

INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [remark], [del_flag], [create_time], [create_by], [update_time], [update_by], [tenant_id]) VALUES (N'2', N'CEO', N'CEO', N'1', N'CEO', N'0', N'2022-03-26 13:48:27.0000000', N'', N'2022-03-26 13:48:38.0000000', N'', N'1')
GO


-- ----------------------------
-- Table structure for sys_public_param
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_public_param]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_public_param]
GO

CREATE TABLE [dbo].[sys_public_param] (
  [public_id] bigint  NOT NULL,
  [public_name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [public_key] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [public_value] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [validate_code] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NOT NULL,
  [update_time] datetime2(7)  NULL,
  [public_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [system_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_public_param] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'public_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公共参数配置表',
'SCHEMA', N'dbo',
'TABLE', N'sys_public_param'
GO


-- ----------------------------
-- Records of sys_public_param
-- ----------------------------
INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'1', N'租户默认来源', N'TENANT_DEFAULT_ID', N'1', N'0', N'', N' ', N' ', N'2020-05-12 04:03:46.0000000', N'2020-06-20 08:56:30.0000000', N'2', N'0', N'1', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'2', N'租户默认部门名称', N'TENANT_DEFAULT_DEPTNAME', N'租户默认部门', N'0', N'', N' ', N' ', N'2020-05-12 03:36:32.0000000', NULL, N'2', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'3', N'租户默认账户', N'TENANT_DEFAULT_USERNAME', N'admin', N'0', N'', N' ', N' ', N'2020-05-12 04:05:04.0000000', NULL, N'2', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'4', N'租户默认密码', N'TENANT_DEFAULT_PASSWORD', N'123456', N'0', N'', N' ', N' ', N'2020-05-12 04:05:24.0000000', NULL, N'2', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'5', N'租户默认角色编码', N'TENANT_DEFAULT_ROLECODE', N'ROLE_ADMIN', N'0', N'', N' ', N' ', N'2020-05-12 04:05:57.0000000', NULL, N'2', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'6', N'租户默认角色名称', N'TENANT_DEFAULT_ROLENAME', N'租户默认角色', N'0', N'', N' ', N' ', N'2020-05-12 04:06:19.0000000', NULL, N'2', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'7', N'表前缀', N'GEN_TABLE_PREFIX', N'tb_', N'0', N'', N' ', N' ', N'2020-05-12 04:23:04.0000000', NULL, N'9', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'8', N'接口文档不显示的字段', N'GEN_HIDDEN_COLUMNS', N'tenant_id', N'0', N'', N' ', N' ', N'2020-05-12 04:25:19.0000000', NULL, N'9', N'1', N'0', N'1')
GO

INSERT INTO [dbo].[sys_public_param] ([public_id], [public_name], [public_key], [public_value], [status], [validate_code], [create_by], [update_by], [create_time], [update_time], [public_type], [system_flag], [del_flag], [tenant_id]) VALUES (N'9', N'注册用户默认角色', N'USER_DEFAULT_ROLE', N'GENERAL_USER', N'0', NULL, N' ', N' ', N'2022-03-31 16:52:24.0000000', NULL, N'2', N'1', N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [role_id] bigint  NOT NULL,
  [role_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [role_code] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [role_desc] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ds_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [ds_scope] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NOT NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role] ([role_id], [role_name], [role_code], [role_desc], [ds_type], [ds_scope], [create_by], [update_by], [create_time], [update_time], [del_flag], [tenant_id]) VALUES (N'1', N'管理员', N'ROLE_ADMIN', N'管理员', N'0', N'2', N'', N'admin', N'2017-10-29 15:45:51.0000000', N'2023-03-28 12:15:26.0000000', N'0', N'1')
GO

INSERT INTO [dbo].[sys_role] ([role_id], [role_name], [role_code], [role_desc], [ds_type], [ds_scope], [create_by], [update_by], [create_time], [update_time], [del_flag], [tenant_id]) VALUES (N'2', N'普通用户', N'GENERAL_USER', N'普通用户', N'3', NULL, N' ', N' ', N'2022-03-31 17:03:15.0000000', NULL, N'0', N'1')
GO


-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_menu]
GO

CREATE TABLE [dbo].[sys_role_menu] (
  [role_id] bigint  NOT NULL,
  [menu_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_role_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu',
'COLUMN', N'menu_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色菜单表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_menu'
GO


-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1100')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1101')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1102')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1103')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1104')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1200')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1201')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1202')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1203')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1300')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1301')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1302')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1303')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1304')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1305')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1400')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1401')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1402')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1403')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1404')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1500')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1501')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1502')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1503')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1600')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1601')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1602')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1603')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1604')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1605')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2100')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2101')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2102')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2200')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2201')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2202')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2203')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2210')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2211')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2212')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2213')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2300')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2400')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2401')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2402')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2403')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2500')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2501')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2502')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2503')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2600')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2601')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2700')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2800')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2810')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2820')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2830')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2840')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2850')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2860')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2870')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'3000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'3500')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'3600')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'8000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'8001')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9001')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9002')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9003')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9004')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9005')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9006')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'9007')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'15100')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'15101')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'15102')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'15103')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1100')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1101')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1102')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1103')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1104')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1200')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1201')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1202')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1203')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1300')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1301')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1302')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1303')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1304')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1305')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1400')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1401')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1402')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1403')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1404')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1500')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1501')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1502')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1503')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1600')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1601')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1602')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1603')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1604')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'1605')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'2300')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9000')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9001')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9002')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9003')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9004')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9005')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9006')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'9007')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'15100')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'15101')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'15102')
GO

INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'2', N'15103')
GO


-- ----------------------------
-- Table structure for sys_social_details
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_social_details]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_social_details]
GO

CREATE TABLE [dbo].[sys_social_details] (
  [id] bigint  NOT NULL,
  [type] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_id] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [app_secret] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [redirect_url] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [ext] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_social_details] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主鍵',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拓展字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'ext'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统社交登录账号表',
'SCHEMA', N'dbo',
'TABLE', N'sys_social_details'
GO


-- ----------------------------
-- Records of sys_social_details
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_tenant]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_tenant]
GO

CREATE TABLE [dbo].[sys_tenant] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_domain] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [start_time] datetime2(7)  NULL,
  [end_time] datetime2(7)  NULL,
  [status] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NOT NULL,
  [update_time] datetime2(7)  NOT NULL,
  [menu_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_tenant] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant'
GO


-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
INSERT INTO [dbo].[sys_tenant] ([id], [name], [code], [tenant_domain], [start_time], [end_time], [status], [del_flag], [create_by], [update_by], [create_time], [update_time], [menu_id]) VALUES (N'1', N'北京分公司', N'1', N'', N'2019-05-15 00:00:00.0000000', N'2029-05-15 00:00:00.0000000', N'0', N'0', N'', N'admin', N'2019-05-15 15:44:57.0000000', N'2022-12-09 15:27:50.0000000', N'1')
GO


-- ----------------------------
-- Table structure for sys_tenant_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_tenant_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_tenant_menu]
GO

CREATE TABLE [dbo].[sys_tenant_menu] (
  [id] bigint  NOT NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [menu_ids] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] nchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NOT NULL,
  [update_time] datetime2(7)  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_tenant_menu] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户菜单名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单id集合',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'menu_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户菜单,9:冻结,0:正常',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_tenant_menu',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of sys_tenant_menu
-- ----------------------------
INSERT INTO [dbo].[sys_tenant_menu] ([id], [name], [menu_ids], [status], [del_flag], [create_by], [update_by], [create_time], [update_time]) VALUES (N'1', N'1231', N'1000,1100,1101,1102,1103,1104,1200,1201,1202,1203,1300,1301,1302,1303,1304,1305,1400,1401,1402,1403,1404,1500,1501,1502,1503,1600,1601,1602,1603,1604,1605,1601095373834067969,1601095530717814785,1601095569972305921,1601095611131011073', N'0', N'0', N'admin', N' ', N'2022-12-09 14:39:56.0000000', N'2022-12-09 06:39:56.0000000')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [user_id] bigint  NOT NULL,
  [username] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [salt] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [nickname] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [dept_id] bigint  NULL,
  [create_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [update_by] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [lock_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [wx_openid] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [mini_openid] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [qq_openid] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [gitee_login] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [osc_id] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拓展字段:昵称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拓展字段:姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拓展字段:邮箱',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'微信登录openId',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'wx_openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小程序openId',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'mini_openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'QQ openId',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'qq_openid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'码云 标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'gitee_login'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开源中国 标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'osc_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user] ([user_id], [username], [password], [salt], [phone], [avatar], [nickname], [name], [email], [dept_id], [create_by], [update_by], [create_time], [update_time], [lock_flag], [del_flag], [wx_openid], [mini_openid], [qq_openid], [gitee_login], [osc_id], [tenant_id]) VALUES (N'1', N'admin', N'$2a$10$cE02oZ1N4mkdA6JHJUP7/uAJ3TQdVgO3kLRvLoe5KvvMU99W5r5hG', N'', N'17034642888', N'/admin/sys-file/tdcloud/c5a85e0770cd4fe78bc14b63b3bd05ae.jpg', N'管理员', N'管理员', N'admin@mail.com', N'1640563358288424961', N' ', N'admin', N'2018-04-20 07:15:18.0000000', N'2023-03-28 11:56:36.0000000', N'0', N'0', N'o_0FT0uyg_H1vVy2H0JpSwlVGhWQ', N'oBxPy5E-v82xWGsfzZVzkD3wEX64', NULL, N'log4j', N'2303656', N'1')
GO

INSERT INTO [dbo].[sys_user] ([user_id], [username], [password], [salt], [phone], [avatar], [nickname], [name], [email], [dept_id], [create_by], [update_by], [create_time], [update_time], [lock_flag], [del_flag], [wx_openid], [mini_openid], [qq_openid], [gitee_login], [osc_id], [tenant_id]) VALUES (N'1640563969650176002', N'lgs', N'$2a$10$gHClTb7m/52yCAQECI6qC.fJ2Nq.KXMDN4.zs.cJpA1Sa8sXO9Q72', NULL, N'12312312311', NULL, N'lgs', N'刘国生', N'761301854@qq.com', N'1640563398440497154', N'admin', N' ', N'2023-03-28 11:58:25.0000000', NULL, N'0', N'0', NULL, NULL, NULL, NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_user] ([user_id], [username], [password], [salt], [phone], [avatar], [nickname], [name], [email], [dept_id], [create_by], [update_by], [create_time], [update_time], [lock_flag], [del_flag], [wx_openid], [mini_openid], [qq_openid], [gitee_login], [osc_id], [tenant_id]) VALUES (N'1640564344100859906', N'lgs1', N'$2a$10$2nijUuwrGtB1o.F.gSNleuwTbaYjtGWHWX6cXfpzE1bCkrXiBs.M2', NULL, N'12312312312', NULL, NULL, N'刘国生', N'761301854@qq.com', N'1640563398440497154', N'admin', N'admin', N'2023-03-28 11:59:55.0000000', N'2023-03-28 12:15:54.0000000', N'0', N'1', NULL, NULL, NULL, NULL, NULL, N'1')
GO


-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_post]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_post]
GO

CREATE TABLE [dbo].[sys_user_post] (
  [user_id] bigint  NOT NULL,
  [post_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_post] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_post',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_post',
'COLUMN', N'post_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户与岗位关联表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_post'
GO


-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (N'1', N'1')
GO

INSERT INTO [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (N'1640563969650176002', N'1')
GO

INSERT INTO [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (N'1640564344100859906', N'1')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [user_id] bigint  NOT NULL,
  [role_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role'
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (N'1', N'1')
GO

INSERT INTO [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (N'1640563969650176002', N'2')
GO


-- ----------------------------
-- Primary Key structure for table plant_maintain
-- ----------------------------
ALTER TABLE [dbo].[plant_maintain] ADD CONSTRAINT [PK__plant_ma__3213E83FEE15ACA3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_blob_triggers] ADD CONSTRAINT [PK__qrtz_blo__009FEA1C1FED7037] PRIMARY KEY CLUSTERED ([sched_name], [trigger_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE [dbo].[qrtz_calendars] ADD CONSTRAINT [PK__qrtz_cal__E21C9869651A7E7F] PRIMARY KEY CLUSTERED ([sched_name], [calendar_name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_cron_triggers] ADD CONSTRAINT [PK__qrtz_cro__009FEA1C2E5ED32D] PRIMARY KEY CLUSTERED ([sched_name], [trigger_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_fired_triggers] ADD CONSTRAINT [PK__qrtz_fir__5E6EA63B6FB83799] PRIMARY KEY CLUSTERED ([sched_name], [entry_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE [dbo].[qrtz_job_details] ADD CONSTRAINT [PK__qrtz_job__1642BB8C5521E984] PRIMARY KEY CLUSTERED ([sched_name], [job_name], [job_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE [dbo].[qrtz_locks] ADD CONSTRAINT [PK__qrtz_loc__F1C0211F96778372] PRIMARY KEY CLUSTERED ([sched_name], [lock_name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE [dbo].[qrtz_paused_trigger_grps] ADD CONSTRAINT [PK__qrtz_pau__3D845B2BA1E25A4F] PRIMARY KEY CLUSTERED ([sched_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE [dbo].[qrtz_scheduler_state] ADD CONSTRAINT [PK__qrtz_sch__FDC0ABB1048A1F8A] PRIMARY KEY CLUSTERED ([sched_name], [instance_name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simple_triggers] ADD CONSTRAINT [PK__qrtz_sim__009FEA1C2D51B4A3] PRIMARY KEY CLUSTERED ([sched_name], [trigger_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simprop_triggers] ADD CONSTRAINT [PK__qrtz_sim__009FEA1C0294A92F] PRIMARY KEY CLUSTERED ([sched_name], [trigger_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE NONCLUSTERED INDEX [sched_name]
ON [dbo].[qrtz_triggers] (
  [sched_name] ASC,
  [job_name] ASC,
  [job_group] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_triggers] ADD CONSTRAINT [PK__qrtz_tri__009FEA1CCAE34F22] PRIMARY KEY CLUSTERED ([sched_name], [trigger_name], [trigger_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_dept] ADD CONSTRAINT [PK__sys_dept__DCA6597402233CF8] PRIMARY KEY CLUSTERED ([dept_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dept_relation
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx1]
ON [dbo].[sys_dept_relation] (
  [ancestor] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx2]
ON [dbo].[sys_dept_relation] (
  [descendant] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dept_relation
-- ----------------------------
ALTER TABLE [dbo].[sys_dept_relation] ADD CONSTRAINT [PK__sys_dept__73970ADD8A0C226F] PRIMARY KEY CLUSTERED ([ancestor], [descendant])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dict
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_dict_del_flag]
ON [dbo].[sys_dict] (
  [del_flag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [PK__sys_dict__3213E83F041721E4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dict_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_dict_value]
ON [dbo].[sys_dict_item] (
  [item_value] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_dict_label]
ON [dbo].[sys_dict_item] (
  [label] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_dict_item_del_flag]
ON [dbo].[sys_dict_item] (
  [del_flag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_item
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_item] ADD CONSTRAINT [PK__sys_dict__3213E83FADCA35CF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_file
-- ----------------------------
ALTER TABLE [dbo].[sys_file] ADD CONSTRAINT [PK__sys_file__3213E83F04D5399D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE [dbo].[sys_job] ADD CONSTRAINT [PK__sys_job__2E0E56DCE85C7FE4] PRIMARY KEY CLUSTERED ([job_id], [job_name], [job_group])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE [dbo].[sys_job_log] ADD CONSTRAINT [PK__sys_job___0CA0EBC9F5FE6208] PRIMARY KEY CLUSTERED ([job_log_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_log_request_uri]
ON [dbo].[sys_log] (
  [request_uri] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_log_type]
ON [dbo].[sys_log] (
  [log_type] ASC
)
GO

CREATE NONCLUSTERED INDEX [sys_log_create_date]
ON [dbo].[sys_log] (
  [create_time] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE [dbo].[sys_log] ADD CONSTRAINT [PK__sys_log__3213E83FC6637F00] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK__sys_menu__4CA0FADCB1F151C1] PRIMARY KEY CLUSTERED ([menu_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_oauth_client_details
-- ----------------------------
ALTER TABLE [dbo].[sys_oauth_client_details] ADD CONSTRAINT [PK__sys_oaut__3213E83F0CCDE435] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE [dbo].[sys_post] ADD CONSTRAINT [PK__sys_post__3ED787666CA056E2] PRIMARY KEY CLUSTERED ([post_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_public_param
-- ----------------------------
ALTER TABLE [dbo].[sys_public_param] ADD CONSTRAINT [PK__sys_publ__5699A531AD91E749] PRIMARY KEY CLUSTERED ([public_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [role_idx1_role_code]
ON [dbo].[sys_role] (
  [role_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__760965CC90C25B53] PRIMARY KEY CLUSTERED ([role_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD CONSTRAINT [PK__sys_role__A2C36A615E63174F] PRIMARY KEY CLUSTERED ([role_id], [menu_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_social_details
-- ----------------------------
ALTER TABLE [dbo].[sys_social_details] ADD CONSTRAINT [PK__sys_soci__3213E83FC5A90053] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_tenant
-- ----------------------------
ALTER TABLE [dbo].[sys_tenant] ADD CONSTRAINT [PK__sys_tena__3213E83F6725944D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_tenant_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_tenant_menu] ADD CONSTRAINT [PK__sys_tena__3213E83F698F185E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------
CREATE NONCLUSTERED INDEX [user_wx_openid]
ON [dbo].[sys_user] (
  [wx_openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_qq_openid]
ON [dbo].[sys_user] (
  [qq_openid] ASC
)
GO

CREATE NONCLUSTERED INDEX [user_idx1_username]
ON [dbo].[sys_user] (
  [username] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__B9BE370FBF9F7DC0] PRIMARY KEY CLUSTERED ([user_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE [dbo].[sys_user_post] ADD CONSTRAINT [PK__sys_user__CA534F794768C595] PRIMARY KEY CLUSTERED ([user_id], [post_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [PK__sys_user__6EDEA15355CB51D9] PRIMARY KEY CLUSTERED ([user_id], [role_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_blob_triggers] ADD CONSTRAINT [qrtz_blob_triggers_ibfk_1] FOREIGN KEY ([sched_name], [trigger_name], [trigger_group]) REFERENCES [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_cron_triggers] ADD CONSTRAINT [qrtz_cron_triggers_ibfk_1] FOREIGN KEY ([sched_name], [trigger_name], [trigger_group]) REFERENCES [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simple_triggers] ADD CONSTRAINT [QRTZ_SIMPLE_TRIGGERS_IBFK_1] FOREIGN KEY ([sched_name], [trigger_name], [trigger_group]) REFERENCES [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simprop_triggers] ADD CONSTRAINT [QRTZ_SIMPROP_TRIGGERS_IBFK_1] FOREIGN KEY ([sched_name], [trigger_name], [trigger_group]) REFERENCES [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_triggers] ADD CONSTRAINT [qrtz_triggers_ibfk_1] FOREIGN KEY ([sched_name], [job_name], [job_group]) REFERENCES [dbo].[qrtz_job_details] ([sched_name], [job_name], [job_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

