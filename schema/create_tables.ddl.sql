IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
BEGIN
CREATE TABLE Users (
    UserId Int IDENTITY(1, 1) PRIMARY KEY,
    UserName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    PasswordHash VARBINARY(256) NOT NULL,
    PasswordSalt VARBINARY(128) NOT NULL,
    CreatedTimeStamp DATETIME2 DEFAULT SYSDATETIME(),
    LastLoginTimeStamp DATETIME2 NULL,
    IsAccountActive Bit Default 1
);
END
GO