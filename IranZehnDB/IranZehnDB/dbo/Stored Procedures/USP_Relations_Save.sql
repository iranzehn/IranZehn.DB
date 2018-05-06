CREATE PROCEDURE [dbo].[USP_Relations_Save]
    @RelationID NVARCHAR(50),
    @StarCount INT,
    @PersianTitle NVARCHAR(50),
    @EnglishTitle NVARCHAR(50),
    @Title01Persian NVARCHAR(50),
    @Title02Persian NVARCHAR(50),
    @Title01English NVARCHAR(50),
    @Title02English NVARCHAR(50),
    @RelationDescription NTEXT
AS
BEGIN

    MERGE dbo.Relations AS target
    USING
    (
        VALUES
            (@RelationID, @StarCount, @PersianTitle, @EnglishTitle, @Title01Persian, @Title02Persian, @Title01English,
             @Title02English, @RelationDescription
            )
    ) AS source (RelationID, StarCount, PersianTitle, EnglishTitle, Title01Persian, Title02Persian, Title01English,
                 Title02English, RelationDescription
                )
    ON target.RelationID = source.RelationID
    WHEN MATCHED THEN
        UPDATE SET RelationID = source.RelationID,
                   StarCount = source.StarCount,
                   PersianTitle = source.PersianTitle,
                   EnglishTitle = source.EnglishTitle,
                   Title01Persian = source.Title01Persian,
                   Title02Persian = source.Title02Persian,
                   Title01English = source.Title01English,
                   Title02English = source.Title02English,
                   RelationDescription = source.RelationDescription
    WHEN NOT MATCHED THEN
        INSERT
        (
            RelationID,
            StarCount,
            PersianTitle,
            EnglishTitle,
            Title01Persian,
            Title02Persian,
            Title01English,
            Title02English,
            RelationDescription
        )
        VALUES
        (source.RelationID, source.StarCount, source.PersianTitle, source.EnglishTitle, source.Title01Persian,
         source.Title02Persian, source.Title01English, source.Title02English, source.RelationDescription);

END;