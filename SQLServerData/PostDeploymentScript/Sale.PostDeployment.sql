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
IF (NOT EXISTS(SELECT 1 FROM [dbo].[Sale]))
BEGIN
    INSERT INTO [dbo].[Sale] (Month, Amount)
    VALUES ('July',22051),
            ('September',832),
            ('May',13587),
            ('January',6725),
            ('March',29280),
            ('August',4621),
            ('June',29206),
            ('February',26534),
            ('May',22368),
            ('July',571),
            ('November',16974),
            ('October',32496),
            ('January',6869),
            ('November',29710),
            ('July',3352),
            ('March',28512),
            ('April',6885),
            ('January',13277),
            ('November',26243),
            ('February',31366)
END