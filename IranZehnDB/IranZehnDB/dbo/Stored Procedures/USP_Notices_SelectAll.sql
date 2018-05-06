-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Notes>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Notices_SelectAll]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *,dbo.[UFN_ReverseDate](NoticeDate) as NDate 
	FROM Notices WITH(NOLOCK)
	ORDER BY NoticeDate DESC

END
