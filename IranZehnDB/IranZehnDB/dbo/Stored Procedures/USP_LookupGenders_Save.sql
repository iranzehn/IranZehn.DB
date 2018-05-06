CREATE PROCEDURE [dbo].[USP_LookupGenders_Save]
    @GenderID INT,
    @GenderText NVARCHAR(50)
AS
BEGIN

    MERGE [dbo].[LookupGenders] AS target
    USING
    (
        VALUES
            (@GenderID, @GenderText)
    ) AS source ([GenderID], [GenderText])
    ON target.[GenderID] = source.[GenderID]
    WHEN MATCHED THEN
        UPDATE SET [GenderID] = source.[GenderID],
                   [GenderText] = source.[GenderText]
    WHEN NOT MATCHED THEN
        INSERT
        (
            [GenderID],
            [GenderText]
        )
        VALUES
        (source.[GenderID], source.[GenderText]);

END;