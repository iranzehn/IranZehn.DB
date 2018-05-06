CREATE FUNCTION [dbo].[UFN_GetRepeatCount] (
	@TestResultID int,
	@BornDate as nvarchar(15), 
	@SexID as int, 
	@MarriageStatusID as int, 
	@GraduateID as int, 
	@TypeID as nvarchar(4), 
	@Percent1 as int, 
	@Percent2 as int, 
	@Percent3 as int, 
	@Percent4 as int)  
RETURNS NUMERIC 
AS  
BEGIN 

	DECLARE @icount as numeric

	SELECT  @iCount=count(*)
	FROM [TestResults] WITH(NOLOCK)
	WHERE	[BornDate] = @BornDate AND  
			[GenderID] = @SexID AND  
			[MarriageStatusID] = @MarriageStatusID And 
			[GraduateID] = @GraduateID AND 
			[TypeID] = @TypeID AND 
			[Percent1] = @Percent1 AND 
			[Percent2] = @Percent2 AND 
			[Percent3] = @Percent3 AND 
			[Percent4] = @Percent4 AND 
			TestResultID <= @TestResultID
	GROUP BY [BornDate],
			 [GenderID],
			 [MarriageStatusID], 
			 [GraduateID], 
			 [TypeID], 
			 [Percent1], 
			 [Percent2], 
			 [Percent3], 
			 [Percent4]  

	RETURN @iCount

END
