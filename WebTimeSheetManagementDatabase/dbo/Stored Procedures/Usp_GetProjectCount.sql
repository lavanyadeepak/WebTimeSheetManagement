Create proc [dbo].[Usp_GetProjectCount]
as
begin
  Select Count (1) as ProjectCount FROM [dbo].[ProjectMaster]
  end
