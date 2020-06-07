create database  BrokenShoesDB;
go

use BrokenShoesDB;
go

/*Table para registrar los Materiles de las
  suelas de los calzados*/

DROP TABLE IF EXISTS tallas;

create table tallas
( 
	Id int identity(1,1) not null,
	valorEu decimal(4,1),
	valorCM  decimal(4,1),
	ValorUk decimal(4,1),
	valorUSA  decimal(4,1),
	primary key (Id) 
);
go

/*Table para registrar los Materiles de las
  suelas de los calzados*/

DROP TABLE IF EXISTS partes;

create table partes
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar los Materiles de las
  suelas de los calzados*/

DROP TABLE IF EXISTS materiales;

create table materiales
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar los Marcas de los  
  exterior de los calzados*/

DROP TABLE IF EXISTS marcas;

create table marcas
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go


DROP TABLE IF EXISTS modelos;

create table modelos
( 
	Id int identity(1,1) not null,
	marcaId int,
	descripcion varchar(50),
	descontinuado bit default 1,
	primary key (Id), 
	foreign key (marcaId) references marcas (id)    
	
);
go

/*Table para registrar los tipos de cierres que tienen
  los calzados*/

DROP TABLE IF EXISTS tiposCierres;

create table tiposCierres
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar la altura que tienen la plataforma de 
  los calzados*/

DROP TABLE IF EXISTS alturaPlataforma;

create table alturaPlataforma
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar la altura que tienen el tacon de 
  los calzados*/

DROP TABLE IF EXISTS alturaTacon;

create table alturaTacon
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar los colores que tienen  
  los calzados*/

DROP TABLE IF EXISTS colores;

create table colores
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar los departamento que tiene la tienda
  Ejemplo: Damas, Caballeros, Niños y Niñas.  Esto permite 
  hacer un categorización por segmento  */

DROP TABLE IF EXISTS departamentos;

create table departamentos
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go

/*Table para registrar los tipos de productos que tiene la tienda
  Ejemplo: Zapatillas, Zapatos y Botas.  */

DROP TABLE IF EXISTS tipos;

create table tipos
( 
	Id int identity(1,1) not null,
	descripcion varchar(50),
	primary key (Id) 
);
go


/*Table para registrar los categorias de los productos 
  Ejemplo:
  El tipo Zapatos tiene las siguietes categorias: ( Confort y Casual)  */

DROP TABLE IF EXISTS categorias;

create table categorias
( 
	Id int identity(1,1) not null,
	tipoId int,
	descripcion varchar(50),
	primary key (Id),
    foreign key (tipoId) references tipos (Id)
);
go

/*Table para registrar los producos 
 */
DROP TABLE IF EXISTS productos;

create table productos 
(
	Id bigint identity(1,1) not null,
	nombre nvarchar(100) not null,
    descripcionLarga nvarchar(500) null,	
	codigoBarra nvarchar(20) null,
	departamentoId int not null,
	marcaId int not null,
	modeloId int not null,
	modeloReferenciaFabrica nvarchar(50) not null,
	alturaPlataformaId int not null,
	alturaTaconId int not null,
	stockMinimo  smallint not null,
	stockMaximo  smallint not null,
	puntoReorden smallint not null,	
	tipoId int not null,
	categoriaId  int not null, 
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null,	
	[status] bit default 1,
	primary key (Id),
	foreign key (departamentoId) references departamentos (Id),
	foreign key (marcaId) references marcas (Id),
	foreign key (alturaPlataformaId) references alturaPlataforma (Id),
	foreign key (alturaTaconId) references alturaTacon (Id),
    foreign key (tipoId) references tipos (Id),
	foreign key (categoriaId) references categorias (Id),
	foreign key (modeloId) references modelos (Id)
);

go

/*Table para registrar los materiales de los 
  productos
 */

DROP TABLE IF EXISTS materialesProductos;

create table materialesProductos
( 
	Id int identity(1,1) not null,
	productoId bigint not null,
	parteId int not null,
	materialId int not null,
	primary key (Id),
    foreign key (productoId) references productos (Id),
	foreign key (parteId) references partes (Id),
	foreign key (materialId) references materiales (Id)
);
go

DROP TABLE IF EXISTS tiposImagenes;

create table tiposImagenes
( 
	Id int identity(1,1) not null,
	descripcion varchar(50) not null,	
	primary key (Id)  
);
go


DROP TABLE IF EXISTS imagenesProductos;

create table imagenesProductos
( 
	Id int identity(1,1) not null,
	tipoImagenId int not null,
	productoId bigint not null,
	imagen varbinary(max) not null
	primary key (Id),
    foreign key (tipoImagenId) references tiposImagenes (Id),
	foreign key (productoId) references productos (Id)
);
go

