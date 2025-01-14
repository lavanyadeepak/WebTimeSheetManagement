CREATE PROCEDURE [dbo].[Populate_dbo_DescriptionTB]
AS
BEGIN
/*
	Table's data:    [dbo].[DescriptionTB]
	Data Source:     [DESKTOP-S4VLAOQ].[TimesheetDB]
	Created on:      4/29/2021 2:21:55 PM
	Scripted by:     DESKTOP-S4VLAOQ\Alacer02
	Generated by:    Data Script Writer - ver. 2.3.0.0
	GitHub repo URL: https://github.com/SQLPlayer/DataScriptWriter/
*/
PRINT 'Populating data into [dbo].[DescriptionTB]';

IF OBJECT_ID('tempdb.dbo.#dbo_DescriptionTB') IS NOT NULL DROP TABLE #dbo_DescriptionTB;
SELECT [DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID] INTO #dbo_DescriptionTB FROM [dbo].[DescriptionTB] WHERE 0=1;

SET IDENTITY_INSERT #dbo_DescriptionTB ON;

INSERT INTO #dbo_DescriptionTB 
 ([DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID])
SELECT CAST([DescriptionID] AS int) AS [DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID] FROM 
(VALUES
	  (1,	'Demo',	1,	1,	'20180511 00:58:19.697',	47)
	, (2,	null,	1,	2,	'20210429 13:11:47.933',	47)
) as v ([DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID]);


SET IDENTITY_INSERT #dbo_DescriptionTB OFF;

SET IDENTITY_INSERT [dbo].[DescriptionTB] ON;


WITH cte_data as (SELECT CAST([DescriptionID] AS int) AS [DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID] FROM [#dbo_DescriptionTB])
MERGE [dbo].[DescriptionTB] as t
USING cte_data as s
	ON t.[DescriptionID] = s.[DescriptionID]
WHEN NOT MATCHED BY target THEN
	INSERT ([DescriptionID], [Description], [ProjectID], [TimeSheetMasterID], [CreatedOn], [UserID])
	VALUES (s.[DescriptionID], s.[Description], s.[ProjectID], s.[TimeSheetMasterID], s.[CreatedOn], s.[UserID])
WHEN MATCHED THEN 
	UPDATE SET 
	[Description] = s.[Description], [ProjectID] = s.[ProjectID], [TimeSheetMasterID] = s.[TimeSheetMasterID], [CreatedOn] = s.[CreatedOn], [UserID] = s.[UserID]
WHEN NOT MATCHED BY source THEN
	DELETE
;

SET IDENTITY_INSERT [dbo].[DescriptionTB] OFF;

DROP TABLE #dbo_DescriptionTB;

-- End data of table: [dbo].[DescriptionTB] --
END
GO
