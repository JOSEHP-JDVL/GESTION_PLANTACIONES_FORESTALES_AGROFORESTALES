USE plantaciones_forestales_agroforestales;
GO

SELECT*FROM propietarios;
SELECT*FROM predios;

--- Obtener un listado de propietarios con el id del predio, la ubicacion de cada predio y la superficie de cada uno de ellos

SELECT 
    propietarios.nombre AS propietarios,
    predios.id_propietario AS predio,
    predios.ubicacion_predio,
    predios.superficie_ha
FROM 
    propietarios
JOIN 
    predios ON propietarios.id_propietario = predios.id_propietario;



--- Para conocer el diagnóstico realizado a un predio especifico con el id del predio, 
--- conocer la fecha del diagnóstico, el estado del predio, el tipo de suelo del predio, la 
--- cobertura existente y las observaciones realizadas a ese predio.
SELECT*FROM diagnosticos;

SELECT 
    diagnosticos.fecha_diagnostico,
	diagnosticos.estado_predio,
    diagnosticos.tipo_suelo,
	diagnosticos.tipo_cobertura,
    diagnosticos.observaciones
FROM 
    diagnosticos
JOIN 
    predios ON diagnosticos.id_predio = predios.id_predio
WHERE 
    predios.id_predio = 10
ORDER BY 
    diagnosticos.fecha_diagnostico DESC;


--- Conocer la cantidad de plantaciones instaladas por cada predio.

SELECT*FROM plantaciones;

SELECT 
    predios.id_predio AS id_predio,
    COUNT(plantaciones.id_plantacion) AS total_plantaciones
FROM 
    predios
LEFT JOIN 
    diagnosticos ON predios.id_predio = diagnosticos.id_predio
LEFT JOIN 
    plantaciones ON diagnosticos.id_diagnostico = plantaciones.id_diagnostico
GROUP BY 
    predios.id_predio;


--- Conocer las Especies más plantadas y su cantidad total
SELECT 
    especies.nombre_cientifico,
    especies.nombre_comun,
    SUM(especies_plantadas.cantidad) AS total_plantadas
FROM 
    especies
JOIN 
    especies_plantadas ON especies.id_especie = especies_plantadas.id_especie
GROUP BY 
    especies.id_especie, especies.nombre_cientifico, especies.nombre_comun
ORDER BY 
    total_plantadas DESC;



--- Conocer el historial de monitoreos para una plantación agroforestal de shihuahuaco y cacao
SELECT*FROM plantaciones;

SELECT 
    plantaciones.nombre AS plantacion,
    monitoreos.fecha,
    monitoreos.altura_promedio,
    monitoreos.supervivencia,
    monitoreos.observaciones
FROM 
    plantaciones
JOIN 
    monitoreos ON plantaciones.id_plantacion = monitoreos.id_plantacion
WHERE 
    plantaciones.nombre = 'Agroforestales Shihuahuaco-Cacao'
ORDER BY 
    monitoreos.fecha DESC;

--- Lista de mantenimientos realizados en el último año
SELECT*FROM plantaciones;

SELECT 
    mantenimientos.id_mantenimiento,
    mantenimientos.fecha,
    mantenimientos.descripcion,
    mantenimientos.actividad
FROM 
    mantenimientos
WHERE 
    mantenimientos.fecha >= DATEADD(YEAR, -1, GETDATE()) -- Último año
ORDER BY 
    mantenimientos.fecha DESC;
;
--- Conocer la superficie total de plantaciones por cada estado del predio.
SELECT*FROM diagnosticos;

SELECT 
    diagnosticos.estado_predio,
    SUM(plantaciones.superficie) AS superficie_total
FROM 
    diagnosticos
JOIN 
    plantaciones ON diagnosticos.id_diagnostico = plantaciones.id_diagnostico
GROUP BY 
    diagnosticos.estado_predio
ORDER BY 
    superficie_total DESC;
