CREATE DATABASE caso1;
\c caso1
CREATE TABLE liquidaciones(id SERIAL PRIMARY KEY, liquidacion INT NOT NULL, archivo VARCHAR(75) NOT NULL);
CREATE TABLE departamento(id SERIAL PRIMARY KEY, nombre VARCHAR(50) NOT NULL);
CREATE TABLE trabajador(rut VARCHAR(20) PRIMARY KEY, nombre VARCHAR(50) NOT NULL, direccion VARCHAR(100) NOT NULL, departamento_id INT REFERENCES departamento(id), liquidaciones_id INT REFERENCES liquidaciones(id));