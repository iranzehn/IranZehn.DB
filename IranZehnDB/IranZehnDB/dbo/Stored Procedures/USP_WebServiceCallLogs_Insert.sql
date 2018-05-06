-- =============================================
-- Author:		<Barsham Sotoudeh>
-- Create date: <2015-03-18>
-- Description:	<Insert into log>
-- =============================================
CREATE PROCEDURE [dbo].[USP_WebServiceCallLogs_Insert]
    @TypeId INT ,
    @TokenId UNIQUEIDENTIFIER ,
    @SourceIPAddress NVARCHAR(15) NULL ,
    @XML_Data NVARCHAR(MAX) NULL
AS
    INSERT  INTO WebServiceCallLogs WITH ( ROWLOCK )
            ( [TypeId] ,
              [TokenId] ,
              [SourceIPAddress] ,
              [XML_Data]
            )
    VALUES  ( @TypeId ,
              @TokenId ,
              @SourceIPAddress ,
              @XML_Data
		   
		    )
