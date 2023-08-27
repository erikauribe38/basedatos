-- Insertar datos en la tabla Marcas
INSERT INTO Marcas (id_marca, nombre) VALUES
    (1, 'Audi'),
    (2, 'Volkswagen');

-- Insertar datos en la tabla Modelos
INSERT INTO Modelos (id_modelo, id_marca, nombre, precio, descuento, potencia_fiscal, cilindrada) VALUES
    (1, 1, 'Audi A3', 30000, 0.05, 10, 2000),
    (2, 2, 'VW Golf', 28000, 0.1, 8, 1800);

-- Insertar datos en la tabla Equipamiento
INSERT INTO Equipamiento (id_equipamiento, nombre) VALUES
    (1, 'Airbag Conductor'),
    (2, 'Cierre Centralizado'),
    (3, 'Aire Acondicionado'),
    (4, 'Airbag Acompañante'),
    (5, 'Pintura Metalizada');

-- Insertar datos en la tabla Extras
INSERT INTO Extras (id_extra, id_modelo, id_equipamiento, precio_extra) VALUES
    (1, 1, 1, 500),
    (2, 1, 2, 300),
    (3, 2, 1, 450),
    (4, 2, 3, 1000),
    (5, 2, 4, 600),
    (6, 2, 5, 400);

-- Insertar datos en la tabla Stock
INSERT INTO Stock (numero_bastidor, id_modelo, ubicacion) VALUES
    (10001, 1, 'Concesionario Principal'),
    (10002, 2, 'Servicio Oficial A'),
    (10003, 2, 'Servicio Oficial B');

-- Insertar datos en la tabla ServiciosOficiales
INSERT INTO ServiciosOficiales (id_servicio, nombre, domicilio, NIF) VALUES
    (1, 'Servicio Oficial A', 'Calle A, 123', '12345678A'),
    (2, 'Servicio Oficial B', 'Calle B, 456', '98765432B');

-- Insertar datos en la tabla Vendedores
INSERT INTO Vendedores (id_vendedor, nombre, NIF, domicilio) VALUES
    (1, 'Juan Pérez', '11111111X', 'Calle Principal, 789'),
    (2, 'María Gómez', '22222222Y', 'Calle Secundaria, 567');

-- Insertar datos en la tabla Ventas
INSERT INTO Ventas (id_venta, id_automovil, id_vendedor, id_servicio, precio_venta, modo_pago, fecha_entrega, matricula, es_stock) VALUES
    (1, 10001, 1, 2, 28000, 'Contado', '2023-08-27', 'AB123CD', 1),
    (2, 10002, 1, 1, 27000, 'Financiera', '2023-08-28', 'EF456GH', 0);

-- Insertar datos en la tabla ExtrasVendidos
INSERT INTO ExtrasVendidos (id_venta, id_extra, precio_extra) VALUES
    (1, 1, 500),
    (2, 2, 300);
