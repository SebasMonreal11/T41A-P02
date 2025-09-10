-- Tabla maestros
CREATE TABLE maestros (
    id_maestro INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla alumnos
CREATE TABLE alumnos (
    matricula INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla grupos
CREATE TABLE grupos (
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    id_maestro INT NOT NULL,
    PRIMARY KEY (periodo, seccion),
    CONSTRAINT fk_grupo_maestro FOREIGN KEY (id_maestro)
        REFERENCES maestros(id_maestro)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Tabla inscripciones
CREATE TABLE inscripciones (
    matricula INT NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    PRIMARY KEY (matricula, periodo, seccion),
    CONSTRAINT fk_inscripcion_alumno FOREIGN KEY (matricula)
        REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_inscripcion_grupo FOREIGN KEY (periodo, seccion)
        REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tabla asistencia
CREATE TABLE asistencia (
    matricula INT NOT NULL,
    periodo VARCHAR(10) NOT NULL,
    seccion VARCHAR(10) NOT NULL,
    fecha_asistencia DATE NOT NULL,
    PRIMARY KEY (matricula, periodo, seccion, fecha_asistencia),
    CONSTRAINT fk_asistencia_alumno FOREIGN KEY (matricula)
        REFERENCES alumnos(matricula)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_asistencia_grupo FOREIGN KEY (periodo, seccion)
        REFERENCES grupos(periodo, seccion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
