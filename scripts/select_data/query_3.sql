--CONSULTAS MULTI-TABLA (composicion interna)

--1-.Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT
p.nombre,
p.precio,
f.nombre
FROM producto p 
JOIN fabricante f
ON f.id = p.id_fabricante; 

--2-.Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
SELECT
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f
ON f.id = p.id_fabricante
ORDER BY f.nombre ASC;

--3-.Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT
p.id,
p.nombre,
f.id,
f.nombre
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id;

--4-.Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f
ON f.id = p.id_fabricante
ORDER BY p.precio ASC LIMIT 1;

--5-.Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro. 
SET @precio_max = (
    SELECT
        MAX(precio)
    FROM producto
);

SELECT 
    p.nombre, 
    p.precio, 
    f.nombre
FROM Producto p
JOIN Fabricante f ON p.id_fabricante = f.id
WHERE p.precio = @precio_max;

--6-. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT 
    p.nombre AS product_from_lenovo
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE f.nombre = 'lenovo';

--7-. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT 
    p.nombre AS product_from_crucial
FROM producto p
JOIN fabricante f
ON p.id_fabricante = f.id
WHERE f.nombre = 'crucial' AND p.precio > 200;

--8-. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.
SELECT 
    p.nombre,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';

--9-.Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.
SELECT 
    p.nombre,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

--10-.Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
SELECT 
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre LIKE '%e';

--11-.Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
SELECT 
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre LIKE '%w%';

--12-.Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
SELECT 
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE p.precio >= 180
ORDER BY p.precio DESC;

SELECT 
    p.nombre,
    p.precio,
    f.nombre
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE p.precio >= 180
ORDER BY p.nombre ASC;

--13-.Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
SELECT 
    f.id, 
    f.nombre
FROM fabricante f
JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.id;