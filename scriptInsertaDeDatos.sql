use BrokenShoesDB

/* Inserta Tallas */
insert into tallas values(34,22.5,2.5,3.5);
insert into tallas values(34.5,23,3,4);
insert into tallas values(35,23.3,3.5,4.5);
insert into tallas values(36,23.5,4,5);
insert into tallas values(36.5,23.6,4.5,5.5);
insert into tallas values(37.5,24,5,6);
insert into tallas values(38.5,24.5,5.5,6.5);
insert into tallas values(39,25,6,7);
insert into tallas values(40,25.5,6.5,7.5);
insert into tallas values(40.5,26,7,8);
insert into tallas values(41,26.5,7.5,8.5);
insert into tallas values(42,27,8,9);
insert into tallas values(42.5,27.5,8.5,9.5);
insert into tallas values(43,28,9,10);
insert into tallas values(44,28.5,9.5,10.5);
insert into tallas values(44.5,29,10,11);
insert into tallas values(45,29.5,10.5,11.5);
insert into tallas values(45.5,30,11,12);
insert into tallas values(46,30.5,11.5,12.5);
insert into tallas values(47,31,12,13);
insert into tallas values(48,31.5,12.5,13.5);
insert into tallas values(48.5,32,13,14);
insert into tallas values(49,32.5,13.5,14.5);
insert into tallas values(50,33,14,15);

go

/*  Inserta partes */
insert into partes values('TACON');
insert into partes values('ZUELA');
insert into partes values('FORRO');
insert into partes values('MATERIAL INTERNO');
insert into partes values('MATERIAL EXTERNO');

go

/* Inserta Materiales*/
insert into materiales values('CAUCHO');
insert into materiales values('PVC');
insert into materiales values('CUERO');
insert into materiales values('MADERA');
insert into materiales values('COLCHO');
insert into materiales values('CREPE');
insert into materiales values('MICROFIBRA');
insert into materiales values('CUERO/SINTETICO');
insert into materiales values('CUERO/CHAROL');
insert into materiales values('CUERO/TEXTIL');
insert into materiales values('PIEL AUTENTICA');
insert into materiales values('PIEL SINTETICA');
insert into materiales values('TEXTIL');
go

/* Inserta Marcas*/
insert into marcas values('ADIDAS');
insert into marcas values('FILA');
insert into marcas values('ZEN');
insert into marcas values('NAUTICA');
go

/* Inserta Modelos*/
insert into modelos values(1,'SNEAKER',default);
insert into modelos values(1,'CLOUDFOAM',default);
insert into modelos values(3,'SCARPA',default);
insert into modelos values(4,'OXFORD',default);

go

/* Inserta Tipo Cierres*/
insert into tiposCierres values('CORDONES');
insert into tiposCierres values('BUNGEE');
insert into tiposCierres values('GANCHO');
insert into tiposCierres values('LAZO');
insert into tiposCierres values('HEBILLA');
insert into tiposCierres values('CREMALLERA');
insert into tiposCierres values('VELCRO');
insert into tiposCierres values('BOTONES');
go

/* Inserta Altura Plataforma*/
insert into alturaPlataforma values('SIN PLATAFORMA');
insert into alturaPlataforma values('BAJA');
insert into alturaPlataforma values('MEDIA');
insert into alturaPlataforma values('ALTA');
go


/* Inserta Altura Tacon*/
insert into alturaTacon values('PLANO');
insert into alturaTacon values('BAJO');
insert into alturaTacon values('MEDIO');
insert into alturaTacon values('ALTO');
insert into alturaTacon values('MUY ALTO');
go


/* Inserta Colores*/
insert into colores values('NEGRO');
insert into colores values('BLANCO');
insert into colores values('MARRON');
insert into colores values('AZUL');
insert into colores values('CREMA');
insert into colores values('CAFE');
insert into colores values('GRIS');
insert into colores values('ORO');
insert into colores values('BRONCE');
insert into colores values('BEIGE');
insert into colores values('MULTI COLOR');
insert into colores values('BEIGE');
go

