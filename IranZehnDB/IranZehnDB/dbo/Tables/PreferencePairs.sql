CREATE TABLE [dbo].[PreferencePairs] (
    [Preference1ID] NVARCHAR (50) NOT NULL,
    [Preference2ID] NVARCHAR (50) NOT NULL,
    [Title]         NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PreferencePairs] PRIMARY KEY CLUSTERED ([Preference1ID] ASC)
);

