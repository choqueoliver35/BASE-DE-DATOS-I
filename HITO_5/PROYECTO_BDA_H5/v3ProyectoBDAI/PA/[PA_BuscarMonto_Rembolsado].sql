USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_BuscarMonto_Rembolsado]    Script Date: 4/12/2022 15:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_BuscarMonto_Rembolsado]
	@Monto_Rembolsado VARCHAR (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM Rembolsos
	WHERE Monto_Rembolsado LIKE '%'+ @Monto_Rembolsado+'%'
END