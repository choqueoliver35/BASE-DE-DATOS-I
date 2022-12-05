USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_BuscarPrecioProducto]    Script Date: 4/12/2022 15:56:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_BuscarPrecioProducto]
	 @PrecioProducto VARCHAR(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * 
	FROM Producto AS P
	WHERE P.Precio LIKE '%' + @PrecioProducto + '%'
END