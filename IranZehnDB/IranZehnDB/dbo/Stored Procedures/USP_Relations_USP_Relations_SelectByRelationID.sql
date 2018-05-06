CREATE PROCEDURE [dbo].[USP_Relations_SelectByRelationID] 
	@RelationID NVARCHAR(50)
AS

BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;


    SELECT [RelationID],
           [StarCount],
           [PersianTitle],
           [EnglishTitle],
           [Title01Persian],
           [Title02Persian],
           [Title01English],
           [Title02English],
           [RelationDescription]
    FROM dbo.Relations
    WHERE RelationID = @RelationID;

END;