USE [HR]
GO

/****** Object:  Table [dbo].[ApplicantSkills]    Script Date: 6/12/2019 2:24:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ApplicantSkills](
	[ApplicantId] [int] NOT NULL,
	[SkillId] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ApplicantSkills]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantSkills_EmployeeApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[EmployeeApplicant] ([ApplicantId])
GO

ALTER TABLE [dbo].[ApplicantSkills] CHECK CONSTRAINT [FK_ApplicantSkills_EmployeeApplicant]
GO

ALTER TABLE [dbo].[ApplicantSkills]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantSkills_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO

ALTER TABLE [dbo].[ApplicantSkills] CHECK CONSTRAINT [FK_ApplicantSkills_Skills]
GO


