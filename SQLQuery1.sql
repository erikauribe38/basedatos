CREATE DATABASE consecionario;


create table marcas (
	id_marca varchar(55)not null,
	ford varchar(55)not null,
	mazda varchar(20)not null,
	toyota varchar(55)not null,
	chebrolet varchar(55)not null,
	renout varchar(55)not null,
	constraint pk_marcas primary key (id_marca)
)

create table modelos (
	id_modelo int identity(1,1) not null,
	dosmil_veinte varchar(55) not null,
	dosmil_ventiuno varchar(55)not null,
	dosmil_ventidos varchar(55)not null,
	dosmil_veintitres varchar(55)not null,
	constraint pk_modelos primary key (id_modelo)
)

create table Equipamiento (
	id_equipamiento int identity (1,1) not null,
	Airbags varchar (55) not null,
	pintura varchar(55) not null,
	cogineria varchar(55) not null,
	luces varchar(55) not null,
	Aire varchar(55) not null,
	Audio varchar(55) not null,
	Rin varchar(55) not null,
	constraint pk_Equipamiento primary key (id_equipamiento)
)

create table Concecionario (
	id_concesionario int identity (1,1) not null,
	id_vendedor varchar (55) not null,
	id_zona varchar (55) not null,
	id_stock varchar (55) not null,
	constraint pk_Concecionario primary key (id_concesionario)
)

create table vendedor (
    id_vendedor int identity (1,1) not null,
	nombre varchar(55) not null,
	codigo varchar(55) not null,
	vitrina varchar(55) not null,
 constraint pk_vendedor primary key (id_vendedor)
 )

create table ventas (
	id_ventas int identity (1,1) not null,
	modo varchar (55) not null,
	fecha varchar (55) not null,
	Matricula varchar (55) not null,
	Stock varchar (55) not null,
	infocompra varchar (55) not null,
	constraint pk_ventas primary key (id_ventas)
)

create table Stock (
	id_stock int identity (1,1) not null,
	id_marcas varchar (55) not null,
	id_modelo varchar (55) not null,
	constraint pk_Stock primary key (id_stock)
	)

create table infocompra (
	id_infocompra int identity(1,1) not null, 
	marca varchar(55)not null,
	precio varchar (55) null,
	descuento varchar(55)not null,
	potencia varchar(55) not null,
	trasmicion varchar(55)not null,
	constraint pk_infocompra primary key (id_infocompra)
	)

alter table ventas
add codigo_vend varchar (55) not null;