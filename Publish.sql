USE [aknightsfeast]
GO
/****** Object:  User [lknight1]    Script Date: 6/23/2014 8:34:58 PM ******/
CREATE USER [lknight1] FOR LOGIN [lknight1] WITH DEFAULT_SCHEMA=[lknight1]
GO
ALTER ROLE [db_owner] ADD MEMBER [lknight1]
GO
/****** Object:  Schema [lknight1]    Script Date: 6/23/2014 8:34:59 PM ******/
CREATE SCHEMA [lknight1]
GO
/****** Object:  Table [lknight1].[Assessments]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lknight1].[Assessments](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](100) NOT NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [char](2) NOT NULL,
	[ZipCode] [nvarchar](5) NULL,
	[HiringGoal] [ntext] NOT NULL,
	[Allergies] [nvarchar](max) NULL,
	[LactoseInt] [bit] NOT NULL,
	[Medical] [nvarchar](max) NULL,
	[DietPlan] [nvarchar](max) NULL,
	[OtherMeats] [nvarchar](max) NULL,
	[VegMeals] [bit] NOT NULL,
	[FavFHV] [nvarchar](max) NULL,
	[UnfavFHV] [nvarchar](max) NULL,
	[FavGreens] [nvarchar](max) NULL,
	[EquipNots] [nvarchar](max) NULL,
	[Recipes] [nvarchar](max) NULL,
	[Restaurants] [nvarchar](max) NULL,
	[AddlFridge] [bit] NOT NULL,
	[Grocers] [nvarchar](max) NULL,
	[FuseboxLocale] [nvarchar](max) NULL,
	[Comments] [ntext] NULL,
	[Turkey] [bit] NOT NULL,
	[Lamb] [bit] NOT NULL,
	[Pork] [bit] NOT NULL,
	[Seafood] [bit] NOT NULL,
	[SeafoodNots] [nvarchar](max) NULL,
	[BeefPrep] [decimal](18, 0) NOT NULL,
	[ChickenPrep] [decimal](18, 0) NOT NULL,
	[SpiceLikes] [decimal](18, 0) NOT NULL,
	[Container] [smallint] NOT NULL,
	[PackageStyle] [smallint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_assessments] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lknight1].[People]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[People](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[FName] [nvarchar](30) NOT NULL,
	[LName] [nvarchar](50) NOT NULL,
	[MiddleInitial] [nvarchar](1) NULL,
	[DOB] [date] NULL,
	[Email] [nvarchar](70) NULL,
	[Phone] [nvarchar](14) NULL,
 CONSTRAINT [PK_AssessPeople] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[Pets]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[Pets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Breed] [nvarchar](50) NOT NULL,
	[IsFriendly] [bit] NOT NULL,
	[Location] [tinyint] NOT NULL,
 CONSTRAINT [PK_AssessPets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[States]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lknight1].[States](
	[Abbr] [char](2) NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Abbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [lknight1].[Users]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[webpages_Membership]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[webpages_OAuthMembership]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[webpages_Roles]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lknight1].[webpages_UsersInRoles]    Script Date: 6/23/2014 8:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lknight1].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_VegMeals]  DEFAULT ((0)) FOR [VegMeals]
GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_AddlFridge]  DEFAULT ((0)) FOR [AddlFridge]
GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_BeefPrep]  DEFAULT ((0)) FOR [BeefPrep]
GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_ChickenPrep]  DEFAULT ((0)) FOR [ChickenPrep]
GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_SpiceLikes]  DEFAULT ((0)) FOR [SpiceLikes]
GO
ALTER TABLE [lknight1].[Assessments] ADD  CONSTRAINT [DF_Assessments_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [lknight1].[Pets] ADD  CONSTRAINT [DF_AssessPets_Friendly]  DEFAULT ((0)) FOR [IsFriendly]
GO
ALTER TABLE [lknight1].[Pets] ADD  CONSTRAINT [DF_AssessPets_Outside]  DEFAULT ((0)) FOR [Location]
GO
ALTER TABLE [lknight1].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [lknight1].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [lknight1].[Assessments]  WITH CHECK ADD  CONSTRAINT [FK_States_Assessments] FOREIGN KEY([State])
REFERENCES [lknight1].[States] ([Abbr])
GO
ALTER TABLE [lknight1].[Assessments] CHECK CONSTRAINT [FK_States_Assessments]
GO
ALTER TABLE [lknight1].[People]  WITH CHECK ADD  CONSTRAINT [FK_AssessPeople_Assessments] FOREIGN KEY([AID])
REFERENCES [lknight1].[Assessments] ([AID])
ON DELETE CASCADE
GO
ALTER TABLE [lknight1].[People] CHECK CONSTRAINT [FK_AssessPeople_Assessments]
GO
ALTER TABLE [lknight1].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_AssessPets_Assessments] FOREIGN KEY([AID])
REFERENCES [lknight1].[Assessments] ([AID])
ON DELETE CASCADE
GO
ALTER TABLE [lknight1].[Pets] CHECK CONSTRAINT [FK_AssessPets_Assessments]
GO
ALTER TABLE [lknight1].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [lknight1].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [lknight1].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [lknight1].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [lknight1].[Users] ([ID])
GO
ALTER TABLE [lknight1].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assessment id' , @level0type=N'SCHEMA',@level0name=N'lknight1', @level1type=N'TABLE',@level1name=N'People', @level2type=N'COLUMN',@level2name=N'AID'
GO
