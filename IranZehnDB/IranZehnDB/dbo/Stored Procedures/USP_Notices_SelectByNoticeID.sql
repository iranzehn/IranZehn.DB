-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Notes by NoticeId>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Notices_SelectByNoticeID]
	@NoticeID INT
AS
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT *,
		   dbo.[UFN_ReverseDate](NoticeDate) as NDate 
	FROM Notices
	WHERE NoticeID = @NoticeID
