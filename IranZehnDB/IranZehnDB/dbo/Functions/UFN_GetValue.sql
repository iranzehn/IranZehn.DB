CREATE FUNCTION [dbo].[UFN_GetValue] (@i as int)  
RETURNS int 
 AS  
BEGIN 
	if (@i=null)
	  set @i=0
	return @i
		
END
