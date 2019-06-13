USE [HR]
GO

/****** Object:  Table [dbo].[SkillType]    Script Date: 6/12/2019 2:22:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SkillType](
	[SkillTypeId] [int] NOT NULL,
	[SkillTypeName] [nvarchar](50) NOT NULL,
	[Information] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SkillType] PRIMARY KEY CLUSTERED 
(
	[SkillTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


