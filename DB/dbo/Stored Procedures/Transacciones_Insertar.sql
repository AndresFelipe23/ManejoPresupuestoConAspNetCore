-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Transacciones_Insertar]
	@UsuarioId int,
	@FechaTransaccion date,
	@Monto decimal(18,2),
	@CategoriaId int,
	@CuentaId int,
	@Nota nvarchar(1000) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Transacciones(UsuarioId, FechaTransaccion, Monto, CategoriaId, CuentaId, Nota)
	Values(@UsuarioId, @FechaTransaccion, ABS(@Monto), @CategoriaId, @CuentaId, @Nota)

	UPDATE Cuentas
	SET Balance += @Monto
	Where Id = @CuentaId

	SELECT SCOPE_IDENTITY();
END
