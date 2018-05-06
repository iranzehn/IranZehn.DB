CREATE TABLE [dbo].[WebServiceCallLogs]
    (
      [WebServiceCallLogId] INT NOT NULL
                                PRIMARY KEY
                                IDENTITY ,
      [dStamp] DATETIME NOT NULL DEFAULT GETDATE() ,
      [TypeId] INT NOT NULL ,
      [TokenId] UNIQUEIDENTIFIER NOT NULL ,
      [SourceIPAddress] NVARCHAR(15) NULL ,
      [XML_Data] NVARCHAR(MAX) NULL 
    )
