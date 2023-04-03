/*
 Navicat Premium Data Transfer

 Source Server         : sqlservice
 Source Server Type    : SQL Server
 Source Server Version : 14003460 (14.00.3460)
 Source Host           : localhost:1433
 Source Catalog        : tdcloudx_boot_codegen
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003460 (14.00.3460)
 File Encoding         : 65001

 Date: 29/03/2023 13:57:09
*/


-- ----------------------------
-- Table structure for gen_api_file
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_api_file]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_api_file]
GO

CREATE TABLE [dbo].[gen_api_file] (
  [file_path] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_content] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_api_file] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of gen_api_file
-- ----------------------------
INSERT INTO [dbo].[gen_api_file] ([file_path], [file_content]) VALUES (N'/magic-api/api/', N'this is directory')
GO

INSERT INTO [dbo].[gen_api_file] ([file_path], [file_content]) VALUES (N'/magic-api/datasource/', N'this is directory')
GO

INSERT INTO [dbo].[gen_api_file] ([file_path], [file_content]) VALUES (N'/magic-api/function/', N'this is directory')
GO


-- ----------------------------
-- Table structure for gen_datasource_conf
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_datasource_conf]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_datasource_conf]
GO

CREATE TABLE [dbo].[gen_datasource_conf] (
  [id] bigint  NOT NULL,
  [name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [username] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL,
  [ds_type] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [conf_type] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [ds_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [instance] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [port] int  NULL,
  [host] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_datasource_conf] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'别名',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'jdbcurl',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户ID',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'ds_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'配置类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'conf_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'ds_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'instance'
GO

EXEC sp_addextendedproperty
'MS_Description', N'端口',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'port'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主机',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf',
'COLUMN', N'host'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源表',
'SCHEMA', N'dbo',
'TABLE', N'gen_datasource_conf'
GO


-- ----------------------------
-- Records of gen_datasource_conf
-- ----------------------------
INSERT INTO [dbo].[gen_datasource_conf] ([id], [name], [url], [username], [password], [create_time], [update_time], [del_flag], [tenant_id], [ds_type], [conf_type], [ds_name], [instance], [port], [host]) VALUES (N'1640954129877422082', N'tdcloudx_boot', N'jdbc:sqlserver://localhost:1433;SelectMethod=cursor;DatabaseName=tdcloudx_boot;characterEncoding=utf8', N'sa', N'VSHnSQ7E+fiRBHoKp5t8DEE6rRYvj/J0', N'2023-03-29 13:48:46.6730000', NULL, N'0', N'1', N'mssql', N'1', NULL, NULL, N'1433', NULL)
GO


-- ----------------------------
-- Table structure for gen_form_conf
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_form_conf]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_form_conf]
GO

CREATE TABLE [dbo].[gen_form_conf] (
  [id] bigint  NOT NULL,
  [table_name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [form_info] varchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] nchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [tenant_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[gen_form_conf] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单信息',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf',
'COLUMN', N'form_info'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属租户',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf',
'COLUMN', N'tenant_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单配置',
'SCHEMA', N'dbo',
'TABLE', N'gen_form_conf'
GO


-- ----------------------------
-- Records of gen_form_conf
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table gen_api_file
-- ----------------------------
ALTER TABLE [dbo].[gen_api_file] ADD CONSTRAINT [PK__gen_api___3E8CBD4DF2A916D4] PRIMARY KEY CLUSTERED ([file_path])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table gen_datasource_conf
-- ----------------------------
ALTER TABLE [dbo].[gen_datasource_conf] ADD CONSTRAINT [PK__gen_data__3213E83F6FEA3673] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table gen_form_conf
-- ----------------------------
CREATE NONCLUSTERED INDEX [table_name]
ON [dbo].[gen_form_conf] (
  [table_name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table gen_form_conf
-- ----------------------------
ALTER TABLE [dbo].[gen_form_conf] ADD CONSTRAINT [PK__gen_form__3213E83F567DCACF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

