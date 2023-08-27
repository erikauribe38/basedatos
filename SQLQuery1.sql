CREATE DATABASE consecionario;

-- Tabla de Marcas
CREATE TABLE Marcas (
    id_marca INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla de Modelos
CREATE TABLE Modelos (
    id_modelo INT PRIMARY KEY NOT NULL,
    id_marca INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2),
    descuento DECIMAL(10, 2),
    potencia_fiscal INT,
    cilindrada DECIMAL(6, 2),
    FOREIGN KEY (id_marca) REFERENCES Marcas(id_marca)
);

-- Tabla de Equipamiento
CREATE TABLE Equipamiento (
    id_equipamiento INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de Extras
CREATE TABLE Extras (
    id_extra INT PRIMARY KEY NOT NULL,
    id_modelo INT NOT NULL,
    id_equipamiento INT NOT NULL,
    precio_extra DECIMAL(10, 2),
    FOREIGN KEY (id_modelo) REFERENCES Modelos(id_modelo),
    FOREIGN KEY (id_equipamiento) REFERENCES Equipamiento(id_equipamiento)
);

-- Tabla de Automóviles en Stock
CREATE TABLE Stock (
    numero_bastidor INT PRIMARY KEY NOT NULL,
    id_modelo INT NOT NULL,
    ubicacion VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_modelo) REFERENCES Modelos(id_modelo)
);

-- Tabla de Servicios Oficiales
CREATE TABLE ServiciosOficiales (
    id_servicio INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    domicilio VARCHAR(200),
    NIF VARCHAR(20)
);

-- Tabla de Vendedores
CREATE TABLE Vendedores (
    id_vendedor INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    NIF VARCHAR(20),
    domicilio VARCHAR(200)
);

-- Tabla de Ventas
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY NOT NULL,
    id_automovil INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_servicio INT NOT NULL,
    precio_venta DECIMAL(10, 2),
    modo_pago VARCHAR(20),
    fecha_entrega DATE,
    matricula VARCHAR(20),
    es_stock BIT,
    FOREIGN KEY (id_automovil) REFERENCES Stock(numero_bastidor),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor),
    FOREIGN KEY (id_servicio) REFERENCES ServiciosOficiales(id_servicio)
);

-- Tabla de Extras Vendidos
CREATE TABLE ExtrasVendidos (
    id_venta INT NOT NULL,
    id_extra INT NOT NULL,
    precio_extra DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_extra) REFERENCES Extras(id_extra)
);