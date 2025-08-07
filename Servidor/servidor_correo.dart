// Archivo: servidor_correo.dart

class ServidorCorreo {

  static final ServidorCorreo _instancia = ServidorCorreo._internal();

  ServidorCorreo._internal() {
    print("Inicializando el servidor de correo...");
  }

  factory ServidorCorreo() => _instancia;
  


  bool _conectado = false;

  bool get estaConectado => _conectado;

  void conectar() {
    if (!_conectado) {
      _conectado = true;
      print("=> Conexión establecida con el servidor de correo.");
    } else {
      print("=> Advertencia: Ya existe una conexión activa.");
    }
  }

  void enviarCorreo(String destinatario, String asunto) {
    if (_conectado) {
      print(
          "Enviando correo a: '$destinatario' con asunto: '$asunto'");
    } else {
      print(
          "=> Error: No se puede enviar el correo. El servidor no está conectado.");
    }
  }

  /// Método para cerrar la conexión con el servidor.
  void desconectar() {
    if (_conectado) {
      _conectado = false;
      print("=> Conexión cerrada.");
    } else {
      print("=> Advertencia: El servidor ya está desconectado.");
    }
  }
}