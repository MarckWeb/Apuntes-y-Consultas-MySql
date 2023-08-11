--21-. Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT
    nombre,
    precio
FROM producto
WHERE precio <= 120;

--22-. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
SELECT
    nombre,
    precio
FROM producto 
WHERE precio >= 400;

--23-.Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
SELECT
    nombre,
    precio
FROM producto
WHERE precio < 400;

--24-.Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
SELECT 
nombre,
precio
FROM producto
WHERE precio >= 80 AND precio <= 300;

--25-.Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
SELECT 
   *
FROM producto
WHERE precio BETWEEN 60 AND 200;

--26-.Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.
SELECT 
    nombre, 
    precio,
    id_fabricante
FROM producto 
WHERE precio > 200 AND id_fabricante = 6;

--27-.Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
SELECT 
*
FROM producto
WHERE id_fabricante = 1 OR id_fabricante = 3 OR id_fabricante = 5;

--28-.Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.
SELECT 
*
FROM producto
WHERE id_fabricante IN (1,3,5);

--29-.Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.
SELECT 
    nombre,
    precio,
    precio * 100 AS céntimos
FROM producto;

--30-.Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
SELECT 
    id,
   nombre AS nombres_con_s
FROM fabricante WHERE nombre LIKE 's%';

--31-.Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
SELECT 
    id,
   nombre
FROM fabricante WHERE nombre LIKE '%e';

--32-. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
SELECT 
    id,
   nombre
FROM fabricante 
WHERE nombre LIKE '%W%';

--33-.Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
SELECT 
    id,
   nombre
FROM fabricante 
WHERE LENGTH(nombre) = 4;  

--34-.Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
SELECT 
*
FROM producto
WHERE nombre LIKE '%portatil%';

--35-.Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
SELECT 
*
FROM producto
WHERE nombre LIKE '%Monitor%' AND precio < 215;

--36-.Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).

SELECT 
 nombre, 
 precio
FROM producto WHERE precio >= 180
ORDER BY precio DESC;

SELECT 
 nombre, 
 precio
FROM producto WHERE precio >= 180
ORDER BY precio ASC;