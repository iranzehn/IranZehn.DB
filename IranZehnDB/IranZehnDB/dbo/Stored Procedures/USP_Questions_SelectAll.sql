-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Questions>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Questions_SelectAll]
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT * 
	FROM Questions WITH(NOLOCK)