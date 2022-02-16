-- <Migration ID="97578888-d1ba-4bd2-8197-82e1f82ad884" />
GO

PRINT N'Creating [dbo].[Abstract]'
GO
IF OBJECT_ID(N'[dbo].[Abstract]', 'U') IS NULL
CREATE TABLE [dbo].[Abstract]
(
[SurveyNum] [int] NOT NULL,
[County] [int] NOT NULL,
[SurveyName] [varchar] (30) NULL,
[PatentNo] [varchar] (10) NULL,
[PatentDate] [datetime] NULL,
[Acres] [int] NULL,
[Notes] [varchar] (60) NULL
)
GO
PRINT N'Creating primary key [PK_Abstract] on [dbo].[Abstract]'
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Abstract]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Abstract]', 'U'))
ALTER TABLE [dbo].[Abstract] ADD CONSTRAINT [PK_Abstract] PRIMARY KEY CLUSTERED ([SurveyNum], [County])
GO
PRINT N'Creating [dbo].[Abstract1]'
GO
IF OBJECT_ID(N'[dbo].[Abstract1]', 'U') IS NULL
CREATE TABLE [dbo].[Abstract1]
(
[SurveyNum] [int] NOT NULL,
[County] [int] NOT NULL,
[SurveyName] [varchar] (30) NULL,
[PatentNo] [varchar] (10) NULL,
[PatentDate] [datetime] NULL,
[Acres] [int] NULL,
[Notes] [varchar] (60) NULL
)
GO
PRINT N'Creating primary key [PK_Abstract1] on [dbo].[Abstract1]'
GO
IF NOT EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Abstract1]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Abstract1]', 'U'))
ALTER TABLE [dbo].[Abstract1] ADD CONSTRAINT [PK_Abstract1] PRIMARY KEY CLUSTERED ([SurveyNum], [County])
GO
