CREATE PROCEDURE [dbo].[USP_TestResults_Compare]
    @src AS CHAR(1),
    @dst AS CHAR(1),
    @s AS INT
AS
BEGIN

    SELECT Q.QuestionID,
           CAST(QuestionContent AS NVARCHAR(2000)) AS QuestionContent,
           COUNT(*) AS PeopleCount,
           (
               SELECT COUNT(*)
               FROM dbo.TestResults
               WHERE SUBSTRING(TypeID, @s, 1) = @src
           ) AS TotalCount,
           SUM(td.Score) AS SumScore,
           CAST(SUM(td.Score) AS DECIMAL) / COUNT(*) AS AveScore,
           @src AS PreferenceID
    FROM dbo.TestResults tr
        INNER JOIN dbo.TestResultDetails AS td
            ON td.TestResultID = tr.TestResultID
        INNER JOIN dbo.Questions AS Q
            ON Q.QuestionID = td.QuestionID
    WHERE SUBSTRING(tr.TypeID, @s, 1) = @src
          AND PreferenceID = @dst --and Score>0

    GROUP BY Q.QuestionID,
             CAST(QuestionContent AS NVARCHAR(2000))
    ORDER BY CAST(SUM(td.Score) AS DECIMAL) / COUNT(*) DESC,
             SUM(td.Score) DESC,
             COUNT(*) DESC;

END;