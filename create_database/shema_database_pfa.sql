USE [master]
GO
/****** Object:  Database [plantaciones_forestales_agroforestales]    Script Date: 12/12/2024 18:31:51 ******/
CREATE DATABASE [plantaciones_forestales_agroforestales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'plantaciones_forestales_agroforestales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\plantaciones_forestales_agroforestales.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'plantaciones_forestales_agroforestales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\plantaciones_forestales_agroforestales_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [plantaciones_forestales_agroforestales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ARITHABORT OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET  ENABLE_BROKER 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET RECOVERY FULL 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET  MULTI_USER 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'plantaciones_forestales_agroforestales', N'ON'
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET QUERY_STORE = ON
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [plantaciones_forestales_agroforestales]
GO
/****** Object:  Table [dbo].[diagnosticos]    Script Date: 12/12/2024 18:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diagnosticos](
	[id_diagnostico] [int] IDENTITY(1,1) NOT NULL,
	[id_predio] [int] NOT NULL,
	[fecha_diagnostico] [date] NOT NULL,
	[estado_predio] [nvarchar](50) NOT NULL,
	[tipo_suelo] [nvarchar](50) NOT NULL,
	[tipo_cobertura] [nvarchar](50) NOT NULL,
	[observaciones] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_diagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especies]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especies](
	[id_especie] [int] IDENTITY(1,1) NOT NULL,
	[nombre_comun] [nvarchar](100) NOT NULL,
	[nombre_cientifico] [nvarchar](100) NOT NULL,
	[uso] [nvarchar](100) NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_especie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especies_plantadas]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especies_plantadas](
	[id_especies_plantadas] [int] IDENTITY(1,1) NOT NULL,
	[id_plantacion] [int] NOT NULL,
	[id_especie] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_especies_plantadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mantenimientos]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mantenimientos](
	[id_mantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[id_plantacion] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
	[actividad] [nvarchar](100) NOT NULL,
	[estado] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monitoreos]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monitoreos](
	[id_monitoreo] [int] IDENTITY(1,1) NOT NULL,
	[id_plantacion] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[altura_promedio] [float] NOT NULL,
	[supervivencia] [float] NOT NULL,
	[mortandad] [float] NOT NULL,
	[estado] [nvarchar](100) NOT NULL,
	[observaciones] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_monitoreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plantaciones]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plantaciones](
	[id_plantacion] [int] IDENTITY(1,1) NOT NULL,
	[id_vt] [int] NOT NULL,
	[id_diagnostico] [int] NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[superficie] [int] NOT NULL,
	[ubicacion] [nvarchar](100) NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_final] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_plantacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[predios]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[predios](
	[id_predio] [int] IDENTITY(1,1) NOT NULL,
	[id_propietario] [int] NOT NULL,
	[superficie_ha] [float] NOT NULL,
	[estado_tenencia] [nvarchar](50) NOT NULL,
	[ubicacion_predio] [nvarchar](100) NOT NULL,
	[descripcion_predio] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_predio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[propietarios]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[propietarios](
	[id_propietario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[tipo] [nvarchar](50) NOT NULL,
	[documento_identidad] [nvarchar](20) NOT NULL,
	[celular] [nvarchar](20) NOT NULL,
	[direccion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_propietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VT]    Script Date: 12/12/2024 18:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VT](
	[id_vt] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](20) NOT NULL,
	[nombres] [nvarchar](255) NOT NULL,
	[direccion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UQ__diagnost__1384B7443A922DA6]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[diagnosticos] ADD UNIQUE NONCLUSTERED 
(
	[id_diagnostico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__especies__96DDB0B8D4ED75F6]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[especies] ADD UNIQUE NONCLUSTERED 
(
	[id_especie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__especies__12F96FB60EA64B5B]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[especies_plantadas] ADD UNIQUE NONCLUSTERED 
(
	[id_especies_plantadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__mantenim__707E5D1719418954]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[mantenimientos] ADD UNIQUE NONCLUSTERED 
(
	[id_mantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__monitore__985A1DA24A6D6AE4]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[monitoreos] ADD UNIQUE NONCLUSTERED 
(
	[id_monitoreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__plantaci__82432CA700497B96]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[plantaciones] ADD UNIQUE NONCLUSTERED 
(
	[id_plantacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__predios__A7C80C259BB3F5E8]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[predios] ADD UNIQUE NONCLUSTERED 
(
	[id_predio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__propieta__1A03B13F58B60CB3]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[propietarios] ADD UNIQUE NONCLUSTERED 
(
	[documento_identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__propieta__2E4973E760DEBD02]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[propietarios] ADD UNIQUE NONCLUSTERED 
(
	[celular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__propieta__D2E56936995CE952]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[propietarios] ADD UNIQUE NONCLUSTERED 
(
	[id_propietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__VT__01487084D6A74E78]    Script Date: 12/12/2024 18:31:52 ******/
ALTER TABLE [dbo].[VT] ADD UNIQUE NONCLUSTERED 
(
	[id_vt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[diagnosticos]  WITH CHECK ADD  CONSTRAINT [diagnosticos_fk1] FOREIGN KEY([id_predio])
REFERENCES [dbo].[predios] ([id_predio])
GO
ALTER TABLE [dbo].[diagnosticos] CHECK CONSTRAINT [diagnosticos_fk1]
GO
ALTER TABLE [dbo].[especies_plantadas]  WITH CHECK ADD  CONSTRAINT [especies_plantadas_fk1] FOREIGN KEY([id_plantacion])
REFERENCES [dbo].[plantaciones] ([id_plantacion])
GO
ALTER TABLE [dbo].[especies_plantadas] CHECK CONSTRAINT [especies_plantadas_fk1]
GO
ALTER TABLE [dbo].[especies_plantadas]  WITH CHECK ADD  CONSTRAINT [especies_plantadas_fk2] FOREIGN KEY([id_especie])
REFERENCES [dbo].[especies] ([id_especie])
GO
ALTER TABLE [dbo].[especies_plantadas] CHECK CONSTRAINT [especies_plantadas_fk2]
GO
ALTER TABLE [dbo].[mantenimientos]  WITH CHECK ADD  CONSTRAINT [mantenimientos_fk1] FOREIGN KEY([id_plantacion])
REFERENCES [dbo].[plantaciones] ([id_plantacion])
GO
ALTER TABLE [dbo].[mantenimientos] CHECK CONSTRAINT [mantenimientos_fk1]
GO
ALTER TABLE [dbo].[monitoreos]  WITH CHECK ADD  CONSTRAINT [monitoreos_fk1] FOREIGN KEY([id_plantacion])
REFERENCES [dbo].[plantaciones] ([id_plantacion])
GO
ALTER TABLE [dbo].[monitoreos] CHECK CONSTRAINT [monitoreos_fk1]
GO
ALTER TABLE [dbo].[plantaciones]  WITH CHECK ADD  CONSTRAINT [plantaciones_fk1] FOREIGN KEY([id_vt])
REFERENCES [dbo].[VT] ([id_vt])
GO
ALTER TABLE [dbo].[plantaciones] CHECK CONSTRAINT [plantaciones_fk1]
GO
ALTER TABLE [dbo].[plantaciones]  WITH CHECK ADD  CONSTRAINT [plantaciones_fk2] FOREIGN KEY([id_diagnostico])
REFERENCES [dbo].[diagnosticos] ([id_diagnostico])
GO
ALTER TABLE [dbo].[plantaciones] CHECK CONSTRAINT [plantaciones_fk2]
GO
ALTER TABLE [dbo].[predios]  WITH CHECK ADD  CONSTRAINT [predios_fk1] FOREIGN KEY([id_propietario])
REFERENCES [dbo].[propietarios] ([id_propietario])
GO
ALTER TABLE [dbo].[predios] CHECK CONSTRAINT [predios_fk1]
GO
USE [master]
GO
ALTER DATABASE [plantaciones_forestales_agroforestales] SET  READ_WRITE 
GO
