USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_ModificarInventario]    Script Date: 4/12/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_ModificarInventario]
	@Id_Inventario VARCHAR(100),
	@Id_Productos VARCHAR(100),
	@Productos VARCHAR(100),
	@Marcas VARCHAR(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	UPDATE Inventario
	SET  Id_Inventario = @Id_Inventario,
		Id_Productos = @Id_Productos,
		Productos = @Productos,
		Marcas = @Marcas
	WHERE Id_Inventario = @Id_Inventario
END