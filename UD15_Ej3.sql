DROP DATABASE IF EXISTS UD15_Ej3;
create Schema if not exists UD15_Ej3;
use UD15_Ej3;

Create table Cientificos(
	DNI varchar(8) primary key,
    NomApels varchar(255)
);

Create table Proyecto(
	id char(4) primary key,
    Nombre varchar(255),
    Horas int
);

create table Asignado_A(
	Cientifico varchar(8),
    Proyecto char(4),
    primary key (Cientifico,Proyecto),
    foreign key (Cientifico) references Cientificos(DNI),
    foreign key (Proyecto) references Proyecto(id)
);
