CREATE PROCEDURE [dbo].[USP_LookupGraduates_Save]
    @GraduateID INT,
    @GraduateText NVARCHAR(50)
AS
BEGIN

    MERGE [dbo].[LookupGraduates] AS target
    USING
    (
        VALUES
            (@GraduateID, @GraduateText)
    ) AS source ([GraduateID], [GraduateText])
    ON target.[GraduateID] = source.[GraduateID]
    WHEN MATCHED THEN
        UPDATE SET [GraduateID] = source.[GraduateID],
                   [GraduateText] = source.[GraduateText]
    WHEN NOT MATCHED THEN
        INSERT
        (
            [GraduateID],
            [GraduateText]
        )
        VALUES
        (source.[GraduateID], source.[GraduateText]);

END;