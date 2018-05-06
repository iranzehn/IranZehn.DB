CREATE TABLE [dbo].[Notices] (
    [NoticeID]      INT            IDENTITY (1, 1) NOT NULL,
    [NoticeTitle]   NVARCHAR (255) NOT NULL,
    [NoticeDate]    CHAR (10)      NOT NULL,
    [NoticeContent] NTEXT          NULL,
    CONSTRAINT [PK_Notices] PRIMARY KEY CLUSTERED ([NoticeID] ASC)
);

