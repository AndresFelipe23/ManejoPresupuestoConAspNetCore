CREATE TABLE [dbo].[TiposOperaciones] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_TiposOperaciones] PRIMARY KEY CLUSTERED ([Id] ASC)
);

