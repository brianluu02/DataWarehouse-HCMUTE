USE [master]
GO
/****** Object:  Database [Car_Sales_Store_DWStage]    Script Date: 5/21/2023 11:37:15 PM ******/
CREATE DATABASE [Car_Sales_Store_DWStage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Car_Sales_Store_DWStage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Car_Sales_Store_DWStage.mdf' , SIZE = 335872KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Car_Sales_Store_DWStage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Car_Sales_Store_DWStage_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Car_Sales_Store_DWStage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ARITHABORT OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET RECOVERY FULL 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET  MULTI_USER 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Car_Sales_Store_DWStage', N'ON'
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET QUERY_STORE = OFF
GO
USE [Car_Sales_Store_DWStage]
GO
/****** Object:  Table [dbo].[StageCar]    Script Date: 5/21/2023 11:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageCar](
	[Make] [varchar](50) NULL,
	[Car Model] [varchar](50) NULL,
	[Car Year] [varchar](50) NULL,
	[CarID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageCustomer]    Script Date: 5/21/2023 11:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageCustomer](
	[Customer Name] [varchar](50) NULL,
	[CustomerID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageDate]    Script Date: 5/21/2023 11:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageDate](
	[TimeID] [int] NULL,
	[Date] [date] NULL,
	[Day] [int] NULL,
	[DayOfWeek] [int] NULL,
	[DayOfYear] [int] NULL,
	[Month] [int] NULL,
	[Quarter] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageSales]    Script Date: 5/21/2023 11:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageSales](
	[CustomerID] [int] NULL,
	[CarID] [int] NULL,
	[TimeID] [int] NULL,
	[SalesPersonID] [int] NULL,
	[Sale Price] [float] NULL,
	[Commission Rate] [float] NULL,
	[Commission Earned] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StageSalesPerson]    Script Date: 5/21/2023 11:37:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageSalesPerson](
	[SalesPersonID] [int] NULL,
	[Salesperson] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Car_Sales_Store_DWStage] SET  READ_WRITE 
GO
