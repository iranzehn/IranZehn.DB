CREATE VIEW [dbo].[vTestResultGradutes] AS 
	SELECT TypeID,count(*) as TypeCount from TestResults
	group by TypeID
