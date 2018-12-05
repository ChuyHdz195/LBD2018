USE [Lab1]
GO

--Procedure 1--
create procedure [dbo].[DropUpDoctor]
as
begin

	select *
	into #Doctor
	from Doctor;

	drop table Doctor;

	create table DoctorNew(Cedula uniqueidentifier, Num_Trabajador uniqueidentifier);

	 select * from DoctorNew;

end;
GO

exec [DropUpDoctor];


--Procedure 2

USE [Lab1]
GO 

create procedure [dbo].[DropUpEmpleados]
as
begin

	select *
	into #Empleados
	from Empleados;

	drop table Empleados;

	create table EmpleadosNew(Nom_Trabajador nvarchar(50), Num_Trabajdor int, Puesto ntext, Sueldo money, RFC uniqueidentifier);

	 select * from EmpleadosNew;

end;
GO

exec [DropUpEmpleados];


--Procedure 3--
USE [Lab1]
GO

create procedure [dbo].[DropUpMedicamento]
as
begin

	select *
	into #Medicamento
	from Medicamento;

	drop table Medicamento;

	create table MedicamentoNew(Nom_Med nvarchar(max), Id_Med uniqueidentifier, Restricciones text, Precio money, Caducidad date);

	 select * from MedicamentoNew;

end;
GO

exec [DropUpMedicamento];

--Procedure 4--
USE [Lab1]
GO

create procedure [dbo].[DropUpPaciente]
as
begin

	select *
	into #Paciente
	from Paciente;

	drop table Paciente;

	create table PacienteNEW(Nom_Pac nvarchar(50), Edad real, Peso float, Id_Pac uniqueidentifier);

	 select * from PacienteNEW;

end;
GO

exec [DropUpPaciente];



--Procedure 5--
USE [Lab1]
GO

create procedure [dbo].[DropUpReceta]
as
begin

	select *
	into #Receta
	from Receta;

	drop table Receta;

	create table RecetaNEW(Id_Pac uniqueidentifier, Cedula uniqueidentifier, Fecha date, Id_Receta uniqueidentifier, Id_Med uniqueidentifier);

	 select * from RecetaNEW;

end;
GO

exec [DropUpReceta];