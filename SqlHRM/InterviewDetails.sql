USE [HR]
GO

/****** Object:  Table [dbo].[InteriewDetails]    Script Date: 6/12/2019 2:19:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InteriewDetails](
	[InterviewId] [int] NOT NULL,
	[InterviewBy] [nvarchar](50) NOT NULL,
	[Selected] [bit] NOT NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_InteriewDetails] PRIMARY KEY CLUSTERED 
(
	[InterviewBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[InteriewDetails]  WITH CHECK ADD  CONSTRAINT [FK_InteriewDetails_InterviewSchedule] FOREIGN KEY([InterviewId])
REFERENCES [dbo].[InterviewSchedule] ([InterviewId])
GO

ALTER TABLE [dbo].[InteriewDetails] CHECK CONSTRAINT [FK_InteriewDetails_InterviewSchedule]
GO


