BEGIN TRANSACTION;

INSERT INTO Users (UserName, Email, PasswordHash, PasswordSalt)
VALUES
('Alice', 'alice@example.com', 0xDEADBEEF, 0xCAFEBABE),
('Bob', 'bob@example.com', 0xDEADBEEF, 0xCAFEBABE);
GO

COMMIT;

