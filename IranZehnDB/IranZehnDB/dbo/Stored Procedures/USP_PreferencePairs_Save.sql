CREATE PROCEDURE [dbo].[USP_PreferencePairs_Save]
    @Preference1ID NVARCHAR(50),
    @Preference2ID NVARCHAR(50),
    @Title NVARCHAR(50)
AS
BEGIN

    MERGE dbo.PreferencePairs AS target
    USING
    (
        VALUES
            (@Preference1ID, @Preference2ID, @Title)
    ) AS source (Preference1ID, Preference2ID, Title)
    ON target.Preference1ID = source.Preference1ID
    WHEN MATCHED THEN
        UPDATE SET Preference1ID = source.Preference1ID,
                   Preference2ID = source.Preference2ID,
                   Title = source.Title
    WHEN NOT MATCHED THEN
        INSERT
        (
            Preference1ID,
            Preference2ID,
            Title
        )
        VALUES
        (source.Preference1ID, source.Preference2ID, source.Title);

END;