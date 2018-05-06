-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2013-12-08>
-- Description:	<Reterieve all Notes>
-- =============================================
CREATE PROCEDURE [dbo].[USP_Questions_GetDetailsByTestResultID]
	@TestResultID INT
AS
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	SELECT	Q.PreferenceID, 
			Sum(TD.Score) AS SumOfScore 
	FROM Questions Q WITH (NOLOCK)
	LEFT JOIN TestResultDetails TD WITH (NOLOCK) ON Q.QuestionID = TD.QuestionID 
	WHERE TD.TestResultID = @TestResultID 
	GROUP BY Q.PreferenceID