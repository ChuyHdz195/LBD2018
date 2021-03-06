USE [Lab1]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 04/12/2018 21:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Cedula] [uniqueidentifier] NOT NULL,
	[Num_Trabajador] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 04/12/2018 21:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Nom_Trabajador] [nvarchar](50) NOT NULL,
	[Num_Trabajador] [uniqueidentifier] NOT NULL,
	[Puesto] [ntext] NOT NULL,
	[Sueldo] [money] NOT NULL,
	[RFC] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Num_Trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamento]    Script Date: 04/12/2018 21:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamento](
	[Nom_Med] [nvarchar](max) NOT NULL,
	[Id_Med] [uniqueidentifier] NOT NULL,
	[Restricciones] [text] NOT NULL,
	[Precio] [money] NOT NULL,
	[Caducidad] [date] NOT NULL,
 CONSTRAINT [PK_Medicamento] PRIMARY KEY CLUSTERED 
(
	[Id_Med] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 04/12/2018 21:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[Nom_Pac] [nvarchar](50) NOT NULL,
	[Edad] [real] NOT NULL,
	[Peso] [float] NOT NULL,
	[Id_Pac] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id_Pac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 04/12/2018 21:00:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[Id_Pac] [uniqueidentifier] NOT NULL,
	[Cedula] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Id_Receta] [uniqueidentifier] NOT NULL,
	[Id_Med] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[Id_Receta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Empleados] FOREIGN KEY([Num_Trabajador])
REFERENCES [dbo].[Empleados] ([Num_Trabajador])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Empleados]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Doctor] FOREIGN KEY([Cedula])
REFERENCES [dbo].[Doctor] ([Cedula])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Doctor]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Medicamento] FOREIGN KEY([Id_Med])
REFERENCES [dbo].[Medicamento] ([Id_Med])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Medicamento]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Paciente] FOREIGN KEY([Id_Pac])
REFERENCES [dbo].[Paciente] ([Id_Pac])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Paciente]
GO
