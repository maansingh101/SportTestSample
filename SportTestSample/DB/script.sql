USE [master]
GO
/****** Object:  Database [SportsTestDemo]    Script Date: 01/05/2019 07:17:14 ******/
CREATE DATABASE [SportsTestDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportsTestDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportsTestDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SportsTestDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportsTestDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SportsTestDemo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportsTestDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportsTestDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportsTestDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportsTestDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportsTestDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportsTestDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportsTestDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SportsTestDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportsTestDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportsTestDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportsTestDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportsTestDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportsTestDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportsTestDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportsTestDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportsTestDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SportsTestDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportsTestDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportsTestDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportsTestDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportsTestDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportsTestDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportsTestDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportsTestDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportsTestDemo] SET  MULTI_USER 
GO
ALTER DATABASE [SportsTestDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportsTestDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportsTestDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportsTestDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SportsTestDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SportsTestDemo] SET QUERY_STORE = OFF
GO
USE [SportsTestDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/05/2019 07:17:14 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01/05/2019 07:17:14 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/05/2019 07:17:14 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/05/2019 07:17:14 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/05/2019 07:17:14 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/05/2019 07:17:14 ******/
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSportsTest]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSportsTest](
	[EntryID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TestTypeFK] [int] NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tbSportsTest] PRIMARY KEY CLUSTERED 
