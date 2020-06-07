-- Consulta de facturaci�n de un cliente en espec�fico por c�digo
exec sp_facturacion_por_cliente 1;
exec sp_facturacion_por_cliente 2;
exec sp_facturacion_por_cliente 3;


-- Consulta de facturaci�n por rango de fechas la fecha se digitada como un varchar
exec sp_facturacion_rango_fechas '2020-06-05','2020-06-05';
exec sp_facturacion_rango_fechas '2020-06-04','2020-06-06';
exec sp_facturacion_rango_fechas '2020-06-04','2020-06-07';
exec sp_facturacion_rango_fechas '2020-06-07','2020-06-07';

-- Consulta de facturaci�n de un producto en espec�fico por c�digo
exec sp_facturacion_por_producto 1;
exec sp_facturacion_por_producto 2;
exec sp_facturacion_por_producto 3;


-- Listado de clientes que han comprado al menos una vez
execute sp_listado_clientes_que_han_comprado