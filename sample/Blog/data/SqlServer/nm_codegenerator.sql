USE [master]
GO
/****** Object:  Database [Nm_CodeGenerator]    Script Date: 2019/6/3 13:58:58 ******/
CREATE DATABASE [Nm_CodeGenerator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nm_CodeGenerator', FILENAME = N'D:\Database\SqlServer\Nm_CodeGenerator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nm_CodeGenerator_log', FILENAME = N'D:\Database\SqlServer\Nm_CodeGenerator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Nm_CodeGenerator] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nm_CodeGenerator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nm_CodeGenerator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nm_CodeGenerator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nm_CodeGenerator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Nm_CodeGenerator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nm_CodeGenerator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET RECOVERY FULL 
GO
ALTER DATABASE [Nm_CodeGenerator] SET  MULTI_USER 
GO
ALTER DATABASE [Nm_CodeGenerator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nm_CodeGenerator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nm_CodeGenerator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nm_CodeGenerator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nm_CodeGenerator] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Nm_CodeGenerator', N'ON'
GO
ALTER DATABASE [Nm_CodeGenerator] SET QUERY_STORE = OFF
GO
USE [Nm_CodeGenerator]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[BaseEntityType] [smallint] NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class_Method]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class_Method](
	[Id] [uniqueidentifier] NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
	[Query] [bit] NOT NULL,
	[Add] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
	[Edit] [bit] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__class_me__3214EC07FEFE6126] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enum]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enum](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Enum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enum_Item]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enum_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[EnumId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Value] [int] NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Enum_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model_Property]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model_Property](
	[Id] [uniqueidentifier] NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [smallint] NOT NULL,
	[ModelType] [smallint] NOT NULL,
	[Nullable] [bit] NOT NULL,
	[EnumId] [uniqueidentifier] NULL,
	[Remarks] [nvarchar](50) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Query_Model_Property] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Prefix] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedTime] [datetime] NOT NULL,
	[DeletedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 2019/6/3 13:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[Id] [uniqueidentifier] NOT NULL,
	[ClassId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsPrimaryKey] [bit] NOT NULL,
	[IsInherit] [bit] NOT NULL,
	[Type] [smallint] NOT NULL,
	[Length] [int] NOT NULL,
	[Precision] [int] NOT NULL,
	[Scale] [int] NOT NULL,
	[EnumId] [uniqueidentifier] NOT NULL,
	[Nullable] [bit] NOT NULL,
	[ShowInList] [bit] NOT NULL,
	[HasDefaultValue] [bit] NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedTime] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Class] ([Id], [ProjectId], [Name], [TableName], [BaseEntityType], [Remarks], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'89c9765e-eae2-8e19-0efd-39edc64ee6e7', N'Tag', N'Tag', 6, N'标签', CAST(N'2019-05-14T10:18:26.890' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.890' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Class] ([Id], [ProjectId], [Name], [TableName], [BaseEntityType], [Remarks], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'89c9765e-eae2-8e19-0efd-39edc64ee6e7', N'Category', N'Category', 6, N'分类', CAST(N'2019-05-14T10:19:38.167' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.167' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Class] ([Id], [ProjectId], [Name], [TableName], [BaseEntityType], [Remarks], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'89c9765e-eae2-8e19-0efd-39edc64ee6e7', N'Article', N'Article', 6, N'文章', CAST(N'2019-05-14T10:20:07.227' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:20:07.227' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Class_Method] ([Id], [ClassId], [Query], [Add], [Delete], [Edit], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'39ee2dfd-f427-6c9f-48db-8c19a9d1fdb0', N'39ee2dfd-f422-523b-a225-0ea038951ffc', 1, 1, 1, 1, CAST(N'2019-06-03T13:30:18.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-06-03T13:30:18.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Class_Method] ([Id], [ClassId], [Query], [Add], [Delete], [Edit], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'39ee2e09-2c77-4acb-287b-c292afc10a5f', N'39edefa3-4e1d-26d3-2e75-bb328f811cb4', 0, 1, 1, 0, CAST(N'2019-06-03T13:42:33.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-06-03T13:42:33.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Class_Method] ([Id], [ClassId], [Query], [Add], [Delete], [Edit], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'39ee2e01-e0bf-c4a2-0f09-f8993f5b3bb8', N'39ee2e01-e091-7ada-59d1-efb5a4feb961', 1, 1, 1, 1, CAST(N'2019-06-03T13:34:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-06-03T13:35:47.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Enum] ([Id], [Name], [Remarks], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'd1990b44-2130-1c3b-9dd7-39eda3d09baa', N'MediaType', N'多媒体类型', CAST(N'2019-05-07T17:33:09.923' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-07T17:33:09.923' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Enum_Item] ([Id], [EnumId], [Name], [Value], [Remarks]) VALUES (N'cea1d415-751c-7493-d6b2-39edc1c4cdf9', N'd1990b44-2130-1c3b-9dd7-39eda3d09baa', N'Img', 1, N'图片')
INSERT [dbo].[Enum_Item] ([Id], [EnumId], [Name], [Value], [Remarks]) VALUES (N'5be87919-dfef-e657-4fac-39edc1c50a92', N'd1990b44-2130-1c3b-9dd7-39eda3d09baa', N'Audio', 2, N'音乐')
INSERT [dbo].[Enum_Item] ([Id], [EnumId], [Name], [Value], [Remarks]) VALUES (N'80d98d49-a685-adfc-9bf2-39edc650e37d', N'd1990b44-2130-1c3b-9dd7-39eda3d09baa', N'Video', 3, N'视频')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'5ce795bd-cee4-d6ba-0d4c-39edc653d327', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'Name', 0, 2, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T10:23:34.683' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:23:34.683' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'ea764af0-35e3-4028-4a30-39edc6563df3', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'Name', 0, 3, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T10:26:13.067' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:26:13.067' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'35fed5d9-c812-9482-ff0f-39edc65724a5', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'Name', 0, 2, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T10:27:12.157' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:27:12.157' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'04bcedb7-66fc-6587-ac89-39edc6574799', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'Name', 0, 3, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T10:27:21.107' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:27:21.107' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'38fff9fc-3ef7-3a3f-59b2-39edc658192b', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Title', 0, 2, 0, N'00000000-0000-0000-0000-000000000000', N'标题', 1, CAST(N'2019-05-14T10:28:14.753' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:13.783' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'c4fd6823-9b7f-8c00-cdd7-39edc65846b0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Body', 0, 2, 0, N'00000000-0000-0000-0000-000000000000', N'内容', 2, CAST(N'2019-05-14T10:28:26.410' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:13.787' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'899d222e-62a2-13a1-3747-39edc658d174', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'TagList', 0, 2, 0, N'00000000-0000-0000-0000-000000000000', N'标签列表', 3, CAST(N'2019-05-14T10:29:01.937' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:13.787' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'7344b3bf-c467-e61e-142e-39edc72a2286', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CategoryId', 8, 1, 1, N'00000000-0000-0000-0000-000000000000', N'分类', 0, CAST(N'2019-05-14T14:17:39.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-16T14:45:04.100' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'9c695ee8-6fed-52b4-9eb2-39edc72f7db1', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Title', 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'标题', 1, CAST(N'2019-05-14T14:23:30.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:36:54.867' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'9e3dce42-9dda-69e7-ea58-39edc72fe10c', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CategoryId', 8, 2, 0, N'00000000-0000-0000-0000-000000000000', N'分类', 0, CAST(N'2019-05-14T14:23:56.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:13.783' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'28de1608-73a5-544a-7dbb-39edc73c60fa', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CategoryId', 8, 3, 0, N'00000000-0000-0000-0000-000000000000', N'分类', 0, CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'2d059bf9-ed41-5508-1648-39edc73c60fb', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Title', 0, 3, 0, N'00000000-0000-0000-0000-000000000000', N'标题', 1, CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'678a1725-40bc-2b74-fafb-39edc73c60fb', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Body', 0, 3, 0, N'00000000-0000-0000-0000-000000000000', N'内容', 2, CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:37:35.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'9eb7882b-6174-b82e-efb4-39edc74104f4', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'TagList', 0, 3, 0, N'00000000-0000-0000-0000-000000000000', N'标签列表', 3, CAST(N'2019-05-14T14:42:39.453' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:42:39.453' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'6feba820-02c6-69bc-254c-39edc741d9d6', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'Name', 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T14:43:33.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:43:33.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Model_Property] ([Id], [ClassId], [Name], [Type], [ModelType], [Nullable], [EnumId], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'5fdee500-202b-4284-6087-39edc7437c2e', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'Name', 0, 1, 0, N'00000000-0000-0000-0000-000000000000', N'名称', 0, CAST(N'2019-05-14T14:45:21.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T14:45:21.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Project] ([Id], [Name], [Prefix], [Code], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy], [Deleted], [DeletedTime], [DeletedBy]) VALUES (N'89c9765e-eae2-8e19-0efd-39edc64ee6e7', N'博客', N'Nm', N'Blog', CAST(N'2019-05-14T10:18:12.057' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-17T11:35:32.053' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', 0, CAST(N'2019-05-14T10:18:12.057' AS DateTime), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'6a75e777-78da-76fa-0fd1-39edc64f2104', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'Id', 1, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'主键', 0, CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'00d16b21-0cdb-3728-4cbd-39edc64f2107', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'CreatedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建时间', 1001, CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'e718e820-9e13-4e9d-53c5-39edc64f2107', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'CreatedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建人', 1000, CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'78f71825-3c23-c5cb-639e-39edc64f2107', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'ModifiedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改人', 1002, CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'b9866a15-529c-5f25-b9f3-39edc64f2107', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'ModifiedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改时间', 1003, CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:18:26.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'20cd8590-746c-feb5-5959-39edc64f6b16', N'96abae7f-4198-4cc4-6b01-39edc64f20eb', N'Name', 0, 0, 0, 100, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'名称', 5, CAST(N'2019-05-14T10:18:45.903' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:49.667' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'4a7d6c64-6148-b1e7-19d6-39edc6503741', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'ModifiedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改时间', 1003, CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'df23365b-fa9a-6749-4d5a-39edc6503741', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'Id', 1, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'主键', 0, CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'2d84730f-4117-801a-b349-39edc6503741', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'CreatedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建时间', 1001, CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'3f7ff6cf-339d-baa2-c4c3-39edc6503741', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'CreatedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建人', 1000, CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'f40147ef-8ec1-cadf-cb17-39edc6503741', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'ModifiedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改人', 1002, CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:19:38.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'93b671af-5b12-fe2c-5566-39edc6507214', N'415ad4ce-cd1f-3642-a6af-39edc650373c', N'Name', 0, 0, 0, 100, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'名称', 5, CAST(N'2019-05-14T10:19:53.223' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:46.390' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'49fbe2a5-a035-988f-1d4b-39edc650a8c0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'ModifiedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改时间', 1003, CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'1c5a94f4-5c07-e563-67b9-39edc650a8c0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CreatedTime', 0, 1, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建时间', 1001, CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'9bd2222b-c13e-2e91-6afd-39edc650a8c0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Id', 1, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'主键', 0, CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T11:26:50.077' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'09b2045e-1f40-ca6b-8fdb-39edc650a8c0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CreatedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'创建人', 1000, CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'7ef026e7-3701-b3df-f4d3-39edc650a8c0', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'ModifiedBy', 0, 1, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'修改人', 1002, CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-14T10:20:07.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'e91e1bbb-1cc5-5d98-e3ea-39edc6512c4b', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Title', 0, 0, 0, 300, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'标题', 1, CAST(N'2019-05-14T10:20:40.900' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-16T15:22:29.000' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'88225de9-fff9-e689-b03c-39edc6515a3d', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Summary', 0, 0, 0, 500, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'简介', 2, CAST(N'2019-05-14T10:20:52.660' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:14.460' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'f5f27e3a-2b5d-a57f-9806-39edc6518a2a', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Body', 0, 0, 0, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 0, N'内容', 3, CAST(N'2019-05-14T10:21:04.930' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:17.690' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'c0f18043-4137-894f-8be9-39edc651d8a2', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'CategoryId', 0, 0, 8, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'分类', 0, CAST(N'2019-05-14T10:21:25.020' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:16.183' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'68298bc0-c14e-236e-b452-39edc652f5c9', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'Published', 0, 0, 7, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 0, 0, N'已发布', 9, CAST(N'2019-05-14T10:22:38.020' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-15T14:46:33.590' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
INSERT [dbo].[Property] ([Id], [ClassId], [Name], [IsPrimaryKey], [IsInherit], [Type], [Length], [Precision], [Scale], [EnumId], [Nullable], [ShowInList], [HasDefaultValue], [Remarks], [Sort], [CreatedTime], [CreatedBy], [ModifiedTime], [ModifiedBy]) VALUES (N'1ab35fed-a5ff-f5f2-abfa-39edc6533910', N'82bde8de-830a-7a55-78dd-39edc650a8bd', N'PublishTime', 0, 0, 9, 0, 0, 0, N'00000000-0000-0000-0000-000000000000', 0, 1, 1, N'发布时间', 10, CAST(N'2019-05-14T10:22:55.240' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a', CAST(N'2019-05-16T15:22:19.530' AS DateTime), N'2e23d1d9-4a72-acc2-f6ff-39ed21cb6a4a')
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_BaseClassType]  DEFAULT ((0)) FOR [BaseEntityType]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Class] ADD  CONSTRAINT [DF_Class_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_Query]  DEFAULT ((1)) FOR [Query]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_Add]  DEFAULT ((1)) FOR [Add]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_Delete]  DEFAULT ((1)) FOR [Delete]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_Edit]  DEFAULT ((1)) FOR [Edit]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Class_Method] ADD  CONSTRAINT [DF_Class_Method_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
ALTER TABLE [dbo].[Enum] ADD  CONSTRAINT [DF_Enum_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Enum] ADD  CONSTRAINT [DF_Enum_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
ALTER TABLE [dbo].[Enum_Item] ADD  CONSTRAINT [DF_Enum_Item_Value]  DEFAULT ((0)) FOR [Value]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Query_Model_Property_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Model_Property_ModelType]  DEFAULT ((0)) FOR [ModelType]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Model_Property_Nullable]  DEFAULT ((0)) FOR [Nullable]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Query_Model_Property_Sort]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Query_Model_Property_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Model_Property] ADD  CONSTRAINT [DF_Query_Model_Property_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_DeletedTime]  DEFAULT (getdate()) FOR [DeletedTime]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_IsPrimaryKey]  DEFAULT ((0)) FOR [IsPrimaryKey]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_IsInherit]  DEFAULT ((0)) FOR [IsInherit]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_Precision]  DEFAULT ((0)) FOR [Precision]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_Scale]  DEFAULT ((0)) FOR [Scale]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_Nullable]  DEFAULT ((0)) FOR [Nullable]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_ShowInList]  DEFAULT ((0)) FOR [ShowInList]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_DefaultValue]  DEFAULT ((0)) FOR [HasDefaultValue]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_Sort]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Property] ADD  CONSTRAINT [DF_Property_ModifiedTime]  DEFAULT (getdate()) FOR [ModifiedTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'ProjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基类类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'BaseEntityType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'ClassId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查询列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'Query'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'Add'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'Delete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'Edit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Class_Method', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属枚举' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum_Item', @level2type=N'COLUMN',@level2name=N'EnumId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Enum_Item', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模型类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'ModelType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'Nullable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Model_Property', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前缀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Prefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Project', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'IsPrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否继承自基类实体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'IsInherit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'精度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Precision'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'刻度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Scale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联枚举' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'EnumId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可空' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Nullable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表中显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'ShowInList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'HasDefaultValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'ModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Property', @level2type=N'COLUMN',@level2name=N'ModifiedBy'
GO
USE [master]
GO
ALTER DATABASE [Nm_CodeGenerator] SET  READ_WRITE 
GO
