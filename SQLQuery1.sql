USE [master]
GO
/****** Object:  Database [RacsDB]    Script Date: 07-Jan-22 8:56:38 PM ******/
CREATE DATABASE [RacsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RacsDB', FILENAME = N'E:\Database\RacsDB\RacsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RacsDB_log', FILENAME = N'E:\Database\RacsDB\RacsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RacsDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RacsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RacsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RacsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RacsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RacsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RacsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RacsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RacsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RacsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RacsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RacsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RacsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RacsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RacsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RacsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RacsDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RacsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RacsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RacsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RacsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RacsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RacsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RacsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RacsDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RacsDB] SET  MULTI_USER 
GO
ALTER DATABASE [RacsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RacsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RacsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RacsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RacsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RacsDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RacsDB] SET QUERY_STORE = OFF
GO
USE [RacsDB]
GO
/****** Object:  Table [dbo].[CommissionHierarchy]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionHierarchy](
	[Id] [bigint] NOT NULL,
	[Name] [nchar](10) NULL,
	[Description] [varchar](50) NULL,
	[CommissionRate] [float] NOT NULL,
	[RateType] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistributionPolicy]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionPolicy](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleCommissionId] [bigint] NOT NULL,
	[TotalCommissionRate] [float] NULL,
 CONSTRAINT [PK_DistributionPolicy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PricingAndCommission]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PricingAndCommission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ProductId] [bigint] NOT NULL,
	[PhysicalMarketing] [tinyint] NOT NULL,
	[DegitalMarketing] [tinyint] NOT NULL,
	[Development] [tinyint] NOT NULL,
	[Intrastructure] [tinyint] NOT NULL,
	[Maintanance] [tinyint] NOT NULL,
	[CompanyProfit] [tinyint] NOT NULL,
 CONSTRAINT [PK_PricingAndCommission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[RegularPrice] [money] NOT NULL,
	[DiscountedPrice] [money] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDevelopment]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDevelopment](
	[Id] [bigint] NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[Days] [float] NULL,
	[TotalProgrammers] [tinyint] NOT NULL,
	[TotalCost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDevelopmentDetails]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDevelopmentDetails](
	[ProductDevelopmentId] [bigint] NOT NULL,
	[Date] [date] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[WorkingPart] [varchar](max) NOT NULL,
	[WorkingPartDetails] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMarketing]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketing](
	[ProductId] [bigint] NOT NULL,
	[Cost] [money] NOT NULL,
	[OtherCost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMarketingDetails]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMarketingDetails](
	[Id] [bigint] NOT NULL,
	[ProducMarketingtId] [bigint] NOT NULL,
	[MarketingTypeId] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[OtherCost] [money] NULL,
	[Date] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissionEnrollment]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissionEnrollment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [tinyint] NOT NULL,
	[PermissionId] [tinyint] NOT NULL,
 CONSTRAINT [PK_RolePermissionEnrollment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Id] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Salary] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[TotalSale] [decimal](18, 0) NOT NULL,
	[TotalSellingPrice] [money] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesCommission]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesCommission](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SalesDetailId] [bigint] NOT NULL,
	[SalesMan] [bigint] NOT NULL,
	[CommissionId] [bigint] NOT NULL,
 CONSTRAINT [PK_SalesCommission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SalesId] [bigint] NOT NULL,
	[SalePrice] [money] NOT NULL,
 CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] NOT NULL,
	[AccountId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCommission]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCommission](
	[UserId] [bigint] NOT NULL,
	[CommissionAmount] [money] NOT NULL,
	[WithdrawDate] [date] NULL,
	[WithdrawTime] [time](7) NULL,
	[CrateDate] [date] NOT NULL,
	[CreateTime] [time](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserContact]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserContact](
	[ContactNumber] [varchar](50) NOT NULL,
	[UserId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEmail]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEmail](
	[Email] [varchar](50) NOT NULL,
	[UserId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNID]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNID](
	[NID] [varchar](50) NOT NULL,
	[UserId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPassword]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPassword](
	[Password] [varchar](50) NOT NULL,
	[UserId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleEnrollment]    Script Date: 07-Jan-22 8:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleEnrollment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[RoleId] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserRoleEnrollment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_PhysicalMarketing]  DEFAULT ((0)) FOR [PhysicalMarketing]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_DegitalMarketing]  DEFAULT ((0)) FOR [DegitalMarketing]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Development]  DEFAULT ((0)) FOR [Development]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Intrastructure]  DEFAULT ((0)) FOR [Intrastructure]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_Maintanance]  DEFAULT ((0)) FOR [Maintanance]
GO
ALTER TABLE [dbo].[PricingAndCommission] ADD  CONSTRAINT [DF_PricingAndCommission_CompanyProfit]  DEFAULT ((0)) FOR [CompanyProfit]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'if 0 no need to calculate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PricingAndCommission', @level2type=N'COLUMN',@level2name=N'PhysicalMarketing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesCommission', @level2type=N'COLUMN',@level2name=N'SalesMan'
GO
USE [master]
GO
ALTER DATABASE [RacsDB] SET  READ_WRITE 
GO
