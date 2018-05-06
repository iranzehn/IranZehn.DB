CREATE FUNCTION [dbo].[UFN_ReverseDate] (@str as char(10))  
RETURNS char(10)
 AS  
BEGIN 
	if len(@str)<>10
	begin
	  set @str='0000/00/00'
	end
	else
	begin
	  set @str=substring(@str,9,2)+	'/' +substring(@str,6,2)+'/'+substring(@str,1,4)
	end
	return @str
		
END
