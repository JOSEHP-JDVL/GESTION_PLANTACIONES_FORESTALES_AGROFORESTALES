USE plantaciones_forestales_agroforestales;
GO

--insertando datos para la tabla propietarios
SELECT*FROM propietarios;

INSERT INTO [dbo].[propietarios] ([nombre], [tipo], [documento_identidad], [celular], [direccion])
VALUES
-- Personas Naturales
('Juan Carlos P�rez G�mez', 'Natural', '12345678', '987654321', 'Av. Principal 123'),
('Mar�a Teresa L�pez S�nchez', 'Natural', '87654321', '976543210', 'Calle Los Robles 45'),
('Carlos Eduardo G�mez Torres', 'Natural', '45678901', '965432109', 'Jr. La Paz 789'),
('Ana Patricia Mart�nez D�az', 'Natural', '78901234', '954321098', 'Av. Las Flores 101'),
('Jorge Luis Ram�rez Silva', 'Natural', '23456789', '943210987', 'Calle El Sol 34'),
('Luisa Fernanda Torres Quispe', 'Natural', '89012345', '932109876', 'Jr. Amazonas 56'),
('Pedro Alejandro Castillo Vargas', 'Natural', '34567890', '921098765', 'Av. San Mart�n 78'),
('Rosario Beatriz D�az Flores', 'Natural', '56789012', '910987654', 'Calle Los Cedros 90'),
('Mario Andr�s Guti�rrez Salazar', 'Natural', '67890123', '999876544', 'Jr. Libertad 12'),
('Carmen Elisa Silva Paredes', 'Natural', '89034567', '988765434', 'Av. Grau 345'),
('Diana Paola V�squez Morales', 'Natural', '56789034', '966543210', 'Jr. Tupac Amaru 56'),
('Fernando Javier Salazar Rojas', 'Natural', '12309876', '955432109', 'Av. Bolognesi 89'),
('Gabriela Alejandra Herrera Castro', 'Natural', '45612378', '944321098', 'Calle Las Magnolias 23'),
('Ricardo Emilio P�rez L�pez', 'Natural', '78923456', '933210987', 'Jr. Olivos 45'),
('Laura Mercedes Quispe Vargas', 'Natural', '34567812', '922109876', 'Av. La Victoria 67'),
-- Persona juridicos
('Constructora El Sol S.A.C.', 'Jur�dico', '20512345678', '911098765', 'Calle Las Orqu�deas 34'),
('Agroindustria Los Pinos EIRL', 'Jur�dico', '20456789012', '900987654', 'Jr. Los Nogales 89'),
('Servicios Integrales Girasoles SRL', 'Jur�dico', '20345678901', '999876543', 'Av. Las Acacias 12'),
('Distribuidora La Esperanza S.A.', 'Jur�dico', '20123456789', '988765432', 'Calle Los Girasoles 45'),
('Corporaci�n Andina de Insumos SAC', 'Jur�dico', '20678901234', '977654321', 'Calle Los Pinos 78');

EXEC sp_help propietarios;


-- insertando datos para la tabla predios
SELECT*FROM predios;
EXEC sp_help predios;

