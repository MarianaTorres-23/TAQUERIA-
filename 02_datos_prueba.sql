-- =========================================================
-- 02_datos_prueba.sql
-- Dataset de prueba - Proyecto Taquería
-- Incluye: 30 clientes, 22 productos, 60 pedidos y detalles
-- Nota: Productos 21 y 22 NUNCA se venden (para consultas)
-- =========================================================

USE taqueria_bd;

START TRANSACTION;

-- ---------------------------
-- LIMPIEZA (opcional)
-- ---------------------------
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Detalle_Pedido;
TRUNCATE TABLE Pedido;
TRUNCATE TABLE Producto;
TRUNCATE TABLE Cliente;
SET FOREIGN_KEY_CHECKS = 1;

-- ---------------------------
-- CLIENTES (30)
-- ---------------------------
INSERT INTO Cliente (id_cliente, nombre, telefono, email) VALUES
(1,'Ana López','4491111111','ana@mail.com'),
(2,'Luis Pérez','4491111112',NULL),
(3,'María García','4491111113','maria@mail.com'),
(4,'Carlos Ruiz','4491111114',NULL),
(5,'Sofía Hernández','4491111115','sofia@mail.com'),
(6,'Jorge Martínez','4491111116',NULL),
(7,'Laura Gómez','4491111117','laura@mail.com'),
(8,'Pedro Torres','4491111118',NULL),
(9,'Valeria Díaz','4491111119','vale@mail.com'),
(10,'Diego Flores','4491111120',NULL),
(11,'Fernanda Castro','4491111121','fer@mail.com'),
(12,'Ricardo Medina','4491111122',NULL),
(13,'Paola Navarro','4491111123','paola@mail.com'),
(14,'Hugo Ortiz','4491111124',NULL),
(15,'Daniela Silva','4491111125','dani@mail.com'),
(16,'Iván Ramos','4491111126',NULL),
(17,'Karla Vega','4491111127','karla@mail.com'),
(18,'Miguel Luna','4491111128',NULL),
(19,'Andrea Ríos','4491111129','andrea@mail.com'),
(20,'Jesús Soto','4491111130',NULL),
(21,'Brenda Chávez','4491111131','brenda@mail.com'),
(22,'Esteban Reyes','4491111132',NULL),
(23,'Mónica Pineda','4491111133','moni@mail.com'),
(24,'Alberto Romero','4491111134',NULL),
(25,'Patricia Salas','4491111135','paty@mail.com'),
(26,'Óscar Campos','4491111136',NULL),
(27,'Gabriela Muñoz','4491111137','gaby@mail.com'),
(28,'Samuel Aguilar','4491111138',NULL),
(29,'Cecilia Moreno','4491111139','ceci@mail.com'),
(30,'Tomás Herrera','4491111140',NULL);

-- ---------------------------
-- PRODUCTOS (22)
-- Incluye 2 productos que NUNCA se venden: id 21 y 22
-- Incluye 2 inactivos: id 20 y 22
-- ---------------------------
INSERT INTO Producto (id_producto, nombre, precio, categoria, activo) VALUES
(1,'Taco al pastor',18.00,'taco',1),
(2,'Taco de bistec',20.00,'taco',1),
(3,'Taco de suadero',21.00,'taco',1),
(4,'Taco de barbacoa',24.00,'taco',1),
(5,'Taco de chorizo',19.00,'taco',1),
(6,'Taco de campechano',23.00,'taco',1),
(7,'Gringa pastor',45.00,'extra',1),
(8,'Quesadilla',28.00,'extra',1),
(9,'Orden de tacos (5)',90.00,'extra',1),
(10,'Agua de horchata',25.00,'bebida',1),
(11,'Agua de jamaica',25.00,'bebida',1),
(12,'Refresco',28.00,'bebida',1),
(13,'Cerveza sin alcohol',35.00,'bebida',1),
(14,'Extra salsa',5.00,'extra',1),
(15,'Extra limón',3.00,'extra',1),
(16,'Extra cebolla',4.00,'extra',1),
(17,'Extra cilantro',4.00,'extra',1),
(18,'Flan',30.00,'extra',1),
(19,'Gelatina',18.00,'extra',1),
(20,'Agua mineral',30.00,'bebida',0),
(21,'Taco vegano',26.00,'taco',1),
(22,'Postre especial',40.00,'extra',0);

-- ---------------------------
-- PEDIDOS (60) - total se recalcula al final
-- ---------------------------
INSERT INTO Pedido (id_pedido, fecha_hora, id_cliente, total, estado) VALUES
(1,'2026-02-01 09:10:00',1,0,'pagado'),
(2,'2026-02-01 09:20:00',1,0,'entregado'),
(3,'2026-02-01 10:05:00',2,0,'pagado'),
(4,'2026-02-01 10:40:00',3,0,'pagado'),
(5,'2026-02-01 11:10:00',4,0,'pendiente'),
(6,'2026-02-01 12:00:00',5,0,'entregado'),
(7,'2026-02-01 12:20:00',6,0,'pagado'),
(8,'2026-02-01 13:05:00',7,0,'pagado'),
(9,'2026-02-01 13:30:00',8,0,'cancelado'),
(10,'2026-02-01 14:10:00',9,0,'pagado'),

