CREATE PROCEDURE [dbo].[USP_Questions_Save]
    @QuestionID INT,
    @PreferenceID NVARCHAR(50),
    @QuestionContent NTEXT
AS
BEGIN

    MERGE dbo.Questions AS target
    USING
    (
        VALUES
            (@QuestionID, @PreferenceID, @QuestionContent)
    ) AS source (QuestionID, PreferenceID, QuestionContent)
    ON target.QuestionID = source.QuestionID
    WHEN MATCHED THEN
        UPDATE SET QuestionID = source.QuestionID,
                   PreferenceID = source.PreferenceID,
                   QuestionContent = source.QuestionContent
    WHEN NOT MATCHED THEN
        INSERT
        (
            QuestionID,
            PreferenceID,
            QuestionContent
        )
        VALUES
        (source.QuestionID, source.QuestionContent, source.PreferenceID);

END;