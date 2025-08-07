// Archivo: main.dart

// Importamos la clase que acabamos de crear.
import 'servidor_correo.dart';

void main() {
  print("--- Iniciando la aplicación de correo ---\n");

  var servidor1 = ServidorCorreo();
  var servidor2 = ServidorCorreo();

  print("Paso 2: Conectando con servidor1...");
  servidor1.conectar();
  servidor2.conectar(); 

  print("\n----------------------------------------\n");

  print("Enviando correos...");
  servidor1.enviarCorreo("ejemplo1@dominio.com", "Reporte de ventas");
  servidor2.enviarCorreo("gerencia@empresa.com", "Resumen semanal");

  print("\n----------------------------------------\n");

  bool sonLaMismaInstancia = servidor1 == servidor2;
  print(
      "¿Las variables 'servidor1' y 'servidor2' apuntan a la misma instancia? \nRespuesta: $sonLaMismaInstancia");

  print("\n----------------------------------------\n");

  print(
      "stado de la conexión (consultado desde servidor2): ${servidor2.estaConectado}");

  print("\n----------------------------------------\n");

  print("Paso 6: Desconectando el servidor...");
  servidor1.desconectar();
  print(
      "Estado final de la conexión (consultado desde servidor1): ${servidor1.estaConectado}");

 
}