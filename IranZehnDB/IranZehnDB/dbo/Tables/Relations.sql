CREATE TABLE [dbo].[Relations] (
    [RelationID]          NVARCHAR (50) NOT NULL,
    [StarCount]           INT           CONSTRAINT [DF_Relations_StarCount] DEFAULT ((0)) NOT NULL,
    [PersianTitle]        NVARCHAR (50) NOT NULL,
    [EnglishTitle]        NVARCHAR (50) CONSTRAINT [DF_Relations_EnglishTitle] DEFAULT ('-') NOT NULL,
    [Title01Persian]      NVARCHAR (50) CONSTRAINT [DF_Relations_Title01Persian] DEFAULT ('-') NOT NULL,
    [Title02Persian]      NVARCHAR (50) CONSTRAINT [DF_Relations_Title02Persian] DEFAULT ('-') NOT NULL,
    [Title01English]      NVARCHAR (50) CONSTRAINT [DF_Relations_Title01English_1] DEFAULT ('-') NOT NULL,
    [Title02English]      NVARCHAR (50) CONSTRAINT [DF_Relations_Title01English] DEFAULT ('-') NOT NULL,
    [RelationDescription] NTEXT         NOT NULL,
    CONSTRAINT [PK_Relations] PRIMARY KEY CLUSTERED ([RelationID] ASC)
);

