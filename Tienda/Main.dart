// 1. Crear dos productos distintos.
  

import 'Producto.dart';
import 'Tienda.dart';

void main(){
  var producto1 = Producto("LAP-001");
  var producto2 = Producto("AUD-002");

  // 2.  registramos las venta para cada uno.
  producto1.registrarVenta("Laptop Ultra Pro", 1299.99, "Garantía extendida por 2 años");
  producto2.registrarVenta("Audífonos Inalámbricos", 89.50, {"color": "blanco", "cancelacion_ruido": true});

  // 3. Cambiamps el anuncio de la tienda.
  Tienda.cambiarAnuncio("¡Ofertas de fin de semana! ¡Todo con 20% de descuento!");

  // 4. Mostramos el resumen de ambos productos.
  producto1.resumen();
  producto2.resumen();

  // 5. Mostramos el total de productos vendidos.
  print("\nTotal de productos vendidos: ${Tienda.obtenerVentas()}");
 
}