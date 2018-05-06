CREATE TABLE [dbo].[LookupGenders] (
    [GenderID]   INT           NOT NULL,
    [GenderText] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_LookupGenders] PRIMARY KEY CLUSTERED ([GenderID] ASC)
);

