import 'Taller.dart';

class Vehiculo {
  final String placa;

  String? diagnostico; // Puede ser nulo al principio.
  String estado = "Pendiente";

  dynamic extraInfo;

  Vehiculo(this.placa);

  // Registra el diagnóstico, cambia el estado y notifica a la clase Taller.
  void registrarDiagnostico(String textoDiagnostico) {
    diagnostico = textoDiagnostico;
    estado = "Reparado";
    Taller.incrementarContador(); // Llama al método estático de Taller.
    print("Diagnóstico registrado para el vehículo ${placa}.");
  }

  // Muestra toda la información del vehículo y la del taller.
  void resumen() {
    print("\n--- RESUMEN DEL VEHÍCULO ---");
    print("Taller: ${Taller.nombre}");
    print("Mensaje: ${Taller.mensajeGeneral}");
    print("Placa: $placa");
    print("Diagnóstico: ${diagnostico ?? 'Sin diagnóstico'}");
    print("Estado: $estado");
    print("Información Adicional: ${extraInfo ?? 'Ninguna'}");
    print("----------------------------");
  }
}