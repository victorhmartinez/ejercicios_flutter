class Taller {
  // 'const' porque el nombre del taller es un valor fijo que no debe cambiar.
  static const String nombre = "Taller Sino se arregla se daña";

  // Mensaje que puede ser modificado por un empleado.
  static String mensajeGeneral = "¡Bienvenido al Taller!";

  // Atributo protegido (privado en Dart con '_'). Solo se puede modificar
  // a través de los métodos de la clase.
  static int _totalReparaciones = 0;

  // Método para que un empleado cambie el mensaje de bienvenida.
  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  // Método para incrementar el contador de reparaciones.
 
  static void incrementarContador() {
    _totalReparaciones++;
  }

  // Método para obtener el total de reparaciones. Permite leer el valor
  // del atributo privado _totalReparaciones.
  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}