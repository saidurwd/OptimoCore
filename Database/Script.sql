USE [master]
GO
/****** Object:  Database [OptimoCore]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE DATABASE [OptimoCore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OptimoCore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\OptimoCore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OptimoCore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\OptimoCore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OptimoCore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OptimoCore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OptimoCore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OptimoCore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OptimoCore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OptimoCore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OptimoCore] SET ARITHABORT OFF 
GO
ALTER DATABASE [OptimoCore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OptimoCore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OptimoCore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OptimoCore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OptimoCore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OptimoCore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OptimoCore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OptimoCore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OptimoCore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OptimoCore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OptimoCore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OptimoCore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OptimoCore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OptimoCore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OptimoCore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OptimoCore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OptimoCore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OptimoCore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OptimoCore] SET  MULTI_USER 
GO
ALTER DATABASE [OptimoCore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OptimoCore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OptimoCore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OptimoCore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OptimoCore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OptimoCore] SET QUERY_STORE = OFF
GO
USE [OptimoCore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [OptimoCore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2/27/2020 1:52:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200226142137_AddingIdentity', N'3.1.2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c761a230-8bc6-4ca3-900f-fac059d77b38', N'admin@admin.com', N'ADMIN@ADMIN.COM', N'admin@admin.com', N'ADMIN@ADMIN.COM', 0, N'AQAAAAEAACcQAAAAEP9d/v2jbE2fONC5XqVNI4qefoNSkA79oG9tcJJ+Be6ro8I5pfweBZjDKXnWRYzAaA==', N'RVHLNZFPDGSQHSFWJSBUTA7HN2H6O5FF', N'6abd9db4-6997-409e-a6a0-93ec2278ce21', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (2, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (3, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (4, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (5, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (6, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (7, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (8, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (9, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (10, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (11, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (12, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (13, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (14, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (15, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (16, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (17, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (18, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (19, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (20, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (21, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (22, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (23, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (24, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (25, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (26, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (27, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (28, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (29, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (30, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (31, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (32, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (33, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (34, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (35, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (36, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (37, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (38, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (39, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (40, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (41, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (42, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (43, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (44, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (45, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (46, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (47, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (48, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (49, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (50, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (51, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (52, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (53, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (54, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (55, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (56, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (57, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (58, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (59, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (60, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (61, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (62, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (63, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (64, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (65, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (66, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (67, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (68, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (69, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (70, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (71, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (72, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (73, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (74, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (75, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (76, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (77, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (78, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (79, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (80, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (81, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (82, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (83, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (84, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (85, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (86, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (87, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (88, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (89, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (90, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (91, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (92, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (93, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (94, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (95, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (96, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (97, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (98, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (99, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (100, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (101, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (102, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (103, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (104, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (105, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (106, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (107, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (108, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (109, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (110, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (111, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (112, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (113, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (114, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (115, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (116, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (117, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (118, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (119, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (120, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (121, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (122, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (123, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (124, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (125, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (126, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (127, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (128, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (129, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (130, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (131, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (132, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (133, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (134, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (135, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (136, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (137, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (138, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (139, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (140, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (141, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (142, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (143, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (144, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (145, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (146, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (147, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (148, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (149, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (150, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (151, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (152, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (153, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (154, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (155, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (156, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (157, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (158, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (159, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (160, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (161, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (162, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (163, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (164, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (165, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (166, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (167, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (168, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (169, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (170, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (171, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (172, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (173, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (174, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (175, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (176, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (177, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (178, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (179, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (180, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (181, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (182, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (183, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (184, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (185, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (186, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (187, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (188, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (189, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (190, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (191, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (192, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (193, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (194, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (195, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (196, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (197, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (198, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (199, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (200, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (201, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (202, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (203, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (204, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (205, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (206, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (207, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (208, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (209, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (210, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (211, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (212, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (213, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (214, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (215, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (216, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (217, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (218, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (219, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (220, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (221, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (222, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (223, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (224, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (225, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (226, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (227, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (228, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (229, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (230, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (231, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (232, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (233, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (234, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (235, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (236, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (237, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (238, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (239, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (240, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (241, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (242, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (243, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (244, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (245, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (246, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (247, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (248, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (249, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (250, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (251, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (252, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (253, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (254, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (255, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (256, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (257, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (258, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (259, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (260, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (261, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (262, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (263, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (264, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (265, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (266, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (267, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (268, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (269, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (270, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (271, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (272, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (273, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (274, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (275, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (276, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (277, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (278, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (279, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (280, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (281, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (282, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (283, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (284, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (285, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (286, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (287, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (288, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (289, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (290, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (291, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (292, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (293, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (294, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (295, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (296, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (297, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (298, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (299, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (300, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (301, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (302, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (303, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (304, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (305, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (306, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (307, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (308, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (309, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (310, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (311, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (312, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (313, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (314, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (315, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (316, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (317, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (318, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (319, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (320, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (321, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (322, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (323, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (324, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (325, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (326, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (327, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (328, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (329, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (330, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (331, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (332, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (333, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (334, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (335, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (336, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (337, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (338, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (339, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (340, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (341, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (342, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (343, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (344, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (345, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (346, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (347, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (348, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (349, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (350, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (351, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (352, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (353, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (354, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (355, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (356, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (357, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (358, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (359, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (360, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (361, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (362, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (363, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (364, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (365, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (366, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (367, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (368, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (369, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (370, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (371, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (372, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (373, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (374, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (375, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (376, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (377, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (378, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (379, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (380, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (381, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (382, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (383, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (384, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (385, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (386, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (387, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (388, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (389, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (390, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (391, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (392, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (393, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (394, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (395, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (396, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (397, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (398, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (399, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (400, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (401, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (402, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (403, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (404, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (405, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (406, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (407, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (408, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (409, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (410, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (411, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (412, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (413, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (414, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (415, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (416, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (417, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (418, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (419, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (420, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (421, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (422, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (423, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (424, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (425, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (426, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (427, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (428, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (429, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (430, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (431, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (432, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (433, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (434, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (435, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (436, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (437, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (438, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (439, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (440, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (441, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (442, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (443, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (444, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (445, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (446, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (447, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (448, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (449, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (450, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (451, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (452, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (453, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (454, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (455, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (456, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (457, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (458, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (459, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (460, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (461, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (462, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (463, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (464, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (465, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (466, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (467, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (468, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (469, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (470, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (471, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (472, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (473, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (474, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (475, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (476, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (477, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (478, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (479, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (480, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (481, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (482, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (483, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (484, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (485, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (486, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (487, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (488, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (489, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (490, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (491, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (492, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (493, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (494, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (495, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (496, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (497, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (498, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (499, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (500, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (501, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (502, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (503, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (504, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (505, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (506, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (507, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (508, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (509, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (510, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (511, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (512, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (513, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (514, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (515, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (516, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (517, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (518, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (519, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (520, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (521, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (522, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (523, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (524, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (525, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (526, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (527, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (528, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (529, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (530, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (531, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (532, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (533, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (534, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (535, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (536, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (537, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (538, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (539, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (540, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (541, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (542, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (543, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (544, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (545, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (546, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (547, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (548, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (549, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (550, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (551, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (552, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (553, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (554, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (555, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (556, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (557, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (558, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (559, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (560, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (561, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (562, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (563, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (564, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (565, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (566, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (567, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (568, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (569, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (570, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (571, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (572, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (573, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (574, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (575, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (576, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (577, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (578, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (579, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (580, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (581, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (582, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (583, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (584, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (585, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (586, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (587, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (588, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (589, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (590, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (591, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (592, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (593, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (594, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (595, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (596, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (597, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (598, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (599, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (600, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (601, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (602, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (603, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (604, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (605, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (606, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (607, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (608, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (609, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (610, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (611, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (612, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (613, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (614, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (615, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (616, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (617, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (618, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (619, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (620, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (621, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (622, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (623, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (624, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (625, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (626, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (627, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (628, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (629, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (630, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (631, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (632, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (633, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (634, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (635, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (636, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (637, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (638, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (639, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (640, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (641, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (642, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (643, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (644, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (645, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (646, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (647, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (648, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (649, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (650, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (651, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (652, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (653, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (654, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (655, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (656, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (657, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (658, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (659, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (660, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (661, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (662, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (663, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (664, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (665, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (666, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (667, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (668, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (669, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (670, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (671, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (672, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (673, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (674, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (675, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (676, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (677, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (678, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (679, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (680, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (681, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (682, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (683, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (684, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (685, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (686, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (687, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (688, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (689, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (690, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (691, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (692, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (693, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (694, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (695, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (696, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (697, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (698, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (699, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (700, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (701, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (702, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (703, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (704, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (705, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (706, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (707, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (708, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (709, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (710, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (711, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (712, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (713, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (714, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (715, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (716, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (717, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (718, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (719, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (720, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (721, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (722, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (723, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (724, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (725, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (726, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (727, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (728, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (729, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (730, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (731, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (732, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (733, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (734, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (735, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (736, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (737, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (738, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (739, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (740, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (741, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (742, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (743, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (744, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (745, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (746, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (747, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (748, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (749, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (750, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (751, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (752, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (753, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (754, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (755, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (756, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (757, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (758, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (759, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (760, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (761, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (762, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (763, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (764, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (765, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (766, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (767, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (768, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (769, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (770, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (771, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (772, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (773, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (774, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (775, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (776, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (777, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (778, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (779, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (780, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (781, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (782, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (783, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (784, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (785, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (786, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (787, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (788, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (789, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (790, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (791, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (792, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (793, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (794, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (795, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (796, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (797, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (798, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (799, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (800, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (801, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (802, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (803, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (804, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (805, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (806, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (807, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (808, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (809, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (810, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (811, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (812, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (813, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (814, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (815, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (816, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (817, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (818, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (819, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (820, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (821, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (822, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (823, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (824, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (825, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (826, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (827, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (828, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (829, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (830, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (831, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (832, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (833, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (834, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (835, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (836, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (837, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (838, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (839, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (840, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (841, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (842, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (843, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (844, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (845, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (846, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (847, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (848, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (849, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (850, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (851, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (852, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (853, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (854, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (855, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (856, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (857, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (858, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (859, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (860, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (861, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (862, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (863, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (864, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (865, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (866, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (867, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (868, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (869, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (870, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (871, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (872, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (873, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (874, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (875, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (876, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (877, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (878, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (879, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (880, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (881, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (882, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (883, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (884, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (885, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (886, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (887, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (888, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (889, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (890, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (891, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (892, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (893, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (894, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (895, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (896, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (897, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (898, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (899, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (900, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (901, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (902, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (903, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (904, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (905, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (906, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (907, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (908, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (909, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (910, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (911, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (912, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (913, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (914, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (915, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (916, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (917, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (918, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (919, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (920, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (921, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (922, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (923, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (924, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (925, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (926, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (927, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (928, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (929, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (930, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (931, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (932, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (933, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (934, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (935, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (936, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (937, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (938, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (939, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (940, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (941, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (942, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (943, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (944, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (945, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (946, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (947, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (948, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (949, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (950, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (951, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (952, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (953, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (954, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (955, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (956, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (957, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (958, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (959, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (960, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (961, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (962, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (963, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (964, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (965, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (966, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (967, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (968, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (969, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (970, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (971, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (972, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (973, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (974, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (975, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (976, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (977, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (978, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (979, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (980, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (981, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (982, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (983, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (984, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (985, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (986, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (987, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (988, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (989, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (990, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (991, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (992, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (993, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (994, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (995, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (996, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (997, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (998, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (999, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (1000, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
GO
INSERT [dbo].[Company] ([Id], [CompanyName], [Address], [Email], [Phone]) VALUES (1001, N'DUMMY COMPANY', N'Dhaka, Bangladesh', N'demo@email.com', N'+880 1911 555666')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/27/2020 1:52:35 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [OptimoCore] SET  READ_WRITE 
GO
