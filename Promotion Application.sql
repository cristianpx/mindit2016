USE [master]
GO
/****** Object:  Database [Promotion Application]    Script Date: 08/12/2016 15:42:38 ******/
CREATE DATABASE [Promotion Application] ON  PRIMARY 
( NAME = N'Promotion Application', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008\MSSQL\DATA\Promotion Application.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Promotion Application_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008\MSSQL\DATA\Promotion Application_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Promotion Application] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Promotion Application].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Promotion Application] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Promotion Application] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Promotion Application] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Promotion Application] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Promotion Application] SET ARITHABORT OFF 
GO
ALTER DATABASE [Promotion Application] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Promotion Application] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Promotion Application] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Promotion Application] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Promotion Application] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Promotion Application] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Promotion Application] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Promotion Application] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Promotion Application] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Promotion Application] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Promotion Application] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Promotion Application] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Promotion Application] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Promotion Application] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Promotion Application] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Promotion Application] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Promotion Application] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Promotion Application] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Promotion Application] SET  MULTI_USER 
GO
ALTER DATABASE [Promotion Application] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Promotion Application] SET DB_CHAINING OFF 
GO
USE [Promotion Application]
GO
/****** Object:  Table [dbo].[PA_ITEM]    Script Date: 08/12/2016 15:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PA_ITEM](
	[ITEM_ID] [int] NOT NULL,
	[ITEM_NAME] [varchar](100) NOT NULL,
	[ITEM_DESCRIPTION] [varchar](1000) NULL,
	[BRAND_ID] [int] NULL,
	[BRAND_NAME] [varchar](100) NULL,
	[CATEGORY_ID] [int] NULL,
	[CATEGORY_NAME] [varchar](100) NULL,
	[PRICE_DATE] [date] NULL,
	[PRICE_VALUE] [float] NULL,
 CONSTRAINT [PK_PA_ITEM] PRIMARY KEY CLUSTERED 
(
	[ITEM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Promotion Application] SET  READ_WRITE 
GO
