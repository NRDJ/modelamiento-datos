CREATE DATABASE caso2;
\c caso2
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, nombre VARCHAR(75) NOT NULL);
CREATE TABLE profesores(rut VARCHAR(20) PRIMARY KEY, nombre VARCHAR(50) NOT NULL, departamentos_id INT REFERENCES departamentos(id));
CREATE TABLE pruebas(id SERIAL PRIMARY KEY, puntaje INT NOT NULL, profesores_rut VARCHAR(20) REFERENCES profesores(rut));
CREATE TABLE alumnos(rut VARCHAR(20) PRIMARY KEY, nombre VARCHAR(50) NOT NULL);
CREATE TABLE pruebas_alumnos(pruebas_id INT REFERENCES pruebas(id), alumnos_rut VARCHAR(20) REFERENCES alumnos(rut) PRIMARY KEY(pruebas_id, alumnos_rut));
CREATE TABLE cursos(id SERIAL PRIMARY KEY, nombre_asignatura VARCHAR(75) NOT NULL);
CREATE TABLE alumnos_cursos(cursos_id INT REFERENCES cursos(id), alumnos_rut VARCHAR(20) REFERENCES alumnos(rut), PRIMARY KEY(cursos_id,alumnos_rut));