/* Inserta Departamentos*/
insert into departamentos values('CABELLEROS');
insert into departamentos values('DAMAS');
insert into departamentos values('NIÑOS');
insert into departamentos values('NIÑAS');
go


/* Inserta Tipos*/
insert into tipos values('ALPAGATAS');
insert into tipos values('TENIS');
insert into tipos values('SANDALIAS');
insert into tipos values('BOTAS');
insert into tipos values('BOTINES')
insert into tipos values('ZAPATOS');
insert into tipos values('CHANQULETAS');
go


/* Inserta Categorias*/
insert into categorias values(1,'VESTIR');
insert into categorias values(1,'CONFORT');
insert into categorias values(1,'CASUAL');
insert into categorias values(2,'DEPORTIVOS');
insert into categorias values(2,'CASUAL')
insert into categorias values(2,'CONFORT');
insert into categorias values(3,'CASUAL');
insert into categorias values(3,'DEPORTIVA');
insert into categorias values(3,'CONFORT');
insert into categorias values(4,'VESTIR');
insert into categorias values(4,'MOLITARES');
insert into categorias values(5,'CASUAL');
insert into categorias values(5,'CONFORT');
insert into categorias values(5,'DEPORTIVOS');
insert into categorias values(6,'CONFORT');
insert into categorias values(6,'CASUAL');
insert into categorias values(6,'FORMAL');
insert into categorias values(7,'CASUAL');
insert into categorias values(7,'CONFORT');
go



/* Inserta Productos*/
INSERT INTO [dbo].[productos]
           ([nombre]
           ,[descripcionLarga]
           ,[codigoBarra]
           ,[departamentoId]
           ,[marcaId]
           ,[modeloId]
           ,[modeloReferenciaFabrica]
           ,[alturaPlataformaId]
           ,[alturaTaconId]
           ,[stockMinimo]
           ,[stockMaximo]
           ,[puntoReorden]
           ,[tipoId]
           ,[categoriaId]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES (
           'ADIDAS',
           NULL,
           'E44555',
           2,
           1,
           2,
           'R9853',
           1,
           1,
           20,
           80,
           40,
           1,
           2,
           default,
           null,
           1);
INSERT INTO [dbo].[productos]
           ([nombre]
           ,[descripcionLarga]
           ,[codigoBarra]
           ,[departamentoId]
           ,[marcaId]
           ,[modeloId]
           ,[modeloReferenciaFabrica]
           ,[alturaPlataformaId]
           ,[alturaTaconId]
           ,[stockMinimo]
           ,[stockMaximo]
           ,[puntoReorden]
           ,[tipoId]
           ,[categoriaId]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES (
           'ADIDAS',
           NULL,
           'FSERERES',
           2,
           1,
           2,
           '6SDDRRR',
           1,
           1,
           20,
           80,
           40,
           1,
           2,
           default,
           null,
           1);
INSERT INTO [dbo].[productos] 
           ([nombre]
           ,[descripcionLarga]
           ,[codigoBarra]
           ,[departamentoId]
           ,[marcaId]
           ,[modeloId]
           ,[modeloReferenciaFabrica]
           ,[alturaPlataformaId]
           ,[alturaTaconId]
           ,[stockMinimo]
           ,[stockMaximo]
           ,[puntoReorden]
           ,[tipoId]
           ,[categoriaId]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES (
           'ZAPATOS NAUTICA',
           NULL,
           '4599EKKDD',
           4,
           4,
           4,
           'DREDDD',
           1,
           1,
           20,
           80,
           40,
           6,
           17,
           default,
           null,
           1);
go


/* Materiales producto */
INSERT INTO [dbo].[materialesProductos]
           ([productoId]
           ,[parteId]
           ,[materialId])
     VALUES
           (1,
            5,
            11);

INSERT INTO [dbo].[materialesProductos]
           ([productoId]
           ,[parteId]
           ,[materialId])
     VALUES
           (3,
            5,
            11);
INSERT INTO [dbo].[materialesProductos]
           ([productoId]
           ,[parteId]
           ,[materialId])
     VALUES
           (2,
            5,
            11);


go


/* Inserta Tipos Imagenes*/
insert into tiposImagenes values('FRENTE');
insert into tiposImagenes values('DESDE ARRIBA');
insert into tiposImagenes values('ZUELA');
insert into tiposImagenes values('LADO DERECHO');
insert into tiposImagenes values('LADO IZQUIERDO');
go


/* Inserta Imagenes Producto*/
INSERT INTO imagenesProductos values (1,1, (SELECT * FROM OPENROWSET(BULK N'C:\imagenes\adidafrente.jpg', SINGLE_BLOB) as T1))
INSERT INTO imagenesProductos values (2,1, (SELECT * FROM OPENROWSET(BULK N'C:\imagenes\adidaarriba.jpg', SINGLE_BLOB) as T1))
go

/* Inserta Tipos Documentos*/
insert into tiposDocumentos values('RUC',1);
insert into tiposDocumentos values('DNI',1);
insert into tiposDocumentos values('CEDULA',1);
insert into tiposDocumentos values('RNC',1);
go


/* Inserta Clientes*/
INSERT INTO [dbo].[clientes]
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]
           ,[NombreSocial]
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'ARAMIS RENE',
           'LUCIANO',
           'VALENTIN',
           'M',
            NULL,
            1,
			'99999999999',
            default,
            null,
            1);
INSERT INTO [dbo].[clientes]
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]
           ,[NombreSocial]
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'JOSE DAVID',
           'BELLO',
           'HERNANDEZ',
           'M',
            NULL,
            1,
			'99999999999',
            default,
            null,
            1);