INSERT INTO [dbo].[predios] 
([id_propietario], [superficie_ha], [estado_tenencia], [ubicacion_predio], [descripcion_predio])
VALUES
(38, 25.5, 'titulado', 'Distrito Campo Verde, Ucayali', 'Terreno agr�cola con cultivo de cacao'),
(39, 15.3, 'titulado', 'Distrito Nueva Requena, Ucayali', 'Zona para pastoreo ganadero'),
(40, 50.0, 'titulado', 'Distrito Yarinacocha, Ucayali', 'Plantaci�n de palma aceitera'),
(41, 18.7, 'titulado', 'Distrito Manantay, Ucayali', 'Terreno con plantaciones mixtas'),
(42, 30.2, 'titulado', 'Distrito Masisea, Ucayali', '�rea de conservaci�n ambiental'),
(43, 42.8, 'titulado', 'Distrito Ipar�a, Ucayali', 'Cultivo extensivo de ma�z'),
(44, 35.6, 'titulado', 'Distrito Padre Abad, Ucayali', 'Predio con bosques secundarios'),
(45, 22.9, 'titulado', 'Distrito Curiman�, Ucayali', 'Plantaciones de pl�tano y yuca'),
(46, 55.1, 'titulado', 'Distrito Sepahua, Ucayali', 'Zona reforestada con especies nativas'),
(47, 48.3, 'titulado', 'Distrito Tahuan�a, Ucayali', 'Terreno agr�cola mixto con cacao y caf�'),
(48, 12.4, 'titulado', 'Distrito Nueva Requena, Ucayali', '�rea de pastoreo vacuno'),
(49, 16.8, 'titulado', 'Distrito Campo Verde, Ucayali', 'Zona agr�cola para producci�n de hortalizas'),
(50, 38.5, 'posesion', 'Distrito Yarinacocha, Ucayali', 'Terreno pendiente de titulaci�n'),
(51, 29.6, 'posesion', 'Distrito Manantay, Ucayali', '�rea forestal con aprovechamiento sostenible'),
(52, 45.7, 'posesion', 'Distrito Masisea, Ucayali', 'Plantaci�n de pi�a tropical'),
(53, 21.3, 'posesion', 'Distrito Ipar�a, Ucayali', 'Zona agr�cola con riego tecnificado'),
(54, 60.5, 'proceso', 'Distrito Padre Abad, Ucayali', 'Terreno en proceso de regularizaci�n'),
(55, 33.0, 'proceso', 'Distrito Curiman�, Ucayali', 'Terreno con cultivos tradicionales'),
(56, 27.2, 'proceso', 'Distrito Sepahua, Ucayali', 'Predio destinado a ganader�a'),
(57, 40.9, 'proceso', 'Distrito Tahuan�a, Ucayali', '�rea mixta de bosques y cultivos');

-- diagnosticos
SELECT*FROM diagnosticos;
EXEC sp_help diagnosticos;

INSERT INTO diagnosticos(id_predio, fecha_diagnostico, estado_predio, tipo_suelo, tipo_cobertura, observaciones)
VALUES
(1, '2024-01-15', 'Degradado', 'Arcilloso', 'Deforestaci�n', 'Alta p�rdida de vegetaci�n debido a incendios recientes.'),
(2, '2024-01-20', 'Degradado', 'Arenoso', 'Agr�cola', 'Uso intensivo para cultivos sin rotaci�n.'),
(3, '2024-01-25', 'Degradado', 'Limoso', 'Sin cobertura', 'Erosi�n severa detectada en pendientes.'),
(4, '2024-02-05', 'Degradado', 'Arcilloso', 'Pasto seco', 'Compactaci�n del suelo por actividad ganadera.'),
(5, '2024-02-15', 'Degradado', 'Arenoso', 'Deforestaci�n', 'Residuos agr�colas no manejados adecuadamente.'),
(6, '2024-03-01', 'Degradado', 'Limoso', 'Sin cobertura', 'Infiltraci�n reducida y salinizaci�n del suelo.'),
(7, '2024-03-10', 'Degradado', 'Arenoso', 'Agr�cola', 'Sobreuso de maquinaria pesada en plantaciones.'),
(8, '2024-03-20', 'Degradado', 'Arcilloso', 'Deforestaci�n', 'Suelo �cido debido al uso excesivo de fertilizantes.'),
(9, '2024-04-05', 'Degradado', 'Limoso', 'Pasto seco', 'Presencia de surcos profundos por escorrent�a.'),
(10, '2024-04-15', 'Degradado', 'Arenoso', 'Sin cobertura', 'Zonas de suelo desnudo con p�rdida de nutrientes.'),
(11, '2024-05-01', 'Degradado', 'Arcilloso', 'Deforestaci�n', 'Evidencia de extracci�n de madera.'),
(12, '2024-05-10', 'Degradado', 'Limoso', 'Agr�cola', 'Aumento de compactaci�n por sobrepastoreo.'),
(13, '2024-05-20', 'Degradado', 'Arenoso', 'Pasto seco', 'Microorganismos del suelo en declive.'),
(14, '2024-06-01', 'Degradado', 'Arcilloso', 'Sin cobertura', 'Reforestaci�n urgente recomendada.'),
(15, '2024-06-15', 'Degradado', 'Limoso', 'Agr�cola', 'Problemas de drenaje en zonas bajas.'),
(16, '2024-07-01', 'No degradado', 'Arcilloso', 'Bosque natural', 'Cobertura adecuada y suelo en buen estado.'),
(17, '2024-07-10', 'No degradado', 'Arenoso', 'Pastizal', 'Conservaci�n adecuada observada.'),
(18, '2024-07-20', 'No degradado', 'Limoso', 'Bosque natural', '�reas protegidas sin impacto humano significativo.'),
(19, '2024-08-01', 'No degradado', 'Arcilloso', 'Pastizal', 'Gesti�n sostenible de recursos.'),
(20, '2024-08-10', 'No degradado', 'Arenoso', 'Bosque natural', 'Sin signos de degradaci�n ni intervenci�n antr�pica.');

