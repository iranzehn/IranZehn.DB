CREATE TABLE [dbo].[Properties] (
    [PropertyID]   INT           NOT NULL,
    [PreferenceID] NVARCHAR (50) NOT NULL,
    [Value]        NTEXT         NOT NULL,
    CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED ([PropertyID] ASC)
);

