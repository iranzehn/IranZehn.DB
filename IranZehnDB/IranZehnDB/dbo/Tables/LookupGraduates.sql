CREATE TABLE [dbo].[LookupGraduates] (
    [GraduateID]   INT           NOT NULL,
    [GraduateText] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_LookupGraduates] PRIMARY KEY CLUSTERED ([GraduateID] ASC)
);

