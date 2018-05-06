CREATE PROCEDURE [dbo].[USP_Types_SelectAllTypeIDs]
AS
BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT TypeID
    FROM dbo.Types;


END;