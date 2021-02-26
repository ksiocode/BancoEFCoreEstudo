/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : SQL Server
 Source Server Version : 15002080
 Source Host           : 127.0.0.1:1433
 Source Catalog        : DB_Usuarios
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002080
 File Encoding         : 65001

 Date: 26/02/2021 02:46:45
*/


-- ----------------------------
-- Table structure for Usuarios
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type IN ('U'))
	DROP TABLE [dbo].[Usuarios]
GO

CREATE TABLE [dbo].[Usuarios] (
  [ClientNum] int  NOT NULL,
  [email] varchar(70) COLLATE Latin1_General_CI_AS  NOT NULL,
  [CreateDate] datetime  NOT NULL,
  [Nome] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [Sobrenome] varchar(50) COLLATE Latin1_General_CI_AS  NOT NULL,
  [cpf] varchar(20) COLLATE Latin1_General_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Usuarios] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Usuarios
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Usuarios] VALUES (N'1', N'jeremiastedesco1@gmail.com', N'2021-02-10 00:00:00.000', N'Jeremias', N'Tedesco Nogueia', N'1122334455'), (N'2', N'marciacanaro@gmail.com', N'2021-02-10 00:00:00.000', N'Marcia', N'Canaro Veiga', N'2233445577'), (N'3', N'juvenircastro4@gmail.com', N'2021-02-10 00:00:00.000', N'Juvenir', N'Castro Alves', N'6677889900'), (N'4', N'malaquias15x@gmail.com', N'2021-02-10 00:00:00.000', N'Fernando', N'Malaquias', N'3344556677'), (N'5', N'alfredoatila@gmail.com', N'2021-02-10 00:00:00.000', N'Alfredo', N'Atila Neves', N'9977665544'), (N'6', N'cristiane_leite@gmail.com', N'2021-02-10 00:00:00.000', N'Cristiane', N'Andreia Leite', N'7755228888'), (N'7', N'severino_pedra@gmail.com', N'2021-02-10 00:00:00.000', N'Severino', N'Almeida Pedra', N'6633117755'), (N'8', N'yago_venicius@gmail.com', N'2021-02-10 00:00:00.000', N'Yago', N'Silva', N'8855338822'), (N'9', N'ernesto_oliveira@gmail.com', N'2021-02-10 00:00:00.000', N'Ernesto', N'Idalgo Oliveira', N'2266990011'), (N'10', N'kleber_manfred@gmail.com', N'2021-02-10 00:00:00.000', N'Kleber', N'Manfred', N'9955336600')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table Usuarios
-- ----------------------------
ALTER TABLE [dbo].[Usuarios] ADD CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([ClientNum])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

