CREATE PROCEDURE [dbo].[USP_TestResultDetails_Insert]
    @TestResultID INT,
    @QuestionID INT,
    @Score INT
AS
BEGIN

    INSERT INTO dbo.TestResultDetails
    (
        [TestResultID],
        [QuestionID],
        [Score]
    )
    VALUES
    (@TestResultID, @QuestionID, @Score);

END;