<!-- Please update value in the {}  -->

<h1 align="center">Mis Apuntes y Prácticas de MySQL</h1>

¡Bienvenido a mi repositorio de MySQL!

En este repositorio encontrarás mis apuntes, así como las consultas que realicé mientras cursaba y practicaba con MySQL. Además, podrás explorar la práctica de una tienda, donde busqué datos utilizando diversas consultas de MySQL para profundizar mis habilidades y comprensión del lenguaje.

---- 

<div align="center">
  <img src="https://www.mysql.com/common/logos/logo-mysql-170x115.png" alt="MySQL Logo" width="200">
</div>

----

MySQL es un sistema de gestión de bases de datos relacional (RDBMS, por sus siglas en inglés) de código abierto que se ha convertido en uno de los sistemas de gestión de bases de datos más populares y ampliamente utilizados en el mundo. Fue creado originalmente por MySQL AB en 1995 y desde entonces ha sido desarrollado y mantenido por Oracle Corporation.


## Base de datos simulada de una tienda

En esta base de datos simulada de una tienda, puedes practicar SQL con MySQL. El ejercicio fue tomado de una página web, cuyos créditos se encuentran al final.

----

![screenshot](https://github.com/MarckWeb/MySQL-practice-with-data-from-store/blob/master/assets/Imagen1.png)

----

Este ejercicio te proporciona una base de datos simulada de una tienda donde puedes practicar tus habilidades en SQL con MySQL. La base de datos incluye tablas como "id", "nombre", "precio" y más, que representan las operaciones típicas de una tienda.

## Contenido
**SELECT:** Utilizado para seleccionar datos de una tabla en la base de datos.
```sql
SELECT column1, column2 FROM table_name;
```

**INSERT INTO: **  Utilizado para insertar nuevos registros en una tabla.
```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
```

**UPDATE:** Utilizado para actualizar registros existentes en una tabla.
```sql
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
```

**DELETE FROM:** Utilizado para eliminar registros de una tabla.
```sql
DELETE FROM table_name WHERE condition;
```

**JOIN:** Utilizado para combinar datos de dos o más tablas en base a una condición.
```sql
SELECT * FROM table1 JOIN table2 ON table1.column = table2.column;
```

**GROUP BY:** Utilizado para actualizar registros existentes en una tabla.
```sql
SELECT column1, COUNT(*) FROM table_name GROUP BY column1;
```
### usa MySQL
[MySQL](https://www.mysql.com/)

### Creditos al autor, donde realice la práctica de mis consultas

Jose Juan Sanchez
[web page](https://josejuansanchez.org/bd/ejercicios-consultas-sql/index.html#ejercicios.-realizaci%C3%B3n-de-consultas-sql)
