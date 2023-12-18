CREATE TABLE [dbo].[Transacciones] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [UsuarioId]        INT             NOT NULL,
    [FechaTransaccion] DATETIME        NOT NULL,
    [Monto]            DECIMAL (18, 2) NOT NULL,
    [Nota]             NVARCHAR (1000) NULL,
    [CuentaId]         INT             NOT NULL,
    [CategoriaId]      INT             NOT NULL,
    CONSTRAINT [PK_Transacciones] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Transacciones_Categorias] FOREIGN KEY ([CategoriaId]) REFERENCES [dbo].[Categorias] ([Id]),
    CONSTRAINT [FK_Transacciones_Cuentas] FOREIGN KEY ([CuentaId]) REFERENCES [dbo].[Cuentas] ([Id])
);

