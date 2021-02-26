/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : SQL Server
 Source Server Version : 15002080
 Source Host           : 127.0.0.1:1433
 Source Catalog        : DB_Agencias
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002080
 File Encoding         : 65001

 Date: 26/02/2021 02:43:33
*/


-- ----------------------------
-- Table structure for CreditosContas
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CreditosContas]') AND type IN ('U'))
	DROP TABLE [dbo].[CreditosContas]
GO

CREATE TABLE [dbo].[CreditosContas] (
  [ClientNum] int  NOT NULL,
  [Saldo] float(53)  NOT NULL,
  [UpdateDate] datetime  NULL,
  [ContaTipo] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [GerenteId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CreditosContas] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CreditosContas
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[CreditosContas] VALUES (N'1', N'2200.45', N'2021-02-10 00:00:00.000', N'Comum', N'1'), (N'2', N'645', N'2021-02-10 00:00:00.000', N'Comum', N'1'), (N'3', N'457.94', N'2021-02-10 00:00:00.000', N'Platinum', N'3'), (N'4', N'1200.93', N'2021-02-10 00:00:00.000', N'Gold', N'1'), (N'5', N'88', N'2021-02-10 00:00:00.000', N'Comum', N'1'), (N'6', N'5688.05', N'2021-02-10 00:00:00.000', N'Gold', N'2'), (N'7', N'540.93', N'2021-02-10 00:00:00.000', N'Platinum', N'2'), (N'8', N'441.98', N'2021-02-10 00:00:00.000', N'Gold', N'3'), (N'9', N'46.87', N'2021-02-10 00:00:00.000', N'Comum', N'2'), (N'10', N'5000', N'2021-02-10 00:00:00.000', N'Gold', N'3')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table CreditosContas
-- ----------------------------
ALTER TABLE [dbo].[CreditosContas] ADD CONSTRAINT [PK_CreditosContas] PRIMARY KEY CLUSTERED ([ClientNum])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

