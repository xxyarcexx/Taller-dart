import 'dart:io';
import 'dart:math';

void main() {
  //   var i = 5;
  //   var age = "20";
  //   var bool = true;
  //   double decimal = 3.14;
  //   String name = "John Doe";

  //   //Variables fijas
  //   const pi = 3.14159;
  //   final String country = "USA";

  //   print(
  //     'el nombre es $name, tiene $age años, es $bool, su edad en decimal es $decimal, y el valor de pi es $pi. El país es $country.',
  //   );

  //   //variables dinámicas
  //   dynamic variable = "Hello";
  //   variable = 10; // Cambiando el tipo de la variable dinámica
  //   print('La variable dinámica es: $variable');

  //   int a = 20;
  //   int b = 5;
  //   int sum = a + b;
  //   print('La suma de $a y $b es: $sum');
  //   int rest = a - b;
  //   int mult = a * b;
  //   int division = a ~/ b; // División entera
  //   double divi = a / b;
  //   print(division);

  //   //listas
  //   List<String> names = ["Alice", "Bob", "Charlie"];
  //   names.add("David");
  //   print('Lista de nombres: $names');
  //   names.remove("Bob");
  //   print('Lista de nombres después de eliminar a Bob: $names');
  //   names.insert(1, "Eve");
  //   print('Lista de nombres después de insertar a Eve: $names');

  //   //Mapas
  //   Map<String, int> ages = {
  //     "Alice": 30,
  //     "Bob": 25,
  //     "Charlie": 35,
  //   };
  //   //operaciones con mapas
  //   ages["David"] = 28; // Agregar un nuevo elemento
  //   print('Mapa de edades: $ages');
  //   ages.remove("Bob"); // Eliminar un elemento
  //   print('Mapa de edades después de eliminar a Bob: $ages');
  //   ages["Charlie"] = 36; // Actualizar un valor
  //   print('Mapa de edades después de actualizar a Charlie: $ages');

  //   //Sets
  //   Set enteros = {1, 20, 3, 40, 5};
  //   print('Set de enteros: $enteros');
  //   enteros.add(6); // Agregar un nuevo elemento
  //   print('Set de enteros después de agregar 6: $enteros');
  //   enteros.remove(20); // Eliminar un elemento
  //   print('Set de enteros después de eliminar 20: $enteros');

  //pedir datos al usuario
  // print('Ingrese su nombre:');
  // String? userName = stdin.readLineSync();
  // print("ingrese su edad:");
  // int? userAge = int.tryParse(stdin.readLineSync() ?? '0');
  // if (userName == null || userAge == null || userAge < 1) {
  //   print('Datos inválidos. Por favor, intente de nuevo.');
  //   return;
  // }

  // print('Hola $userName, tienes $userAge años.');
  //descuento 25%
  // int jeanAzul = 100000;

  // //aplicar descuento
  // double precioFinal = jeanAzul - (jeanAzul * 0.25);
  // print(
  //   'El precio final del jean azul después del descuento es: \$${precioFinal}',
  // );

  // //iva 19%
  // double iva = precioFinal * 0.19;
  // print('El IVA del jean azul es: \$${iva}');

  //descuento 15%
  //   print('Ingrese el precio del producto:');
  //   double? precioProducto = double.tryParse(stdin.readLineSync() ?? '0');
  //   if (precioProducto == null || precioProducto < 1) {
  //     print('Precio inválido. Por favor, intente de nuevo.');
  //     return;
  //   }
  //   double descuento = precioProducto * 0.15;
  //   double precioFinal = precioProducto - descuento;
  //   print(
  //     'El precio final del producto después del descuento del 15% es: \$${precioFinal}',
  //   );
  //   //iva 19%
  //   double iva = precioFinal * 0.19;
  //   double precioTotal = precioFinal + iva;
  //   print(
  //     'El precio total del producto después de aplicar el IVA es: \$${precioTotal}',
  //   );
  // }

  //pedir datos al usuario
  print('Ingrese su nombre:');
  String? userName = stdin.readLineSync();
  //potencia
  print('Ingrese un número:');
  int? userNumber1 = int.tryParse(stdin.readLineSync() ?? '0');
  print('Ingrese otro número:');
  int? userNumber2 = int.tryParse(stdin.readLineSync() ?? '0');
  int potencia = pow(userNumber1!, userNumber2!).toInt();
  print('Hola $userName, la potencia de $userNumber1 elevado a $userNumber2 es: $potencia');

  //funciones
  int suma(int a, int b) {
    return a + b;
  }
  print('dijite el primer número:');
  int? num1 = int.tryParse(stdin.readLineSync()!);
  print('dijite el segundo número:');
  int? num2 = int.tryParse(stdin.readLineSync()!);

  int resultado = suma(num1!, num2!);
  print('La suma de $num1 y $num2 es: $resultado');

}
