CREATE TABLE [dbo].[tblUser] (
    [UserId]        INT IDENTITY (1, 1) NOT NULL,
    [UserName]      NVARCHAR (20) NOT NULL,
    [UserPassword]  NVARCHAR (50) NOT NULL,
    [UserEmail]     NVARCHAR (320) NOT NULL,
    [UserImage]     IMAGE NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
)