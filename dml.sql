use DB_InventarioTEC;

-- Paises
INSERT INTO Paises VALUES ('GT');
INSERT INTO Paises VALUES ('HD');
SELECT * FROM Paises;

-- Regiones
INSERT INTO Regiones VALUES ('METRO', 1);
INSERT INTO Regiones VALUES ('OCC', 1);
INSERT INTO Regiones VALUES ('NOR', 1);
INSERT INTO Regiones VALUES ('SUR', 1);
SELECT * FROM Regiones;

-- HUB
INSERT INTO HUB VALUES ('BAR', 4, 1);
INSERT INTO HUB VALUES ('CDI', 1, 1);
INSERT INTO HUB VALUES ('CHI', 4, 1);
INSERT INTO HUB VALUES ('COA', 2, 1);
INSERT INTO HUB VALUES ('COB', 3, 1);
INSERT INTO HUB VALUES ('DEM', 2, 1);
INSERT INTO HUB VALUES ('ESC', 2, 1);
INSERT INTO HUB VALUES ('FRS', 3, 1);
INSERT INTO HUB VALUES ('GTN', 1, 1);
INSERT INTO HUB VALUES ('GTO', 1, 1);
INSERT INTO HUB VALUES ('GTS', 1, 1);
INSERT INTO HUB VALUES ('GUA', 1, 1);
INSERT INTO HUB VALUES ('HUE', 2, 1);
INSERT INTO HUB VALUES ('JAL', 3, 1);
INSERT INTO HUB VALUES ('JUT', 4, 1);
INSERT INTO HUB VALUES ('MAL', 2, 1);
INSERT INTO HUB VALUES ('MAZ', 4, 1);
INSERT INTO HUB VALUES ('MOR', 3, 1);
INSERT INTO HUB VALUES ('PET', 3, 1);
INSERT INTO HUB VALUES ('QUE', 2, 1);
INSERT INTO HUB VALUES ('QUI', 2, 1);
INSERT INTO HUB VALUES ('RAN', 3, 1);
INSERT INTO HUB VALUES ('SAL', 3, 1);
INSERT INTO HUB VALUES ('SLC', 4, 1);
INSERT INTO HUB VALUES ('SLM', 2, 1);
INSERT INTO HUB VALUES ('SMA', 2, 1);
INSERT INTO HUB VALUES ('SOL', 4, 1);
INSERT INTO HUB VALUES ('TEC', 3, 1);
SELECT * FROM HUB;

-- Sedes
INSERT INTO Sedes VALUES ('20 Calle – Ciudad Guatemala', '20 calle 0-41 Zona 1, Ciudad Guatemala', 1, 1,1);

-- Departamento Empleado
INSERT INTO DepartamentosEmpleados VALUES ('Administración', 'Departamento encargado de la administración general');
INSERT INTO DepartamentosEmpleados VALUES ('Comercial', 'Departamento comercial de la empresa');
INSERT INTO DepartamentosEmpleados VALUES ('Factor humano', 'Departamento de las relaciones humanas internas de la empresa');
INSERT INTO DepartamentosEmpleados VALUES ('Gerencia', 'Departamento encargado de la gerencia de la empresa');
INSERT INTO DepartamentosEmpleados VALUES ('Operaciones', 'Departamento encargado de las operaciones generales de la empresa');
INSERT INTO DepartamentosEmpleados VALUES ('Seguridad y Riesgo', 'Departamento encargado de la seguridad y analisis de riesgos de la empresa');
INSERT INTO DepartamentosEmpleados VALUES ('Tecnologías de la información', 'Departamento encargado del area tecnologica de la empresa');
SELECT * FROM DepartamentosEmpleados;

-- Areas
    -- Administración
INSERT INTO AreasEmpleados VALUES ('Administración', 'Area administrativa', 1);
INSERT INTO AreasEmpleados VALUES ('COD', 'Area encargada el COD', 1);
INSERT INTO AreasEmpleados VALUES ('Comercial', 'Area comercial de administración', 1);
INSERT INTO AreasEmpleados VALUES ('Compras', 'Area de compras administrativas', 1);
INSERT INTO AreasEmpleados VALUES ('Facturación', 'Area de la facturación', 1);
INSERT INTO AreasEmpleados VALUES ('Reclamos', 'Area de reclamos que efectuan los clientes', 1);
    -- Comercial
