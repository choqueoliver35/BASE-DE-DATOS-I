USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_MostrarInventario]    Script Date: 4/12/2022 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_MostrarInventario]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM Inventario
	ORDER BY Id_Inventario;
END
