USE [master]
GO
/****** Object:  Database [CSE]    Script Date: 09/07/2024 4:33:10 pm ******/
CREATE DATABASE [CSE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CSE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CSE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CSE] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSE] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSE] SET  MULTI_USER 
GO
ALTER DATABASE [CSE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CSE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CSE] SET QUERY_STORE = ON
GO
ALTER DATABASE [CSE] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CSE]
GO
/****** Object:  Table [dbo].[APPLICANT]    Script Date: 09/07/2024 4:33:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPLICANT](
	[ApplicantNum] [int] NOT NULL,
	[ApplicantName] [varchar](100) NULL,
	[Age] [int] NULL,
	[Birthdate] [date] NULL,
	[Sex] [char](1) NULL,
	[BirthPlace] [varchar](100) NULL,
	[Citizenship] [varchar](50) NULL,
	[NameOfMother] [varchar](100) NULL,
	[Address] [varchar](255) NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[CivilStatus] [varchar](20) NULL,
	[Pregnant] [char](1) NULL,
	[PWD] [char](1) NULL,
	[Disability] [varchar](100) NULL,
	[MobileNum] [varchar](20) NULL,
	[TelNum] [varchar](20) NULL,
	[EmailAdd] [varchar](100) NULL,
	[EducationLevel] [varchar](50) NULL,
	[CompLTN] [varchar](50) NULL,
	[HighestYrLvL] [varchar](50) NULL,
	[GradDate] [date] NULL,
	[Program] [varchar](100) NULL,
	[Major] [varchar](100) NULL,
	[SchoolName] [varchar](100) NULL,
	[SchoolAdd] [varchar](100) NULL,
	[InclusiveYears] [varchar](50) NULL,
	[PresentEmployment] [varchar](100) NULL,
	[Agency] [varchar](100) NULL,
	[AgencyAdd] [varchar](255) NULL,
	[JobTitle] [varchar](100) NULL,
	[JobYears] [int] NULL,
	[EmploymentStatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicantNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APPLICATION]    Script Date: 09/07/2024 4:33:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPLICATION](
	[ApplicantNum] [int] NULL,
	[Exam_ID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAM]    Script Date: 09/07/2024 4:33:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAM](
	[Exam_ID] [varchar](50) NOT NULL,
	[ExamType] [varchar](100) NULL,
	[ExamMode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAM_HISTORY]    Script Date: 09/07/2024 4:33:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAM_HISTORY](
	[ApplicantNum] [int] NULL,
	[ExamPassed] [varchar](100) NULL,
	[Rating] [varchar](100) NULL,
	[ExamDate] [date] NULL,
	[ExamPlace] [varchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[APPLICANT] ([ApplicantNum], [ApplicantName], [Age], [Birthdate], [Sex], [BirthPlace], [Citizenship], [NameOfMother], [Address], [Height], [Weight], [CivilStatus], [Pregnant], [PWD], [Disability], [MobileNum], [TelNum], [EmailAdd], [EducationLevel], [CompLTN], [HighestYrLvL], [GradDate], [Program], [Major], [SchoolName], [SchoolAdd], [InclusiveYears], [PresentEmployment], [Agency], [AgencyAdd], [JobTitle], [JobYears], [EmploymentStatus]) VALUES (12340001, N'Juan Dela Cruz', 30, CAST(N'1994-01-15' AS Date), N'M', N'Manila, Philippines', N'Filipino', N'Maria Dela Cruz', N'123 Street, Manila, Philippines', 170, 68, N'Single', N'N', N'N', N'Low Vision', N'09171234567', N'027123456', N'juan@example.com', N'College', N'Graduated', NULL, CAST(N'2016-08-15' AS Date), N'Computer Science', N'Software Engineering', N'University of the Philippines', N'Quezon City, Philippines', N'2012-2016', N'Private', N'ABC Corp', N'Makati, Philippines', N'Software Developer', 4, N'Full-Time')
INSERT [dbo].[APPLICANT] ([ApplicantNum], [ApplicantName], [Age], [Birthdate], [Sex], [BirthPlace], [Citizenship], [NameOfMother], [Address], [Height], [Weight], [CivilStatus], [Pregnant], [PWD], [Disability], [MobileNum], [TelNum], [EmailAdd], [EducationLevel], [CompLTN], [HighestYrLvL], [GradDate], [Program], [Major], [SchoolName], [SchoolAdd], [InclusiveYears], [PresentEmployment], [Agency], [AgencyAdd], [JobTitle], [JobYears], [EmploymentStatus]) VALUES (12340002, N'Maria Santos', 28, CAST(N'1996-05-20' AS Date), N'F', N'Cebu City, Philippines', N'Filipino', N'Josefina Santos', N'456 Avenue, Cebu City, Philippines', 160, 55, N'Married', N'N', N'N', NULL, N'09181234567', N'032812345', N'maria@example.com', N'College', N'Graduated', NULL, CAST(N'2018-09-10' AS Date), N'Business Administration', N'Management', N'Ateneo de Manila University', N'Quezon City, Philippines', N'2014-2018', N'Private', N'DEF Corp', N'Cebu City, Philippines', N'Manager', 2, N'Part-Time')
INSERT [dbo].[APPLICANT] ([ApplicantNum], [ApplicantName], [Age], [Birthdate], [Sex], [BirthPlace], [Citizenship], [NameOfMother], [Address], [Height], [Weight], [CivilStatus], [Pregnant], [PWD], [Disability], [MobileNum], [TelNum], [EmailAdd], [EducationLevel], [CompLTN], [HighestYrLvL], [GradDate], [Program], [Major], [SchoolName], [SchoolAdd], [InclusiveYears], [PresentEmployment], [Agency], [AgencyAdd], [JobTitle], [JobYears], [EmploymentStatus]) VALUES (12340003, N'Pedro Pascual', 35, CAST(N'1989-09-11' AS Date), N'M', N'Davao City, Philippines', N'Filipino', N'Juanita Pascual', N'789 Boulevard, Davao City, Philippines', 175, 75, N'Widowed', N'N', N'N', N'Low Vision', N'09191234567', N'082912345', N'pedro@example.com', N'College', N'Graduated', NULL, CAST(N'2020-01-19' AS Date), N'Engineering', N'Civil Engineering', N'University of San Carlos', N'Cebu City, Philippines', N'2012-2020', N'Government', N'DFA', N'Davao City, Philippines', N'Project Engineer', 5, N'Contractual')
INSERT [dbo].[APPLICANT] ([ApplicantNum], [ApplicantName], [Age], [Birthdate], [Sex], [BirthPlace], [Citizenship], [NameOfMother], [Address], [Height], [Weight], [CivilStatus], [Pregnant], [PWD], [Disability], [MobileNum], [TelNum], [EmailAdd], [EducationLevel], [CompLTN], [HighestYrLvL], [GradDate], [Program], [Major], [SchoolName], [SchoolAdd], [InclusiveYears], [PresentEmployment], [Agency], [AgencyAdd], [JobTitle], [JobYears], [EmploymentStatus]) VALUES (12340004, N'Josefina Reyes', 26, CAST(N'1997-12-24' AS Date), N'F', N'Baguio City, Philippines', N'Filipino', N'Luisa Reyes', N'101 Main Road, Baguio City, Philippines', 165, 60, N'Single', N'N', N'N', NULL, N'09201234567', N'074212345', N'josefina@example.com', N'College', N'Graduated', NULL, CAST(N'2017-07-26' AS Date), N'Education', N'Elementary Education', N'Saint Louis University', N'Baguio City, Philippines', N'2013-2017', N'Unemployed', NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[APPLICANT] ([ApplicantNum], [ApplicantName], [Age], [Birthdate], [Sex], [BirthPlace], [Citizenship], [NameOfMother], [Address], [Height], [Weight], [CivilStatus], [Pregnant], [PWD], [Disability], [MobileNum], [TelNum], [EmailAdd], [EducationLevel], [CompLTN], [HighestYrLvL], [GradDate], [Program], [Major], [SchoolName], [SchoolAdd], [InclusiveYears], [PresentEmployment], [Agency], [AgencyAdd], [JobTitle], [JobYears], [EmploymentStatus]) VALUES (12340005, N'Ana Magno', 32, CAST(N'1991-03-30' AS Date), N'F', N'Iloilo City, Philippines', N'Filipino', N'Rosario Magno', N'202 River Street, Iloilo City, Philippines', 158, 50, N'Single', N'N', N'N', NULL, N'09211234567', N'033912345', N'ana@example.com', N'College', N'Graduated', NULL, CAST(N'2013-03-10' AS Date), N'Computer Science', N'Artificial Intelligence', N'University of Santo Tomas', N'Manila, Philippines', N'2009-2013', N'Government', N'JKL Hospital', N'Iloilo City, Philippines', N'Nurse', 7, N'Full-Time')
GO
INSERT [dbo].[APPLICATION] ([ApplicantNum], [Exam_ID]) VALUES (12340001, N'E01')
INSERT [dbo].[APPLICATION] ([ApplicantNum], [Exam_ID]) VALUES (12340002, N'E01')
INSERT [dbo].[APPLICATION] ([ApplicantNum], [Exam_ID]) VALUES (12340003, N'E02')
INSERT [dbo].[APPLICATION] ([ApplicantNum], [Exam_ID]) VALUES (12340004, N'E03')
INSERT [dbo].[APPLICATION] ([ApplicantNum], [Exam_ID]) VALUES (12340005, N'E04')
GO
INSERT [dbo].[EXAM] ([Exam_ID], [ExamType], [ExamMode]) VALUES (N'E01', N'CSE-Professional', N'PPT')
INSERT [dbo].[EXAM] ([Exam_ID], [ExamType], [ExamMode]) VALUES (N'E02', N'CSE-SubProfessional', N'PPT')
INSERT [dbo].[EXAM] ([Exam_ID], [ExamType], [ExamMode]) VALUES (N'E03', N'CSE-Professional', N'COMEX')
INSERT [dbo].[EXAM] ([Exam_ID], [ExamType], [ExamMode]) VALUES (N'E04', N'CSE-SubProfessional', N'COMEX')
GO
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340001, N'FOE', N'85.50%', CAST(N'2017-10-15' AS Date), N'Manila, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340002, N'ICLTE', N'92.00%', CAST(N'2016-02-21' AS Date), N'Cebu City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340002, N'CSE-FSO', N'87.95%', CAST(N'2018-03-15' AS Date), N'Cebu City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340003, N'DOE-QEE', N'93.00%', CAST(N'2019-10-16' AS Date), N'Davao City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340003, N'BCLTE', N'91.50%', CAST(N'2023-10-26' AS Date), N'Davao City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340004, N'FOE', N'89.00%', CAST(N'2020-01-21' AS Date), N'Baguio City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340005, N'FOE', N'88.00%', CAST(N'2021-09-15' AS Date), N'Iloilo City, Philippines')
INSERT [dbo].[EXAM_HISTORY] ([ApplicantNum], [ExamPassed], [Rating], [ExamDate], [ExamPlace]) VALUES (12340005, N'ICLTE', N'93.50%', CAST(N'2019-10-18' AS Date), N'Iloilo City, Philippines')
GO
ALTER TABLE [dbo].[APPLICATION]  WITH CHECK ADD FOREIGN KEY([ApplicantNum])
REFERENCES [dbo].[APPLICANT] ([ApplicantNum])
GO
ALTER TABLE [dbo].[APPLICATION]  WITH CHECK ADD FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[EXAM] ([Exam_ID])
GO
ALTER TABLE [dbo].[EXAM_HISTORY]  WITH CHECK ADD FOREIGN KEY([ApplicantNum])
REFERENCES [dbo].[APPLICANT] ([ApplicantNum])
GO
USE [master]
GO
ALTER DATABASE [CSE] SET  READ_WRITE 
GO
