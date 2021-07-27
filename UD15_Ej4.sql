DROP DATABASE IF EXISTS UD15_Ej4;
create Schema if not exists UD15_Ej4;
use UD15_Ej4;

create table Productos(
	Codigo int primary key,
    Nombre varchar(100),
    Precio int
);

create table Maquinas_Registradas (
	Codigo int primary key,
    Piso int
);

create table Cajeros(
	Codigo int primary key,
    NomApels varchar(255)
);

create table Ventas(
	Cajero int,
    Maquina int,
    Producto int,
    primary key (Cajero, Maquina, Producto),
    foreign key (Cajero) references Cajeros(Codigo),
    foreign key (Maquina) references Maquinas_Registradas(Codigo),
    foreign key (Producto) references Productos(Codigo)
);