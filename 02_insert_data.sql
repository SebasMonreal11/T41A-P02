
    -- Insertar alumnos
   INSERT INTO alumnos (matricula, nombre) VALUES
(1001, 'Ana Gómez'),
(1002, 'Luis Martínez'),
(1003, 'Sofía Ramírez'),
(1004, 'Jorge López'),
(1005, 'María Torres'),
(1006, 'Carlos Díaz'),
(1007, 'Elena Castro'),
(1008, 'Tomás Ortega'),
(1009, 'Pedro Sánchez'),
(1010, 'Laura Méndez');


    -- Insertar maestros
    INSERT INTO maestro (id_maestro, nombre) VALUES
(1, 'Mtra. Laura Sánchez'),
(2, 'Mtro. Carlos Pérez'),
(3, 'Ing. Mariana Torres'),
(4, 'Dr. José Hernández'),
(5, 'Mtra. Patricia Gómez'),
(6, 'Mtro. Andrés Ramírez'),
(7, 'Ing. Silvia Ortega'),
(8, 'Mtra. Fernanda Ruiz'),
(9, 'Dr. Luis Navarro'),
(10, 'Mtro. Sergio León');


    -- Insertar grupos
  INSERT INTO grupos (periodo, seccion, id_maestro) VALUES
('2025-1', 'A', 1),
('2025-1', 'B', 2),
('2025-1', 'C', 3),
('2025-2', 'A', 4),
('2025-2', 'B', 5),
('2025-2', 'C', 6),
('2025-3', 'A', 7),
('2025-3', 'B', 8),
('2025-3', 'C', 9),
('2025-4', 'A', 10);


    -- Inscripciones
   INSERT INTO inscripciones (matricula, periodo, seccion) VALUES
(1001, '2025-1', 'A'),
(1002, '2025-1', 'A'),
(1003, '2025-1', 'B'),
(1004, '2025-1', 'C'),
(1005, '2025-2', 'A'),
(1006, '2025-2', 'B'),
(1007, '2025-2', 'C'),
(1008, '2025-3', 'A'),
(1009, '2025-3', 'B'),
(1010, '2025-4', 'A');


    -- Asistencia (algunos ausentes)
   INSERT INTO asistencia (matricula, periodo, seccion, fecha_asistencia) VALUES
(1001, '2025-1', 'A', '2025-09-01'),
(1002, '2025-1', 'A', '2025-09-01'),
(1003, '2025-1', 'B', '2025-09-01'),
(1004, '2025-1', 'C', '2025-09-01'),
(1005, '2025-2', 'A', '2025-09-01'),
(1006, '2025-2', 'B', '2025-09-01'),
(1007, '2025-2', 'C', '2025-09-01'),
(1008, '2025-3', 'A', '2025-09-01'),
(1009, '2025-3', 'B', '2025-09-01'),
(1010, '2025-4', 'A', '2025-09-01');

    
