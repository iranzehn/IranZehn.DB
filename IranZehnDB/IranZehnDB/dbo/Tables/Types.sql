CREATE TABLE [dbo].[Types] (
    [TypeID]           CHAR (4)      NOT NULL,
    [Label]            NVARCHAR (50) NULL,
    [Description]      NTEXT         NOT NULL,
    [WorkPlace]        NTEXT         NOT NULL,
    [JobTitle]         NTEXT         NOT NULL,
    [Communication]    NTEXT         NOT NULL,
    [Leisure]          NTEXT         NOT NULL,
    [Advice]           NTEXT         NOT NULL,
    [Figure]           NTEXT         NULL,
    [PositivePoints]   NTEXT         NULL,
    [NegativePoints]   NTEXT         NULL,
    [UltraInformation] NTEXT         NULL,
    [PersonalGrowth]   NTEXT         NULL,
    [LiveInPeace]      NTEXT         NULL,
    [Preferences]      NTEXT         NULL,
    CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED ([TypeID] ASC)
);

