CREATE TABLE [dbo].[Questions] (
    [QuestionID]      INT           NOT NULL,
    [PreferenceID]    NVARCHAR (50) NOT NULL,
    [QuestionContent] NTEXT         NOT NULL,
    CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED ([QuestionID] ASC)
);

