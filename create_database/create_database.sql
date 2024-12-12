CREATE DATABASE plantaciones_forestales_agroforestales
go
USE plantaciones_forestales_agroforestales;
GO

---- creacion de tablas
-- propietarios
CREATE TABLE [propietarios] (
	[id_propietario] int IDENTITY(1,1) NOT NULL UNIQUE,
	[nombre] nvarchar(100) NOT NULL,
	[tipo] nvarchar(50) NOT NULL,
	[documento_identidad] nvarchar(20) NOT NULL UNIQUE,
	[celular] nvarchar(20) NOT NULL UNIQUE,
	[direccion] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_propietario])
);

-- predios
CREATE TABLE [predios] (
	[id_predio] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_propietario] int NOT NULL,
	[superficie_ha] float(53) NOT NULL,
	[estado_tenencia] nvarchar(50) NOT NULL,
	[ubicacion_predio] nvarchar(100) NOT NULL,
	[descripcion_predio] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_predio])
);

-- diagnosticos
CREATE TABLE [diagnosticos] (
	[id_diagnostico] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_predio] int NOT NULL,
	[fecha_diagnostico] date NOT NULL,
	[estado_predio] nvarchar(50) NOT NULL,
	[tipo_suelo] nvarchar(50) NOT NULL,
	[tipo_cobertura] nvarchar(50) NOT NULL,
	[observaciones] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_diagnostico])
);

--plantaciones
CREATE TABLE [plantaciones] (
	[id_plantacion] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_vt] int NOT NULL,
	[id_diagnostico] int NOT NULL,
	[nombre] nvarchar(100) NOT NULL,
	[superficie] int NOT NULL,
	[ubicacion] nvarchar(100) NOT NULL,
	[fecha_inicio] date NOT NULL,
	[fecha_final] date NOT NULL,
	PRIMARY KEY ([id_plantacion])
);

--especies
CREATE TABLE [especies] (
	[id_especie] int IDENTITY(1,1) NOT NULL UNIQUE,
	[nombre_comun] nvarchar(100) NOT NULL,
	[nombre_cientifico] nvarchar(100) NOT NULL,
	[uso] nvarchar(100) NOT NULL,
	[descripcion] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_especie])
);

--especies plantadas
CREATE TABLE [especies_plantadas] (
	[id_especies_plantadas] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_plantacion] int NOT NULL,
	[id_especie] int NOT NULL,
	[cantidad] int NOT NULL,
	PRIMARY KEY ([id_especies_plantadas])
);


--monitoreos
CREATE TABLE [monitoreos] (
	[id_monitoreo] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_plantacion] int NOT NULL,
	[fecha] date NOT NULL,
	[altura_promedio] float(53) NOT NULL,
	[supervivencia] float(53) NOT NULL,
	[mortandad] float(53) NOT NULL,
	[estado] nvarchar(100) NOT NULL,
	[observaciones] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_monitoreo])
);


--mantenimientos
CREATE TABLE [mantenimientos] (
	[id_mantenimiento] int IDENTITY(1,1) NOT NULL UNIQUE,
	[id_plantacion] int NOT NULL,
	[fecha] date NOT NULL,
	[descripcion] nvarchar(100) NOT NULL,
	[actividad] nvarchar(100) NOT NULL,
	[estado] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_mantenimiento])
);


-- viridis peru
CREATE TABLE [VT] (
	[id_vt] int IDENTITY(1,1) NOT NULL UNIQUE,
	[codigo] nvarchar(20) NOT NULL,
	[nombres] nvarchar(255) NOT NULL,
	[direccion] nvarchar(100) NOT NULL,
	PRIMARY KEY ([id_vt])
);


ALTER TABLE [predios] ADD CONSTRAINT [predios_fk1] FOREIGN KEY ([id_propietario]) REFERENCES [propietarios]([id_propietario]);
ALTER TABLE [diagnosticos] ADD CONSTRAINT [diagnosticos_fk1] FOREIGN KEY ([id_predio]) REFERENCES [predios]([id_predio]);
ALTER TABLE [plantaciones] ADD CONSTRAINT [plantaciones_fk1] FOREIGN KEY ([id_vt]) REFERENCES [VT]([id_vt]);

ALTER TABLE [plantaciones] ADD CONSTRAINT [plantaciones_fk2] FOREIGN KEY ([id_diagnostico]) REFERENCES [diagnosticos]([id_diagnostico]);

ALTER TABLE [especies_plantadas] ADD CONSTRAINT [especies_plantadas_fk1] FOREIGN KEY ([id_plantacion]) REFERENCES [plantaciones]([id_plantacion]);

ALTER TABLE [especies_plantadas] ADD CONSTRAINT [especies_plantadas_fk2] FOREIGN KEY ([id_especie]) REFERENCES [especies]([id_especie]);
ALTER TABLE [monitoreos] ADD CONSTRAINT [monitoreos_fk1] FOREIGN KEY ([id_plantacion]) REFERENCES [plantaciones]([id_plantacion]);
ALTER TABLE [mantenimientos] ADD CONSTRAINT [mantenimientos_fk1] FOREIGN KEY ([id_plantacion]) REFERENCES [plantaciones]([id_plantacion]);