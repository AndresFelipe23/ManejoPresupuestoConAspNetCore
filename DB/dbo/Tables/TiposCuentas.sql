CREATE TABLE [dbo].[TiposCuentas] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]    NVARCHAR (50) NOT NULL,
    [UsuarioId] INT           NOT NULL,
    [Orden]     INT           NOT NULL,
    CONSTRAINT [PK_TiposCuentas] PRIMARY KEY CLUSTERED ([Id] ASC)
);

