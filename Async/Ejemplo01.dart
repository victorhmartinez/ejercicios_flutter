void main() {
  print("--- Ejemplo 1: Preparando el Desayuno ---");
  
  print("Inicio mi mañana en la cocina.");
  
  prepararDesayunoCompleto(); 
  
  print("Mientras espero, pongo el pan en la tostadora.");
  print("Sirvo un vaso de jugo de naranja.");
  print("Espero a que todo esté listo para desayunar.");
}

// Esta es la función asincrónica que coordina la preparación del café.
Future<void> prepararDesayunoCompleto() async {
  print("Pongo el agua y el café en la cafetera y la enciendo.");
  
  final resultadoCafe = await hacerCafe(); 
  
  // Esta parte solo se ejecuta cuando el Future de hacerCafe() se completa.
  print(resultadoCafe); 
  print("¡El desayuno está servido!");
}

// Devuelve un 'Future' que se completará en 4 segundos.
Future<String> hacerCafe() {
  return Future.delayed(Duration(seconds: 4), () {
    return "=> ¡El café está listo y caliente!"; 
  });
}