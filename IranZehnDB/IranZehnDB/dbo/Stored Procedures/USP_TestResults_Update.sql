CREATE PROCEDURE [dbo].[USP_TestResults_Update]
    @Original_TestResultID INT,
    @IPAddress NVARCHAR(255),
    @BornDate CHAR(10),
    @GenderID INT,
    @MarriageStatusID INT,
    @GraduateID INT,
    @TypeID CHAR(4),
    @Percent1 INT,
    @Percent2 INT,
    @Percent3 INT,
    @Percent4 INT
AS
BEGIN

    UPDATE dbo.[TestResults]
    SET IPAddress = @IPAddress,
        [BornDate] = @BornDate,
        [GenderID] = @GenderID,
        [MarriageStatusID] = @MarriageStatusID,
        [GraduateID] = @GraduateID,
        [TypeID] = @TypeID,
        [Percent1] = @Percent1,
        [Percent2] = @Percent2,
        [Percent3] = @Percent3,
        [Percent4] = @Percent4
    WHERE ([TestResultID] = @Original_TestResultID);

END;