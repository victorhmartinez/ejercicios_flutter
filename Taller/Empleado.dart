import 'Taller.dart';

class Empleado {
  String nombre;

  // Constructor para crear un empleado con su nombre.
  Empleado(this.nombre);

  // Método que accede a la clase Taller para cambiar el mensaje general.
  void actualizarMensajeDelTaller(String nuevoMensaje) {
    print("$nombre está actualizando el mensaje del taller...");
    Taller.cambiarMensaje(nuevoMensaje);
  }
}