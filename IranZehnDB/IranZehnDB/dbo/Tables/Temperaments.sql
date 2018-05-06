CREATE TABLE [dbo].[Temperaments] (
    [TemperamentID] NVARCHAR (255) NOT NULL,
    [Caption]       NVARCHAR (50)  NOT NULL,
    [Summary]       NTEXT          NULL,
    [Description]   NTEXT          NULL,
    [WorkPlace]     NTEXT          NULL,
    [Careers]       NTEXT          NULL,
    [Relationship]  NTEXT          NULL,
    [Advice]        NTEXT          NULL,
    [LiveInPeace]   NTEXT          NULL,
    CONSTRAINT [PK_Temperaments] PRIMARY KEY CLUSTERED ([TemperamentID] ASC)
);

