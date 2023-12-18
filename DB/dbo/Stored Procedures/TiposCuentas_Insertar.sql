-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].TiposCuentas_Insertar
	@Nombre nvarchar(50),
	@UsuarioId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Orden int;
	SELECT @Orden = COALESCE(MAX(Orden), 0)+1
	FROM TiposCuentas
	WHERE UsuarioId = @UsuarioId
   INSERT INTO TiposCuentas(Nombre, UsuarioId, Orden)
	VALUES (@Nombre, @UsuarioId, @Orden);

	SELECT SCOPE_IDENTITY();
END