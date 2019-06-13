USE [HR]
GO

/****** Object:  Table [dbo].[Administrator]    Script Date: 6/12/2019 2:22:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Administrator](
	[UserId] [int] NULL,
	[AdministratorId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[MiddleName] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[State] [nvarchar](20) NOT NULL,
	[Phone] [int] NOT NULL,
	[HomePhone] [int] NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Gender] [char](10) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[MaritalStatus] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[AdministratorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Administrator]  WITH CHECK ADD  CONSTRAINT [FK_Administrator_UserAuthentication] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAuthentication] ([UserId])
GO

ALTER TABLE [dbo].[Administrator] CHECK CONSTRAINT [FK_Administrator_UserAuthentication]
GO


