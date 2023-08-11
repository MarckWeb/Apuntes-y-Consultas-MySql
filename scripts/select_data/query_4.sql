--CONSULTAS MULTI-TABLA (composicion externa)

--1-.Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.
SELECT
* 
FROM fabricante f 
LEFT JOIN producto p  ON f.id = p.id_fabricante;

--2-.Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.
SELECT
* 
FROM fabricante f 
LEFT JOIN producto p  ON f.id = p.id_fabricante
WHERE p.id_fabricante IS NULL;

--3-.¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.
La tabla de productos tiene una columna id_fabricante que se define como NOT NULL y también tiene una clave externa que hace referencia a la tabla de fabricantes. Esto implica que todos los productos deben tener un fabricante asociado en la base de datos.

En este contexto específico, no sería posible representar productos que no estén relacionados con un fabricante. Si queremos relacionar o permitir productos sin fabricantes asociados, necesitarías modificar el esquema de la base de datos y cambiar la restricción NOT NULL en la columna id_fabricante en la tabla producto.

SELECT
* 
FROM producto p   
RIGHT JOIN fabricante f ON f.id = p.id_fabricante
WHERE p.nombre IS NULL;