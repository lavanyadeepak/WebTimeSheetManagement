Create Proc [dbo].[Usp_GetAdminIDbyUserID]
@UserID int
as
begin
SELECT 
      [AssignToAdmin]
  FROM [dbo].[AssignedRoles] where RegistrationID = @UserID
end
