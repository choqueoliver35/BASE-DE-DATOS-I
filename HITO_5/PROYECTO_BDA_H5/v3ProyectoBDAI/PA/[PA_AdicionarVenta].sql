USE [DB_SistemaDeVentas]
GO
/****** Object:  StoredProcedure [dbo].[PA_AdicionarVenta]    Script Date: 4/12/2022 15:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[PA_AdicionarVenta]

	@Id_Ventas VARCHAR(100),
	@Id_Cliente VARCHAR(100),
	@Id_Productos VARCHAR(100),
	@Cuenta_a_Pagar VARCHAR(100),
	@Cuenta_Pagada VARCHAR(100),
	@Total_a_Pagar VARCHAR(100)

AS
BEGIN

	INSERT INTO Ventas(Id_Ventas,Id_Cliente,Id_Productos,Cuenta_a_Pagar,Cuenta_Pagada,Total_a_Pagar)
	VALUES (@Id_Ventas,@Id_Cliente,@Id_Productos,@Cuenta_a_Pagar,@Cuenta_Pagada,@Total_a_Pagar)

END