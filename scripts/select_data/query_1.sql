--CONSULTAS SOBRE LA TABLA
--1-.Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM producto; 

--2-.Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre, precio FROM producto; 

--3-.Lista todas las columnas de la tabla producto.
SELECT * FROM producto;

--4-.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT 
    nombre,
    precio,
    ROUND(precio * 1.70, 2)
FROM producto;

--5-.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
SELECT 
    nombre AS nombre_de_producto,
    precio AS euros,
    ROUND(precio * 1.70, 2) AS  dolares
FROM producto;

--6-.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT 
    UPPER(nombre) AS nombre_en_mayuscula,
    precio
FROM producto;

--7-.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT 
    LOWER(nombre) AS nombre_en_minuscula,
    precio
FROM producto;

--8-.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT 
    nombre,
    UPPER(SUBSTRING(nombre, 1, 2)) AS nombre_con_caracter
FROM fabricante;

--9-.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT 
    nombre, 
    ROUND(precio) AS precio
FROM producto;

--10-.Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT 
    nombre,
    FLOOR(precio) AS precio
FROM producto;

--11-.Lista el identificador de los fabricantes que tienen productos en la tabla producto.
SELECT 
    id_fabricante
FROM producto;
GROUP BY id_fabricante;

--12-.Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.
SELECT 
    id_fabricante
FROM producto
GROUP BY id_fabricante;

--13-.Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre ASC;

--14-.Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;

--15-. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT 
    nombre AS nombre_ascendente, 
    precio AS precio_descendente
FROM producto 
ORDER BY nombre ASC, precio DESC;

--16-.Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante WHERE id BETWEEN 1 AND 5;
SELECT * FROM fabricante WHERE id IN (1, 2, 3, 4, 5);

--17-.Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT * FROM fabricante WHERE id IN (4, 5);

--18-.Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

--19-.Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

--20-.Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT nombre FROM producto WHERE id_fabricante = 2;