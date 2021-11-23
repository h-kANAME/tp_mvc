USE [master]
GO
/****** Object:  Database [comercio]    Script Date: 15/11/2021 20:26:44 ******/
CREATE DATABASE [comercio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'comercio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\comercio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'comercio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\comercio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [comercio] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [comercio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [comercio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [comercio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [comercio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [comercio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [comercio] SET ARITHABORT OFF 
GO
ALTER DATABASE [comercio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [comercio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [comercio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [comercio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [comercio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [comercio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [comercio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [comercio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [comercio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [comercio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [comercio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [comercio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [comercio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [comercio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [comercio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [comercio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [comercio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [comercio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [comercio] SET  MULTI_USER 
GO
ALTER DATABASE [comercio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [comercio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [comercio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [comercio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [comercio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [comercio] SET QUERY_STORE = OFF
GO
USE [comercio]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[CarroId] [int] NOT NULL,
	[UsuarioId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro_productos]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro_productos](
	[Carro_productos_Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Carro] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CatId] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[CompraId] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[Total] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mercado]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercado](
	[productos] [int] NULL,
	[usuarios] [int] NULL,
	[categorias] [int] NULL,
	[IVA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [float] NULL,
	[Cantidad] [int] NULL,
	[CatId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos_compra]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos_compra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_compra] [int] NOT NULL,
	[Id_producto] [int] NOT NULL,
	[Cantidad_producto] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 15/11/2021 20:26:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] NULL,
	[Cuil] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[MiCarro] [int] NULL,
	[TipoUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (1, 1)
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (2, 2)
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (3, 3)
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (4, 4)
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (5, 5)
INSERT [dbo].[Carro] ([CarroId], [UsuarioId]) VALUES (6, 6)
GO
SET IDENTITY_INSERT [dbo].[Carro_productos] ON 

INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (1, 2, 1, 1)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (2, 2, 1, 1)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (3, 2, 2, 1)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (4, 2, 3, 2)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (5, 2, 2, 1)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (6, 2, 6, 1)
INSERT [dbo].[Carro_productos] ([Carro_productos_Id], [Id_Carro], [Id_Producto], [Cantidad]) VALUES (7, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Carro_productos] OFF
GO
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (1, N'modificada')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (2, N'Panaderia')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (3, N'Lacteos')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (4, N'Cosas')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (5, N'5')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (6, N' ')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (7, N'7')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (8, N'8')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (9, N'9')
INSERT [dbo].[Categorias] ([CatId], [Nombre]) VALUES (10, N'10')
GO
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([CompraId], [idUsuario], [Total]) VALUES (1, 2, 4)
SET IDENTITY_INSERT [dbo].[Compras] OFF
GO
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (1, N'Papa', 125, 485, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (2, N'pera', 150, 19901, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (3, N'tomate', 125, 11921, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (4, N'cebolla', 1, 1, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (5, N'tomatitos', 200, 100, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (6, N'batata', 100, 1, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (7, N'ajo', 100, 10, 1)
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [Precio], [Cantidad], [CatId]) VALUES (8, N'cambiado', 200, 200, 2)
GO
SET IDENTITY_INSERT [dbo].[Productos_compra] ON 

INSERT [dbo].[Productos_compra] ([Id], [Id_compra], [Id_producto], [Cantidad_producto]) VALUES (1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Productos_compra] OFF
GO
INSERT [dbo].[Usuarios] ([UsuarioId], [Cuil], [Nombre], [Apellido], [Mail], [Password], [MiCarro], [TipoUsuario]) VALUES (1, 1, N'1', N'1', N'1', N'1', 1, 1)
INSERT [dbo].[Usuarios] ([UsuarioId], [Cuil], [Nombre], [Apellido], [Mail], [Password], [MiCarro], [TipoUsuario]) VALUES (3, 3, N'3', N'3', N'3', N'3', 3, 3)
INSERT [dbo].[Usuarios] ([UsuarioId], [Cuil], [Nombre], [Apellido], [Mail], [Password], [MiCarro], [TipoUsuario]) VALUES (2, 2, N'2', N'2', N'2', N'2', 2, 3)
INSERT [dbo].[Usuarios] ([UsuarioId], [Cuil], [Nombre], [Apellido], [Mail], [Password], [MiCarro], [TipoUsuario]) VALUES (4, 4, N'4', N'4', N'4', N'4', 4, 2)
INSERT [dbo].[Usuarios] ([UsuarioId], [Cuil], [Nombre], [Apellido], [Mail], [Password], [MiCarro], [TipoUsuario]) VALUES (5, 5, N'5', N'5', N'5', N'5', 5, 2)
GO
USE [master]
GO
ALTER DATABASE [comercio] SET  READ_WRITE 
GO