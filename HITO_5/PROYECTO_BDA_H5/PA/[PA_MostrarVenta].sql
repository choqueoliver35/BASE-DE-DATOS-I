USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_MostrarVenta]    Script Date: 4/12/2022 15:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_MostrarVenta]
AS
BEGIN

	SELECT * FROM [dbo].[Ventas]
	ORDER BY Id_Ventas

END