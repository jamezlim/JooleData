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
USE JooleData 
GO

DELETE FROM [dbo].[tblUser]
GO

DELETE FROM [dbo].[tblCategory]
GO

INSERT [dbo].[tblUser] ([UserName],[UserEmail],[UserPassword],[UserImage]) 
VALUES  (N'jamezlim', N'limcheolhyun930421@gmail.com', N'Ch0421', null),
        (N'LisaW', N'lisawang1234@gmail.com', N'lw123456', null),
        (N'AliceG', N'agreen@outlook.com', N'ag123456', null),
        (N'TLee', N'thomaslee92@gmail.com', N'thomas920223', null),
        (N'beScott', N'billscott@yahoo.com', N'bill123scott', null),
        (N'abcdora', N'jychu91@gmail.com', N'ann8771', null),
        (N'kindlystick', N'sticks@yahoo.com', N'aj0912', null),
        (N'joymelon', N'yahola@gmail.com', N'kimx$$', null)    
GO

INSERT[dbo].[tblCategory] ([CategoryName])
VALUES (N'Mechanical'),(N'Electrical'),(N'Stationary'),(N'Furniture')
GO
