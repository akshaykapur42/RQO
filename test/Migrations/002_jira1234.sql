-- <Migration ID="f9d98c4c-5865-4509-a044-89a62cc7310d" />
GO

PRINT N'Creating index [NonClusteredIndex-20220216-142511] on [dbo].[Abstract]'
GO
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'NonClusteredIndex-20220216-142511' AND object_id = OBJECT_ID(N'[dbo].[Abstract]'))
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20220216-142511] ON [dbo].[Abstract] ([County], [SurveyName])
GO