--vt
SELECT*FROM VT;
EXEC sp_help VT;
INSERT INTO VT (codigo, nombres, direccion)
VALUES ('VTP001', 'VIRIDIS TERRA PERU', 'Av. Principal 123, Pucallpa, Ucayali');

-- plantaciones
SELECT*FROM plantaciones;
EXEC sp_help plantaciones;

INSERT INTO plantaciones (id_vt, id_diagnostico, nombre, superficie, ubicacion, fecha_inicio, fecha_final)
VALUES
(1, 1, 'Agroforestales Shihuahuaco-Cacao', 10.5, 'Distrito de Campo Verde, Ucayali', '2024-01-15', '2025-01-15'),
(1, 2, 'Agroforestales Shihuahuaco-Cacao', 8.3, 'Distrito de Yarinacocha, Ucayali', '2024-02-20', '2025-02-20'),
(1, 3, 'Agroforestales Shihuahuaco-Cacao', 12.0, 'Distrito de Coronel Portillo, Ucayali', '2024-03-10', '2025-03-10'),
(1, 4, 'Agroforestales Shihuahuaco-Cacao', 7.5, 'Distrito de Manantay, Ucayali', '2024-04-05', '2025-04-05'),
(1, 5, 'Agroforestales Shihuahuaco-Cacao', 6.0, 'Distrito de Campo Verde, Ucayali', '2024-05-10', '2025-05-10'),

(1, 6, 'Agroforestales Shihuahuaco-Palma', 9.0, 'Distrito de Yarinacocha, Ucayali', '2024-01-20', '2025-01-20'),
(1, 7, 'Agroforestales Shihuahuaco-Palma', 11.0, 'Distrito de Coronel Portillo, Ucayali', '2024-02-25', '2025-02-25'),
(1, 8, 'Agroforestales Shihuahuaco-Palma', 5.5, 'Distrito de Manantay, Ucayali', '2024-03-15', '2025-03-15'),
(1, 9, 'Agroforestales Shihuahuaco-Palma', 14.2, 'Distrito de Campo Verde, Ucayali', '2024-04-10', '2025-04-10'),
(1, 10, 'Agroforestales Shihuahuaco-Palma', 13.0, 'Distrito de Yarinacocha, Ucayali', '2024-05-05', '2025-05-05'),

(1, 11, 'Forestales Shihuahuaco-Pinochuncho', 6.8, 'Distrito de Manantay, Ucayali', '2024-01-25', '2025-01-25'),
(1, 12, 'Forestales Shihuahuaco-Pinochuncho', 7.5, 'Distrito de Campo Verde, Ucayali', '2024-02-10', '2025-02-10'),
(1, 13, 'Forestales Shihuahuaco-Pinochuncho', 8.0, 'Distrito de Yarinacocha, Ucayali', '2024-03-05', '2025-03-05'),
(1, 14, 'Forestales Shihuahuaco-Pinochuncho', 9.2, 'Distrito de Coronel Portillo, Ucayali', '2024-04-15', '2025-04-15'),
(1, 15, 'Forestales Shihuahuaco-Pinochuncho', 11.0, 'Distrito de Manantay, Ucayali', '2024-05-25', '2025-05-25'),

(1, 16, 'Shihuahuaco-Marupa', 10.0, 'Distrito de Campo Verde, Ucayali', '2024-01-30', '2025-01-30'),
(1, 17, 'Shihuahuaco-Marupa', 5.5, 'Distrito de Coronel Portillo, Ucayali', '2024-02-15', '2025-02-15'),
(1, 18, 'Shihuahuaco-Marupa', 8.5, 'Distrito de Manantay, Ucayali', '2024-03-20', '2025-03-20'),
(1, 19, 'Shihuahuaco-Marupa', 6.0, 'Distrito de Yarinacocha, Ucayali', '2024-04-30', '2025-04-30'),
(1, 20, 'Shihuahuaco-Marupa', 9.0, 'Distrito de Campo Verde, Ucayali', '2024-05-15', '2025-05-15');