DROP TABLE IF EXISTS tiposDocumentos;


create table tiposDocumentos 
(
	Id int identity(1,1) not null,
	descripcion nvarchar(50) not null,
	[status] bit default 1,
	primary key (Id)
);
go


DROP TABLE IF EXISTS clientes;

create table clientes 
(
	Id int identity(1,1) not null,
	nombres nvarchar(100) null,
    apellidoPaterno nvarchar(50) null,	
	apellidoMaterno nvarchar(50) null,
	genero char(1) not null,
	NombreSocial nvarchar(150) null,
	tipoDocumentoId int not null,
	numeroDocumento varchar(20),	
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null,	
	[status] bit default 1,
	primary key (Id),
	foreign key (tipoDocumentoId) references tiposDocumentos (Id)
);
go

USE [BrokenShoesDB]
GO

DROP TABLE IF EXISTS tiposTelefonos;

create table tiposTelefonos
(
	Id int identity(1,1) not null,
	descripcion nvarchar(50) not null,
	[status] bit default 1,
	primary key (Id)
);
go

DROP TABLE IF EXISTS TelefonosClientes;

create table TelefonosClientes
( 
	Id int identity(1,1) not null,
	tipoTelefonoId int not null,
	clienteId int not null,
	telefono varchar(10) not null
	primary key (Id),
    foreign key (tipoTelefonoId) references tiposTelefonos (Id),
	foreign key (clienteId) references clientes (Id)
);
go


DROP TABLE IF EXISTS vendedores;

create table vendedores 
(
	Id int identity(1,1) not null,
	nombres nvarchar(100) null,
    apellidoPaterno nvarchar(50) null,	
	apellidoMaterno nvarchar(50) null,
	genero char(1) not null,	
	tipoDocumentoId int not null,
	numeroDocumento varchar(20),	
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null,	
	[status] bit default 1,
	primary key (Id),
	foreign key (tipoDocumentoId) references tiposDocumentos (Id)
);
go

DROP TABLE IF EXISTS facturas;

create table facturas 
(
	Id bigint identity(1,1) not null,
	numeroComprobanteFiscal nvarchar(20) null,
	clienteId int not null,
	vendedorID int not null,
	totalImpuestos decimal(10,2) null,
	totalDescuento decimal(10,2) null,
	subTotal decimal(10,2) not null, 
	total decimal(18,2) not null,
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null,	
	[status] bit default 1,
	primary key (Id),
	foreign key (clienteId) references clientes (Id),
	foreign key (vendedorID) references vendedores (Id)	
);

go

DROP TABLE IF EXISTS detallesFacturas;

create table detallesFacturas 
(
	Id bigint identity(1,1) not null,
	facturaId bigint not null,
	productoId bigint not null,
	colorId int not null,
	tallaId int not null,
	cantidad int,
	precioItem decimal(10,2),
    descuentoItem decimal(10,2) null,
	porcientoImpuesto decimal(10,2),
	montoimpuestoItem decimal(10,2), 
	totalItem decimal(18,2) not null
	primary key (Id),
	foreign key (facturaId) references facturas (Id),
	foreign key (productoId) references productos (Id),
    foreign key (colorId) references colores (Id),
	foreign key (tallaId) references tallas (Id)	
);

go

DROP TABLE IF EXISTS inventarios;

create table inventarios
(
	Id bigint identity(1,1) not null,	
	productId bigint not null,
	colorId int not null,
	tallaId int not null,
	cantidad int null,
	costoUnitario decimal(18,2) not null,
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null
	primary key (Id),
	foreign key (productId) references productos (Id),
	foreign key (colorId) references colores (Id),	
	foreign key (tallaId) references tallas (Id)
);

go

DROP TABLE IF EXISTS movimientoInventario;

create table movimientoInventario 
(
	Id bigint identity(1,1) not null,
	tipoMovimiento varchar(10) NOT NULL CHECK (tipoMovimiento IN('ENTRADA', 'SALIDA')),
	Observacion nvarchar(100) null,
	numeroReferencia varchar(20) not null,
	fechaRegistro datetime not null default getdate(),
	fechaActulizacion datetime null,	
	[status] bit default 1,
	primary key (Id),
);
go

DROP TABLE IF EXISTS movimientoDetalleInventario;

create table movimientoDetalleInventario 
(
	Id bigint identity(1,1) not null,
	movimientoIneventarioId bigint not null,	
	productId bigint not null,
	colorId int not null,
	tallaId int not null,
	cantidad int not null,
	costo decimal(18,2) null,	
	primary key (Id),
	foreign key (movimientoIneventarioId) references movimientoInventario (Id),
	foreign key (productId) references productos (Id),	
	foreign key (colorId) references colores (Id),
	foreign key (tallaId) references tallas (Id)
);