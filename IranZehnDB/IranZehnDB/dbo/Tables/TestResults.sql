CREATE TABLE [dbo].[TestResults] (
    [TestResultID]     INT            IDENTITY (1, 1) NOT NULL,
    [IPAddress]        NVARCHAR (255) NOT NULL,
    [BornDate]         CHAR (10)      NOT NULL,
    [GenderID]            INT            NOT NULL,
    [MarriageStatusID] INT            NOT NULL,
    [GraduateID]       INT            NOT NULL,
    [TypeID]           CHAR (4)       NOT NULL,
    [Percent1]         INT            NOT NULL,
    [Percent2]         INT            NOT NULL,
    [Percent3]         INT            NOT NULL,
    [Percent4]         INT            NOT NULL,
    [CreateDateTime]   DATETIME       CONSTRAINT [DF_TestResults_CreateDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_TestResults] PRIMARY KEY CLUSTERED ([TestResultID] ASC),
    CONSTRAINT [FK_TestResults_LookupGraduates] FOREIGN KEY ([GraduateID]) REFERENCES [dbo].[LookupGraduates] ([GraduateID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_TestResults_LookupMarriages] FOREIGN KEY ([MarriageStatusID]) REFERENCES [dbo].[LookupMarriages] ([MarriageID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_TestResults_LookupSexes] FOREIGN KEY ([GenderID]) REFERENCES [dbo].[LookupGenders] ([GenderID]) ON DELETE CASCADE ON UPDATE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [_dta_index_TestResults_7_373576369__K7]
    ON [dbo].[TestResults]([TypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [_dta_index_TestResults_7_373576369__K5_K7_K4_K6_1_3]
    ON [dbo].[TestResults]([MarriageStatusID] ASC, [TypeID] ASC, [GenderID] ASC, [GraduateID] ASC)
    INCLUDE([TestResultID], [BornDate]);


GO
CREATE STATISTICS [_dta_stat_373576369_7_6_4]
    ON [dbo].[TestResults]([TypeID], [GraduateID], [GenderID]);


GO
CREATE STATISTICS [_dta_stat_373576369_7_5_4_6]
    ON [dbo].[TestResults]([TypeID], [MarriageStatusID], [GenderID], [GraduateID]);


GO
CREATE STATISTICS [_dta_stat_373576369_7_4]
    ON [dbo].[TestResults]([TypeID], [GenderID]);

