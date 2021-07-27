DROP DATABASE IF EXISTS UD15_Ej2;
create Schema if not exists UD15_Ej2;
use UD15_Ej2;

Create table Piezas(
	Codigo int primary key,
    Nombre varchar (100)
);

Create table Proveedores(
	id char(4) primary key,
    Nombre varchar(100)
);

create table Suministrar(
	CodigoPieza int, 
    IdProveedor char(4),
    primary key (CodigoPieza,IdProveedor),
    Precio int,
    foreign key (CodigoPieza) references Piezas(Codigo),
    foreign key (IdProveedor) references Proveedores(id)
);

SHOW TABLES;
SHOW COLUMNS FROM Piezas;
SHOW COLUMNS FROM Proveedores;
SHOW COLUMNS FROM Suministrar;
