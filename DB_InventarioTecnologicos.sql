create database db_inventario;
use db_inventario;

create table Departamento(
	idDepartamento int not null identity primary key,
	nombreDepartemento varchar(100) not null,
);

create table Municipio(
	idMunicipio int not null identity primary key,
	nombreMunicipio varchar(100) not null,
	idDepartamento int not null constraint fk_departamento_municipio
	foreign key references Departamento(idDepartamento)
);

create table Pais(
	idPais int not null identity primary key,
	nombrePais varchar(100) not null
);

create table Sede(
	idSede int not null identity primary key,
	nombreSede varchar(100) not null,
	direccionSede varchar(100) not null,
	idPais int not null constraint fk_pais_sede
	foreign key references Pais(idPais),
	idDepartamento int not null constraint fk_departamento_sede
	foreign key references Departamento(idDepartamento),
	idMunicipio int not null constraint fk_municipio_sede
	foreign key references Municipio (idMunicipio)
);

create table Empleado(
	idEmpleado int not null identity primary key,
	nombreEmpleado varchar(100) not null,
	puestoEmpleado varchar(100) not null,
	idSede int not null constraint fk_sede_empleado
	foreign key references Sede(idSede)
);

create table Usuario(
	idUsuario int not null identity primary key,
	usuario varchar(20) not null,
	pass varchar (15) not null,
	idEmpleado int not null constraint fk_empleado_usuario
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
	nivelOficina varchar(20) not null,
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
	idMarca int not null constraint fk_marca_tipodeequipo
	foreign key references Marca(idMarca)
);

create table Proveedor(
	idProveedor int not null identity primary key,
	nombreProveedor varchar(100) not null,
	direccionProveedor varchar(100) not null
);
create table Compras(
	idCompras int not null identity primary key,
	fechaDeCompra date not null,
	cantidad int not null,
	montoTotal money not null,
	idTipoDeEquipo int not null constraint fk_tipodeequipo_compras
	foreign key references TipoDeEquipo (idTipoDeEquipo),
	idProveedor int not null constraint fk_proveedor_compras
	foreign key references Proveedor (idProveedor)
);

create table Equipo(
	idEquipo int not null identity primary key,
	estado varchar(10) not null,
	idTipoDeEquipo int not null constraint fk_tipodeequipo_equipo
	foreign key references TipoDeEquipo(idTipoDeEquipo),
	idOficina int not null constraint fk_oficina_equipo
	foreign key references Oficina(idOficina)
);

create table ReporteEquipo(
	idReporteEquipo int not null identity primary key,
	fechaReporte date not null,
	descripcion varchar(100) not null,
	idEquipo int not null constraint fk_equipo_reporteequipo
	foreign key references Equipo(idEquipo)
);
-- drop table Empleados;