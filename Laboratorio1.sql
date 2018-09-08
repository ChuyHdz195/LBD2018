USE [Lab1]
GO

/****** Object:  Table [dbo].[Doctor]    Script Date: 08/09/2018 0:04:55 ******/
DROP TABLE [dbo].[Doctor]
GO

/****** Object:  Table [dbo].[Doctor]    Script Date: 08/09/2018 0:04:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Doctor](
	[NombreDoctor] [nvarchar](50) NULL,
	[Cedula] [uniqueidentifier] NOT NULL,
	[RFC] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Empleados](
	[NombreEmpleado] [varchar](50) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[Sueldo] [money] NOT NULL,
	[NumeroTrabajador] [bit] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[NumeroTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Medicamento](
	[Medicamento] [nvarchar](50) NOT NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[Restricciones] [text] NOT NULL,
	[Precio] [money] NOT NULL,
	[Presentacion] [image] NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Paciente](
	[Nombre] [nvarchar](max) NOT NULL,
	[Edad] [int] NOT NULL,
	[Peso] [float] NOT NULL,
	[Padecimiento] [ntext] NOT NULL,
	[Medicamento] [ntext] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Receta](
	[NombrePaciente] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Diagnostico] [text] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[NombreDoctor] [nvarchar](50) NOT NULL,
	[Cedula] [uniqueidentifier] NOT NULL,
	[Tratamiento] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
