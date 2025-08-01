void main() {
  

  print("Es hora de lavar la ropa.");
  
  hacerLavanderia();
  
  print("La lavadora ya está funcionando, así que me voy a leer un libro.");
  print("Disfrutando de mi lectura en la sala...");
}


Future<void> hacerLavanderia() async {
  print("Pongo la ropa y el detergente en la lavadora.");
  
  final resultadoLavado = await iniciarCicloDeLavado();
  
  // Esta línea solo se ejecuta después de que el Future se completa.
  print(resultadoLavado); 
  print("Ahora a tender la ropa limpia.");
}

Future<String> iniciarCicloDeLavado() {
  return Future.delayed(Duration(seconds: 6), () {
    return "=> ¡Beep, beep! El ciclo de lavado ha terminado.";
  });
}