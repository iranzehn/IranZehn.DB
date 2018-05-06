CREATE PROCEDURE [dbo].[USP_ComplementaryQuestions_SelectAll]
AS
BEGIN

    SELECT [ComplementaryQuestionsId],
           [Preference1ID],
           [Preference2ID],
           [Preference1Question],
           [Preference2Question]
    FROM dbo.ComplementaryQuestions;

END;