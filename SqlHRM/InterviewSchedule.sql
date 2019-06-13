USE [HR]
GO

/****** Object:  Table [dbo].[InterviewSchedule]    Script Date: 6/12/2019 2:19:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InterviewSchedule](
	[ApplicantId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[InterviewId] [int] NOT NULL,
	[InterviewType] [nvarchar](50) NOT NULL,
	[InterviewDate] [date] NOT NULL,
	[InterviewTime] [time](7) NOT NULL,
 CONSTRAINT [PK_InterviewSchedule] PRIMARY KEY CLUSTERED 
(
	[InterviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[InterviewSchedule]  WITH CHECK ADD  CONSTRAINT [FK_InterviewSchedule_EmployeeApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[EmployeeApplicant] ([ApplicantId])
GO

ALTER TABLE [dbo].[InterviewSchedule] CHECK CONSTRAINT [FK_InterviewSchedule_EmployeeApplicant]
GO

ALTER TABLE [dbo].[InterviewSchedule]  WITH CHECK ADD  CONSTRAINT [FK_InterviewSchedule_Job] FOREIGN KEY([InterviewId])
REFERENCES [dbo].[Job] ([JobId])
GO

ALTER TABLE [dbo].[InterviewSchedule] CHECK CONSTRAINT [FK_InterviewSchedule_Job]
GO


