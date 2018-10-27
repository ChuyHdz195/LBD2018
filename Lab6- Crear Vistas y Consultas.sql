USE [Lab1]
GO

--3 sub consultas
		SELECT * From Empleados where sueldo = (select sueldo = 12000 )

		SELECT * From Empleados where sueldo = (select sueldo = 7000 )

		SELECT * From Empleados where sueldo = (select sueldo = 8500 )

--5 vistas
	CREATE VIEW [Nombres y puestos] AS
	SELECT 
		Nom_Trabajador , Puesto
		From Empleados
		
	CREATE VIEW [Puestos y Sueldos de los trabajdores] AS
	SELECT Puesto, Sueldo
	FROM Empleados

	CREATE VIEW [Medicamentos y sus precios] AS
	SELECT Nom_Med, Precio
	FROM Medicamento

	CREATE VIEW [Medicamentos y sus restricciones] AS
	SELECT Nom_Med, Restricciones
	FROM Medicamento

	CREATE VIEW [Pacientes y su edad] AS
	SELECT Nom_Pac, Edad
	FROM Paciente




