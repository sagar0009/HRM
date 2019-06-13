USE [HR]
GO

/****** Object:  Table [dbo].[Job]    Script Date: 6/12/2019 2:21:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job](
	[ContactId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Open] [bit] NOT NULL,
	[ExperienceRequest] [int] NOT NULL,
	[VacanciesNo] [int] NOT NULL,
	[JobDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_EmployeerContact] FOREIGN KEY([ContactId])
REFERENCES [dbo].[EmployeerContact] ([ContactId])
GO

ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_EmployeerContact]
GO

ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_WorkExperience] FOREIGN KEY([ExperienceRequest])
REFERENCES [dbo].[WorkExperience] ([ExperienceId])
GO

ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_WorkExperience]
GO


