CREATE TABLE [dbo].[Preferences] (
    [PreferenceID] NVARCHAR (50) NOT NULL,
    [Caption]      NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Preferences] PRIMARY KEY CLUSTERED ([PreferenceID] ASC)
);

