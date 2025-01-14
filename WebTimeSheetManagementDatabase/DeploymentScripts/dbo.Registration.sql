CREATE PROCEDURE [dbo].[Populate_dbo_Registration]
AS
BEGIN
/*
	Table's data:    [dbo].[Registration]
	Data Source:     [DESKTOP-S4VLAOQ].[TimesheetDB]
	Created on:      4/29/2021 2:21:57 PM
	Scripted by:     DESKTOP-S4VLAOQ\Alacer02
	Generated by:    Data Script Writer - ver. 2.3.0.0
	GitHub repo URL: https://github.com/SQLPlayer/DataScriptWriter/
*/
PRINT 'Populating data into [dbo].[Registration]';

IF OBJECT_ID('tempdb.dbo.#dbo_Registration') IS NOT NULL DROP TABLE #dbo_Registration;
SELECT [RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword] INTO #dbo_Registration FROM [dbo].[Registration] WHERE 0=1;

SET IDENTITY_INSERT #dbo_Registration ON;

INSERT INTO #dbo_Registration 
 ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword])
SELECT CAST([RegistrationID] AS int) AS [RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword] FROM 
(VALUES
	  (1,	'SuperAdmin',	'9998887770',	'SuperAdmin@gmail.com',	'SuperAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900911 00:00:00.000',	3,	'20170903 10:39:28.357',	'EMP1',	null,	null)
	, (2,	'Admin',	'9998887770',	'Admin@gg.com',	'Admin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900910 00:00:00.000',	1,	'20170823 11:08:41.257',	'EMP2',	null,	null)
	, (3,	'Aatish Admin',	'9998887770',	'aatish.dhatrak@demo.com',	'AatishAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19790307 00:00:00.000',	1,	'20171011 23:15:45.663',	'EMP3',	null,	null)
	, (4,	'Neha Admin',	'9998887770',	'neha.bhagwat@demo.com',	'NehaAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19841026 00:00:00.000',	1,	'20171011 23:25:01.250',	'EMP4',	null,	null)
	, (5,	'Anuj Sondekar',	'9998887770',	'anuj.sondekar@demo.com',	'AnujSondekar',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19930501 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP5',	'20180422',	null)
	, (6,	'Firoz Shaikh',	'9998887770',	'firoz.shaikh@demo.com',	'FirozShaikh',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19930602 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP6',	'20180422',	null)
	, (7,	'Mahesh Kakad',	'9998887770',	'mahesh.kakad@demo.com',	'MaheshKakad',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19881214 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP7',	'20180422',	null)
	, (8,	'Tejal Rajgor',	'9998887770',	'tejal.rajgor@demo.com',	'TejalRajgor',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19901213 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP8',	'20180422',	null)
	, (9,	'Pratik Patil',	'9998887770',	'pratik.patil@demo.com',	'PratikPatil',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19891206 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP9',	'20180422',	null)
	, (10,	'Kinjal Parikh',	'9998887770',	'kinjal.parikh@demo.com',	'KinjalParikh',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19911028 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP10',	'20180422',	null)
	, (11,	'Leshu Samanta',	'9998887770',	'leshu.majumdar@demo.com',	'LeshuSamanta',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19880717 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP11',	'20180422',	null)
	, (12,	'Vaishnavi Iyer',	'9998887770',	'vaishnavi.iyer@demo.com',	'VaishnaviIyer',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19960418 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP12',	'20180422',	null)
	, (13,	'Manjiri Sawant',	'9998887770',	'manjiri.sawant@demo.com',	'ManjiriSawant',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19900319 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP13',	'20180422',	null)
	, (14,	'Sukanya Iyer',	'9998887770',	'sukanya.iyer@demo.com',	'SukanyaIyer',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19950517 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP14',	'20180422',	null)
	, (15,	'Sucheta Kirkire',	'9998887770',	'sucheta.kirkire@demo.com',	'SuchetaKirkire',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19880204 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP15',	'20180422',	null)
	, (16,	'Hemashree Patil',	'9998887770',	'hemashree.patil@demo.com',	'HemashreePatil',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19881128 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP16',	'20180422',	null)
	, (17,	'Pushpa Gohil',	'9998887770',	'pushpa.gohil@demo.com',	'PushpaGohil',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19840608 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP17',	'20180422',	null)
	, (18,	'Ramakrishnan Ramaswamy',	'9998887770',	'krishnan.ramaswamy@demo.com',	'Ramakrishnan',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19881115 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP18',	'20180422',	null)
	, (19,	'Amol Patil',	'9998887770',	'amol.patil@demo.com',	'AmolPatil',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900728 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP19',	'20180422',	null)
	, (20,	'Tanmay More',	'9998887770',	'tanmay.more@demo.com',	'TanmayMore',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900821 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP20',	'20180422',	null)
	, (21,	'Faisal sheikh',	'9998887770',	'faisal.sheikh@demo.com',	'faisalsheikh',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19931208 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP21',	'20180422',	null)
	, (22,	'Ganesh Hegde',	'9998887770',	'ganesh.hegde@demo.com',	'GaneshHegde',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19940426 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP22',	'20180422',	null)
	, (23,	'Nilesh Rajbhar',	'9998887770',	'nilesh.rajbhar@demo.com',	'NileshRajbhar',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19950805 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP23',	'20180422',	null)
	, (24,	'Aniket Dhumale',	'9998887770',	'aniket.dhumale@demo.com',	'AniketDhumale',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19961126 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP24',	'20180422',	null)
	, (25,	'Meenakshi Vaishya',	'9998887770',	'meenakshi.vaishya@demo.com',	'MeenakshiVaishya',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19921102 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP25',	'20180422',	null)
	, (26,	'M Khan',	'9998887770',	'm.Khan@demo.com',	'MKhan',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	null,	2,	'20171011 23:42:49.600',	'EMP26',	'20180422',	null)
	, (27,	'Neha Bhagwat',	'9998887770',	'neha.bhagwat@demo.com',	'NehaBhagwat',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19841026 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP27',	'20180422',	null)
	, (28,	'M Challa',	'9998887770',	'meherzad.challa@demo.com',	'MChalla',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19741206 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP28',	'20180422',	null)
	, (29,	'SGN',	'9998887770',	'narasimhan@demo.com',	'narasimhan',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19581204 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP29',	'20180422',	null)
	, (30,	'Prerana Khetmal',	'9998887770',	'prerana.khetmal@demo.com',	'PreranaKhetmal',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19890904 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP30',	'20180422',	null)
	, (31,	'Salomi Jaria',	'9998887770',	'salomi.jaria@demo.com',	'SalomiJaria',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19860128 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP31',	'20180422',	null)
	, (32,	'Aatish Kumar Dhatrak',	'9998887770',	'aatish.dhatrak@demo.com',	'AatishKumar',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19790307 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP32',	'20180422',	null)
	, (33,	'Srinivasa Nadgowda',	'9998887770',	'shrinivas@nanabhoyms.com',	'Srinivasa',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19760416 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP33',	'20180422',	null)
	, (34,	'Deepak Khatija',	'9998887770',	'deepak.khatija@nanabhoyms.com',	'DeepakKhatija',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19920817 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP34',	'20180422',	null)
	, (35,	'Jayanthi Hegde',	'9998887770',	'jayanthi.hegde@demo.com',	'JayanthiHegde',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19660817 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP35',	'20180422',	null)
	, (36,	'Sushma Waghmare',	'9998887770',	'sushma.waghmare@demo.com',	'Sushma',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19920407 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP36',	'20180422',	null)
	, (37,	'Aishwarya Bhagwat',	'9998887770',	'aishwarya.bhagwat@demo.com',	'Aishwarya',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19920620 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP37',	'20180422',	null)
	, (38,	'Jyoti Gupta',	'9998887770',	'jyoti.gupta@demo.com',	'JyotiGupta',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19930112 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP38',	'20180422',	null)
	, (39,	'Doryodhan Jadhav',	'9998887770',	'dooryodhan.jadhav@demo.com',	'Doryodhan',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19920527 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP39',	'20180422',	null)
	, (40,	'Shankar Iyer',	'9998887770',	'shankar@nanabhoyms.com',	'Shankar',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19650818 00:00:00.000',	2,	'20171011 23:15:45.663',	'EMP40',	'20180422',	null)
	, (41,	'Nidhi Parikh',	'9998887770',	'nidhi.parikh@demo.com ',	'NidhiParikh',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'20171011 23:15:45.663',	2,	'20171011 23:15:45.663',	'EMP41',	'20180422',	null)
	, (42,	'SGN Admin',	'9998887770',	'narasimhan@demo.com',	'SGNAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19581204 00:00:00.000',	1,	'20171011 23:42:49.600',	'EMP42',	null,	null)
	, (43,	'Vinod Tailor',	'9998887770',	'VinodTailor@demo.com',	'VinodTailor',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'20171011 23:15:45.663',	2,	null,	'EMP43',	'20180422',	null)
	, (44,	'Salomi Admin',	'9998887770',	'salomi.jaria@demo.com',	'SalomiAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'F',	'19860128 00:00:00.000',	1,	'20171011 23:42:49.600',	'EMP44',	null,	null)
	, (45,	'Shankar Admin',	'9998887770',	'shankar@nanabhoyms.com',	'ShankarAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19650818 00:00:00.000',	1,	'20171011 23:15:45.663',	'EMP45',	null,	null)
	, (46,	'Srinivasa Admin',	'9998887770',	'shrinivas@nanabhoyms.com',	'SrinivasaAdmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19760416 00:00:00.000',	1,	'20171011 23:15:45.663',	'EMP46',	null,	null)
	, (47,	'Sai',	'9998887770',	'demo@gmail.com',	'demouser',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	null,	2,	'20171016 23:45:37.033',	'EMP47',	'20180422',	null)
	, (48,	'demoadmin',	'9998887770',	'demo@gmail.com',	'demoadmin',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	null,	1,	'20171017 00:05:00.917',	'EMP48',	null,	null)
	, (49,	'Demo',	'9998887770',	'demo@gmail.com',	'demodemo',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19661206 00:00:00.000',	2,	'20171208 08:53:32.403',	'EMP49',	'20180422',	null)
	, (50,	'adds',	'9998887770',	'ss@gg.com',	'demodeep',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19800101 00:00:00.000',	2,	'20180422 14:49:23.337',	'EMP50',	'20180422',	null)
	, (51,	'Demox',	'9998887770',	'demox@gg.com',	'demoxx',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900911 00:00:00.000',	2,	'20180422 15:05:02.580',	'EMP51',	'20180422',	null)
	, (52,	'Demoy',	'9998887770',	'mahesh.kakad@demo.com',	'demoyy',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19881214 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP52',	'20180422',	null)
	, (53,	'Demoz',	'9998887770',	'mahesh.kakad@demo.com',	'demozz',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19881214 00:00:00.000',	2,	'20171011 23:42:49.600',	'EMP53',	'20180422',	null)
	, (54,	'DEMOAA',	'9998887770',	'demoaa@gg.com',	'DemoAA',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	'19900401 00:00:00.000',	2,	'20180422 15:38:05.893',	'EMP54',	'20180422',	null)
	, (55,	'demoxx',	'9998887770',	'demoadminx@gg.mm.vom',	'demoadminx',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	null,	1,	'20180422 15:44:12.520',	null,	null,	null)
	, (56,	'MessageRegistration',	'9998887770',	'MessageRegistration@gg.com',	'MessageRegistration',	'EcMeUuVrv6U89Ul/imhLmw==',	'EcMeUuVrv6U89Ul/imhLmw==',	'M',	null,	1,	'20180422 15:46:59.623',	null,	null,	null)
) as v ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword]);


SET IDENTITY_INSERT #dbo_Registration OFF;

SET IDENTITY_INSERT [dbo].[Registration] ON;


WITH cte_data as (SELECT CAST([RegistrationID] AS int) AS [RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword] FROM [#dbo_Registration])
MERGE [dbo].[Registration] as t
USING cte_data as s
	ON t.[RegistrationID] = s.[RegistrationID]
WHEN NOT MATCHED BY target THEN
	INSERT ([RegistrationID], [Name], [Mobileno], [EmailID], [Username], [Password], [ConfirmPassword], [Gender], [Birthdate], [RoleID], [CreatedOn], [EmployeeID], [DateofJoining], [ForceChangePassword])
	VALUES (s.[RegistrationID], s.[Name], s.[Mobileno], s.[EmailID], s.[Username], s.[Password], s.[ConfirmPassword], s.[Gender], s.[Birthdate], s.[RoleID], s.[CreatedOn], s.[EmployeeID], s.[DateofJoining], s.[ForceChangePassword])
WHEN MATCHED THEN 
	UPDATE SET 
	[Name] = s.[Name], [Mobileno] = s.[Mobileno], [EmailID] = s.[EmailID], [Username] = s.[Username], [Password] = s.[Password], [ConfirmPassword] = s.[ConfirmPassword], [Gender] = s.[Gender], [Birthdate] = s.[Birthdate], [RoleID] = s.[RoleID], [CreatedOn] = s.[CreatedOn], [EmployeeID] = s.[EmployeeID], [DateofJoining] = s.[DateofJoining], [ForceChangePassword] = s.[ForceChangePassword]
WHEN NOT MATCHED BY source THEN
	DELETE
;

SET IDENTITY_INSERT [dbo].[Registration] OFF;

DROP TABLE #dbo_Registration;

-- End data of table: [dbo].[Registration] --
END
GO
