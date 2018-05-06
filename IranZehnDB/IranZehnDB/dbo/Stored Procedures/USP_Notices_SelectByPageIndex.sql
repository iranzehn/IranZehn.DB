-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Notes by PageIndex>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Notices_SelectByPageIndex]
	@PageIndex INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT *,
		   dbo.[UFN_ReverseDate](NoticeDate) AS NDate, 
		  (SELECT COUNT(*) 
		   FROM Notices AS A2 WITH (NOLOCK) 
		   WHERE A2.NoticeID <= A1.NoticeID ) 	
	FROM Notices AS A1  
	Where (SELECT COUNT(*) 
		   FROM Notices AS A2 WITH (NOLOCK)
		   WHERE A2.NoticeID <= A1.NoticeID ) > @PageIndex * 5


END
