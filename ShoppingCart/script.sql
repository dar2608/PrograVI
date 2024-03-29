USE [master]
GO
/****** Object:  Database [BDCompras]    Script Date: 11/06/2012 15:52:58 ******/
CREATE DATABASE [BDCompras] ON  PRIMARY 
( NAME = N'BDCompras', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BDCompras.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDCompras_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BDCompras_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDCompras] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDCompras].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDCompras] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BDCompras] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BDCompras] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BDCompras] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BDCompras] SET ARITHABORT OFF
GO
ALTER DATABASE [BDCompras] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BDCompras] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BDCompras] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BDCompras] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BDCompras] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BDCompras] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BDCompras] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BDCompras] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BDCompras] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BDCompras] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BDCompras] SET  DISABLE_BROKER
GO
ALTER DATABASE [BDCompras] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BDCompras] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BDCompras] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BDCompras] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BDCompras] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BDCompras] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BDCompras] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BDCompras] SET  READ_WRITE
GO
ALTER DATABASE [BDCompras] SET RECOVERY FULL
GO
ALTER DATABASE [BDCompras] SET  MULTI_USER
GO
ALTER DATABASE [BDCompras] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BDCompras] SET DB_CHAINING OFF
GO
USE [BDCompras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido_Uno] [varchar](50) NOT NULL,
	[Apellido_Dos] [varchar](50) NOT NULL,
	[Telefono_Cliente] [int] NOT NULL,
	[Correo_Cliente] [varchar](50) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Password] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_Cate] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_Cate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_user] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id_Provee] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Sitio_Web] [varchar](100) NOT NULL,
	[Estado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id_Provee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Id_Pedido] [int] NOT NULL,
	[Cedula] [int] NOT NULL,
	[Fecha_Pedido] [date] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id_Articulo] [int] NOT NULL,
	[Id_Cate] [int] NOT NULL,
	[Codigo_Barras] [varchar](100) NOT NULL,
	[Descripcion_Articulo] [varchar](100) NOT NULL,
	[Imagen] [image] NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Id_Articulo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Articulo_Proveedor]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulo_Proveedor](
	[Id_ArticuloP] [int] NOT NULL,
	[Id_Articulo] [int] NOT NULL,
	[Id_Provee] [int] NOT NULL,
	[Descripcion_Venta] [varchar](100) NOT NULL,
	[Costo_Unidad] [numeric](18, 2) NOT NULL,
	[Cantidad_Existente] [int] NOT NULL,
	[Costo_Envio] [numeric](18, 2) NOT NULL,
	[Precio_Final] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Articulo_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_ArticuloP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalle_Pedido]    Script Date: 11/06/2012 15:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Pedido](
	[Id_Detalle] [int] NOT NULL,
	[Id_Pedido] [int] NOT NULL,
	[Id_ArticuloP] [int] NOT NULL,
	[Cantidad_Pedido] [int] NOT NULL,
	[Costo_Total] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Detalle_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Pedidos_Clientes]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([Cedula])
REFERENCES [dbo].[Clientes] ([Cedula])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
/****** Object:  ForeignKey [FK_Articulos_Categorias]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Categorias] FOREIGN KEY([Id_Cate])
REFERENCES [dbo].[Categorias] ([Id_Cate])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Categorias]
GO
/****** Object:  ForeignKey [FK_Articulo_Proveedor_Articulos]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Articulo_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Proveedor_Articulos] FOREIGN KEY([Id_Articulo])
REFERENCES [dbo].[Articulos] ([Id_Articulo])
GO
ALTER TABLE [dbo].[Articulo_Proveedor] CHECK CONSTRAINT [FK_Articulo_Proveedor_Articulos]
GO
/****** Object:  ForeignKey [FK_Articulo_Proveedor_Proveedores]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Articulo_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Proveedor_Proveedores] FOREIGN KEY([Id_Provee])
REFERENCES [dbo].[Proveedores] ([Id_Provee])
GO
ALTER TABLE [dbo].[Articulo_Proveedor] CHECK CONSTRAINT [FK_Articulo_Proveedor_Proveedores]
GO
/****** Object:  ForeignKey [FK_Detalle_Pedido_Articulo_Proveedor]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Detalle_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Pedido_Articulo_Proveedor] FOREIGN KEY([Id_ArticuloP])
REFERENCES [dbo].[Articulo_Proveedor] ([Id_ArticuloP])
GO
ALTER TABLE [dbo].[Detalle_Pedido] CHECK CONSTRAINT [FK_Detalle_Pedido_Articulo_Proveedor]
GO
/****** Object:  ForeignKey [FK_Detalle_Pedido_Pedidos]    Script Date: 11/06/2012 15:53:00 ******/
ALTER TABLE [dbo].[Detalle_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Pedido_Pedidos] FOREIGN KEY([Id_Pedido])
REFERENCES [dbo].[Pedidos] ([Id_Pedido])
GO
ALTER TABLE [dbo].[Detalle_Pedido] CHECK CONSTRAINT [FK_Detalle_Pedido_Pedidos]
GO
