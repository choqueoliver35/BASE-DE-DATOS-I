USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_Buscarci]    Script Date: 4/12/2022 15:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[PA_Buscarci]

		@ci INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT * FROM Clientes
	WHERE ci = @ci
END