--especies
SELECT*FROM especies;
EXEC sp_help especies;

INSERT INTO especies (nombre_comun, nombre_cientifico, uso, descripcion)
VALUES
('Shihuahuaco', 'Dipteryx odorata', 'Madera, Extractos, Aceites esenciales', 'Conocido por su madera de alta calidad, utilizada en construcci�n y carpinter�a'),
('Cacao', 'Theobroma cacao', 'Alimentos, Bebidas, Medicinal', 'utilizadas para producir chocolate. Tambi�n tiene propiedades medicinales y antioxidantes.'),
('Palma', 'Elaeis guineensis', 'Aceite, Alimentos, Forraje', 'Se obtiene aceite de palma, uno de los aceites vegetales m�s importantes a nivel mundial'),
('Marupa', 'Simarouba amara', 'Madera, Medicina tradicional', 'La marupa es un �rbol conocido por su madera liviana y resistente'),
('Pinochuncho', 'Podocarpus glossophyllus', 'Madera, Construcci�n, Estructuras', 'ideal para la construcci�n y la fabricaci�n de estructuras.');

--especies plantadas
SELECT*FROM especies_plantadas;
EXEC sp_help especies_plantadas;

INSERT INTO especies_plantadas (id_plantacion, id_especie, cantidad)
VALUES
(1, 11, 4000),   -- Shihuahuaco, 10 ha * 400 plantas/ha
(2, 12, 10000),  -- Cacao, 10 ha * 1000 plantas/ha
(3, 13, 13600),  -- Palma, 10 ha * 1360 plantas/ha
(4, 14, 8000),   -- Marupa, 10 ha * 800 plantas/ha
(5, 15, 5000),   -- Pinochuncho, 10 ha * 500 plantas/ha
(6, 11, 4000),   -- Shihuahuaco, 10 ha * 400 plantas/ha
(7, 12, 10000),  -- Cacao, 10 ha * 1000 plantas/ha
(8, 13, 13600),  -- Palma, 10 ha * 1360 plantas/ha
(9, 14, 8000),   -- Marupa, 10 ha * 800 plantas/ha
(10, 15, 5000),   -- Pinochuncho, 10 ha * 500 plantas/ha
(11, 11, 4000),   -- Shihuahuaco, 10 ha * 400 plantas/ha
(12, 12, 10000),  -- Cacao, 10 ha * 1000 plantas/ha
(13, 13, 13600),  -- Palma, 10 ha * 1360 plantas/ha
(14, 14, 8000),   -- Marupa, 10 ha * 800 plantas/ha
(15, 15, 5000),   -- Pinochuncho, 10 ha * 500 plantas/ha
(16, 11, 4000),   -- Shihuahuaco, 10 ha * 400 plantas/ha
(17, 12, 10000),  -- Cacao, 10 ha * 1000 plantas/ha
(18, 13, 13600),  -- Palma, 10 ha * 1360 plantas/ha
(19, 14, 8000),   -- Marupa, 10 ha * 800 plantas/ha
(20, 15, 5000);   -- Pinochuncho, 10 ha * 500 plantas/ha


--monitoreos
SELECT*FROM monitoreos;
EXEC sp_help monitoreos;

