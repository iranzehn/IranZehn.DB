CREATE TABLE [dbo].TestResultDetails (
    [TestResultID] INT NOT NULL,
    [QuestionID]   INT NOT NULL,
    [Score]        INT NOT NULL,
    CONSTRAINT [PK_TestDetails] PRIMARY KEY CLUSTERED ([TestResultID] ASC, [QuestionID] ASC),
    CONSTRAINT [FK_TestDetails_Questions] FOREIGN KEY ([QuestionID]) REFERENCES [dbo].[Questions] ([QuestionID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_TestDetails_TestResults] FOREIGN KEY ([TestResultID]) REFERENCES [dbo].[TestResults] ([TestResultID]) ON DELETE CASCADE ON UPDATE CASCADE
);

