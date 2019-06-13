USE [HR]
GO

/****** Object:  Table [dbo].[JobSkillRequire]    Script Date: 6/12/2019 2:20:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobSkillRequire](
	[JobId] [int] NOT NULL,
	[SkillId] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[JobSkillRequire]  WITH CHECK ADD  CONSTRAINT [FK_JobSkillRequire_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO

ALTER TABLE [dbo].[JobSkillRequire] CHECK CONSTRAINT [FK_JobSkillRequire_Job]
GO

ALTER TABLE [dbo].[JobSkillRequire]  WITH CHECK ADD  CONSTRAINT [FK_JobSkillRequire_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO

ALTER TABLE [dbo].[JobSkillRequire] CHECK CONSTRAINT [FK_JobSkillRequire_Skills]
GO