(11,'2026-02-02 09:15:00',1,0,'pagado'),
(12,'2026-02-02 10:10:00',2,0,'entregado'),
(13,'2026-02-02 10:45:00',10,0,'pagado'),
(14,'2026-02-02 11:25:00',11,0,'pagado'),
(15,'2026-02-02 12:05:00',12,0,'pendiente'),
(16,'2026-02-02 12:30:00',13,0,'pagado'),
(17,'2026-02-02 13:10:00',14,0,'entregado'),
(18,'2026-02-02 14:00:00',15,0,'pagado'),
(19,'2026-02-02 14:20:00',16,0,'pagado'),
(20,'2026-02-02 15:10:00',17,0,'pagado'),

(21,'2026-02-03 09:05:00',18,0,'entregado'),
(22,'2026-02-03 09:50:00',19,0,'pagado'),
(23,'2026-02-03 10:30:00',20,0,'pagado'),
(24,'2026-02-03 11:15:00',3,0,'pagado'),
(25,'2026-02-03 12:10:00',4,0,'entregado'),
(26,'2026-02-03 12:55:00',5,0,'pagado'),
(27,'2026-02-03 13:35:00',6,0,'pagado'),
(28,'2026-02-03 14:05:00',7,0,'pagado'),
(29,'2026-02-03 15:00:00',8,0,'pendiente'),
(30,'2026-02-03 15:40:00',9,0,'pagado'),

(31,'2026-02-04 09:10:00',10,0,'pagado'),
(32,'2026-02-04 09:45:00',11,0,'pagado'),
(33,'2026-02-04 10:20:00',12,0,'entregado'),
(34,'2026-02-04 11:05:00',13,0,'pagado'),
(35,'2026-02-04 11:55:00',14,0,'pagado'),
(36,'2026-02-04 12:35:00',15,0,'cancelado'),
(37,'2026-02-04 13:15:00',16,0,'pagado'),
(38,'2026-02-04 14:10:00',17,0,'entregado'),
(39,'2026-02-04 14:40:00',18,0,'pagado'),
(40,'2026-02-04 15:20:00',19,0,'pagado'),

(41,'2026-02-05 09:05:00',1,0,'pagado'),
(42,'2026-02-05 09:35:00',2,0,'pagado'),
(43,'2026-02-05 10:05:00',3,0,'pagado'),
(44,'2026-02-05 10:45:00',4,0,'entregado'),
(45,'2026-02-05 11:25:00',5,0,'pagado'),
(46,'2026-02-05 12:00:00',6,0,'pagado'),
(47,'2026-02-05 12:40:00',7,0,'pendiente'),
(48,'2026-02-05 13:10:00',8,0,'pagado'),
(49,'2026-02-05 14:05:00',9,0,'entregado'),
(50,'2026-02-05 14:35:00',10,0,'pagado'),

(51,'2026-02-06 09:20:00',21,0,'pagado'),
(52,'2026-02-06 10:00:00',22,0,'pagado'),
(53,'2026-02-06 10:40:00',23,0,'pagado'),
(54,'2026-02-06 11:10:00',24,0,'entregado'),
(55,'2026-02-06 12:05:00',25,0,'pagado'),
(56,'2026-02-06 12:45:00',26,0,'pagado'),
(57,'2026-02-06 13:20:00',27,0,'pagado'),
(58,'2026-02-06 14:10:00',28,0,'pagado'),
(59,'2026-02-06 14:50:00',29,0,'cancelado'),
(60,'2026-02-06 15:30:00',30,0,'pagado');

-- ---------------------------
-- DETALLE_PEDIDO (sin productos 21 y 22)
-- ---------------------------
INSERT INTO Detalle_Pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
-- Día 1
(1,1,2,18.00),(1,10,1,25.00),(1,14,1,5.00),
(2,2,3,20.00),(2,11,1,25.00),
(3,3,2,21.00),(3,12,1,28.00),
(4,4,2,24.00),(4,10,2,25.00),(4,15,2,3.00),
(5,5,3,19.00),(5,11,1,25.00),
(6,6,2,23.00),(6,10,1,25.00),(6,16,1,4.00),
(7,1,4,18.00),(7,12,1,28.00),
(8,9,1,90.00),(8,11,1,25.00),
(9,2,2,20.00),(9,14,2,5.00),
(10,4,1,24.00),(10,8,1,28.00),(10,10,1,25.00),

-- Día 2
(11,1,3,18.00),(11,11,1,25.00),
(12,2,2,20.00),(12,10,1,25.00),(12,15,2,3.00),
(13,3,2,21.00),(13,14,1,5.00),(13,12,1,28.00),
(14,6,2,23.00),(14,10,2,25.00),
(15,5,1,19.00),(15,12,1,28.00),
(16,9,1,90.00),(16,13,1,35.00),
(17,4,2,24.00),(17,11,1,25.00),(17,16,2,4.00),
(18,2,3,20.00),(18,10,1,25.00),
(19,1,2,18.00),(19,8,1,28.00),
(20,7,1,45.00),(20,12,1,28.00),(20,14,2,5.00),

