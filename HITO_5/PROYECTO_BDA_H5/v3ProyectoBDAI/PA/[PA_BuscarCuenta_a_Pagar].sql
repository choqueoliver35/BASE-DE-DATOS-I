USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_BuscarCuenta_a_Pagar]    Script Date: 4/12/2022 15:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_BuscarCuenta_a_Pagar]

		@Cuenta_a_Pagar VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM Ventas
	WHERE Cuenta_a_Pagar LIKE '%' + @Cuenta_a_Pagar + '%'
END