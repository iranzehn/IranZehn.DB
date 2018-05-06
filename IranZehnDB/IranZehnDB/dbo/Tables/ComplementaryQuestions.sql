CREATE TABLE [dbo].[ComplementaryQuestions]
(
	[ComplementaryQuestionsId] INT NOT NULL PRIMARY KEY, 
    [Preference1ID] NVARCHAR(50) NOT NULL,
	[Preference2ID] NVARCHAR(50) NOT NULL,
	[Preference1Question] NVARCHAR(2000) NOT NULL,
	[Preference2Question] NVARCHAR(2000) NOT NULL
)
