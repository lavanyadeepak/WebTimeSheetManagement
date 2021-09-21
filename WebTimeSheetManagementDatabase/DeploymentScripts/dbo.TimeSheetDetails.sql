CREATE PROCEDURE [dbo].[Populate_dbo_TimeSheetDetails]
AS
BEGIN
/*
	Table's data:    [dbo].[TimeSheetDetails]
	Data Source:     [DESKTOP-S4VLAOQ].[TimesheetDB]
	Created on:      4/29/2021 2:21:58 PM
	Scripted by:     DESKTOP-S4VLAOQ\Alacer02
	Generated by:    Data Script Writer - ver. 2.3.0.0
	GitHub repo URL: https://github.com/SQLPlayer/DataScriptWriter/
*/
PRINT 'Populating data into [dbo].[TimeSheetDetails]';

IF OBJECT_ID('tempdb.dbo.#dbo_TimeSheetDetails') IS NOT NULL DROP TABLE #dbo_TimeSheetDetails;
SELECT [TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours] INTO #dbo_TimeSheetDetails FROM [dbo].[TimeSheetDetails] WHERE 0=1;

SET IDENTITY_INSERT #dbo_TimeSheetDetails ON;

INSERT INTO #dbo_TimeSheetDetails 
 ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours])
SELECT CAST([TimeSheetID] AS int) AS [TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours] FROM 
(VALUES
	  (1,	'Sunday',	5,	'20180506',	1,	47,	'20180511 00:58:19.663',	1,	null)
	, (3,	'Tuesday',	5,	'20180508',	1,	47,	'20180511 00:58:19.680',	1,	null)
	, (4,	'Wednesday',	5,	'20180509',	1,	47,	'20180511 00:58:19.683',	1,	null)
	, (5,	'Thursday',	5,	'20180510',	1,	47,	'20180511 00:58:19.687',	1,	null)
	, (6,	'Friday',	5,	'20180511',	1,	47,	'20180511 00:58:19.687',	1,	null)
	, (7,	'Saturday',	5,	'20180512',	1,	47,	'20180511 00:58:19.693',	1,	null)
	, (8,	'Sunday',	0,	'20210418',	1,	47,	'20210429 13:11:47.920',	2,	null)
	, (9,	'Monday',	9,	'20210419',	1,	47,	'20210429 13:11:47.927',	2,	null)
	, (10,	'Tuesday',	9,	'20210420',	1,	47,	'20210429 13:11:47.927',	2,	null)
	, (11,	'Wednesday',	9,	'20210421',	1,	47,	'20210429 13:11:47.927',	2,	null)
	, (12,	'Thursday',	9,	'20210422',	1,	47,	'20210429 13:11:47.930',	2,	null)
	, (13,	'Friday',	9,	'20210423',	1,	47,	'20210429 13:11:47.930',	2,	null)
	, (14,	'Saturday',	0,	'20210424',	1,	47,	'20210429 13:11:47.930',	2,	null)
) as v ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours]);


SET IDENTITY_INSERT #dbo_TimeSheetDetails OFF;

SET IDENTITY_INSERT [dbo].[TimeSheetDetails] ON;


WITH cte_data as (SELECT CAST([TimeSheetID] AS int) AS [TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours] FROM [#dbo_TimeSheetDetails])
MERGE [dbo].[TimeSheetDetails] as t
USING cte_data as s
	ON t.[TimeSheetID] = s.[TimeSheetID]
WHEN NOT MATCHED BY target THEN
	INSERT ([TimeSheetID], [DaysofWeek], [Hours], [Period], [ProjectID], [UserID], [CreatedOn], [TimeSheetMasterID], [TotalHours])
	VALUES (s.[TimeSheetID], s.[DaysofWeek], s.[Hours], s.[Period], s.[ProjectID], s.[UserID], s.[CreatedOn], s.[TimeSheetMasterID], s.[TotalHours])
WHEN MATCHED THEN 
	UPDATE SET 
	[DaysofWeek] = s.[DaysofWeek], [Hours] = s.[Hours], [Period] = s.[Period], [ProjectID] = s.[ProjectID], [UserID] = s.[UserID], [CreatedOn] = s.[CreatedOn], [TimeSheetMasterID] = s.[TimeSheetMasterID], [TotalHours] = s.[TotalHours]
WHEN NOT MATCHED BY source THEN
	DELETE
;

SET IDENTITY_INSERT [dbo].[TimeSheetDetails] OFF;

DROP TABLE #dbo_TimeSheetDetails;

-- End data of table: [dbo].[TimeSheetDetails] --
END
GO