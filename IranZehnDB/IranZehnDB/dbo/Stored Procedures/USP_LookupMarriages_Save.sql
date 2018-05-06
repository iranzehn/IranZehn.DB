CREATE PROCEDURE [dbo].[USP_LookupMarriages_Save]
    @MarriageID INT,
    @MarriageText NVARCHAR(50)
AS
BEGIN

    MERGE [dbo].[LookupMarriages] AS target
    USING
    (
        VALUES
            (@MarriageID, @MarriageText)
    ) AS source ([MarriageID], [MarriageText])
    ON target.[MarriageID] = source.[MarriageID]
    WHEN MATCHED THEN
        UPDATE SET [MarriageID] = source.[MarriageID],
                   [MarriageText] = source.[MarriageText]
    WHEN NOT MATCHED THEN
        INSERT
        (
            [MarriageID],
            [MarriageText]
        )
        VALUES
        (source.[MarriageID], source.[MarriageText]);

END;