-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CrearDatosUsuarioNuevo]
	@UsuarioId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	DECLARE @Efectivo nvarchar(50) = 'Efectivo';
	DECLARE @CuentasDeBanco nvarchar(50) = 'Cuentas de Banco';
	DECLARE @Tarjetas nvarchar(50) = 'Tarjetas';

	INSERT INTO TiposCuentas(Nombre, UsuarioId, Orden)
	VALUES (@Efectivo, @UsuarioId, 1),
	(@CuentasDeBanco, @UsuarioId, 2),
	(@Tarjetas, @UsuarioId, 3);

	INSERT INTO Cuentas (Nombre, Balance, TipoCuentaId)
	SELECT Nombre, 0, Id
	FROM TiposCuentas
	WHERE UsuarioId = @UsuarioId;

	INSERT INTO Categorias(Nombre, TipoOperacionId, UsuarioId)
	VALUES 
	('Libros', 2, @UsuarioId),
	('Salario', 1, @UsuarioId),
	('Mesada', 1, @UsuarioId),
	('Comida', 2, @UsuarioId)

END