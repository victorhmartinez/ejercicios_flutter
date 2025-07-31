class Ejercicios{
  void ejercicio1() {
  //  Declaramos una List<String> con al menos cinco platos.
  List<String> comidasFavoritas = [
    'Lasaña',
    'Ceviche',
    'Hamburguesa',
    'Pizza',
    'Tacos al pastor'
  ];
  print("1. Mis comidas favoritas iniciales: $comidasFavoritas");

  comidasFavoritas.add('Sushi');
  print("2. Lista actualizada con nueva comida: $comidasFavoritas");

  comidasFavoritas.remove('Hamburguesa');
  print("3. Lista después de eliminar una comida: $comidasFavoritas");

  print("4. La comida en la posición 2 es: ${comidasFavoritas[2]}");

  List<List<String>> menuSemanal = [
    ['Avena con frutas', 'Pollo a la plancha', 'Sopa de verduras'],
    ['Yogur y granola', 'Lentejas con arroz', 'Ensalada César'],
    ['Huevos revueltos', 'Pescado al vapor', 'Crema de tomate'],
    
    ['Panqueques', 'Carne asada', 'Tostadas con aguacate'],
    ['Batido de proteínas', 'Pasta boloñesa', 'Quesadillas']
  ];
  print("\n5. Menú semanal creado.");

  print("6. El almuerzo del martes es: ${menuSemanal[1][1]}");

  menuSemanal[4][2] = 'Noche de sushi';
  print("7. Se cambió la cena del viernes. Ahora es: ${menuSemanal[4][2]}");

  print("\n8. Menú Semanal Completo:");
  List<String> dias = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
  for (int i = 0; i < menuSemanal.length; i++) {
    print("  Día: ${dias[i]}");
    print("    - Desayuno: ${menuSemanal[i][0]}");
    print("    - Almuerzo: ${menuSemanal[i][1]}");
    print("    - Cena: ${menuSemanal[i][2]}");
  }
}

void ejercicio2() {
  // 1. Declara un Map<String, int> para los puntajes.
  // 2. Agrega al menos cuatro jugadores con puntajes distintos.
  Map<String, int> puntajes = {
    'PlayerOne': 1500,
    'NinjaMaster': 2300,
    'ShadowFox': 1850,
    'DragonSlayer': 2100,
  };
  print("1 y 2. Puntajes iniciales de jugadores: $puntajes");

  // 3. Muestra todos los nombres de los jugadores registrados.
  print("3. Nombres de los jugadores: ${puntajes.keys}");

  // 4. Imprime el puntaje de un jugador específico.
  print("4. Puntaje de 'NinjaMaster': ${puntajes['NinjaMaster']}");

  // 5. Modifica el puntaje de uno de los jugadores.
  puntajes['ShadowFox'] = 1950;
  print("5. Puntaje de 'ShadowFox' modificado: ${puntajes['ShadowFox']}");

  // 6. Agrega un nuevo jugador con su respectivo puntaje.
  puntajes['ProGamer'] = 2500;
  print("6. Nuevo jugador 'ProGamer' agregado.");

  // 7. Elimina a un jugador del mapa.
  puntajes.remove('PlayerOne');
  print("7. 'PlayerOne' ha sido eliminado.");

  // 8. Imprime el contenido completo del mapa actualizado.
  print("8. Ranking de jugadores actualizado: $puntajes");
}


void ejercicio3() {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };
  print("2. Catálogo de streaming inicializado.");

  // Agregamos al menos dos películas a cada plataforma.
  catalogoStreaming['Netflix']?.add(Pelicula('Glass Onion', 2022));
  catalogoStreaming['Netflix']?.add(Pelicula('The Gray Man', 2022));

  catalogoStreaming['HBO']?.add(Pelicula('The Batman', 2022));
  catalogoStreaming['HBO']?.add(Pelicula('Dune', 2021));

  catalogoStreaming['Disney+']?.add(Pelicula('Luca', 2021));
  catalogoStreaming['Disney+']?.add(Pelicula('Encanto', 2021));
  print("3. Se agregaron películas a cada plataforma.");

  print("\n4. Títulos en Netflix:");
  catalogoStreaming['Netflix']?.forEach((pelicula) {
    print("   - ${pelicula.titulo}");
  });

  catalogoStreaming['Disney+']?.add(Pelicula('Elemental', 2023));
  print("\n5. Se agregó 'Elemental' a Disney+.");

 
  var peliculasHBO = catalogoStreaming['HBO'];
  if (peliculasHBO != null && peliculasHBO.isNotEmpty) {
    // Buscamos la película por título para hacerlo más robusto
    var dune = peliculasHBO.firstWhere((p) => p.titulo == 'Dune');
    dune.anioEstreno = 2021; 
    dune.anioEstreno = 2020;
    print("6. Se cambió el año de 'Dune' en HBO a ${dune.anioEstreno}.");
  }


 
  catalogoStreaming['Netflix']?.removeWhere((p) => p.titulo == 'The Gray Man');
  print("7. Se eliminó 'The Gray Man' de Netflix.");

  print("\n8. Catálogo Final de Streaming:");
  catalogoStreaming.forEach((plataforma, peliculas) {
    print("\nPlataforma: $plataforma");
    if (peliculas.isEmpty) {
      print("  (No hay películas en esta plataforma)");
    } else {
      for (var pelicula in peliculas) {
        print("  $pelicula"); 
      }
    }
  });
}

}

// Creamos una clase Pelicula con dos atributos.
class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);

  // Sobrescribimos el método toString para una impresión más clara.
  @override
  String toString() {
    return "- $titulo ($anioEstreno)";
  }
}