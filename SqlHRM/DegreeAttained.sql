USE [HR]
GO

/****** Object:  Table [dbo].[DegreeAttained]    Script Date: 6/12/2019 2:23:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DegreeAttained](
	[Degree] [nvarchar](50) NOT NULL,
	[SortOrder] [int] NULL,
 CONSTRAINT [PK_DegreeAttained] PRIMARY KEY CLUSTERED 
(
	[Degree] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


