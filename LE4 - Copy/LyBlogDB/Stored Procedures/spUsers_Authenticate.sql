﻿CREATE PROCEDURE [dbo].[spUsers_Authenticate]
	@Username nvarchar(16),
	@password nvarchar(16)
AS
begin
    set nocount on;

	SELECT [ID], [UserName], [FirstName], [LastName], [Password]
	FROM dbo.Users
	WHERE UserName = @username
	AND Password = @password;

end
