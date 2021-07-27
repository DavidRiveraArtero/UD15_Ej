DROP DATABASE IF EXISTS UD15_Ej5;
create Schema if not exists UD15_Ej5;
use UD15_Ej5;

Create table Facultad(
	Codigo int primary key,
    Nombre varchar(100)
);

Create table Equipos(
	NumSerie char(4) primary key,
    Nombre varchar(100),
    Facultad int,
    foreign key (Facultad) references Facultad(Codigo)
);

Create table Investigadores(
	DNI varchar(8) primary key,
    NomApels varchar(255),
    Facultad int,
    foreign key (Facultad) references Facultad(Codigo)
);

create table Reservas(
	DNI varchar(8),
    NumSerie char(4),
    primary key (DNI, NumSerie),
    Comienzo date,
    Fin date,
    foreign key (DNI) references Investigadores(DNI),
    foreign key (NumSerie) references Equipos(NumSerie)
);