import 'Tienda.dart';

class Producto {
  
  final String codigo;


  String? descripcion;
  double? precio;
  dynamic observacion; 

  Producto(this.codigo);

  // Asigna los datos al producto y registra la venta en la Tienda.
  void registrarVenta(String desc, double nuevoPrecio, dynamic obs) {
    descripcion = desc;
    precio = nuevoPrecio;
    observacion = obs;
    Tienda.aumentarVentas(); // Llama al método estático de Tienda.
    print("Venta registrada para el producto $codigo.");
  }

  // Muestra el resumen del producto con la información de la tienda.
  void resumen() {
    print("\n--- RESUMEN DEL PRODUCTO ---");
    print("Tienda: ${Tienda.nombre}");
    print("Anuncio Actual: ${Tienda.anuncio}");
    print("Código: $codigo");
    print("Descripción: ${descripcion ?? 'N/A'}");
    print("Precio: \$${precio?.toStringAsFixed(2) ?? 'N/A'}");
    print("Observación: ${observacion ?? 'Ninguna'}");
    print("----------------------------");
  }
}