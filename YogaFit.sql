USE [master]
GO
/****** Object:  Database [YogaFit]    Script Date: 16/11/2023 20:18:35 ******/
CREATE DATABASE [YogaFit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YogaFit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\YogaFit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'YogaFit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\YogaFit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [YogaFit] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YogaFit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YogaFit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YogaFit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YogaFit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YogaFit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YogaFit] SET ARITHABORT OFF 
GO
ALTER DATABASE [YogaFit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YogaFit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YogaFit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YogaFit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YogaFit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YogaFit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YogaFit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YogaFit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YogaFit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YogaFit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YogaFit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YogaFit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YogaFit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YogaFit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YogaFit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YogaFit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YogaFit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YogaFit] SET RECOVERY FULL 
GO
ALTER DATABASE [YogaFit] SET  MULTI_USER 
GO
ALTER DATABASE [YogaFit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YogaFit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YogaFit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YogaFit] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [YogaFit] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [YogaFit] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'YogaFit', N'ON'
GO
ALTER DATABASE [YogaFit] SET QUERY_STORE = ON
GO
ALTER DATABASE [YogaFit] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [YogaFit]
GO
/****** Object:  Table [dbo].[Datos_Biometricos]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_Biometricos](
	[Datos_Biometricos_Id] [int] NOT NULL,
	[Ritmo_cardiaco_promedio] [nchar](10) NULL,
	[Nivel_Oxigeno_sangre] [nchar](10) NULL,
	[Nivel_Estres] [nchar](10) NULL,
 CONSTRAINT [PK_Datos_Biometricos] PRIMARY KEY CLUSTERED 
(
	[Datos_Biometricos_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datos_Personales]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datos_Personales](
	[Datos_Personales_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Peso] [nchar](10) NULL,
	[Altura] [nchar](10) NULL,
	[Datos_ID] [int] NULL,
	[DatosBiometricos_ID] [int] NULL,
	[NivelYoga_ID] [int] NULL,
 CONSTRAINT [PK_Datos_Personales] PRIMARY KEY CLUSTERED 
(
	[Datos_Personales_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Niveles_Yoga]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Niveles_Yoga](
	[Niveles_Yoga_Id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_nivel] [int] NULL,
	[Descripcion] [nchar](10) NULL,
 CONSTRAINT [PK_Niveles_Yoga] PRIMARY KEY CLUSTERED 
(
	[Niveles_Yoga_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objetivos]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objetivos](
	[Objetivo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Detalle] [nvarchar](100) NULL,
	[Peso_Objetivo] [nchar](10) NULL,
	[Nivel_Yoga_Objetivo] [nchar](10) NULL,
 CONSTRAINT [PK_Objetivos] PRIMARY KEY CLUSTERED 
(
	[Objetivo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objetivos_X_Usuario]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objetivos_X_Usuario](
	[Objetivos_X_Usuario_Id] [int] IDENTITY(1,1) NOT NULL,
	[Objetivo_Id] [int] NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_Objetivos_X_Usuario] PRIMARY KEY CLUSTERED 
(
	[Objetivos_X_Usuario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practicas_X_Usuario]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practicas_X_Usuario](
	[PracticasXUsuario_ID] [int] IDENTITY(1,1) NOT NULL,
	[Practica_Id] [int] NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_Practicas_X_Usuario] PRIMARY KEY CLUSTERED 
(
	[PracticasXUsuario_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practicas_Yoga]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practicas_Yoga](
	[Practica_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Tiempo_estimado] [int] NULL,
	[Detalle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Practicas_Yoga] PRIMARY KEY CLUSTERED 
(
	[Practica_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/11/2023 20:18:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Usuario_Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Apellido] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[Numero_Telefono] [nvarchar](100) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Usuario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Datos_Personales]  WITH CHECK ADD  CONSTRAINT [FK_Datos_Personales_Datos_Biometricos] FOREIGN KEY([DatosBiometricos_ID])
REFERENCES [dbo].[Datos_Biometricos] ([Datos_Biometricos_Id])
GO
ALTER TABLE [dbo].[Datos_Personales] CHECK CONSTRAINT [FK_Datos_Personales_Datos_Biometricos]
GO
ALTER TABLE [dbo].[Datos_Personales]  WITH CHECK ADD  CONSTRAINT [FK_Datos_Personales_Niveles_Yoga] FOREIGN KEY([NivelYoga_ID])
REFERENCES [dbo].[Niveles_Yoga] ([Niveles_Yoga_Id])
GO
ALTER TABLE [dbo].[Datos_Personales] CHECK CONSTRAINT [FK_Datos_Personales_Niveles_Yoga]
GO
ALTER TABLE [dbo].[Datos_Personales]  WITH CHECK ADD  CONSTRAINT [FK_Datos_Personales_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuarios] ([Usuario_Id])
GO
ALTER TABLE [dbo].[Datos_Personales] CHECK CONSTRAINT [FK_Datos_Personales_Usuario]
GO
ALTER TABLE [dbo].[Objetivos_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Objetivos_X_Usuario_Objetivo] FOREIGN KEY([Objetivo_Id])
REFERENCES [dbo].[Objetivos] ([Objetivo_Id])
GO
ALTER TABLE [dbo].[Objetivos_X_Usuario] CHECK CONSTRAINT [FK_Objetivos_X_Usuario_Objetivo]
GO
ALTER TABLE [dbo].[Objetivos_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Objetivos_X_Usuario_Usuario] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Usuario_Id])
GO
ALTER TABLE [dbo].[Objetivos_X_Usuario] CHECK CONSTRAINT [FK_Objetivos_X_Usuario_Usuario]
GO
ALTER TABLE [dbo].[Practicas_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Practicas_X_Usuario_Practica] FOREIGN KEY([Practica_Id])
REFERENCES [dbo].[Practicas_Yoga] ([Practica_Id])
GO
ALTER TABLE [dbo].[Practicas_X_Usuario] CHECK CONSTRAINT [FK_Practicas_X_Usuario_Practica]
GO
ALTER TABLE [dbo].[Practicas_X_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Practicas_X_Usuario_Usuario] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Usuario_Id])
GO
ALTER TABLE [dbo].[Practicas_X_Usuario] CHECK CONSTRAINT [FK_Practicas_X_Usuario_Usuario]
GO
USE [master]
GO
ALTER DATABASE [YogaFit] SET  READ_WRITE 
GO
