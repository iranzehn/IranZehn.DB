CREATE PROCEDURE [dbo].[USP_TestResults_Insert]
    @IPAddress NVARCHAR(255),
    @BornDate CHAR(10),
    @SexID INT,
    @MarriageStatusID INT,
    @GraduateID INT,
    @TypeID CHAR(4),
    @Percent1 INT,
    @Percent2 INT,
    @Percent3 INT,
    @Percent4 INT
AS
BEGIN

    SET NOCOUNT ON;

    IF (NOT EXISTS
    (
        SELECT 1
        FROM dbo.TestResults
        WHERE IPAddress = @IPAddress
              AND BornDate = @BornDate
              AND [GenderID] = @SexID
              AND MarriageStatusID = @MarriageStatusID
              AND GraduateID = @GraduateID
              AND TypeID = @TypeID
              AND Percent1 = @Percent1
              AND Percent2 = @Percent2
              AND Percent3 = @Percent3
              AND Percent4 = @Percent4
    )
       )
    BEGIN

        INSERT INTO dbo.TestResults
        (
            [IPAddress],
            [BornDate],
            [GenderID],
            [MarriageStatusID],
            [GraduateID],
            [TypeID],
            [Percent1],
            [Percent2],
            [Percent3],
            [Percent4]
        )
        VALUES
        (@IPAddress, @BornDate, @SexID, @MarriageStatusID, @GraduateID, @TypeID, @Percent1, @Percent2, @Percent3,
         @Percent4);

        SELECT SCOPE_IDENTITY();

    END;
    ELSE
        SELECT -1;

END;