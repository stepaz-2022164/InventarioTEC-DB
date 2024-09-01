-- drop database db_inventario;
create database db_inventario;
use db_inventario;

/* create table Departamento(
	idDepartamento int not null identity primary key,
	nombreDepartemento varchar(100) not null,
);

create table Municipio(
	idMunicipio int not null identity primary key,
	nombreMunicipio varchar(100) not null,
	idDepartamento int not null constraint fk_departamento_municipio
	foreign key references Departamento(idDepartamento)
);
*/

create table Pais(
	idPais int not null identity primary key,
	nombrePais varchar(100) not null
);

create table Region(
	idRegion int not null identity primary key,
	nombreRegion varchar(10) not null,
	idPais int not null constraint FK_Pais_Region
	foreign key references Pais(idPais)
);

create table HUB(
	idHUB int not null identity primary key,
	nombreHUB varchar(3) not null,
	idRegion int not null constraint FK_Region_HUB
	foreign key references Region(idRegion),
	idPais int not null constraint FK_Pais_HUB
	foreign key references Pais(idPais)
);

create table Sede(
	idSede int not null identity primary key,
	nombreSede varchar(100) not null,
	direccionSede varchar(100) not null,
	idPais int not null constraint FK_Pais_Sede
	foreign key references Pais(idPais),
	idRegion int not null constraint FK_Region_Sede
	foreign key references Region(idRegion),
	idHUB int not null constraint FK_HUB_Sede
	foreign key references HUB (idHUB)
);

create table DepartamentoEmpleado(
	idDepartamentoEmpleado int not null identity primary key,
	nombreDepartamentoEmpleado varchar(100) not null,
	descripcionDepartamentoEmpleado varchar(100) not null
);

create table AreaEmpleado(
	idAreaEmpleado int not null identity primary key,
	nombreAreaEmpleado varchar(100) not null,
	descripcionAreaEmpleado varchar(100) not null,
	idDepartamentoEmpleado int not null constraint FK_DepartamentoEmpleado_AreaEmpleado
	foreign key references DepartamentoEmpleado (idDepartamentoEmpleado)
);

create table PuestoEmpleado(
	idPuestoEmpleado int not null  identity primary key,
	nombrePuestoEmpleado varchar(100) not null,
	descripcionPuestoEmpleado varchar(100) not null
);

create table Empleado(
	idEmpleado int not null primary key,
	numeroDeFicha int not null,
	idPuestoEmpleado int not null constraint FK_PuestoEmpleado_Empleado
	foreign key references PuestoEmpleado(idPuestoEmpleado),
	nombreEmpleado varchar(100) not null,
	telefonoEmpleado varchar(20) not null,
	correoElectronico varchar(50) not null,
	idDepartamentoEmpleado int not null constraint FK_DepartamentoEmpleado_Empleado
	foreign key references DepartamentoEmpleado(idDepartamentoEmpleado),
	idAreaEmpleado int not null constraint FK_AreaEmpleado_Empleado
	foreign key references AreaEmpleado(idAreaEmpleado),
	idRegion int not null constraint FK_Region_Empleado
	foreign key references Region(idRegion),
	idHUB int not null constraint FK_HUB_Empleado
	foreign key references HUB(idHUB)
);

create table Usuario(
	idUsuario int not null identity primary key,
	usuario varchar(20) not null,
	pass varchar (15) not null,
	idEmpleado int not null constraint FK_Empleado_Usuario
	foreign key references Empleado(idEmpleado)
);

create table Edificio(
	idEdificio int not null identity primary key,
	cantidadOficinas int not null,
	cantidadNiveles int not null,
	nombreEdificio varchar(100) not null,
	descripcion varchar(100) not null,
	idSede int not null constraint fk_sede_edificio
	foreign key references Sede(idSede)
);

create table Oficina(
	idOficina int not null identity primary key,
	nombreOficina varchar(100) not null,
	descripcionOficina varchar(100) not null,
	nivelOficina varchar(10) not null,
	idEdificio int not null constraint fk_edificio_oficina
	foreign key references Edificio(idEdificio)
);

create table Marca(
	idMarca int not null identity primary key,
	nombreMarca varchar(100) not null,
	descripcion varchar(100) not null
);

create table TipoDeEquipo(
	idTipoDeEquipo int not null identity primary key,
	nombreTipoDeEquipo varchar(100) not null,
	descripcion varchar(100) not null,
	stock int not null,
	idMarca int not null constraint FK_Marca_TipoDeEquipo
	foreign key references Marca(idMarca)
);

create table Equipo(
	idEquipo int not null identity primary key,
	numeroDeSerie varchar(50) not null,
	estado varchar(10) not null,
	idTipoDeEquipo int not null constraint FK_TipoDeEquipo_Equipo
	foreign key references TipoDeEquipo(idTipoDeEquipo),
	idOficina int not null constraint FK_Oficina_Equipo
	foreign key references Oficina(idOficina)
);

create table PropietarioEquipo(
	idPropietarioEquipo int not null identity primary key,
	idEmpleado int not null constraint FK_Empleado_PropietarioEquipo
	foreign key references Empleado(idEmpleado),
	idEquipo int not null constraint FK_Equipo_PropietarioEquipo
	foreign key references Equipo(idEquipo),
	fechaDeEntrega date not null
);

create table ReporteEquipo(
	idReporteEquipo int not null identity primary key,
	fechaReporte date not null,
	descripcion varchar(100) not null,
	idEquipo int not null constraint fk_equipo_reporteequipo
	foreign key references Equipo(idEquipo)
);
-- drop table Empleados;