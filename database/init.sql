-- Script de inicialización para MySQL en Docker
-- Se ejecuta automáticamente cuando el contenedor de MySQL se inicia por primera vez

-- Crear la base de datos si no existe con charset UTF-8
CREATE DATABASE IF NOT EXISTS demo_jpa 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

-- Usar la base de datos
USE demo_jpa;

-- Establecer charset de la sesión
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Crear la tabla producto manualmente (antes de que JPA intente crearla)
CREATE TABLE IF NOT EXISTS producto (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(500),
    precio DOUBLE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insertar datos de prueba
-- Usando INSERT IGNORE para evitar duplicados si se reinicia
INSERT IGNORE INTO producto (id, nombre, descripcion, precio) VALUES
(1, 'Laptop HP Pavilion', 'Laptop HP Pavilion 15.6 pulgadas, Intel Core i5, 8GB RAM, 256GB SSD', 899.99),
(2, 'Mouse Logitech M185', 'Mouse inalámbrico Logitech M185, diseño ambidiestro, batería de larga duración', 19.99),
(3, 'Teclado Mecánico RGB', 'Teclado mecánico gaming con retroiluminación RGB, switches azules', 79.99),
(4, 'Monitor Samsung 24"', 'Monitor Samsung 24 pulgadas Full HD, 75Hz, tecnología FreeSync', 179.99),
(5, 'Auriculares Sony WH-1000XM4', 'Auriculares inalámbricos con cancelación de ruido, batería 30h', 349.99),
(6, 'Webcam Logitech C920', 'Webcam Full HD 1080p con micrófono estéreo integrado', 69.99),
(7, 'Disco Duro SSD 1TB', 'SSD interno Kingston A2000 1TB, NVMe PCIe, lectura 2200MB/s', 89.99),
(8, 'Router WiFi 6 TP-Link', 'Router inalámbrico WiFi 6 AX3000, doble banda, 4 antenas', 129.99),
(9, 'Tablet Samsung Galaxy Tab', 'Tablet Android 10.5 pulgadas, 4GB RAM, 64GB almacenamiento', 299.99),
(10, 'Impresora HP LaserJet', 'Impresora láser monocromática, WiFi, impresión dúplex automática', 189.99);

