USE [MVC.CMS.Website.Database]
GO
/****** Object:  Table [dbo].[Agency]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agency](
	[AgencyId] [int] IDENTITY(1,1) NOT NULL,
	[AgencyName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Agency_1] PRIMARY KEY CLUSTERED 
(
	[AgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[BannerPath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[BannerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Circular]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Circular](
	[CircularId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Circular] PRIMARY KEY CLUSTERED 
(
	[CircularId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Committee]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Committee](
	[CommitteeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Committee] PRIMARY KEY CLUSTERED 
(
	[CommitteeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommitteeMember]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommitteeMember](
	[CommitteeMemberId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[CommitteeId] [int] NULL,
	[AgencyId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_CommitteeMember] PRIMARY KEY CLUSTERED 
(
	[CommitteeMemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[PhotoPath] [nvarchar](500) NULL,
	[ServiceFromDate] [datetime] NULL,
	[ServiceToDate] [datetime] NULL,
	[EmployeeType] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[EventType] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notice]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[NoticeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[NoticeType] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Notice] PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotoGallery]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoGallery](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Detail] [nvarchar](500) NULL,
	[PhotoPath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[PhotoType] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PhotoGallery] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publication]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publication](
	[PublicationId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[AuthorName] [nvarchar](500) NULL,
	[PublicationPath] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Publication] PRIMARY KEY CLUSTERED 
(
	[PublicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraineeAtti]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeAtti](
	[TraineeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PresentAddress] [nvarchar](150) NULL,
	[PermanentAddress] [nvarchar](150) NULL,
	[TelephoneNumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Trainee] PRIMARY KEY CLUSTERED 
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[UserPaymentMethodId] [int] NULL,
	[CardHolderName] [nvarchar](50) NULL,
	[CardNumber] [nvarchar](50) NULL,
	[CardExpiryDate] [datetime] NULL,
	[CardSecurityCode] [nchar](10) NULL,
	[TransactionDate] [nvarchar](50) NULL,
	[Amount] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAgency]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAgency](
	[UserAgencyId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[AgencyId] [int] NULL,
	[AgencyName] [nvarchar](100) NULL,
	[Address] [nvarchar](150) NULL,
	[ContactPersonName] [nvarchar](50) NULL,
	[ContactPersonDesignation] [nvarchar](50) NULL,
	[ContactPersonNationality] [nvarchar](50) NULL,
	[ContactPersonNIDNumber] [nvarchar](50) NULL,
	[ContactPersonBirthDate] [datetime] NULL,
	[ContactPersonPermanentAddress] [nvarchar](150) NULL,
	[TradeLicenseNumber] [nvarchar](50) NULL,
	[MOCATRegistrationNumber] [nvarchar](50) NULL,
	[TelephoneNumber] [nvarchar](50) NULL,
	[FaxNumber] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Agency] PRIMARY KEY CLUSTERED 
(
	[UserAgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPaymentMethod]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPaymentMethod](
	[UserPaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PaymentMethodId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_UserPaymentMethod] PRIMARY KEY CLUSTERED 
(
	[UserPaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11/11/2019 11:39:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [int] NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsId], [Title], [ImagePath], [UserId], [CreateDate], [Status]) VALUES (2, N'Test News Title', N'D:\Image', 1, CAST(N'2019-11-10 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [Title], [ImagePath], [UserId], [CreateDate], [Status]) VALUES (4, N'Test Title', N'C:\Image', 2, CAST(N'2019-11-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [Title], [ImagePath], [UserId], [CreateDate], [Status]) VALUES (7, N'Test My News Title', N'E:\Image', 2, CAST(N'2019-04-17 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[News] ([NewsId], [Title], [ImagePath], [UserId], [CreateDate], [Status]) VALUES (15, N'Hot News', N'C:\Image-2', 1, CAST(N'2019-11-07 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[News] ([NewsId], [Title], [ImagePath], [UserId], [CreateDate], [Status]) VALUES (16, N'Test my news', N'D:\My_Image', 1, CAST(N'2019-11-10 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [Password], [Email], [CreateDate], [Status]) VALUES (1, N'Sumon', N'pass123', NULL, NULL, 1)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [Email], [CreateDate], [Status]) VALUES (2, N'Sujon', N'pass321', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_Banner_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_Banner_User]
GO
ALTER TABLE [dbo].[Circular]  WITH CHECK ADD  CONSTRAINT [FK_Circular_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Circular] CHECK CONSTRAINT [FK_Circular_User]
GO
ALTER TABLE [dbo].[CommitteeMember]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeMember_Agency] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[Agency] ([AgencyId])
GO
ALTER TABLE [dbo].[CommitteeMember] CHECK CONSTRAINT [FK_CommitteeMember_Agency]
GO
ALTER TABLE [dbo].[CommitteeMember]  WITH CHECK ADD  CONSTRAINT [FK_CommitteeMember_Committee] FOREIGN KEY([CommitteeId])
REFERENCES [dbo].[Committee] ([CommitteeId])
GO
ALTER TABLE [dbo].[CommitteeMember] CHECK CONSTRAINT [FK_CommitteeMember_Committee]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_User]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_User]
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD  CONSTRAINT [FK_Notice_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Notice] CHECK CONSTRAINT [FK_Notice_User]
GO
ALTER TABLE [dbo].[PhotoGallery]  WITH CHECK ADD  CONSTRAINT [FK_PhotoGallery_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[PhotoGallery] CHECK CONSTRAINT [FK_PhotoGallery_User]
GO
ALTER TABLE [dbo].[Publication]  WITH CHECK ADD  CONSTRAINT [FK_Publication_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Publication] CHECK CONSTRAINT [FK_Publication_User]
GO
ALTER TABLE [dbo].[TraineeAtti]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[TraineeAtti] CHECK CONSTRAINT [FK_Trainee_User]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_UserPaymentMethod] FOREIGN KEY([UserPaymentMethodId])
REFERENCES [dbo].[UserPaymentMethod] ([UserPaymentMethodId])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_UserPaymentMethod]
GO
ALTER TABLE [dbo].[UserAgency]  WITH CHECK ADD  CONSTRAINT [FK_UserAgency_Agency] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[Agency] ([AgencyId])
GO
ALTER TABLE [dbo].[UserAgency] CHECK CONSTRAINT [FK_UserAgency_Agency]
GO
ALTER TABLE [dbo].[UserAgency]  WITH CHECK ADD  CONSTRAINT [FK_UserAgency_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserAgency] CHECK CONSTRAINT [FK_UserAgency_User]
GO
ALTER TABLE [dbo].[UserPaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_UserPaymentMethod_PaymentMethod] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[UserPaymentMethod] CHECK CONSTRAINT [FK_UserPaymentMethod_PaymentMethod]
GO
ALTER TABLE [dbo].[UserPaymentMethod]  WITH CHECK ADD  CONSTRAINT [FK_UserPaymentMethod_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserPaymentMethod] CHECK CONSTRAINT [FK_UserPaymentMethod_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
