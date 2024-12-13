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

--