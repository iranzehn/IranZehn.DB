CREATE PROCEDURE [dbo].[USP_Properties_Save]
    @PropertyID INT,
    @PreferenceID NVARCHAR(50),
    @Value NTEXT
AS
BEGIN

    MERGE dbo.Properties AS target
    USING
    (
        VALUES
            (@PropertyID, @PreferenceID, @Value)
    ) AS source (PropertyID, PreferenceID, Value)
    ON target.PropertyID = source.PropertyID
    WHEN MATCHED THEN
        UPDATE SET PropertyID = source.PropertyID,
                   PreferenceID = source.PreferenceID,
                   Value = source.Value
    WHEN NOT MATCHED THEN
        INSERT
        (
            PropertyID,
            PreferenceID,
            Value
        )
        VALUES
        (source.PropertyID, source.PreferenceID, source.Value);

END;