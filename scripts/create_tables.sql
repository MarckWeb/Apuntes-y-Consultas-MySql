
--Base de datos para MySQL
--https://josejuansanchez.org/bd/ejercicios-consultas-sql/index.html#ejercicios.-realizaci%C3%B3n-de-consultas-sql
DROP DATABASE IF EXISTS tienda;

--CREANDO NOMBRE PARA LA BASE DE DATOS
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

--CREANDO TABLA PARA FABRICANTE
CREATE TABLE fabricante (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

--CREANDO TABLA PARA PRODUCTO
CREATE TABLE producto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  id_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_fabricante) REFERENCES fabricante(id) ON DELETE CASCADE
);