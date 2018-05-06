/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:r .\PostDeployments\Script.ComplementaryQuestions.sql
:r .\PostDeployments\Script.LookupGenders.sql
:r .\PostDeployments\Script.LookupGraduates.sql
:r .\PostDeployments\Script.LookupMarriages.sql
:r .\PostDeployments\Script.PreferencePairs.sql
:r .\PostDeployments\Script.Preferences.sql
:r .\PostDeployments\Script.Properties.sql
:r .\PostDeployments\Script.Questions.sql
:r .\PostDeployments\Script.Relations.sql
:r .\PostDeployments\Script.Temperaments.sql
:r .\PostDeployments\Script.Types.sql

