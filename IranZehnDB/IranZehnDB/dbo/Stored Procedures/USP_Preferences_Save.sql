CREATE PROCEDURE [dbo].[USP_Preferences_Save]
    @PreferenceID NVARCHAR(50),
    @Caption NVARCHAR(50)
AS
BEGIN

    MERGE dbo.Preferences AS target
    USING
    (
        VALUES
            (@PreferenceID, @Caption)
    ) AS source (PreferenceID, Caption)
    ON target.PreferenceID = source.PreferenceID
    WHEN MATCHED THEN
        UPDATE SET PreferenceID = source.PreferenceID,
                   Caption = source.Caption
    WHEN NOT MATCHED THEN
        INSERT
        (
            PreferenceID,
            Caption
        )
        VALUES
        (source.PreferenceID, source.Caption);

END;