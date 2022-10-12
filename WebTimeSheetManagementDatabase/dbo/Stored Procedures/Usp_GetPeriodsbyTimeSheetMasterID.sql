CREATE proc [dbo].[Usp_GetPeriodsbyTimeSheetMasterID]      
@TimeSheetMasterID int      
as      
begin      
      
SELECT       
      CONVERT(varchar(10),T.Period) as Period    
  FROM [dbo].[TimeSheetDetails] T       
  inner join TimeSheetAuditTB TA on T.TimeSheetMasterID = TA.TimeSheetID  
  where TimeSheetMasterID =@TimeSheetMasterID       
  group by Period      
end
