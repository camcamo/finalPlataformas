USE [master]
GO
/****** Object:  Database [finalPlataformas]    Script Date: 3/6/2022 8:22:08 PM ******/
CREATE DATABASE [finalPlataformas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'finalPlataformas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\finalPlataformas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'finalPlataformas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\finalPlataformas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [finalPlataformas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [finalPlataformas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [finalPlataformas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [finalPlataformas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [finalPlataformas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [finalPlataformas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [finalPlataformas] SET ARITHABORT OFF 
GO
ALTER DATABASE [finalPlataformas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [finalPlataformas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [finalPlataformas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [finalPlataformas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [finalPlataformas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [finalPlataformas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [finalPlataformas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [finalPlataformas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [finalPlataformas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [finalPlataformas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [finalPlataformas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [finalPlataformas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [finalPlataformas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [finalPlataformas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [finalPlataformas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [finalPlataformas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [finalPlataformas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [finalPlataformas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [finalPlataformas] SET  MULTI_USER 
GO
ALTER DATABASE [finalPlataformas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [finalPlataformas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [finalPlataformas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [finalPlataformas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [finalPlataformas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [finalPlataformas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [finalPlataformas] SET QUERY_STORE = OFF
GO
USE [finalPlataformas]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/6/2022 8:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cabañas]    Script Date: 3/6/2022 8:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabañas](
	[idCabana] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [int] NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[ciudad] [nvarchar](100) NULL,
	[barrio] [nvarchar](100) NULL,
	[estrellas] [int] NOT NULL,
	[cantPersonas] [int] NOT NULL,
	[tv] [bit] NOT NULL,
	[precioDia] [real] NOT NULL,
	[habitaciones] [int] NOT NULL,
	[baños] [int] NOT NULL,
 CONSTRAINT [PK_Cabañas] PRIMARY KEY CLUSTERED 
(
	[idCabana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 3/6/2022 8:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[idHotel] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [int] NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[ciudad] [nvarchar](100) NULL,
	[barrio] [nvarchar](100) NULL,
	[estrellas] [int] NOT NULL,
	[cantPersonas] [int] NOT NULL,
	[tv] [int] NOT NULL,
	[precioPorPersona] [real] NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[idHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 3/6/2022 8:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fDesde] [datetime] NOT NULL,
	[fHasta] [datetime] NOT NULL,
	[codAlojamiento] [int] NOT NULL,
	[dniPersona] [int] NOT NULL,
	[precio] [real] NOT NULL,
 CONSTRAINT [PK_reservas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 3/6/2022 8:22:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[esAdmin] [bit] NOT NULL,
	[bloqueado] [bit] NOT NULL,
	[intentos] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [finalPlataformas] SET  READ_WRITE 
GO