(
	[EntryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSportsTestType]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSportsTestType](
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
	[TestTypeName] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_tbSportsTestType] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSportTestAthletes]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSportTestAthletes](
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
	[AthletesFK] [int] NOT NULL,
	[SportsTestFK] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime2](7) NOT NULL,
	[Distance] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tbSportTestAthletes] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190429221116_AspNetUser', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190429221457_sportsTest', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430063459_UserType', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430063748_skdfsjdfla', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430063910_adaSDadADas', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430064010_kshfhsfksf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430064034_kjldjfghjdfghjdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430064156_kladjkasdlfjas', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430064326_jhdfjahdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430070410_jhjaksdhfksh', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430070514_jahfsd', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430070904_skasdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430070952_lashdfjhsdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430071121_khdfhdfa', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430071540_kshdjasdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430074926_kjfsdahdsd', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430075515_shfjf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430075533_kjk', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430075630_jhfasd', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430075714_jshkadjhasjfhsdf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430080515_sds', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430081602_lasdhs', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430081648_lsfljfkjf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430082135_dfsdg', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430111920_jsgfkasdfadf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430111945_lhfkasgfjdfsjfsfgsgsgjsfa', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430112038_lsdufaskf', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430112111_Ath', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190430131935_jfhfjs', N'2.1.8-servicing-32085')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D', N'Athlete', N'Athlete', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'E6BE2F64-E3A6-4BD4-87E7-FE264868A53F', N'Coach', N'Coach', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'102b5534-4ab3-4f0a-bfb0-d3f8dd0db488', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3394d23a-aeea-470a-8f86-3252314f3f14', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4a9b463b-e698-4a50-b8c1-0d902ffce745', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'769e1fd2-e6d0-4864-a46d-779a4acbd827', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'83952fec-e4a4-470e-bb91-7d7c3d4f838e', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'add57d95-0640-43d8-b4bb-9eb554ace085', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e02631a8-2324-48ac-859e-a0301ae0bfc0', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e1ee9153-0fc9-4d16-9e25-b8cc4d79e8b1', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'feeb9ed4-a464-4109-a3c7-d8f1d7f98738', N'0EE31C4F-6784-4B9F-80DC-566D4AD2E46D')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'96d31a26-d804-4f5a-b343-1fec6ddeccd1', N'E6BE2F64-E3A6-4BD4-87E7-FE264868A53F')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ad9ea720-dcb6-45b6-9595-7124da29480b', N'E6BE2F64-E3A6-4BD4-87E7-FE264868A53F')
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'102b5534-4ab3-4f0a-bfb0-d3f8dd0db488', N'randyrondon@gmail.com', N'RANDYRONDON@GMAIL.COM', N'randyrondon@gmail.com', N'RANDYRONDON@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH2hqxCWw/JhUHVwzsHxIYTmqu32EmVGR88Z/15i8wq+N1LBc2XmDF0ZuzUCKzp0Uw==', N'CWN7SHJW6KRUGARRPAK6IIPUUBH67KIY', N'd3883eea-1b68-48a7-b466-db5410d6f5e8', NULL, 0, 0, NULL, 1, 0, N'Randy ', N'Rondon ', 9)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'3394d23a-aeea-470a-8f86-3252314f3f14', N'delicialedonne@gmail.com', N'DELICIALEDONNE@GMAIL.COM', N'delicialedonne@gmail.com', N'DELICIALEDONNE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECtY2Tt+hHdSC6TpdYWdK0yQmO0QDzv8/DF0yTwe5sGJx+rbuZtwIyTuyF5aV9R4Aw==', N'HX7WV5AJ47YVJT6VRRYFUSH2U55GKZBP', N'b82d1175-ebeb-422f-83a0-49023b3492f4', NULL, 0, 0, NULL, 1, 0, N'Delicia', N'Ledonne ', 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'4a9b463b-e698-4a50-b8c1-0d902ffce745', N'lulauhlman@gmail.com', N'LULAUHLMAN@GMAIL.COM', N'lulauhlman@gmail.com', N'LULAUHLMAN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBKRbglB1pCERNEavQHKEHTCtAQ8cLszx7N0NJJjQ/xWHSBneKyDYxdWsz+Scg1+mw==', N'BSC5FI7WPLIAYQN3PSMAB2ZTFLV474RR', N'01be6e12-bd4a-4dc6-913f-d798720ed9cd', NULL, 0, 0, NULL, 1, 0, N'Lula ', N'Uhlman ', 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'769e1fd2-e6d0-4864-a46d-779a4acbd827', N'delorasaville@gmail.com', N'DELORASAVILLE@GMAIL.COM', N'delorasaville@gmail.com', N'DELORASAVILLE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJPPNfA1LGNiMjyxZ2FrwpTCWPY+cO9ScBNLuWa+VMGYoVfjdodmLvlyS+6NwRxbcQ==', N'MTFH6D5I7ODE3A4XHK7OY4IQE3JVCMGN', N'737a757e-3419-4973-8e63-72ab69b7e2a5', NULL, 0, 0, NULL, 1, 0, N'Delora ', N'Saville ', 3)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'83952fec-e4a4-470e-bb91-7d7c3d4f838e', N'magenfaye@gmail.com', N'MAGENFAYE@GMAIL.COM', N'magenfaye@gmail.com', N'MAGENFAYE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG/2avupaZyFaGVOK5oE5B3tb+XXPC3DJ1c3VcXFpCjlS9mnf2g/OzY/+hjP0iXMgQ==', N'BT7WWXM6YGEZ2I3GO3LP53YZWJ275NOD', N'07ede185-6da7-40c9-a9ce-d6dae646be3f', NULL, 0, 0, NULL, 1, 0, N'Magen ', N'Faye ', 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'96d31a26-d804-4f5a-b343-1fec6ddeccd1', N'uddyan@yopmail.com', N'UDDYAN@YOPMAIL.COM', N'uddyan@yopmail.com', N'UDDYAN@YOPMAIL.COM', 0, N'AQAAAAEAACcQAAAAECy+dStbzhh9ZaP2lOEEbDmD8MxNBhw9+qoRMADbtx0y8/7TY2UT3FdwI9tM/o2VSQ==', N'2H7VZHQK3IQJEMOL2IQ3VY7TMEEVTT5Z', N'a736c92d-f089-4dff-aec7-b1be6b866841', NULL, 0, 0, NULL, 1, 0, N'Uddyan', N'Semwal', 11)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'ad9ea720-dcb6-45b6-9595-7124da29480b', N'mitchel.fausto@gmail.com', N'MITCHEL.FAUSTO@GMAIL.COM', N'mitchel.fausto@gmail.com', N'MITCHEL.FAUSTO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFy7kArpbwoCvPv8w35MkI04FLtsnuYuEeeIkPoEquUzzS6jpJLM24HaOOGbAi134w==', N'DD3QXKWO3KAGJCHJJWDFV5G5V4K3LJ3I', N'b7631c48-e0ec-47c6-b4c1-e030be0509c4', NULL, 0, 0, NULL, 1, 0, N'Mitchel ', N'Fausto ', 7)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'add57d95-0640-43d8-b4bb-9eb554ace085', N'marcvoth@gmail.com', N'MARCVOTH@GMAIL.COM', N'marcvoth@gmail.com', N'MARCVOTH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAIwQTFLk5r/A7beZEKJN+wWHloYLLYcmADZ7IUn001g0w1dP5nYgCuGPvSrUkFZwA==', N'4XSUOJCQYVLSKFLRNS5JLZDIAIUOQ22W', N'06cc28ba-0e30-48ec-a1d3-1452557ce3ef', NULL, 0, 0, NULL, 1, 0, N'Marc ', N'Voth ', 6)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'e02631a8-2324-48ac-859e-a0301ae0bfc0', N'camillegrantham@gmail.com', N'CAMILLEGRANTHAM@GMAIL.COM', N'camillegrantham@gmail.com', N'CAMILLEGRANTHAM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEeUlQqeqC9Py0mvP4MnK5rv6s/U8M9s9T/6sy+rPeiy/N0G7ZWXItsrmhLvVSlsfA==', N'MIRBODINXZWCCJ2WPKIOMI7BBL4LBHYK', N'f30a54f9-7fc3-4f98-a6e6-8ac86729146c', NULL, 0, 0, NULL, 1, 0, N'Camille ', N'Grantham ', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'e1ee9153-0fc9-4d16-9e25-b8cc4d79e8b1', N'queenjacobi@gmail.com', N'QUEENJACOBI@GMAIL.COM', N'queenjacobi@gmail.com', N'QUEENJACOBI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFz23URCrOlQZGVclx2hGqZxa1761Cz+ELwVBltDkCCsr1dKnKhDXoMbTjMgUSozgw==', N'5ENTI3CNKYPPBMO44BPXBC4GOFQTP7GJ', N'e1219008-2e01-4fd2-94b0-a815b218544e', NULL, 0, 0, NULL, 1, 0, N'Queen ', N'Jacobi ', 8)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [EntryId]) VALUES (N'feeb9ed4-a464-4109-a3c7-d8f1d7f98738', N'rosarioreuben@gmail.com', N'ROSARIOREUBEN@GMAIL.COM', N'rosarioreuben@gmail.com', N'ROSARIOREUBEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELTu0K6maYuX+zXy6Zxd0im8UJ5h2aNFcr/UEO9zmYw01pU4pa341SXMxe4KdTJqsA==', N'RTMYXG2WXB3CBVPFC2DWBJQERB3C2UGZ', N'c135d4d2-fbd9-455c-9754-2e7f6159793c', NULL, 0, 0, NULL, 1, 0, N'Rosario ', N'Reuben ', 10)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
SET IDENTITY_INSERT [dbo].[tbSportsTest] ON 