-- Día 3
(21,4,1,24.00),(21,10,1,25.00),
(22,6,3,23.00),(22,11,1,25.00),
(23,3,2,21.00),(23,12,2,28.00),
(24,2,1,20.00),(24,1,1,18.00),(24,15,1,3.00),
(25,9,1,90.00),(25,10,1,25.00),
(26,5,2,19.00),(26,11,1,25.00),(26,18,1,30.00),
(27,1,3,18.00),(27,14,1,5.00),
(28,4,2,24.00),(28,10,2,25.00),
(29,6,1,23.00),(29,12,1,28.00),
(30,2,2,20.00),(30,19,2,18.00),

-- Día 4
(31,1,2,18.00),(31,10,1,25.00),
(32,3,3,21.00),(32,11,1,25.00),
(33,9,1,90.00),(33,12,1,28.00),
(34,4,2,24.00),(34,14,2,5.00),
(35,6,2,23.00),(35,10,1,25.00),(35,15,2,3.00),
(36,2,1,20.00),(36,10,1,25.00),
(37,5,3,19.00),(37,11,1,25.00),
(38,7,1,45.00),(38,13,1,35.00),
(39,8,2,28.00),(39,10,1,25.00),
(40,4,1,24.00),(40,18,1,30.00),(40,12,1,28.00),

-- Día 5
(41,1,4,18.00),(41,10,1,25.00),
(42,2,2,20.00),(42,11,1,25.00),
(43,3,2,21.00),(43,12,1,28.00),(43,14,1,5.00),
(44,9,1,90.00),(44,13,1,35.00),
(45,6,2,23.00),(45,10,1,25.00),
(46,4,2,24.00),(46,11,2,25.00),
(47,5,1,19.00),(47,12,1,28.00),
(48,1,2,18.00),(48,8,1,28.00),(48,15,2,3.00),
(49,2,3,20.00),(49,10,1,25.00),
(50,3,1,21.00),(50,18,1,30.00),

-- Día 6
(51,4,2,24.00),(51,11,1,25.00),
(52,6,2,23.00),(52,12,1,28.00),(52,14,2,5.00),
(53,9,1,90.00),(53,10,1,25.00),
(54,2,2,20.00),(54,13,1,35.00),
(55,1,3,18.00),(55,11,1,25.00),
(56,3,2,21.00),(56,12,1,28.00),
(57,5,2,19.00),(57,10,1,25.00),
(58,7,1,45.00),(58,11,1,25.00),(58,15,2,3.00),
(59,2,1,20.00),(59,14,1,5.00),
(60,4,1,24.00),(60,8,1,28.00),(60,19,1,18.00);

-- ---------------------------
-- RECALCULAR TOTALES
-- ---------------------------
UPDATE Pedido P
JOIN (
  SELECT id_pedido, SUM(cantidad * precio_unitario) AS total_calc
  FROM Detalle_Pedido
  GROUP BY id_pedido
) X ON P.id_pedido = X.id_pedido
SET P.total = X.total_calc;

COMMIT;
USE taqueria_bd


DELIMITER //

CREATE PROCEDURE sp_pedidos_por_cliente(IN p_id_cliente INT)
BEGIN
    SELECT P.id_pedido,
           P.fecha_hora,
           P.total,
           P.estado
    FROM Pedido P
    WHERE P.id_cliente = p_id_cliente
    ORDER BY P.fecha_hora DESC;
END //

DELIMITER ;
CALL sp_pedidos_por_cliente(1);


SELECT id_pedido, estado
FROM Pedido
WHERE id_pedido = 5;

DELIMITER //

CREATE PROCEDURE sp_actualizar_estado_pedido(
    IN p_id_pedido INT,
    IN p_nuevo_estado VARCHAR(12)
)
BEGIN
    UPDATE Pedido
    SET estado = p_nuevo_estado
    WHERE id_pedido = p_id_pedido;
END //

DELIMITER ;
CALL sp_actualizar_estado_pedido(5, 'entregado');


DELIMITER //

CREATE PROCEDURE sp_recalcular_total_pedido(IN p_id_pedido INT)
BEGIN
    UPDATE Pedido
    SET total = (
        SELECT COALESCE(SUM(cantidad * precio_unitario),0)
        FROM Detalle_Pedido
        WHERE id_pedido = p_id_pedido
    )
    WHERE id_pedido = p_id_pedido;
END //

DELIMITER ;
CALL sp_recalcular_total_pedido(1);

SELECT id_pedido, total
FROM Pedido
WHERE id_pedido = 1;

-- Ver detalle que se usó para calcular
SELECT *
FROM Detalle_Pedido
WHERE id_pedido = 1;