INSERT INTO AreasEmpleados VALUES ('B2B', 'Area de atención al cliente', 2);
INSERT INTO AreasEmpleados VALUES ('B2C Mantenimiento', 'Area de mantenimiento', 2);
INSERT INTO AreasEmpleados VALUES ('Business', 'Area de negocios', 2);
INSERT INTO AreasEmpleados VALUES ('C2C', 'Area de C2C', 2);
INSERT INTO AreasEmpleados VALUES ('Comercial', 'Area comercial de la empresa', 2);
INSERT INTO AreasEmpleados VALUES ('Cuentas Clave B2B', 'Area de B2B', 2);
INSERT INTO AreasEmpleados VALUES ('EXC', 'Area de express center', 2);
INSERT INTO AreasEmpleados VALUES ('Mensajería', 'Area de mensajería comercial', 2);
INSERT INTO AreasEmpleados VALUES ('Mercadeo', 'Area de mercadeo comercial', 2);
INSERT INTO AreasEmpleados VALUES ('SAC', 'Area de servicio y atención al cliente', 2);
INSERT INTO AreasEmpleados VALUES ('Servicio al cliente', 'Area de servicio a los clientes', 2);
INSERT INTO AreasEmpleados VALUES ('Telemercadeo', 'Area de telemercadeo', 2);
INSERT INTO AreasEmpleados VALUES ('Ventas', 'Area de ventas', 2);

    -- Factor humano
INSERT INTO AreasEmpleados VALUES('Desarrollo Organizacional', 'Organización en el desarrollo de la empresa', 3)
INSERT INTO AreasEmpleados VALUES('Factor Humano', 'Labores generales dentro del departamento', 3)
INSERT INTO AreasEmpleados VALUES('Reclutamiento y Selección', 'Area encarga del reclutamiento de personal y selección de este', 3)
INSERT INTO AreasEmpleados VALUES('Relaciones Laborales', 'Area encargada de la relación interna entre los empleados', 3)

    -- Gerencia
INSERT INTO AreasEmpleados VALUES('Administración', 'Gerentes del departamento', 4)
INSERT INTO AreasEmpleados VALUES('Comercial', 'Gerentes del departamento', 4)
INSERT INTO AreasEmpleados VALUES('Factor Humano', 'Gerentes del departamento', 4)
INSERT INTO AreasEmpleados VALUES('Operaciones', 'Gerentes del departamento',4)
INSERT INTO AreasEmpleados VALUES('Recolecciones', 'Gerentes del departamento', 4)
INSERT INTO AreasEmpleados VALUES('Seguridad y Riesgo', 'Gerentes del departamento', 4)
INSERT INTO AreasEmpleados VALUES('Tecnologías de la información', 'Gerentes del departamento', 4)

    -- Operaciones
INSERT INTO AreasEmpleados VALUES('CEDIS', 'Area encargada de la distribución',5)
INSERT INTO AreasEmpleados VALUES('Flota', 'Area encargada del manejo de transporte',5)
INSERT INTO AreasEmpleados VALUES('Logistica inversa', 'Area encargada del contacto con los clientes',5)
INSERT INTO AreasEmpleados VALUES('Operaciones', 'Area encargada del manejo general de operaciones',5)
INSERT INTO AreasEmpleados VALUES('Planeación', 'Area encargada de la planeación',5)
INSERT INTO AreasEmpleados VALUES('Programación', 'Area encargada de la programación',5)
INSERT INTO AreasEmpleados VALUES('Recolecciones', 'Area encargada de la recolección de paquetes',5)
INSERT INTO AreasEmpleados VALUES('Trafico', 'Area encargada del trafico de paquetes',5)

    -- Seguridad y Riesgo
INSERT INTO AreasEmpleados VALUES('Investigación', 'Area encargada de investigaciones de seguridad', 6)
INSERT INTO AreasEmpleados VALUES('Monitoreo', 'Area encargada del monitoreo de la seguridad', 6)
INSERT INTO AreasEmpleados VALUES('Seguridad', 'Area encargada de la seguridad general', 6)

    -- Tecnologías de la información
INSERT INTO AreasEmpleados VALUES('Desarrollo', 'Area encargada del desarrollo de proyectos informaticos', 7)
INSERT INTO AreasEmpleados VALUES('Proyectos', 'Area encargada del la gestión e implementación de proyectos', 7)
INSERT INTO AreasEmpleados VALUES('Soporte', 'Area encargada del soporte a diferentes problemas relacionados con tecnología', 7)




























