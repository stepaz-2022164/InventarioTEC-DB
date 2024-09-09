-- -------------------------- Usuarios --------------------------------
    -- Login
    CREATE PROCEDURE sp_login(@usuario varchar(10), @pass varchar(10)) AS
    BEGIN
        SELECT idUsuario FROM Usuarios WHERE usuario = @usuario AND pass = @pass
    END