CREATE PROCEDURE [dbo].[USP_Reports_GetAll]
AS
BEGIN

    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT tr.TestResultID,
           tr.BornDate,
           tr.TypeID,
           l1.GenderText AS SexString,
           l2.MarriageText AS MarriageStatusString,
           tr.GraduateID,
           l3.GraduateText AS GraduateString,
           1 AS ItemCount,
           (
               SELECT CAST(100 AS DECIMAL) / COUNT(*) FROM dbo.TestResults
           ) AS ItemPercent,
           l4.TypeCount AS TypeCount,
           (CAST(100 AS DECIMAL) / l4.TypeCount) AS TypePercent
    FROM dbo.[TestResults] tr
        INNER JOIN dbo.[LookupGenders] l1
            ON l1.[GenderID] = tr.[GenderID]
        INNER JOIN dbo.LookupMarriages l2
            ON l2.MarriageID = tr.MarriageStatusID
        INNER JOIN dbo.LookupGraduates l3
            ON l3.GraduateID = tr.GraduateID
        INNER JOIN dbo.vTestResultTypes l4
            ON l4.TypeID = tr.TypeID;

END;