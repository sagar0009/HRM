USE [HR]
GO

/****** Object:  Table [dbo].[Evaluation]    Script Date: 6/12/2019 2:17:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Evaluation](
	[ApplicantId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[RemarksBy] [nvarchar](50) NOT NULL,
	[Remarks] [text] NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[RemarksBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_EmployeeApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[EmployeeApplicant] ([ApplicantId])
GO

ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_EmployeeApplicant]
GO

ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO

ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Job]
GO