INSERT INTO monitoreos (id_plantacion, fecha, altura_promedio, supervivencia, mortandad, estado, observaciones)
VALUES
(1, '2024-01-01', 3.5, 90, 10, 'Saludable', 'Monitoreo inicial realizado, plantaci�n en buen estado'),
(2, '2024-01-01', 4.0, 92, 8, 'Saludable', 'Plantaci�n con crecimiento adecuado'),
(3, '2024-01-01', 2.8, 88, 12, 'En crecimiento', 'Crecimiento adecuado pero algunas plantas con problemas'),
(4, '2024-01-01', 3.2, 85, 15, 'En crecimiento', 'Requiere monitoreo frecuente para mejorar condiciones'),
(5, '2024-01-01', 4.2, 93, 7, 'Saludable', 'Estado general muy bueno'),
(6, '2024-01-01', 3.0, 89, 11, 'Saludable', 'No se reportaron problemas importantes'),
(7, '2024-01-01', 2.5, 80, 20, 'Atenuado', 'Algunas �reas con mortalidad significativa'),
(8, '2024-01-01', 4.1, 91, 9, 'Saludable', 'Plantaci�n con desarrollo normal'),
(9, '2024-01-01', 3.8, 90, 10, 'Saludable', 'Aptitud y crecimiento �ptimos'),
(10, '2024-01-01', 3.4, 87, 13, 'En crecimiento', 'Se recomienda control de plagas'),
(11, '2024-02-01', 3.6, 91, 9, 'Saludable', 'Crecimiento y salud de plantas sin novedades'),
(12, '2024-02-01', 4.0, 92, 8, 'Saludable', 'Desarrollo adecuado en todas las especies'),
(13, '2024-02-01', 3.1, 88, 12, 'En crecimiento', 'Monitoreo frecuente recomendado debido a la humedad'),
(14, '2024-02-01', 2.9, 84, 16, 'Atenuado', 'Requiere acci�n para mejorar supervivencia'),
(15, '2024-02-01', 4.3, 94, 6, 'Saludable', 'Excelente condici�n de plantaci�n'),
(16, '2024-02-01', 3.3, 90, 10, 'Saludable', 'Sin observaciones importantes'),
(17, '2024-02-01', 2.7, 82, 18, 'Atenuado', 'Problemas de riego en ciertas zonas'),
(18, '2024-02-01', 3.9, 91, 9, 'Saludable', 'Crecimiento homog�neo'),
(19, '2024-02-01', 4.0, 93, 7, 'Saludable', 'Estado general favorable'),
(20, '2024-02-01', 3.2, 85, 15, 'En crecimiento', 'Se requieren ajustes en las condiciones de plantaci�n');

-- mantenimientos
SELECT*FROM mantenimientos;
EXEC sp_help mantenimientos;

INSERT INTO mantenimientos (id_plantacion, fecha, descripcion, actividad, estado)
VALUES
(1, '2024-01-10', 'Monitoreo de plagas', 'Aplicaci�n de pesticida', 'Completado'),
(2, '2024-01-15', 'Control de maleza', 'Corte de maleza alrededor de las plantas', 'Completado'),
(3, '2024-01-20', 'Riego de emergencia', 'Suministro de agua debido a sequ�a', 'Pendiente'),
(4, '2024-01-25', 'Fertilizaci�n', 'Aplicaci�n de fertilizantes en suelos pobres', 'Completado'),
(5, '2024-02-01', 'Inspecci�n general', 'Revisi�n del estado general de la plantaci�n', 'Completado'),
(6, '2024-02-05', 'Control de plagas', 'Aplicaci�n de insecticida para controlar plagas', 'Completado'),
(7, '2024-02-10', 'Control de maleza', 'Eliminaci�n de maleza mediante desbroce', 'Pendiente'),
(8, '2024-02-12', 'Replantaci�n de �reas da�adas', 'Reemplazo de plantas que no sobrevivieron', 'Pendiente'),
(9, '2024-02-15', 'Riego de mantenimiento', 'Riego regular a trav�s de sistema de goteo', 'Completado'),
(10, '2024-02-18', 'Fertilizaci�n de suelos', 'Aplicaci�n de nutrientes a las plantas', 'Completado'),
(11, '2024-03-01', 'Inspecci�n de salud de plantas', 'Chequeo de plantas para detectar plagas', 'Pendiente'),
(12, '2024-03-05', 'Control de plagas', 'Inspecci�n de plagas y tratamiento', 'Completado'),
(13, '2024-03-10', 'Mantenimiento de sistema de riego', 'Revisi�n y ajuste del sistema de riego', 'Pendiente'),
(14, '2024-03-12', 'Monitoreo de crecimiento', 'Medici�n de la altura y estado de las plantas', 'Completado'),
(15, '2024-03-15', 'Control de maleza', 'Aplicaci�n de herbicidas en �reas afectadas', 'Pendiente'),
(16, '2024-03-20', 'Inspecci�n de plantas afectadas', 'Revisi�n de plantas con s�ntomas de enfermedad', 'Completado'),
(17, '2024-03-25', 'Replantaci�n de especies', 'Sustituci�n de plantas muertas por nuevas', 'Pendiente'),
(18, '2024-03-28', 'Riego', 'Riego suplementario en temporada seca', 'Completado'),
(19, '2024-04-02', 'Fertilizaci�n de plantas', 'Aplicaci�n de abono org�nico', 'Pendiente'),
(20, '2024-04-05', 'Mantenimiento de senderos', 'Limpieza y mantenimiento de caminos de acceso', 'Completado');
