USE [master]
GO
/****** Object:  Database [SalesDb]    Script Date: 10/20/2020 2:33:30 AM ******/
CREATE DATABASE [SalesDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SalesDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SalesDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SalesDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SalesDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalesDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalesDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalesDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalesDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalesDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SalesDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalesDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalesDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalesDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalesDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalesDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalesDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalesDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalesDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SalesDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalesDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalesDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalesDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalesDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalesDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SalesDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalesDb] SET RECOVERY FULL 
GO
ALTER DATABASE [SalesDb] SET  MULTI_USER 
GO
ALTER DATABASE [SalesDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalesDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalesDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalesDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SalesDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SalesDb', N'ON'
GO
ALTER DATABASE [SalesDb] SET QUERY_STORE = OFF
GO
USE [SalesDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SalesDb]
GO
/****** Object:  Table [dbo].[InterfaceErrors]    Script Date: 10/20/2020 2:33:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceErrors](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Method] [varchar](50) NULL,
	[Error] [varchar](max) NULL,
	[ErrorDate] [datetime] NULL,
 CONSTRAINT [PK_InterfaceErrors] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTransactions]    Script Date: 10/20/2020 2:33:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTransactions](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Region] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ItemType] [varchar](50) NULL,
	[SalesChannel] [varchar](50) NULL,
	[OrderPriority] [varchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[OrderId] [varchar](50) NULL,
	[ShipDAte] [datetime] NULL,
	[UnitsSold] [varchar](50) NULL,
	[UnitPrice] [varchar](50) NULL,
	[UnitCost] [varchar](50) NULL,
	[TotalRevenue] [varchar](50) NULL,
	[TotalCost] [varchar](50) NULL,
	[TotalProfit] [varchar](50) NULL,
	[RecordDate] [varchar](50) NULL,
 CONSTRAINT [PK_SalesTransactions] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemRoles]    Script Date: 10/20/2020 2:33:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemRoles](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [varchar](50) NULL,
	[RoleName] [varchar](50) NULL,
	[RecordDate] [datetime] NULL,
 CONSTRAINT [PK_SystemRoles] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 10/20/2020 2:33:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUsers](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[OtherName] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[TelephoneContact] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[Active] [bit] NULL,
	[LoggedIn] [bit] NULL,
	[InvalidLoginCount] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[ApprovalDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_SystemUsers] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SystemRoles] ON 

INSERT [dbo].[SystemRoles] ([RecordId], [RoleCode], [RoleName], [RecordDate]) VALUES (1, N'R001', N'STORE MANAGER', CAST(N'2020-10-19T22:01:43.107' AS DateTime))
INSERT [dbo].[SystemRoles] ([RecordId], [RoleCode], [RoleName], [RecordDate]) VALUES (2, N'R002', N'CEO', CAST(N'2020-10-19T22:02:17.397' AS DateTime))
SET IDENTITY_INSERT [dbo].[SystemRoles] OFF
SET IDENTITY_INSERT [dbo].[SystemUsers] ON 

INSERT [dbo].[SystemUsers] ([RecordId], [Fname], [Lname], [OtherName], [Company], [Username], [Role], [TelephoneContact], [Email], [Password], [Active], [LoggedIn], [InvalidLoginCount], [CreationDate], [ApprovalDate], [ModifiedDate]) VALUES (1, N'John', N'Paul', NULL, N'TEST', N'manager@test', N'R001', N'25641363527453', N'manager@test', N'098F6BCD4621D373CADE4E832627B4F6', 1, 0, N'0', CAST(N'2020-10-19T22:10:22.397' AS DateTime), CAST(N'2020-10-19T22:10:22.397' AS DateTime), CAST(N'2020-10-19T22:10:22.397' AS DateTime))
INSERT [dbo].[SystemUsers] ([RecordId], [Fname], [Lname], [OtherName], [Company], [Username], [Role], [TelephoneContact], [Email], [Password], [Active], [LoggedIn], [InvalidLoginCount], [CreationDate], [ApprovalDate], [ModifiedDate]) VALUES (2, N'Jack', N'Doe', NULL, N'TEST', N'ceo@test', N'R002', N'25641363527453', N'ceo@test', N'098F6BCD4621D373CADE4E832627B4F6', 1, 0, N'0', CAST(N'2020-10-19T22:11:20.493' AS DateTime), CAST(N'2020-10-19T22:11:20.493' AS DateTime), CAST(N'2020-10-19T22:11:20.493' AS DateTime))
SET IDENTITY_INSERT [dbo].[SystemUsers] OFF
/****** Object:  StoredProcedure [dbo].[GetAllSales]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllSales]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  select * from SalesTransactions order by OrderDate desc
   END
GO
/****** Object:  StoredProcedure [dbo].[GetRangeSales]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRangeSales]
	@fromdate varchar(50),
	@toDate varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  select * from SalesTransactions 
  where convert(date,OrderDate)>=convert(date,@fromdate)
  and convert(date,OrderDate)<=convert(date,@toDate)

  select SUM(CAST(TotalProfit AS decimal(18, 2))) from SalesTransactions 
  where convert(date,OrderDate)>=convert(date,@fromdate)
  and convert(date,OrderDate)<=convert(date,@toDate)
   END
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserById]
	@user varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from SystemUsers
   where Username=@user
END
GO
/****** Object:  StoredProcedure [dbo].[GetUsertypeByCode]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUsertypeByCode]
	@code varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from SystemRoles
   where RoleCode=@code
END
GO
/****** Object:  StoredProcedure [dbo].[LogError]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LogError]
	@method varchar(50),
	@error varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   insert into InterfaceErrors
   values(@method,@error,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[SaveTransaction]    Script Date: 10/20/2020 2:33:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveTransaction]
	@Region varchar(50), 
	@country varchar(50), 
	@itemType varchar(50), 
	@salesChannel varchar(50), 
	@orderPriority varchar(50), 
	@orderDate varchar, 
	@orderId varchar(50), 
	@shipDate varchar(50), 
	@unitsSold varchar(50), 
	@unitPrice varchar(50), 
	@unitCost varchar(50), 
	@totalRevenue varchar(50), 
	@totalCost varchar(50), 
	@totalProfit varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   insert into SalesTransactions
   values(@Region, @country, @itemType, @salesChannel, @orderPriority, @orderDate, @orderId, @shipDate, @unitsSold, @unitPrice, @unitCost, @totalRevenue, @totalCost, @totalProfit,GETDATE())
END
GO
USE [master]
GO
ALTER DATABASE [SalesDb] SET  READ_WRITE 
GO
