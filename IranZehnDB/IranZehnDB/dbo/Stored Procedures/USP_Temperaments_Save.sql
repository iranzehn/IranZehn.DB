CREATE PROCEDURE [dbo].[USP_Temperaments_Save]
    @TemperamentID NVARCHAR(255),
    @Caption NVARCHAR(50),
    @Summary NTEXT,
    @Description NTEXT,
    @WorkPlace NTEXT,
    @Careers NTEXT,
    @Relationship NTEXT,
    @Advice NTEXT,
    @LiveInPeace NTEXT
AS
BEGIN

    MERGE dbo.Temperaments AS target
    USING
    (
        VALUES
            (@TemperamentID, @Caption, @Summary, @Description, @WorkPlace, @Careers, @Relationship, @Advice,
             @LiveInPeace
            )
    ) AS source (TemperamentID, Caption, Summary, Description, WorkPlace, Careers, Relationship, Advice, LiveInPeace)
    ON target.TemperamentID = source.TemperamentID
    WHEN MATCHED THEN
        UPDATE SET TemperamentID = source.TemperamentID,
                   Caption = source.Caption,
                   Summary = source.Summary,
                   Description = source.Description,
                   WorkPlace = source.WorkPlace,
                   Careers = source.Careers,
                   Relationship = source.Relationship,
                   Advice = source.Advice,
                   LiveInPeace = source.LiveInPeace
    WHEN NOT MATCHED THEN
        INSERT
        (
            TemperamentID,
            Caption,
            Summary,
            Description,
            WorkPlace,
            Careers,
            Relationship,
            Advice,
            LiveInPeace
        )
        VALUES
        (source.TemperamentID, source.Caption, source.Summary, source.Description, source.WorkPlace, source.Careers,
         source.Relationship, source.Advice, source.LiveInPeace);

END;