USE [Lab1]
GO
--5 select Basicos

SELECT [Nom_Pac] as 'Nombre del paciente'
  FROM [dbo].[Paciente]
GO

SELECT [Peso] as 'Peso de los pacientes'
  FROM [dbo].[Paciente]
GO


SELECT [Nom_Med] as 'Nombre de los medicamentos'
  FROM [dbo].[Medicamento] as Medicament
GO

SELECT [Caducidad] as 'Caducidad de los medicamentos'
  FROM [dbo].[Medicamento] as MedicamentCad
GO

SELECT [Puesto] as 'Puestos de los empleados'
  FROM [dbo].[Empleados]
GO

--4 Select Join
select Nom_Trabajador, RFC, Cedula
from [dbo].[Empleados]
INNER JOIN Doctor on Doctor.Num_Trabajador = Empleados.Num_Trabajador

select Nom_Trabajador, puesto
from [dbo].[Empleados]
INNER JOIN Doctor on Doctor.Num_Trabajador = Empleados.Num_Trabajador

Select Nom_Trabajador, Sueldo
from [dbo].[Empleados]
INNER JOIN Doctor on Doctor.Num_Trabajador = Empleados.Num_Trabajador

select [Fecha], [Id_Pac]
from [dbo].[Receta]
INNER JOIN Doctor on Doctor.[Cedula] = Receta.[Cedula]



--5 Select Where
	Select [Puesto]
	From [dbo].[Empleados]
	where [Nom_Trabajador] LIKE 'Roberto Garza'


	Select [Nom_Trabajador]
	From [dbo].[Empleados]
	where [Puesto] LIKE 'Medico'

	Select [Nom_Med]
	From [dbo].[Medicamento]
	where[Caducidad] LIKE '2018-10-27'

	Select [Num_Trabajador]
	From [dbo].[Empleados]
	where [Nom_Trabajador] LIKE 'Katya'

	Select [Nom_Trabajador]
	From [dbo].[Empleados]
	where [Puesto] LIKE 'Enfermera'
	order by Sueldo DESC

--5 Select con Agrupaciones
	select COUNT (*) as 'Agrupacion de Empleados por Sueldo'
	from [dbo].[Empleados] 
	group by [Sueldo]

	select COUNT (*) as 'Agrupacion de Empleados por Puesto'
	from [dbo].[Empleados] 
	group by [PUESTO]

	select COUNT (*) as 'Agrupacion de Medicamentos por Fecha de Caducidad'
	from [dbo].[Medicamento] 
	group by [Caducidad]

	select COUNT (*) as 'Agrupacion de Medicamentos por Precio'
	from [dbo].[Medicamento] 
	group by [Precio]

	select COUNT (*) as 'Agrupacion de Recetas por Cedulas'
	from [dbo].[Receta] 
	group by [Cedula]



--1 Select into con dropTable
SELECT *
INTO [MEDICAMENTOSNUEVOS]
FROM [dbo].[Medicamento]

DROP TABLE [MEDICAMENTOSNUEVOS]

