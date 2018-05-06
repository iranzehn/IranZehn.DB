CREATE PROCEDURE [dbo].[USP_TestResults_SelectByTestResultID] @TestResultID INT
AS
BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;


    SELECT [TestResultID],
           [IPAddress],
           [BornDate],
           [GenderID],
           [MarriageStatusID],
           [GraduateID],
           [TypeID],
           [Percent1],
           [Percent2],
           [Percent3],
           [Percent4],
           [CreateDateTime]
    FROM dbo.TestResults 
    WHERE TestResultID = @TestResultID;


END;

