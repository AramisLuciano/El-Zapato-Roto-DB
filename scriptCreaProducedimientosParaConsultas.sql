-- Consulta de facturación de un cliente en específico por código
create procedure sp_facturacion_por_cliente
@cliente int
as
select f.id as NoFactura, 
       ISNULL(c.NombreSocial, c.nombres + ' ' + c.apellidoPaterno  + ' ' + c.apellidoMaterno) as NombreCliente, 
	   cast(f.fechaRegistro as date) as FechaFactura, 
	   f.totalImpuestos,
	   f.totalDescuento,
	   f.subTotal,
	   f.Total as totalFacturado
  from facturas f,    
	   clientes c
 where f.clienteId = c.id
   and c.Id = @cliente;
go

-- Consulta de facturación de un producto en específico por código
create procedure sp_facturacion_por_producto
@producto bigint
as
select df.id as Factura, 
       cast(f.fechaRegistro as date) as FechaFactura,
	   ISNULL(c.NombreSocial, c.nombres + ' ' + c.apellidoPaterno  + ' ' + c.apellidoMaterno) as NombreCliente, 
	   p.id as CodigoProducto, 
       p.nombre as Producto,
	   t.valorCM TallaCentimetros,
	   t.valorEu TallaEuropea,
	   t.ValorUk  TallaReinoUnido ,
	   t.valorUSA TalaEstadosUnidos,
	   cl.descripcion ColoarProducto,
	   df.cantidad as CantidadProcuto,
	   df.precioItem as PrecioProducto, 
	   df.descuentoItem as DescuentoProducto,
	   df.montoimpuestoItem as MontoImpuesto,
	   df.totalItem as TotalMontoProducto	 
  from facturas f, 
       detallesFacturas df, 
	   productos p, 
	   clientes c,
	   tallas t,
	   colores cl
 where f.id = df.facturaId 
   and df.productoId = p.id 
   and f.clienteId = c.id
   and df.tallaId = t.id
   and df.colorId = cl.Id
   and p.id = @producto; 
go

-- Consulta de facturación de un producto en específico por código
create procedure [dbo].[sp_facturacion_rango_fechas]
@fechaDesde varchar(10), @fechaHasta varchar(10)
as
select f.id as NoFactura, 
       ISNULL(c.NombreSocial, c.nombres + ' ' + c.apellidoPaterno  + ' ' + c.apellidoMaterno) as NombreCliente, 
	   cast(f.fechaRegistro as date) as FechaFactura, 
	   f.totalImpuestos,
	   f.totalDescuento,
	   f.subTotal,
	   f.Total as totalFacturado
  from facturas f,    
	   clientes c
 where f.clienteId = c.id
   and cast(f.fechaRegistro as DATE) between @fechaDesde and @fechaHasta
go


-- Listado de clientes que han comprado al menos una vez
create procedure sp_listado_clientes_que_han_comprado
as
select c.id as CodigoCliente, 
       ISNULL(c.NombreSocial, c.nombres + ' ' + c.apellidoPaterno  + ' ' + c.apellidoMaterno) as NombreCliente, 
       COUNT(*) as 'Cantidad de veces que ha comprado'
  from facturas f, clientes c
  where f.clienteId = c.id 
  group by c.Id, c.NombreSocial, c.nombres , c.apellidoPaterno, c.apellidoMaterno