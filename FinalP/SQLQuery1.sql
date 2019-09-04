USE [HRMS]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[spGetAllVac]
		@VacancyId = 0

SELECT	@return_value as 'Return Value'

GO


select * 
into #temp
from ReceivedAppDetails r join Post p on p.PostId=r.PostId
select * from #temp
drop table #temp