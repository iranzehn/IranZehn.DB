CREATE TABLE [dbo].[LookupMarriages] (
    [MarriageID]   INT           NOT NULL,
    [MarriageText] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_LookupMarriages] PRIMARY KEY CLUSTERED ([MarriageID] ASC)
);

