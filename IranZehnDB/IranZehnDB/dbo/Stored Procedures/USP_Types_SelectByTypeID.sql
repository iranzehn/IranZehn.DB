CREATE PROCEDURE [dbo].[USP_Types_SelectByTypeID] @TypeID CHAR(4)
AS
BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT [TypeID],
           [Label],
           [Description],
           [WorkPlace],
           [JobTitle],
           [Communication],
           [Leisure],
           [Advice],
           [Figure],
           [PositivePoints],
           [NegativePoints],
           [UltraInformation],
           [PersonalGrowth],
           [LiveInPeace],
           [Preferences]
    FROM dbo.Types
    WHERE TypeID = @TypeID;


END;