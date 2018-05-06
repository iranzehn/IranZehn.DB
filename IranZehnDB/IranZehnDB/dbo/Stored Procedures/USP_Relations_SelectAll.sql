-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Relations>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Relations_SelectAll]
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT	*
	FROM Relations WITH(NOLOCK)