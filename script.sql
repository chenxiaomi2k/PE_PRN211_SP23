USE [master]
GO
/****** Object:  Database [PE_PRN211_23SprB1]    Script Date: 02-Apr-23 7:10:58 PM ******/
CREATE DATABASE [PE_PRN211_23SprB1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PE_PRN211_23SprB1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PE_PRN211_23SprB1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PE_PRN211_23SprB1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PE_PRN211_23SprB1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PE_PRN211_23SprB1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET  MULTI_USER 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET QUERY_STORE = OFF
GO
USE [PE_PRN211_23SprB1]
GO
/****** Object:  Table [dbo].[Buttons]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buttons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [varchar](50) NOT NULL,
	[color] [varchar](7) NOT NULL,
 CONSTRAINT [PK_Buttons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[grade] [tinyint] NOT NULL,
	[schoolyear] [int] NOT NULL,
	[room] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYear]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYear](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[startdate] [date] NULL,
	[enddate] [date] NULL,
 CONSTRAINT [PK_SchoolYear] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](30) NOT NULL,
	[sex] [varchar](10) NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Class]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Class](
	[studentid] [int] NOT NULL,
	[classid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Class] PRIMARY KEY CLUSTERED 
(
	[studentid] ASC,
	[classid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Textboxes]    Script Date: 02-Apr-23 7:10:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textboxes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [varchar](50) NOT NULL,
	[readonly] [bit] NOT NULL,
 CONSTRAINT [PK_Textboxes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buttons] ON 

INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (1, N'Button1', N'#4287f5')
INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (2, N'Button2', N'#b1c9f0')
INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (3, N'Button3', N'#baf5e4')
INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (4, N'Button4', N'#ebcdb0')
INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (7, N'Button5', N'#ebcdb1')
INSERT [dbo].[Buttons] ([id], [text], [color]) VALUES (8, N'Button6', N'#b1c9f0')
SET IDENTITY_INSERT [dbo].[Buttons] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (1, N'1Thimphu', 1, 3, N'C301')
INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (2, N'2Prague', 2, 1, N'C302')
INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (3, N'3Nairobi', 3, 2, N'D405')
INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (4, N'4Salvado', 4, 3, N'C202')
INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (5, N'4Soledad', 4, 3, N'C205')
INSERT [dbo].[Class] ([id], [title], [grade], [schoolyear], [room]) VALUES (6, N'1Tokyo', 1, 3, N'C207')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolYear] ON 

INSERT [dbo].[SchoolYear] ([id], [title], [startdate], [enddate]) VALUES (1, N'2019-2020', NULL, NULL)
INSERT [dbo].[SchoolYear] ([id], [title], [startdate], [enddate]) VALUES (2, N'2020-2021', NULL, NULL)
INSERT [dbo].[SchoolYear] ([id], [title], [startdate], [enddate]) VALUES (3, N'2021-2022', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SchoolYear] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (1, N'Vu Minh Chau', N'Male', CAST(N'2012-12-11' AS Date), N'chauvuminh@dewey.edu.vn')
INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (3, N'Khuc Ha Khanh ', N'Male', CAST(N'2012-09-11' AS Date), N'ankhuchakhanh@dewey.edu.vn')
INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (4, N'Nguyen Hoang Kien', N'male', CAST(N'2012-01-02' AS Date), N'kiennguyenhoang@dewey.edu.vn')
INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (5, N'Vu Minh Khang', N'male', CAST(N'2015-11-25' AS Date), N'khangvuminh@dewey.edu.vn')
INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (6, N'Dau Quang Minh', N'male', CAST(N'2015-02-06' AS Date), N'minhdauquang@dewey.edu.vn')
INSERT [dbo].[Student] ([id], [fullname], [sex], [dob], [email]) VALUES (7, N'Nguyen Bao Ngoc', N'female', CAST(N'2015-05-05' AS Date), N'ngocnguyenbao@dewey.edu.vn')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (1, 2)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (1, 3)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (1, 4)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (3, 2)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (3, 3)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (3, 5)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (4, 2)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (4, 3)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (4, 5)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (5, 1)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (6, 1)
INSERT [dbo].[Student_Class] ([studentid], [classid]) VALUES (7, 1)
GO
SET IDENTITY_INSERT [dbo].[Textboxes] ON 

INSERT [dbo].[Textboxes] ([id], [text], [readonly]) VALUES (1, N'TextBox1', 1)
INSERT [dbo].[Textboxes] ([id], [text], [readonly]) VALUES (2, N'TextBox2', 0)
INSERT [dbo].[Textboxes] ([id], [text], [readonly]) VALUES (3, N'TextBox3', 0)
INSERT [dbo].[Textboxes] ([id], [text], [readonly]) VALUES (4, N'TextBox4', 1)
SET IDENTITY_INSERT [dbo].[Textboxes] OFF
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_SchoolYear] FOREIGN KEY([schoolyear])
REFERENCES [dbo].[SchoolYear] ([id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_SchoolYear]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Class] FOREIGN KEY([classid])
REFERENCES [dbo].[Class] ([id])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Class]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class_Student] FOREIGN KEY([studentid])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [FK_Student_Class_Student]
GO
USE [master]
GO
ALTER DATABASE [PE_PRN211_23SprB1] SET  READ_WRITE 
GO
