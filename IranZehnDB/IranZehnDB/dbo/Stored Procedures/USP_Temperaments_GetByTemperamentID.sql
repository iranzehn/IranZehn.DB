CREATE PROCEDURE [dbo].[USP_Temperaments_GetByTemperamentID] @TemperamentID INT
AS
BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT [TemperamentID],
           [Caption],
           [Summary],
           [Description],
           [WorkPlace],
           [Careers],
           [Relationship],
           [Advice],
           [LiveInPeace]
    FROM dbo.Temperaments
    WHERE TemperamentID = @TemperamentID;

END;