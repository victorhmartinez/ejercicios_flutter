class Tienda {
  static const String nombre = "Tienda El Veci";
  static String anuncio = "¡Gran inauguración!";

  
  static int _productosVendidos = 0;

  static void cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
    print("\n¡El anuncio de la tienda ha cambiado a: \"$nuevoAnuncio\"!");
  }

  // Incrementa el contador cuando se registra una venta en un producto.
  static void aumentarVentas() {
    _productosVendidos++;
  }

  // Devuelve el total de productos vendidos.
  static int obtenerVentas() {
    return _productosVendidos;
  }
}


