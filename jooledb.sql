
USE master
GO
if exists (select * from sysdatabases where name='Joole')
		drop database Joole
go

IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'Joole'
)
CREATE DATABASE Joole
GO

USE [Joole]
GO

/****** Object:  Table [dbo].[tblSubCategory]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblSubCategory](


	[SubCategoryID] [int]IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CategoryId] [int] FOREIGN KEY REFERENCES tblCategory(CategoryId),
	[SubCategoryName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[tblSubCategory] ON
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (1, 1, N'Fans')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (2, 1, N'Motors')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (3, 1, N'Compressor')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (4, 2, N'Vacuums')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (5, 2, N'Toasters')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (6, 2, N'Microwave')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (7, 3, N'Pen')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (8, 3, N'Calculator')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (9, 3, N'Scissors')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (10, 4, N'Chair')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (11, 4, N'Couch')
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [CategoryId], [SubCategoryName]) VALUES (12, 4, N'Tables')
SET IDENTITY_INSERT [dbo].[tblSubCategory] OFF



/****** Object:  Table [dbo].[tblProduct]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblProduct](


	[ProductID] [int]IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[SubCategoryID] [int] FOREIGN KEY REFERENCES tblSubCategory(SubCategoryID),
	[ProductName] [varchar](100) NOT NULL,
    [ProductYear] [int] NOT NULL,
    [ProductImage] [varchar](50)
) ON [PRIMARY]
GO

SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[tblProduct] ON
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (1,1,'Honeywell HT-900 TurboForce Air Circulator Fan Black', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (2,1,'AmazonBasics Oscillating Dual Blade Standing Pedestal Fan', 2013 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (3,2,'Qianson DC 775 Motor', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (4,2,'AUTOTOOLHOME 6-12V Mini DC Motor', 2017 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (5,3,'CRAFTSMAN Air Compressor', 2018 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (6,3,'BOSTITCH Pancake Air Compressor ', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (7,4,'Eureka NES210 Blaze 3-in-1 Swivel Lightweight Stick Vacuum Cleaner Dark Black', 2016 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (8,4,'Bissell Cleanview Upright Bagless Vacuum Cleaner, Orange, 1831', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (9,5,'Cuisinart CPT-180P1 Metal Classic 4-Slice toaster, Brushed Stainless', 2010 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (10,5,'Betty Crocker BC-2605CB RA28686 2-Slice Toaster', 2014 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (11,6,'Magic Chef MCM1611ST 1100W Oven, 1.6 cu.ft, Stainless Steel Microwave', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (12,6,'Commercial Chef CHM770B Countertop Microwave, 0.7 Cubic Feet, Black', 2017 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (13,7,'Zebra F-301 Ballpoint Stainless Steel Retractable Pen, Fine Point, 0.7mm, Black Ink, 2-Count', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (14,7,'Parker 1953170 Jotter Ballpoint Pen, Stainless Steel with Chrome Trim, Medium Point Blue Ink', 2008 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (15,8,'Casio MS-80B Standard Function Desktop Calculator,Black', 2002 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (16,8,'Texas Instruments TI-30XS MultiView Scientific Calculator', 2005 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (17,9,'Fiskars 12-94518697WJ The Original Orange Handled Scissors, 8 Inch, Orange', 2001 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (18,9,'SZCO Supplies Fatima Tailor Scissors with Rose Gold Finish, 8.5"', 2006 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (19,10,'Folding Plastic Chair', 2017 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (20,10,'Faux Leather Chair', 2015 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (21,11,'Modern Tufted Sofa', 2016 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (22,11,'Sofa Sleeper', 2018 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (23,12,'Black Folding Table', 2019 , 'img')
INSERT [dbo].[tblProduct] ([ProductID], [SubCategoryID], [ProductName], [ProductYear], [ProductImage]) VALUES (24,12,'Wood Corner Table', 2018 , 'img')
SET IDENTITY_INSERT [dbo].[tblProduct] OFF


