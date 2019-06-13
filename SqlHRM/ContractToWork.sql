USE [HR]
GO

/****** Object:  Table [dbo].[ContractToWork]    Script Date: 6/12/2019 2:18:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContractToWork](
	[ApplicantId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Active] [bit] NOT NULL,
	[NegotiatedTerms] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ContractToWork]  WITH CHECK ADD  CONSTRAINT [FK_ContractToWork_EmployeeApplicant] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[EmployeeApplicant] ([ApplicantId])
GO

ALTER TABLE [dbo].[ContractToWork] CHECK CONSTRAINT [FK_ContractToWork_EmployeeApplicant]
GO

ALTER TABLE [dbo].[ContractToWork]  WITH CHECK ADD  CONSTRAINT [FK_ContractToWork_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([JobId])
GO

ALTER TABLE [dbo].[ContractToWork] CHECK CONSTRAINT [FK_ContractToWork_Job]
GO


