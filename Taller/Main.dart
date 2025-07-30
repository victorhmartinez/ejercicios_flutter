// Aquí se ejecuta la lógica descrita en los enunciados.
import 'Empleado.dart';
import 'Taller.dart';
import 'Vehiculo.dart';

void main() {
  print("========= INICIO EJERCICIO A: TALLER =========");
  // 1. Crear un Empleado con nombre "Carlos".
  var empleado = Empleado("Carlos");

  // 2. Usar su método para cambiar el mensaje de bienvenida del taller.
  empleado.actualizarMensajeDelTaller("¡Bienvenidos al mejor taller de la ciudad!");

  // 3. Crear dos objetos Vehiculo con placas diferentes.
  var vehiculo1 = Vehiculo("PZA-123");
  var vehiculo2 = Vehiculo("MNB-456");

  // 4. Llamar al método registrarDiagnostico en cada uno.
  vehiculo1.registrarDiagnostico("Cambio de aceite y filtros.");
  vehiculo2.registrarDiagnostico("Frenos desgastados, requiere cambio de pastillas.");

  // 5. Asignar a extraInfo valores de tipos distintos.
  vehiculo1.extraInfo = "Cliente solicita limpieza de motor."; // String
  vehiculo2.extraInfo = 150.75; // double (decimal)

  // 6. Mostrar su resumen.
  vehiculo1.resumen();
  vehiculo2.resumen();

  // 7. Mostrar cuántos vehículos han sido reparados.
  print('\n Total de vehículos reparados hoy: ${Taller.obtenerReparaciones()}');
  }