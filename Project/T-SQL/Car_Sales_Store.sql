USE [master]
GO
/****** Object:  Database [Car_Sales_Store]    Script Date: 5/21/2023 11:35:15 PM ******/
CREATE DATABASE [Car_Sales_Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Car_Sales_Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Car_Sales_Store.mdf' , SIZE = 270336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Car_Sales_Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Car_Sales_Store_log.ldf' , SIZE = 532480KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Car_Sales_Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Car_Sales_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Car_Sales_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Car_Sales_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Car_Sales_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Car_Sales_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Car_Sales_Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Car_Sales_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Car_Sales_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Car_Sales_Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Car_Sales_Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Car_Sales_Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Car_Sales_Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Car_Sales_Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Car_Sales_Store', N'ON'
GO
ALTER DATABASE [Car_Sales_Store] SET QUERY_STORE = OFF
GO
USE [Car_Sales_Store]
GO
/****** Object:  Table [dbo].[DuLieuNULL]    Script Date: 5/21/2023 11:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuLieuNULL](
	[Date] [date] NULL,
	[Salesperson] [varchar](50) NULL,
	[Customer Name] [varchar](50) NULL,
	[Make] [varchar](50) NULL,
	[Car Model] [varchar](50) NULL,
	[Car Year] [varchar](50) NULL,
	[Sale Price] [float] NULL,
	[Commission Rate] [float] NULL,
	[Commission Earned] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DuLieuSach]    Script Date: 5/21/2023 11:35:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuLieuSach](
	[Date] [date] NULL,
	[Salesperson] [varchar](50) NULL,
	[Customer Name] [varchar](50) NULL,
	[Make] [varchar](50) NULL,
	[Car Model] [varchar](50) NULL,
	[Car Year] [varchar](50) NULL,
	[Sale Price] [float] NULL,
	[Commission Rate] [float] NULL,
	[Commission Earned] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Car_Sales_Store] SET  READ_WRITE 
GO