INSERT [dbo].[tbSportsTest] ([EntryID], [CreatedBy], [CreatedOn], [Date], [TestTypeFK], [UpdatedBy], [UpdatedOn]) VALUES (9, 11, CAST(N'2019-04-30T11:21:09.4036352' AS DateTime2), CAST(N'2019-04-06T11:10:00.0000000' AS DateTime2), 2, 11, CAST(N'2019-04-30T11:24:52.9437895' AS DateTime2))
INSERT [dbo].[tbSportsTest] ([EntryID], [CreatedBy], [CreatedOn], [Date], [TestTypeFK], [UpdatedBy], [UpdatedOn]) VALUES (13, 7, CAST(N'2019-05-01T05:41:51.5426795' AS DateTime2), CAST(N'2019-05-02T00:00:00.0000000' AS DateTime2), 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tbSportsTest] ([EntryID], [CreatedBy], [CreatedOn], [Date], [TestTypeFK], [UpdatedBy], [UpdatedOn]) VALUES (16, 11, CAST(N'2019-05-01T06:25:52.4874173' AS DateTime2), CAST(N'2019-05-03T00:00:00.0000000' AS DateTime2), 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tbSportsTest] ([EntryID], [CreatedBy], [CreatedOn], [Date], [TestTypeFK], [UpdatedBy], [UpdatedOn]) VALUES (17, 7, CAST(N'2019-05-01T06:26:30.1072322' AS DateTime2), CAST(N'2019-05-04T00:00:00.0000000' AS DateTime2), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tbSportsTest] ([EntryID], [CreatedBy], [CreatedOn], [Date], [TestTypeFK], [UpdatedBy], [UpdatedOn]) VALUES (19, 7, CAST(N'2019-05-01T07:13:41.4972310' AS DateTime2), CAST(N'2019-05-10T00:00:00.0000000' AS DateTime2), 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tbSportsTest] OFF
SET IDENTITY_INSERT [dbo].[tbSportsTestType] ON 

