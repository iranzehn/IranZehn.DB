CREATE VIEW [dbo].[vTestResultTypes] AS 
	SELECT TypeID,count(*) as TypeCount from TestResults
	group by TypeID
