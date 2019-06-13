USE [HR]
GO

/****** Object:  Table [dbo].[EmployeerContact]    Script Date: 6/12/2019 2:21:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeerContact](
	[UserId] [int] NULL,
	[ClientId] [int] NULL,
	[ContactId] [int] NOT NULL,
	[ContactName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeerContact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EmployeerContact]  WITH CHECK ADD  CONSTRAINT [FK_EmployeerContact_EmployeeClient] FOREIGN KEY([ClientId])
REFERENCES [dbo].[EmployeeClient] ([ClientId])
GO

ALTER TABLE [dbo].[EmployeerContact] CHECK CONSTRAINT [FK_EmployeerContact_EmployeeClient]
GO

ALTER TABLE [dbo].[EmployeerContact]  WITH CHECK ADD  CONSTRAINT [FK_EmployeerContact_UserAuthentication] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAuthentication] ([UserId])
GO

ALTER TABLE [dbo].[EmployeerContact] CHECK CONSTRAINT [FK_EmployeerContact_UserAuthentication]
GO


