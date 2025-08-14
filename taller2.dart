import 'dart:io';

class Libro {
  String titulo;
  String autor;
  int anio;

  Libro({required this.titulo, required this.autor, required this.anio});

  @override
  String toString() {
    return 'Título: $titulo, Autor: $autor, Año: $anio';
  }
}

List<Libro> libros = [];
void main() {
  print("Bienvenido al sistema de gestión de libros");
  do {
    print("Seleccione una opción:");
    print("1. Agregar libro");
    print("2. Listar libros");
    print("3. Actualizar libro");
    print("4. Eliminar libro");
    print("5. Salir");

    int? opcion = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcion) {
      case 1:
        agregarLibro();
        break;
      case 2:
        listarLibros();
        break;
      case 3:
        actualizarLibro();
        break;
      case 4:
        eliminarLibro();
        break;
      case 5:
        print("Saliendo del programa...");
        return;
      default:
        print("Opción no válida, por favor intente de nuevo.");
    }
  } while (true);
}

void agregarLibro() {
  String titulo = '';
  String autor = '';
  int anio = 0;

  do {
    print("Ingrese el título del libro:");
    titulo = stdin.readLineSync() ?? '';
    if (titulo.isEmpty) {
      print("El título no puede estar vacío.");
    }
  } while (titulo.isEmpty);

  do {
    print("Ingrese el autor del libro:");
    autor = stdin.readLineSync() ?? '';
    if (autor.isEmpty) {
      print("El autor no puede estar vacío.");
    }
  } while (autor.isEmpty);

  do {
    print("Ingrese el año de publicación del libro:");
    anio = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    if (anio <= 0) {
      print("Por favor, ingrese un año válido.");
    }
  } while (anio <= 0);

  libros.add(Libro(titulo: titulo, autor: autor, anio: anio));
  print("Libro agregado exitosamente.");
}

void listarLibros() {
  if (libros.isEmpty) {
    print("No hay libros en la colección.");
  } else {
    print("Lista de libros:");
    for (int i = 0; i < libros.length; i++) {
      print("${i + 1}. ${libros[i]}");
    }
  }
}

void actualizarLibro() {
  listarLibros();
  if (libros.isEmpty) {
    return;
  }
  int indice;
  List<Libro> listaLibros = libros;
  do {
    print("Ingrese el número del libro a actualizar:");
    indice = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (indice < 1 || indice > listaLibros.length) {
      print("Número de libro no válido.");
      continue;
    }
    indice -= 1; 
    break;
  } while (true);
  String nuevoTitulo;
  do {
    stdout.write("Nuevo título: ");
    nuevoTitulo = stdin.readLineSync() ?? "";
    if (nuevoTitulo.isEmpty) print("El título no puede estar vacío.");
  } while (nuevoTitulo.isEmpty);

  String nuevoAutor;
  do {
    stdout.write("Nuevo autor: ");
    nuevoAutor = stdin.readLineSync() ?? "";
    if (nuevoAutor.isEmpty) print("El autor no puede estar vacío.");
  } while (nuevoAutor.isEmpty);
  int nuevoAnio;
  do {
    stdout.write("Nuevo año de publicación: ");
    nuevoAnio = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    if (nuevoAnio <= 0) print("Por favor, ingrese un año válido.");
  } while (nuevoAnio <= 0);
  libros[indice] = Libro(titulo: nuevoTitulo, autor: nuevoAutor, anio: nuevoAnio);
  print("Libro actualizado exitosamente.");
}

void eliminarLibro() {
  listarLibros();
  do {
    if (libros.isEmpty) {
      return;
    }
    print("Ingrese el número del libro a eliminar:");
    int? indice = int.tryParse(stdin.readLineSync() ?? '');
    if (indice == null || indice < 1 || indice > libros.length) {
      print("Número de libro no válido.");
      continue;
    }
    libros.removeAt(indice - 1);
    print("Libro eliminado exitosamente.");
    break;
  } while (true);
}
