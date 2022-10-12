Create proc [dbo].[Usp_GetUsersCount]
as
begin
Select Count (1) as UsersCount FROM [dbo].[Registration]where RoleID =2
end
