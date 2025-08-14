import 'dart:io';

class Producto {
  String nombre;
  double precio;
  int cantidad;

  Producto({
    required this.nombre,
    required this.precio,
    required this.cantidad,
  });

  @override
  String toString() {
    return 'Nombre: $nombre, Precio: \$${precio.toStringAsFixed(2)}, Cantidad: $cantidad';
  }
}

List<Producto> productos = [];

void main() {
  print("Sistema de gestión de productos");
  do {
    print("\nMENÚ PRINCIPAL");
    print("1. Agregar producto");
    print("2. Listar productos");
    print("3. Actualizar producto");
    print("4. Eliminar producto");
    print("5. Salir");

    int? opcion = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcion) {
      case 1:
        agregarProducto();
        break;
      case 2:
        listarProductos();
        break;
      case 3:
        actualizarProducto();
        break;
      case 4:
        eliminarProducto();
        break;
      case 5:
        print("Saliendo...");
        return;
      default:
        print("Opción no válida");
    }
  } while (true);
}

void agregarProducto() {
  String nombre = '';
  double precio = -1;
  int cantidad = -1;

  do {
    print("Ingrese el nombre del producto:");
    nombre = stdin.readLineSync() ?? '';
    if (nombre.isEmpty) {
      print("Error: el nombre no puede estar vacío.");
    }
  } while (nombre.isEmpty);

  do {
    print("Ingrese el precio:");
    precio = double.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (precio < 0) {
      print("Error: ingrese un precio válido (mayor o igual a 0).");
    }
  } while (precio < 0);

  do {
    print("Ingrese la cantidad disponible:");
    cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (cantidad < 0) {
      print("Error: ingrese una cantidad válida (mayor o igual a 0).");
    }
  } while (cantidad < 0);

  productos.add(Producto(nombre: nombre, precio: precio, cantidad: cantidad));
  print("Producto agregado correctamente.");
}

void listarProductos() {
  if (productos.isEmpty) {
    print("No hay productos en el catálogo.");
  } else {
    print("\nLISTA DE PRODUCTOS");
    for (int i = 0; i < productos.length; i++) {
      print("${i + 1}. ${productos[i]}");
    }
  }
}

void actualizarProducto() {
  listarProductos();
  if (productos.isEmpty) {
    return;
  }
  int indice;
  do {
    print("Ingrese el número del producto a actualizar:");
    indice = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (indice < 1 || indice > productos.length) {
      print("Error: número de producto no válido.");
      continue;
    }
    indice -= 1;
    break;
  } while (true);
  Producto productoActual = productos[indice];
  stdout.write("Nuevo nombre (dejar vacío para mantener '${productoActual.nombre}'): ");
  String entradaNombre = stdin.readLineSync() ?? "";
  String nuevoNombre = entradaNombre.isEmpty ? productoActual.nombre : entradaNombre;
  double nuevoPrecio;
  do {
    stdout.write("Nuevo precio (actual: ${productoActual.precio}): ");
    String entradaPrecio = stdin.readLineSync() ?? "";
    if (entradaPrecio.isEmpty) {
      nuevoPrecio = productoActual.precio;
      break;
    }
    nuevoPrecio = double.tryParse(entradaPrecio) ?? -1;
    if (nuevoPrecio < 0) print("Error: ingrese un precio válido.");
  } while (nuevoPrecio < 0);
  int nuevaCantidad;
  do {
    stdout.write("Nueva cantidad (actual: ${productoActual.cantidad}): ");
    String entradaCantidad = stdin.readLineSync() ?? "";
    if (entradaCantidad.isEmpty) {
      nuevaCantidad = productoActual.cantidad;
      break;
    }
    nuevaCantidad = int.tryParse(entradaCantidad) ?? -1;
    if (nuevaCantidad < 0) print("Error: ingrese una cantidad válida.");
  } while (nuevaCantidad < 0);
  productos[indice] = Producto(
    nombre: nuevoNombre,
    precio: nuevoPrecio,
    cantidad: nuevaCantidad,
  );
  print("Producto actualizado correctamente.");
}

void eliminarProducto() {
  listarProductos();
  if (productos.isEmpty) return;
  do {
    print("Ingrese el número del producto a eliminar:");
    int? indice = int.tryParse(stdin.readLineSync() ?? '');
    if (indice == null || indice < 1 || indice > productos.length) {
      print("Error: número de producto no válido.");
      continue;
    }
    productos.removeAt(indice - 1);
    print("Producto eliminado correctamente.");
    break;
  } while (true);
}
