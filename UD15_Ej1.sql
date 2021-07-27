DROP DATABASE IF EXISTS UD15_Ej1;
create Schema if not exists UD15_Ej1;
use UD15_Ej1;

create table Despachos(
	Numeros int primary key,
    Capacidad int
);


Create table Directores(
	DNI varchar(8) primary key,
    NomApels varchar(255),
    DNIJefe varchar(8),
    Despacho int,
    foreign key (DNIJefe) references Directores(DNI),
    foreign key (Despacho) references Despachos(Numeros)
);
SHOW TABLES;
SHOW COLUMNS FROM Despachos;
SHOW COLUMNS FROM Directores;

