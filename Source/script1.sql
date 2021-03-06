USE [Abby]
GO
ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK_ShoppingCart_MenuItem_MenuItemId]
GO
ALTER TABLE [dbo].[ShoppingCart] DROP CONSTRAINT [FK_ShoppingCart_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[OrderHeader] DROP CONSTRAINT [FK_OrderHeader_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_OrderHeader_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_MenuItem_MenuItemId]
GO
ALTER TABLE [dbo].[MenuItem] DROP CONSTRAINT [FK_MenuItem_FoodType_FoodTypeId]
GO
ALTER TABLE [dbo].[MenuItem] DROP CONSTRAINT [FK_MenuItem_Category_CategoryId]
GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [DF__AspNetUse__Discr__5165187F]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCart]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCart]
GO
/****** Object:  Table [dbo].[OrderHeader]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderHeader]') AND type in (N'U'))
DROP TABLE [dbo].[OrderHeader]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuItem]') AND type in (N'U'))
DROP TABLE [dbo].[MenuItem]
GO
/****** Object:  Table [dbo].[FoodType]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FoodType]') AND type in (N'U'))
DROP TABLE [dbo].[FoodType]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2022 10:43:03 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2022 10:43:03 AM ******/
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
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/10/2022 10:43:03 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodType]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FoodType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[FoodTypeId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeader]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[PickUpTime] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[SessionId] [nvarchar](max) NULL,
	[PickupName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 1/10/2022 10:43:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210919210009_addCategoryToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210919213336_addFoodTypeToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210920012631_addMenuItemToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210920211759_addIdentityToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210920213423_extendIdentityUser', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210921034451_addShoppingCartToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210921183037_addOrderHeaderAndDetailToDb', N'6.0.0-rc.1.21452.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210922013903_renameTransactionAndAddPIToOrderHeader', N'6.0.0-rc.1.21452.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'362ed9db-8f45-4529-a471-5393c33388de', N'Customer', N'CUSTOMER', N'72ac891c-baf2-4330-80db-54b40bf4d7f0')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3650536c-35e3-4417-9d07-e8cbb6682b04', N'Kitchen', N'KITCHEN', N'1c23ccca-337a-4f94-812b-eb1417c7c209')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a7c904fc-2feb-4a23-90b4-af24bf48ea23', N'Front', N'FRONT', N'646ce6f8-87b1-4ec2-83fc-e460e28140a0')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd6a9b5e4-e29f-4ab6-a990-c23479889538', N'Manager', N'MANAGER', N'5d2e7fb9-1f5c-43fe-9802-3e38f338c702')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2f7c0270-6c37-42e8-b7ed-1aa752f5cbed', N'362ed9db-8f45-4529-a471-5393c33388de')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41f5c8ca-122b-4449-b766-366eb23bae02', N'362ed9db-8f45-4529-a471-5393c33388de')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0a0356a-9838-4df8-99fe-de96294d4f16', N'362ed9db-8f45-4529-a471-5393c33388de')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'28af37e9-12f1-4795-9c02-fbd025aa9033', N'3650536c-35e3-4417-9d07-e8cbb6682b04')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c12a612b-b768-4193-84d1-9dbb7f7e04aa', N'a7c904fc-2feb-4a23-90b4-af24bf48ea23')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1447977d-9ce6-464c-858c-de9d1566b1bf', N'd6a9b5e4-e29f-4ab6-a990-c23479889538')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8b471d6-c87e-4ad7-8899-db09c3688905', N'd6a9b5e4-e29f-4ab6-a990-c23479889538')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'1447977d-9ce6-464c-858c-de9d1566b1bf', N'Manager1@gmail.com', N'MANAGER1@GMAIL.COM', N'Manager1@gmail.com', N'MANAGER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDtqxWGwOmEqpzQSay1QAdp8PYOa/uTkSU4et6hAzTg6GxyHjvvT4qpMJ1nYqIDnRw==', N'GUZH5PLY3YKTBYGFQ5CR53JECR7LYCLM', N'a28b1166-0b14-4bfa-81d1-e7a2e72d8f07', N'0888821939', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Dat', N'Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'28af37e9-12f1-4795-9c02-fbd025aa9033', N'Kitchen1@gmail.com', N'KITCHEN1@GMAIL.COM', N'Kitchen1@gmail.com', N'KITCHEN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPylzB5Dham9L8IUmCJca9EJqP7BoBJCIkKpNCt7xViperSjV0b5UHWPVAqNwQiZQQ==', N'U5KR3BUB55L5G4NJ5F7KSWI52WZKRHNK', N'd8f4356c-dd0b-488c-82c8-77213f8c1c91', N'0888821939', 0, 0, NULL, 1, 0, N'IdentityUser', N'dat', N'Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'2f7c0270-6c37-42e8-b7ed-1aa752f5cbed', N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', N'Admin1@gmail.com', N'ADMIN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIXe1ebo/07QcoujhwPCuGgyHYn9xtFd+zC+QHa2J5T32jFNi4DpNm/1Y1Q7dtlQFQ==', N'YVVEXUSPRSX3VEDZXTZHV3FKL3PYPN6O', N'14d72112-e9c8-4731-8248-ff07d3fb4365', N'088881939', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Dat', N'Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'41f5c8ca-122b-4449-b766-366eb23bae02', N'thanhdat08011999@gmail.com', N'THANHDAT08011999@GMAIL.COM', N'thanhdat08011999@gmail.com', N'THANHDAT08011999@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDLRKYhZIKG/LP+wAbUxfyhN+eanrHTONuMjIAKNqVyreihWllAXBnnJONO/bSGyNg==', N'T4THLB3B32CS6J36JBC2XNNYSW6JO6L7', N'9ac26711-3bfc-4d5a-8194-42fb0c96a04c', N'0888821939', 0, 0, NULL, 1, 0, N'IdentityUser', N'Dat', N'Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'b8b471d6-c87e-4ad7-8899-db09c3688905', N'admin@dotnetmastery.com', N'ADMIN@DOTNETMASTERY.COM', N'admin@dotnetmastery.com', N'ADMIN@DOTNETMASTERY.COM', 1, N'AQAAAAEAACcQAAAAEClKUwTtAebxCr7Z1TPmP2Rs5Yu3f/o3+zZOzC3TgG2eyfNWPEVkcqPns0pxc6rUrw==', N'CXRMJG5ECXEXDEHAJRVVYU63XFT2IXI6', N'13a1e91f-efa5-4ec5-ba4a-63ee9185ada3', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Bhrugen', N'Patel')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'c12a612b-b768-4193-84d1-9dbb7f7e04aa', N'Front1@gmail.com', N'FRONT1@GMAIL.COM', N'Front1@gmail.com', N'FRONT1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPQ8kXSZR3OKetSZgVEmohNc4Mj4V/OCgVZV3seVO2+oNv0ZMRjxfGtBH+eFPMV3wA==', N'AT2AZINBZO5UFSNYUKUYYG4SYBMQ5W3P', N'121ebd42-ee24-407e-b7bb-c47c3f7996f0', N'0888821939', 0, 0, NULL, 1, 0, N'ApplicationUser', N'thanhdat08011999', N'Nguyen')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'f0a0356a-9838-4df8-99fe-de96294d4f16', N'badpoizzz@gmail.com', N'BADPOIZZZ@GMAIL.COM', N'badpoizzz@gmail.com', N'BADPOIZZZ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK1eK8r9ASfkcPuGCZqIh87NnmHXGtjxX6bjKtciIqR5ELMRf9OjFuG1hOwPHefJsQ==', N'PBTVU66XGBZ7DKT467YF6RQBRGDYIIQF', N'e146ea5d-a23d-4b65-944e-6edfdb38fee1', N'0888821939', 0, 0, NULL, 1, 0, N'ApplicationUser', N'dat', N'nguyen')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (1, N'Món Khai Vị', 5)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (2, N'Món Tráng Miệng', 5)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (3, N'Món Chính', 5)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (4, N'Món ăn theo mùa', 2)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodType] ON 