INSERT [dbo].[tbSportsTestType] ([EntryId], [TestTypeName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Cooper Test', 0, CAST(N'2019-04-30T09:12:20.7300000' AS DateTime2), NULL, NULL)
INSERT [dbo].[tbSportsTestType] ([EntryId], [TestTypeName], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'100 meter sprint', 0, CAST(N'2019-04-30T09:12:44.5366667' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbSportsTestType] OFF
SET IDENTITY_INSERT [dbo].[tbSportTestAthletes] ON 

INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (9, 9, 9, 11, CAST(N'2019-05-01T05:36:22.0000000' AS DateTime2), 7, CAST(N'2019-05-01T07:13:13.2553696' AS DateTime2), CAST(3510.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (17, 1, 9, 11, CAST(N'2019-05-01T05:57:15.0000000' AS DateTime2), 7, CAST(N'2019-05-01T07:13:06.3271343' AS DateTime2), CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (18, 5, 9, 11, CAST(N'2019-05-01T06:07:00.0000000' AS DateTime2), 7, CAST(N'2019-05-01T07:13:21.6301613' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (21, 10, 13, 11, CAST(N'2019-05-01T06:16:14.5784671' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (22, 1, 13, 11, CAST(N'2019-05-01T06:16:23.2018645' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (24, 5, 13, 11, CAST(N'2019-05-01T06:19:34.6359379' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (26, 5, 17, 7, CAST(N'2019-05-01T06:29:30.0948576' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (27, 4, 16, 7, CAST(N'2019-05-01T06:31:27.0000000' AS DateTime2), 7, CAST(N'2019-05-01T06:32:06.7926038' AS DateTime2), CAST(100.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (28, 3, 16, 7, CAST(N'2019-05-01T06:31:34.8777273' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (29, 1, 16, 7, CAST(N'2019-05-01T06:34:10.3875323' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (30, 9, 17, 11, CAST(N'2019-05-01T06:50:37.9177069' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (31, 5, 19, 7, CAST(N'2019-05-01T07:13:54.2215547' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (32, 9, 19, 7, CAST(N'2019-05-01T07:14:04.2752363' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[tbSportTestAthletes] ([EntryId], [AthletesFK], [SportsTestFK], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Distance]) VALUES (33, 10, 19, 7, CAST(N'2019-05-01T07:14:14.0000000' AS DateTime2), 7, CAST(N'2019-05-01T07:14:24.3770882' AS DateTime2), CAST(2500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tbSportTestAthletes] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01/05/2019 07:17:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01/05/2019 07:17:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbSportsTest_TestTypeFK]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_tbSportsTest_TestTypeFK] ON [dbo].[tbSportsTest]
(
	[TestTypeFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbSportTestAthletes_SportsTestFK]    Script Date: 01/05/2019 07:17:14 ******/
CREATE NONCLUSTERED INDEX [IX_tbSportTestAthletes_SportsTestFK] ON [dbo].[tbSportTestAthletes]
(
	[SportsTestFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ((0)) FOR [TestTypeFK]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ((0)) FOR [UpdatedBy]
GO
ALTER TABLE [dbo].[tbSportsTest] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[tbSportTestAthletes] ADD  DEFAULT ((0.0)) FOR [Distance]
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
ALTER TABLE [dbo].[tbSportsTest]  WITH CHECK ADD  CONSTRAINT [FK_tbSportsTest_tbSportsTestType_TestTypeFK] FOREIGN KEY([TestTypeFK])
REFERENCES [dbo].[tbSportsTestType] ([EntryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbSportsTest] CHECK CONSTRAINT [FK_tbSportsTest_tbSportsTestType_TestTypeFK]
GO
ALTER TABLE [dbo].[tbSportTestAthletes]  WITH CHECK ADD  CONSTRAINT [FK_tbSportTestAthletes_tbSportsTest_SportsTestFK] FOREIGN KEY([SportsTestFK])
REFERENCES [dbo].[tbSportsTest] ([EntryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbSportTestAthletes] CHECK CONSTRAINT [FK_tbSportTestAthletes_tbSportsTest_SportsTestFK]
GO
/****** Object:  StoredProcedure [dbo].[prAthlete_Get]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prAthlete_Get]
As
select B.EntryId,   Concat(B.FirstName,' ', B.LastName) Athlete
from  AspNetUsers B Inner join AspNetUserRoles C on c.UserId=B.Id
Inner join AspNetRoles D on d.Id= C.RoleId
where D.Name='Athlete'
GO
/****** Object:  StoredProcedure [dbo].[prSportsTest_Get]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prSportsTest_Get]
As
select A.EntryId, Cast(A.Date as date) Date, C.TestTypeName TestType, Concat(B.FirstName,' ', B.LastName) CreatedBy, ISNULL(D.Atheletes ,0) Atheletes
from dbo.tbSportsTest A Inner Join AspNetUsers B on A.CreatedBy= B.EntryID
Left join (select SportsTestFK, Count(*) Atheletes from dbo.tbSportTestAthletes Group By SportsTestFK) D on a.EntryID= D.SportsTestFK
inner join dbo.tbSportsTestType c on c.EntryId= A.TestTypeFK


GO
/****** Object:  StoredProcedure [dbo].[prSportTestAthletes_GET]    Script Date: 01/05/2019 07:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[prSportTestAthletes_GET] @SportTestFK as int
As
Begin
select A.EntryId,   Concat(B.FirstName,' ', B.LastName) Athlete,A.Distance,
Case when A.Distance >3500 then 'Very Good' 
     when A.Distance >2000 and a.Distance<=3500 then 'Good'
	 when A.Distance >1000 and a.Distance<=2000 then 'Average'
	 When A.Distance <= 1000 then 'Below Average' 
	 else '' END FitnessRating
from  AspNetUsers B Inner join dbo.tbSportTestAthletes A on A.AthletesFK= B.EntryId
Where A.SportsTestFK=@SportTestFK order by isnull(A.Distance,0) desc
END
GO
USE [master]
GO
ALTER DATABASE [SportsTestDemo] SET  READ_WRITE 
GO
