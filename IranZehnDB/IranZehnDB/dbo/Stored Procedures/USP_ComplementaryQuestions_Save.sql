CREATE PROCEDURE [dbo].[USP_ComplementaryQuestions_Save]
    @ComplementaryQuestionsId INT,
    @Preference1ID NVARCHAR(50),
    @Preference2ID NVARCHAR(50),
    @Preference1Question NVARCHAR(2000),
    @Preference2Question NVARCHAR(2000)
AS
BEGIN

    MERGE [dbo].[ComplementaryQuestions] AS target
    USING
    (
        VALUES
            (@ComplementaryQuestionsId, @Preference1ID, @Preference2ID, @Preference1Question, @Preference2Question)
    ) AS source (ComplementaryQuestionsId, Preference1ID, Preference2ID, Preference1Question, Preference2Question)
    ON target.[ComplementaryQuestionsId] = source.[ComplementaryQuestionsId]
    WHEN MATCHED THEN
        UPDATE SET ComplementaryQuestionsId = source.ComplementaryQuestionsId,
                   Preference1ID = source.Preference1ID,
                   Preference2ID = source.Preference2ID,
                   Preference1Question = source.Preference1Question,
                   Preference2Question = source.Preference2Question
    WHEN NOT MATCHED THEN
        INSERT
        (
            ComplementaryQuestionsId,
            Preference1ID,
            Preference2ID,
            Preference1Question,
            Preference2Question
        )
        VALUES
        (source.ComplementaryQuestionsId, source.Preference1ID, source.Preference2ID, source.Preference1Question,
         source.Preference2Question);

END;