INSERT [dbo].[FoodType] ([Id], [Name]) VALUES (1, N'Có Rau')
INSERT [dbo].[FoodType] ([Id], [Name]) VALUES (2, N'Không rau')
SET IDENTITY_INSERT [dbo].[FoodType] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuItem] ON 

INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (1, N'Pizza', N'<div class="attributes" style="box-sizing: border-box; margin: 20px 0px; outline: none; padding: 0px; text-decoration: none; font-size: 15px; text-align: left;">&nbsp;</div>
<div class="content-description" style="box-sizing: border-box; margin: 0px; outline: none; padding: 0px; text-decoration: none;">T&ocirc;m, cua, mực v&agrave; b&ocirc;ng cải xanh tươi ngon tr&ecirc;n nền sốt Pesto Xanh</div>', N'\images\menuItems\b76d6d19-d1a7-437a-bca2-029f536a3c33.png', 5, 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (2, N'Bánh gạo Tokboki', N'<div class="product-elm" style="box-sizing: border-box; font-size: 1rem; padding: 0.5rem 0px; border-bottom: 1px solid #dfe7ef; color: #2c2e2f; font-family: -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, ''Noto Sans'', sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; background-color: #ffffff;">
<div class="short-desc" style="box-sizing: border-box; font-size: 1rem; word-break: break-all;">B&aacute;nh gạo tokbokki H&agrave;n Quốc l&agrave; m&oacute;n ăn truyền thống quen thuộc, nổi tiếng v&agrave; rất được y&ecirc;u th&iacute;ch của người d&acirc;n xứ H&agrave;nB&aacute;nh gạo cuckoo c&oacute; vị mềm dai quyện ...</div>
<p>&nbsp;</p>
</div>', N'\images\menuItems\1f9edffc-f0f9-4394-b263-3a6e9c082ec0.jpg', 3, 2, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (3, N'Salad Dầu Giấm', N'<div class="product-short-description" style="box-sizing: border-box;">
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px;">Salad trộn dầu giấm tươi ngon, vị chua ngọt h&ograve;a quyện c&ugrave;ng với rau củ gi&ograve;n gi&ograve;n l&agrave; m&oacute;n ăn thanh m&aacute;t, th&iacute;ch hợp để kết hợp với những m&oacute;n thịt c&aacute; hoặc d&agrave;nh cho người giảm c&acirc;n. H&atilde;y c&ugrave;ng tham khảo c&aacute;ch trộn salad dầu giấm gi&ograve;n ngon trong b&agrave;i sau để gi&uacute;p đẹp da, giữ d&aacute;ng nh&eacute;.</p>
</div>
<div class="price-wrapper lt-single-product-custom" style="box-sizing: border-box;">
<p class="price product-page-price " style="box-sizing: border-box; margin: 0.5em 0px; line-height: 1; font-size: 1.5em; font-weight: bolder; color: #333333; font-family: Roboto, sans-serif; background-color: #ffffff;">&nbsp;</p>
<div class="row-single-price-wrapper" style="box-sizing: border-box; display: flex; flex-flow: row wrap; color: #333333; font-family: Roboto, sans-serif; background-color: #ffffff;">
<div class="item-single-price" style="box-sizing: border-box; width: 200.095px; margin-bottom: 15px;">
<div class="price-wrapper hide-o-vnd" style="box-sizing: border-box;">&nbsp;</div>
</div>
</div>
</div>', N'\images\menuItems\8227fa59-64ed-4b83-9b02-30643b5d6e4d.jpg', 6, 1, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (4, N'BBQ Nướng', N'<p style="margin: 0px 0px 20px; padding: 0px; margin-block: 0px; text-rendering: geometricprecision; color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 18px;">Sườn b&ograve; nướng c&oacute; m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n hấp dẫn, nh&igrave;n b&oacute;ng bẩy m&agrave; kh&ocirc;ng hề bị kh&ocirc; sau khi nướng. Phần thịt tr&ecirc;n sườn b&ograve; thấm đượm gia vị m&agrave; vẫn giữ được độ mềm vừa phải, ăn rất vừa miệng. Bạn c&oacute; thể d&ugrave;ng k&egrave;m theo salad trộn&nbsp;th&igrave; c&agrave;ng tuyệt!</p>
<p>&nbsp;</p>', N'\images\menuItems\ed77e739-a3c0-4c44-adfb-a6da1b01cd32.jpg', 20, 2, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (5, N'Gà Nướng Mật Ong', N'<ul style="box-sizing: border-box; margin: 0px; list-style: inside; padding: 0px 0px 0px 15px; color: #16171a; font-family: ''Open Sans'', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #f5f5f5;">
<li style="box-sizing: border-box; line-height: 1.5;">G&agrave; được quay trong l&ograve; quay chuy&ecirc;n dụng, tuyệt đối kh&ocirc;ng xối dầu hoặc chi&ecirc;n trong dầu. Trong bụng g&agrave; c&oacute; nấm m&egrave;o v&agrave; nấm đ&ocirc;ng c&ocirc;. G&agrave; ăn k&egrave;m với rau răm, dưa leo, c&agrave; chua, chấm với nước chấm ri&ecirc;ng.</li>
</ul>', N'\images\menuItems\9646e1e6-34ff-49ba-968d-f87cd32e964e.jpg', 15, 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (6, N'Chả giò thịt', N'<p><span style="font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 15.4px; background-color: #ffffff;">Gồm chủ yếu l&agrave; thịt xay, trứng v&agrave; miến, một số loại rau củ quả th&aacute;i nhỏ, bất kỳ thứ g&igrave; m&agrave; bạn th&iacute;ch chứ kh&ocirc;ng cần phải cố chấp theo một c&ocirc;ng thức n&agrave;o. Quan trọng l&agrave; phải pha nước chấm ngon (xem b&ecirc;n dưới). T&ocirc;i th&igrave; th&iacute;ch nhiều thịt v&agrave; trứng n&ecirc;n cứ cho thật lực v&agrave;o th&ocirc;i ^^ Đ&acirc;y l&agrave; m&oacute;n c&oacute; thể ăn no v&agrave; ngon, thời gian l&agrave;m cũng cực kỳ nhanh n&ecirc;n rất ph&ugrave; hợp với lưu học sinh budget tiền ăn chỉ v&agrave;i trăm yen một bữa v&agrave; kh&ocirc;ng muốn mất thời gian nấu ăn.</span></p>', N'\images\menuItems\3f762ec2-45b8-4a7f-ab4c-1cd4e1670879.jpg', 9, 1, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (8, N'Sương Sáo Mật Ong', N'<div id="admzone480454" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ''Times New Roman''; vertical-align: baseline; outline: 0px; box-sizing: border-box; color: #333333; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.95); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></div>
<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 400; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: ''Times New Roman'', Georgia, serif; vertical-align: baseline; box-sizing: border-box; color: #222222; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.95); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Mật ong l&agrave; loại thực phẩm đem lại nhiều lợi &iacute;ch cho l&agrave;m đẹp v&agrave; sức khỏe v&igrave; chứa nhiều canxi, sắt, cũng như kho&aacute;ng chất, vitamin. Sương s&aacute;o kh&ocirc;ng những ngon m&agrave; c&ograve;n c&oacute; vị ngọt, t&iacute;nh m&aacute;t tự nhi&ecirc;n n&ecirc;n giải nhiệt cực k&igrave; tốt. Sự kết hợp n&agrave;y sẽ gi&uacute;p bạn c&oacute; một m&oacute;n tr&aacute;ng miệng ngon l&agrave;nh v&agrave; cực k&igrave; bổ dưỡng, c&ugrave;ng l&agrave;m v&agrave; thưởng thức nha!</p>', N'\images\menuItems\42e10746-76b4-4220-8af0-99a980ec6fdb.jpg', 2, 2, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (9, N'Kem Khoai Môn', N'<p style="box-sizing: inherit; margin-bottom: 10px; text-align: justify; color: #000000; font-family: Roboto, sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">&nbsp;</p>
<p style="box-sizing: inherit; margin-bottom: 10px; text-align: justify; color: #000000; font-family: Roboto, sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="box-sizing: inherit;">Kem khoai m&ocirc;n l&agrave; m&oacute;n ăn vặt kho&aacute;i khẩu của nhiều người, nhất l&agrave; trẻ em. Nếu như sử dụng m&aacute;y l&agrave;m kem c&oacute; nhiều thao t&aacute;c phức tạp v&agrave; gi&aacute; th&agrave;nh lại cao, th&igrave; với&nbsp;<span style="box-sizing: inherit; font-weight: bolder;">c&aacute;ch l&agrave;m kem khoai m&ocirc;n</span>&nbsp;kh&ocirc;ng cần m&aacute;y dưới đ&acirc;y sẽ gi&uacute;p bạn thực hiện được m&oacute;n kem một c&aacute;ch nhanh ch&oacute;ng v&agrave; đơn giản ngay tại nh&agrave;.</span></p>', N'\images\menuItems\244374bf-4eca-42d3-8e80-b1e6e2410a87.webp', 8, 2, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (10, N'Lẩu Bò', N'<p style="box-sizing: inherit; margin-bottom: 10px; text-align: justify; color: #222222; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;"><strong style="box-sizing: inherit;">Lẩu B&ograve;</strong>&nbsp;l&agrave; m&oacute;n ăn hấp dẫn bởi hương vị dễ ăn, ph&ugrave; hợp với nhiều người. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, lẩu b&ograve; c&ograve;n l&agrave; m&oacute;n ăn chứa nhiều dưỡng chất tốt cho cơ thể người d&ugrave;ng. Dưới đ&acirc;y l&agrave; chi tiết th&agrave;nh phần nguy&ecirc;n liệu v&agrave;&nbsp;<em style="box-sizing: inherit;">c&aacute;ch nấu lẩu b&ograve;</em>&nbsp;để bạn c&oacute; thể dễ d&agrave;ng thực hiện. Đặc biệt, bạn c&ograve;n được cung cấp chi tiết tỷ lệ gia vị ướp&nbsp;<strong style="box-sizing: inherit;">b&ograve;</strong>&nbsp;để m&oacute;n ăn th&ecirc;m đậm đ&agrave;, hấp dẫn. Với&nbsp;<strong style="box-sizing: inherit;">c&aacute;ch</strong>&nbsp;nấu n&agrave;y, bạn sẽ l&agrave;m h&agrave;i l&ograve;ng vị gi&aacute;c những người thưởng thức.</p>
<p>&nbsp;</p>', N'\images\menuItems\0c709dfb-33e1-4dcb-a5df-4151edfb38ac.webp', 15, 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Image], [Price], [FoodTypeId], [CategoryId]) VALUES (11, N'Bánh chưng', N'<p>AAAAAA</p>', N'\images\menuItems\29ff7ca2-13fb-423f-a100-889caeb0db18.png', 2, 2, 4)
SET IDENTITY_INSERT [dbo].[MenuItem] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (1, 1, 2, 1, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (2, 2, 2, 2, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (3, 2, 1, 1, 5, N'Pizza')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (4, 3, 2, 2, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (5, 3, 1, 1, 5, N'Pizza')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (6, 4, 2, 2, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (7, 4, 1, 1, 5, N'Pizza')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (8, 5, 3, 4, 6, N'Salad Dầu Giấm')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (9, 6, 3, 3, 6, N'Salad Dầu Giấm')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (10, 7, 2, 1, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (11, 8, 2, 1, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (12, 8, 3, 3, 6, N'Salad Dầu Giấm')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (13, 9, 2, 1, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (14, 9, 3, 3, 6, N'Salad Dầu Giấm')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (15, 10, 2, 3, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (16, 11, 10, 3, 15, N'Lẩu Bò')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (17, 11, 5, 3, 15, N'Gà Nướng Mật Ong')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (18, 11, 4, 3, 20, N'BBQ Nướng')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (19, 12, 5, 1, 15, N'Gà Nướng Mật Ong')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (20, 12, 6, 1, 9, N'Chả giò thịt')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (21, 12, 8, 1, 2, N'Sương Sáo Mật Ong')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (22, 13, 8, 1, 2, N'Sương Sáo Mật Ong')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (23, 13, 9, 1, 8, N'Kem Khoai Môn')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (24, 14, 8, 1, 2, N'Sương Sáo Mật Ong')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (25, 14, 9, 1, 8, N'Kem Khoai Môn')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (26, 15, 4, 1, 20, N'BBQ Nướng')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (27, 16, 3, 3, 6, N'Salad Dầu Giấm')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (28, 16, 2, 2, 3, N'Bánh gạo Tokboki')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (29, 17, 6, 1, 9, N'Chả giò thịt')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (30, 18, 6, 2, 9, N'Chả giò thịt')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (31, 19, 6, 2, 9, N'Chả giò thịt')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (32, 19, 9, 1, 8, N'Kem Khoai Môn')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (33, 20, 11, 2, 2, N'Bánh chưng')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [MenuItemId], [Count], [Price], [Name]) VALUES (34, 20, 3, 1, 6, N'Salad Dầu Giấm')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeader] ON 

INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (1, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T19:16:05.4823496' AS DateTime2), 3, CAST(N'2022-01-08T20:16:00.0000000' AS DateTime2), N'Pending_Payment', N'a', N'cs_test_a1Xvs9Kw6eJhMGGg6WSGEiXeZ4F3gFVptRP4yMm2pycpWKaoCRRrS0FczW', N'Dat Nguyen', N'0888821939', N'pi_3KFHMaLzMgCIgSRr1ehYnk4k')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (2, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T21:16:06.7164469' AS DateTime2), 11, CAST(N'2022-01-08T12:19:00.0000000' AS DateTime2), N'Pending_Payment', N'ưdss', N'cs_test_b126jLiQyp1DSzNFXzt3J2vANPx5C0JAsNh6OIubb8JA7bVTa60ZZuB8Xp', N'Dat Nguyen', N'0888821939', N'pi_3KFJEkLzMgCIgSRr1uba9r1M')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (3, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T21:38:24.6819383' AS DateTime2), 11, CAST(N'2022-01-07T23:40:00.0000000' AS DateTime2), N'Pending_Payment', N'sd', N'cs_test_b1J2XjxRuKeU2dd4Sje7E1CH4RdyxVohqQhvyS2IUTHiqOQgyMgfDr01oL', N'Dat Nguyen', N'0888821939', N'pi_3KFJaTLzMgCIgSRr04lhr26I')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (4, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T21:42:55.2710879' AS DateTime2), 11, CAST(N'2022-01-01T22:44:00.0000000' AS DateTime2), N'Pending_Payment', N'ads', N'cs_test_b1Bdm3iGkLfOLsIYMWP3akjKNzfVVWc5ggGFK0dVETwHVKNLdmuFeh5h7J', N'Dat Nguyen', N'0888821939', N'pi_3KFJegLzMgCIgSRr0QsOcDxs')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (5, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T21:57:21.9079942' AS DateTime2), 24, CAST(N'2022-01-14T10:58:00.0000000' AS DateTime2), N'Pending_Payment', N'12esad', N'cs_test_a17RlNdKSoJg7a6ZlNNuxyyAJv7gwJaOUeXxATbqKOW8lH5HIFTd6taW8x', N'Dat Nguyen', N'0888821939', N'pi_3KFJsjARFKwupOUB1KbI92vB')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (6, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-07T22:16:19.3126310' AS DateTime2), 18, CAST(N'2022-01-13T23:18:00.0000000' AS DateTime2), N'Pending_Payment', N'aaaaaaaaaaaaaaaaa', N'cs_test_a17impZPrb4ottRypA45zdtUcg5DYV83LHfhz9uokTF4y5awHIhIMeQjF0', N'Dat Nguyen', N'0888821939', N'pi_3KFKB2ARFKwupOUB1DBDx0s4')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (7, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-08T12:37:45.0823282' AS DateTime2), 3, CAST(N'2022-01-09T14:39:00.0000000' AS DateTime2), N'Pending_Payment', N'nhanh nha', N'cs_test_a1jUTzLWk4Fqve78C1mz4Cbn0mBUZNDpCE4ZTwZ7N9oV3FZXW18cGsIaGh', N'dat nguyen', N'0888821939', N'pi_3KFXceARFKwupOUB1emdFqgY')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (8, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T11:03:40.2721314' AS DateTime2), 21, CAST(N'2022-01-09T01:00:00.0000000' AS DateTime2), N'Pending_Payment', N'nhanh nha má', N'cs_test_b1ic9fmAptAx0qrfcqgDIrtWxVdRh86ahPtjLQRCyhKDRuDQqCP8537Y0J', N'dat nguyen', N'0888821939', N'pi_3KFsd7ARFKwupOUB3YbHg94Q')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (9, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T11:06:32.3466780' AS DateTime2), 21, CAST(N'2022-01-09T11:06:00.0000000' AS DateTime2), N'Refunded', N'xz', N'cs_test_b16gRu5M5IazGpDH7TGw5OndTVqNrW9X7Nvya658nzGu2GnNiXhLMEk3Be', N'dat nguyen', N'0888821939', N'pi_3KFsftARFKwupOUB01RtL0ov')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (10, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:10:50.3423714' AS DateTime2), 9, CAST(N'2022-01-11T13:10:00.0000000' AS DateTime2), N'Cancelled', N'nhanh nha', N'cs_test_a1zbUFsZE5jRA1EDqg1vHsIjk121wJ1MSzjtev7goDQrX77N9UeMlO3j7H', N'dat nguyen', N'0888821939', N'pi_3KFtg7ARFKwupOUB0PUlg6M2')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (11, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:14:51.3723972' AS DateTime2), 150, CAST(N'2022-01-10T12:15:00.0000000' AS DateTime2), N'Completed', N'adsa', N'cs_test_b1DHhbX6yVRT5GwlnsVGeghow63EAXz3kqblOV1RJ3VbLP232JV9hz6ygH', N'dat nguyen', N'0888821939', N'pi_3KFtjzARFKwupOUB22DCM62F')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (12, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:16:01.0849970' AS DateTime2), 26, CAST(N'2022-01-19T14:17:00.0000000' AS DateTime2), N'Refunded', N'aa', N'cs_test_b1yooDxjjuUKMjFht1H9WSCUFz4OpmiXL9hfGUqkjglItmnKVgt85uVTaW', N'dat nguyen', N'0888821939', N'pi_3KFtl7ARFKwupOUB0Rnu2RcR')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (13, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:17:06.6934317' AS DateTime2), 10, CAST(N'2022-01-10T12:19:00.0000000' AS DateTime2), N'Pending_Payment', N'aa', N'cs_test_b1FrRa8n0KCe2iiWJfETWkZYu9ofQnaFA3RLmqBf2n1hQuAvIvLi3eNyYk', N'dat nguyen', N'0888821939', N'pi_3KFtmBARFKwupOUB1gAWS4aq')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (14, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:17:06.8780777' AS DateTime2), 10, CAST(N'2022-01-10T12:19:00.0000000' AS DateTime2), N'Cancelled', N'aa', N'cs_test_b1yKxHZf4wygPiTdxhY9su97DjIWCYxoVbCndXpy8s7FKFGzMU6vCQTyLn', N'dat nguyen', N'0888821939', N'pi_3KFtmBARFKwupOUB2Jygk2fk')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (15, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T12:18:02.5210636' AS DateTime2), 20, CAST(N'2022-01-10T00:31:00.0000000' AS DateTime2), N'Completed', N'a', N'cs_test_a13d7A9jKj3eUn44eHyRQMgAw1GNTWYUT3zO5D6UjRQnMfPxQ3vcgo5wfh', N'dat nguyen', N'0888821939', N'pi_3KFtn4ARFKwupOUB3cOHSOsW')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (16, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-09T14:57:16.6544523' AS DateTime2), 24, CAST(N'2022-01-10T14:57:00.0000000' AS DateTime2), N'Being Prepared', N'a', N'cs_test_b1nDcwJZRqCsqsrdG2QEZpFwaYlRkm1Ctls3wXaOOi3ZXxa5eGdekwLRTG', N'Dat Nguyen', N'0888821939', N'pi_3KFwHCARFKwupOUB140lz9t4')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (17, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T21:42:46.4719619' AS DateTime2), 9, CAST(N'2022-01-10T22:43:00.0000000' AS DateTime2), N'Submitted_PaymentApproved', N'as', N'cs_test_a166BGLCw2AVbgFsXZZNzExDVRcefFGUNVOF9BBra6lBZShSRVdjdM3eBv', N'dat nguyen', N'0888821939', N'pi_3KG2bbARFKwupOUB26VvhFR1')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (18, N'1447977d-9ce6-464c-858c-de9d1566b1bf', CAST(N'2022-01-09T22:13:50.4885605' AS DateTime2), 18, CAST(N'2022-01-10T23:14:00.0000000' AS DateTime2), N'Submitted_PaymentApproved', N'da', N'cs_test_a1zw0ylWKXMBzROk8cRZB68KNBh7ykOzSEToEWStzfk4fPoBMPruqCYdw6', N'Dat Nguyen', N'0888821939', N'pi_3KG35fARFKwupOUB1dJaQ8Nw')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (19, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-09T23:44:40.1810639' AS DateTime2), 26, CAST(N'2022-01-10T13:44:00.0000000' AS DateTime2), N'Completed', N'nhanh nha má', N'cs_test_b1LhV1Xuahm3DNPvMt8rkT6iuoXe33yAp0xw4bHfJcYtVinpVQjIFQRb8K', N'dat nguyen', N'0888821939', N'pi_3KG4VZARFKwupOUB3XstiEo6')
INSERT [dbo].[OrderHeader] ([Id], [UserId], [OrderDate], [OrderTotal], [PickUpTime], [Status], [Comments], [SessionId], [PickupName], [PhoneNumber], [PaymentIntentId]) VALUES (20, N'f0a0356a-9838-4df8-99fe-de96294d4f16', CAST(N'2022-01-10T09:48:38.2225348' AS DateTime2), 10, CAST(N'2022-01-11T11:48:00.0000000' AS DateTime2), N'Ready for Pickup', N'Nhanh nha', N'cs_test_b1hdhgt9SjHmFqjZrQvR55pozSswFXv9rM2juyEWJDMVmZXAp77tGgtwWa', N'dat nguyen', N'0888821939', N'pi_3KGDw3ARFKwupOUB03pJmj6x')
SET IDENTITY_INSERT [dbo].[OrderHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCart] ON 

INSERT [dbo].[ShoppingCart] ([Id], [MenuItemId], [Count], [ApplicationUserId]) VALUES (3, 6, 1, N'41f5c8ca-122b-4449-b766-366eb23bae02')
SET IDENTITY_INSERT [dbo].[ShoppingCart] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
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
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_Category_CategoryId]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_FoodType_FoodTypeId] FOREIGN KEY([FoodTypeId])
REFERENCES [dbo].[FoodType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_FoodType_FoodTypeId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_MenuItem_MenuItemId] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[MenuItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_MenuItem_MenuItemId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeader_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeader] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeader_OrderId]
GO
ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeader_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHeader] CHECK CONSTRAINT [FK_OrderHeader_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_MenuItem_MenuItemId] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[MenuItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_MenuItem_MenuItemId]
GO
