CREATE PROCEDURE [dbo].[Populate_dbo_ExpenseAuditTB]
AS
BEGIN
/*
	Table's data:    [dbo].[ExpenseAuditTB]
	Data Source:     [DESKTOP-S4VLAOQ].[TimesheetDB]
	Created on:      4/29/2021 2:21:56 PM
	Scripted by:     DESKTOP-S4VLAOQ\Alacer02
	Generated by:    Data Script Writer - ver. 2.3.0.0
	GitHub repo URL: https://github.com/SQLPlayer/DataScriptWriter/
*/
PRINT 'Populating data into [dbo].[ExpenseAuditTB]';

IF OBJECT_ID('tempdb.dbo.#dbo_ExpenseAuditTB') IS NOT NULL DROP TABLE #dbo_ExpenseAuditTB;
SELECT [ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID] INTO #dbo_ExpenseAuditTB FROM [dbo].[ExpenseAuditTB] WHERE 0=1;

SET IDENTITY_INSERT #dbo_ExpenseAuditTB ON;

INSERT INTO #dbo_ExpenseAuditTB 
 ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID])
SELECT CAST([ApprovaExpenselLogID] AS int) AS [ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID] FROM 
(VALUES
	  (5,	48,	'20180506 18:54:42.400',	'20180506 18:54:42.397',	'',	1,	3,	47)
	, (6,	48,	'20180510 00:27:16.533',	'20180506 19:16:10.890',	'ok',	2,	3,	47)
	, (7,	48,	'20180511 00:59:46.673',	'20180511 00:59:46.673',	'',	1,	1,	47)
	, (8,	48,	'20180511 01:02:13.320',	'20180511 01:02:13.320',	'Approved ',	2,	1,	47)
) as v ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID]);


SET IDENTITY_INSERT #dbo_ExpenseAuditTB OFF;

SET IDENTITY_INSERT [dbo].[ExpenseAuditTB] ON;


WITH cte_data as (SELECT CAST([ApprovaExpenselLogID] AS int) AS [ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID] FROM [#dbo_ExpenseAuditTB])
MERGE [dbo].[ExpenseAuditTB] as t
USING cte_data as s
	ON t.[ApprovaExpenselLogID] = s.[ApprovaExpenselLogID]
WHEN NOT MATCHED BY target THEN
	INSERT ([ApprovaExpenselLogID], [ApprovalUser], [ProcessedDate], [CreatedOn], [Comment], [Status], [ExpenseID], [UserID])
	VALUES (s.[ApprovaExpenselLogID], s.[ApprovalUser], s.[ProcessedDate], s.[CreatedOn], s.[Comment], s.[Status], s.[ExpenseID], s.[UserID])
WHEN MATCHED THEN 
	UPDATE SET 
	[ApprovalUser] = s.[ApprovalUser], [ProcessedDate] = s.[ProcessedDate], [CreatedOn] = s.[CreatedOn], [Comment] = s.[Comment], [Status] = s.[Status], [ExpenseID] = s.[ExpenseID], [UserID] = s.[UserID]
WHEN NOT MATCHED BY source THEN
	DELETE
;

SET IDENTITY_INSERT [dbo].[ExpenseAuditTB] OFF;

DROP TABLE #dbo_ExpenseAuditTB;

-- End data of table: [dbo].[ExpenseAuditTB] --
END
GO