INSERT INTO [dbo].[clientes]
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]
           ,[NombreSocial]
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'ANA JOSEFINA',
           'NIN',
           'CAMPOS',
           'F',
            NULL,
            1,
			'77777777777',
            default,
            null,
            1);
INSERT INTO [dbo].[clientes]
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]
           ,[NombreSocial]
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'MANUEL',
           'ENCARNACION',
           'SANTOS',
           'M',
            NULL,
            1,
			'77777777777',
            default,
            null,
            1);
GO


/* Inserta Tipos Telefonos*/
insert into tiposTelefonos values('CELULAR',1);
insert into tiposTelefonos values('CASA',1);
insert into tiposTelefonos values('TRABAJO',1);
go


/* Inserta Telefonos Clientes*/
insert into TelefonosClientes values(1,1,'8099999999');
insert into TelefonosClientes values(2,1,'8098888888');
insert into TelefonosClientes values(3,1,'8097777777');
insert into TelefonosClientes values(1,2,'8099999999');
insert into TelefonosClientes values(2,2,'8098888888');
insert into TelefonosClientes values(3,2,'8097777777');
go



/* Inserta Vendedores*/
INSERT INTO vendedores
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]    
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'MIGUEL',
           'SANTANA',
           'ROSARIO',
           'M',        
            1,
			'99999999999',
            default,
            null,
            1);
INSERT INTO vendedores
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]    
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'JOSE',
           'PREZ',
           'VALENTIN',
           'M',        
            1,
			'99999999999',
            default,
            null,
            1);
INSERT INTO vendedores
           ([nombres]
           ,[apellidoPaterno]
           ,[apellidoMaterno]
           ,[genero]    
           ,[tipoDocumentoId]
		   ,[numeroDocumento]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES(
           'JOEL',
           'PREZ',
           'VALENTIN',
           'M',        
            1,
			'99999999999',
            default,
            null,
            1);
GO



/* Inserta Movimiento inventario*/
INSERT INTO [dbo].[movimientoInventario]
           ([tipoMovimiento]
           ,[Observacion]
           ,[numeroReferencia]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('ENTRADA',
            NULL,
           'FACT-001',
            DEFAULT,
            NULL,
            1);

INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            1,
            1,
           10,
           80,
           2500);
INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            1,
            3,
            2,
           80,
           2500);
INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            1,
            1,
            7,
           60,
           2500);

INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            3,
            1,
           10,
           80,
           2500);
INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            3,
            3,
            2,
           80,
           2500);
INSERT INTO [dbo].[movimientoDetalleInventario]
           ([movimientoIneventarioId]
           ,[productId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[costo])      
     VALUES
           (1,
            3,
            1,
            7,
           60,
           2500);     

GO


/*Insertar Inventario */
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (3,
            1,
            10, 
            80, 
            2500, 
            default, 
            null );
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (3,
            3,
            2, 
            80, 
            2500, 
            default, 
            null );
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (3,
            1,
            7, 
            60, 
            2500, 
            default, 
            null );
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (1,
            1,
            10, 
            80, 
            2500, 
            default, 
            null );
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (1,
            3,
            2, 
            80, 
            2500, 
            default, 
            null );
INSERT INTO inventarios
           (productId
           ,colorId
           ,tallaId
           ,cantidad
           ,costoUnitario
           ,fechaRegistro
           ,fechaActulizacion)
     VALUES
           (1,
            1,
            7, 
            60, 
            2500, 
            default, 
            null );


/*Insertar Facturas */

INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A03030969',
            1,
            1,
            450,
            0,
            2500,
            2950,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 1,
             1,
             1,
            10,
            1,
           2500,
              0,
			 18,
            450,
           2950);


INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A03030444w',
            1,
            1,
            900,
            0,
            5000,
            5900,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 2,
             1,
             1,
            10,
            2,
           2500,
              0,
			 18,
            900,
           5900);

INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A94885033',
            1,
            3,
            450,
            0,
            2500,
            2950,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 3,
             2,
             1,
            10,
            1,
           2500,
              0,
			 18,
           450,
           2950);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 3,
             3,
             1,
            10,
            1,
           2500,
              0,
			 18,
           450,
           2950);
INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A94885033',
            1,
            3,
            450,
            0,
            2500,
            2950,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 4,
             2,
             1,
            10,
            1,
           2500,
              0,
			 18,
           450,
           2950);

	INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A94885033',
            2,
            3,
            450,
            0,
            2500,
            2950,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 5,
             2,
             1,
            10,
            1,
           2500,
              0,
			 18,
           450,
           2950);
INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A9EESDEEE3',
            3,
            3,
            450,
            0,
            2500,
            2950,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 6,
             2,
             1,
            10,
            1,
           2500,
              0,
			 18,
           450,
           2950);

INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A9EESDEEE3',
            1,
            3,
            900,
            0,
            5000,
            5900,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 7,
             2,
             1,
            10,
            2,
           2500,
              0,
			 18,
           900,
           5900);

INSERT INTO [dbo].[facturas]
           ([numeroComprobanteFiscal]
           ,[clienteId]
           ,[vendedorID]
           ,[totalImpuestos]
           ,[totalDescuento]
           ,[subTotal]
           ,[total]
           ,[fechaRegistro]
           ,[fechaActulizacion]
           ,[status])
     VALUES
           ('A9EESDEEE3',
            1,
            3,
            9000,
            0,
            50000,
            59000,
            default,
            null,
            1);

INSERT INTO [dbo].[detallesFacturas]
           ([facturaId]
           ,[productoId]
           ,[colorId]
           ,[tallaId]
           ,[cantidad]
           ,[precioItem]
           ,[descuentoItem]
           ,[porcientoImpuesto]
	       ,[montoimpuestoItem] 
           ,[totalItem])
     VALUES
           ( 8,
             2,
             1,
            10,
            20,
           2500,
              0,
			 18,
           9000,
          59000);