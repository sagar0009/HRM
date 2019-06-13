USE [HR]
GO

/****** Object:  Table [dbo].[EmployeeApplicant]    Script Date: 6/12/2019 2:24:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EmployeeApplicant](
	[UserId] [int] NOT NULL,
	[ApplicantId] [int] NOT NULL,
	[FirsrName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[HomePhone] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Gender] [char](10) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[MaritalStatus] [nvarchar](50) NOT NULL,
	[Degree] [nvarchar](50) NOT NULL,
	[Experience] [int] NOT NULL,
	[ResumeSize] [int] NOT NULL,
	[Resume] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeApplicant] PRIMARY KEY CLUSTERED 
(
	[ApplicantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[EmployeeApplicant]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeApplicant_DegreeAttained] FOREIGN KEY([Degree])
REFERENCES [dbo].[DegreeAttained] ([Degree])
GO

ALTER TABLE [dbo].[EmployeeApplicant] CHECK CONSTRAINT [FK_EmployeeApplicant_DegreeAttained]
GO

ALTER TABLE [dbo].[EmployeeApplicant]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeApplicant_EmployeeApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[EmployeeApplicant] ([ApplicantId])
GO

ALTER TABLE [dbo].[EmployeeApplicant] CHECK CONSTRAINT [FK_EmployeeApplicant_EmployeeApplicant]
GO

ALTER TABLE [dbo].[EmployeeApplicant]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeApplicant_UserAuthentication] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAuthentication] ([UserId])
GO

ALTER TABLE [dbo].[EmployeeApplicant] CHECK CONSTRAINT [FK_EmployeeApplicant_UserAuthentication]
GO

ALTER TABLE [dbo].[EmployeeApplicant]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeApplicant_WorkExperience] FOREIGN KEY([Experience])
REFERENCES [dbo].[WorkExperience] ([ExperienceId])
GO

ALTER TABLE [dbo].[EmployeeApplicant] CHECK CONSTRAINT [FK_EmployeeApplicant_WorkExperience]
GO


