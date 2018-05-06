CREATE PROCEDURE [dbo].[USP_Types_Save]
    @TypeID CHAR(4),
    @Label NVARCHAR(50),
    @Description NTEXT,
    @WorkPlace NTEXT,
    @JobTitle NTEXT,
    @Communication NTEXT,
    @Leisure NTEXT,
    @Advice NTEXT,
    @Figure NTEXT,
    @PositivePoints NTEXT,
    @NegativePoints NTEXT,
    @UltraInformation NTEXT,
    @PersonalGrowth NTEXT,
    @LiveInPeace NTEXT,
    @Preferences NTEXT
AS
BEGIN

    MERGE [dbo].[Types] AS target
    USING
    (
        VALUES
            (@TypeID, @Label, @Description, @WorkPlace, @JobTitle, @Communication, @Leisure, @Advice, @Figure,
             @PositivePoints, @NegativePoints, @UltraInformation, @PersonalGrowth, @LiveInPeace, @Preferences
            )
    ) AS source (TypeID, Label, Description, WorkPlace, JobTitle, Communication, Leisure, Advice, Figure,
                 PositivePoints, NegativePoints, UltraInformation, PersonalGrowth, LiveInPeace, Preferences
                )
    ON target.[TypeID] = source.[TypeID]
    WHEN MATCHED THEN
        UPDATE SET TypeID = source.TypeID,
                   Label = source.Label,
                   Description = source.Description,
                   WorkPlace = source.WorkPlace,
                   JobTitle = source.JobTitle,
                   Communication = source.Communication,
                   Leisure = source.Leisure,
                   Advice = source.Advice,
                   Figure = source.Figure,
                   PositivePoints = source.PositivePoints,
                   NegativePoints = source.NegativePoints,
                   UltraInformation = source.UltraInformation,
                   PersonalGrowth = source.PersonalGrowth,
                   LiveInPeace = source.LiveInPeace,
                   Preferences = source.Preferences
    WHEN NOT MATCHED THEN
        INSERT
        (
            TypeID,
            Label,
            Description,
            WorkPlace,
            JobTitle,
            Communication,
            Leisure,
            Advice,
            Figure,
            PositivePoints,
            NegativePoints,
            UltraInformation,
            PersonalGrowth,
            LiveInPeace,
            Preferences
        )
        VALUES
        (source.TypeID, source.Label, source.Description, source.WorkPlace, source.JobTitle, source.Communication,
         source.Leisure, source.Advice, source.Figure, source.PositivePoints, source.NegativePoints,
         source.UltraInformation, source.PersonalGrowth, source.LiveInPeace, source.Preferences);

END;