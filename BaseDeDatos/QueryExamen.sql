 Use Examen 
 go

-- Crear la tabla Usuarios si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Usuarios')
BEGIN
    CREATE TABLE Usuarios (
        UsuarioID INT PRIMARY KEY,
        Nombre NVARCHAR(50) NOT NULL,
        CorreoElectronico NVARCHAR(255),
        Telefono NVARCHAR(15)
    );
END;

-- Crear la tabla Equipos si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Equipos')
BEGIN
    CREATE TABLE Equipos (
        EquipoID INT PRIMARY KEY,
        TipoEquipo NVARCHAR(50) NOT NULL,
        Modelo NVARCHAR(50),
        UsuarioID INT,
        FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
    );
END;

-- Crear la tabla Tecnicos si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Tecnicos')
BEGIN
    CREATE TABLE Tecnicos (
        TecnicoID INT PRIMARY KEY,
        Nombre NVARCHAR(50) NOT NULL,
        Especialidad NVARCHAR(50)
    );
END;

-- Crear la tabla Reparaciones si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Reparaciones')
BEGIN
    CREATE TABLE Reparaciones (
        ReparacionID INT PRIMARY KEY,
        EquipoID INT,
        FechaSolicitud DATE,
        Estado NVARCHAR(255),
        FOREIGN KEY (EquipoID) REFERENCES Equipos(EquipoID)
    );
END;

-- Crear la tabla Asignaciones si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Asignaciones')
BEGIN
    CREATE TABLE Asignaciones (
        AsignacionID INT PRIMARY KEY,
        ReparacionID INT,
        TecnicoID INT,
        FechaAsignacion DATE,
        FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(ReparacionID),
        FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(TecnicoID)
    );
END;

-- Crear la tabla DetallesReparacion si no existe
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'DetallesReparacion')
BEGIN
    CREATE TABLE DetallesReparacion (
        DetalleID INT PRIMARY KEY,
        ReparacionID INT,
        Descripcion NVARCHAR(50),
        FechaInicio DATE,
        FechaFin DATE,
        FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(ReparacionID)
    );
END;

-- Mantenimiento tabla usuarios
-- Insertar 
INSERT INTO Usuarios (UsuarioID, Nombre, CorreoElectronico, Telefono)
VALUES (2, 'Juan', 'juan@gmail.com', '7261-2312');

--Borrar un usuario por id 
DELETE FROM Usuarios
WHERE UsuarioID = 1;

--Consultar por id
SELECT * FROM Usuarios
WHERE UsuarioID = 1;

--Modificar
UPDATE Usuarios 
SET UsuarioID =2, Nombre ='Cris', CorreoElectronico = 'cris@gmail.com', Telefono = '8989-0000'
WHERE UsuarioID = 1;



-- Mantenimiento tabla equipos 
--Insertar
INSERT INTO Equipos (EquipoID, TipoEquipo, Modelo, UsuarioID) 
VALUES (1, 'Escritorio' , 'Asus', 2);

--Borrar un equipo por ID
DELETE FROM Equipos
WHERE EquipoID = 1;

--Consultar por por ID
SELECT * FROM Equipos
WHERE EquipoID = 1;

--Modificar
UPDATE Equipos SET EquipoID =2, TipoEquipo ='Laptop', Modelo = 'Dell'
WHERE EquipoID = 1;




--Mantenimiento tabla tecnica
--Insertar 
INSERT INTO Tecnicos (TecnicoID, Nombre, Especialidad)
VALUES (1, 'Maria', 'Redes');

--Borrar por ID
DELETE FROM Tecnicos
WHERE TecnicoID = 1;

--Consultar por ID
SELECT * FROM Tecnicos
WHERE TecnicoID = '1';

--Modificar 
UPDATE Tecnicos
SET TecnicoID = 1, Nombre = 'Kim', Especialidad = 'IT'
WHERE TecnicoID = 1;

