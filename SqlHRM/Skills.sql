USE [HR]
GO

/****** Object:  Table [dbo].[Skills]    Script Date: 6/12/2019 2:23:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Skills](
	[SkillId] [int] NOT NULL,
	[SkillName] [nvarchar](50) NOT NULL,
	[SkillTypedId] [int] NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Skills]  WITH CHECK ADD  CONSTRAINT [FK_Skills_SkillType] FOREIGN KEY([SkillTypedId])
REFERENCES [dbo].[SkillType] ([SkillTypeId])
GO

ALTER TABLE [dbo].[Skills] CHECK CONSTRAINT [FK_Skills_SkillType]
GO


