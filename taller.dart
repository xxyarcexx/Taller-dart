import 'dart:math';
import 'dart:io';

void main() {
  do{
    print("ingresa la opcion a realizar (si no deseas ver mas, ingresa el numero 0) del 1 al 6");
    int? option = int.parse(stdin.readLineSync()!);
    switch(option){
      case 1:
        firthExercise();
        break;
      case 2:
        secondExercise();
        break;
      case 3:
        thirdExercise();
        break;
        case 4:
        fourthExercise();
        break;
        case 5:
        fifthExercise();
        break;
        case 6:
        sixthExercise();
        break;
        case 0:
        break;
    }
    if(option == 0){
      break;
    }
  }while(true);
}

void firthExercise() {
  print('velocidad');
  int? velocidad = int.tryParse(stdin.readLineSync() ?? '');
  print('tiempo');
  int? tiempo = int.tryParse(stdin.readLineSync() ?? '');
  print('La distancia recorrida es: ${velocidad! * tiempo!} m');
}

void secondExercise() {
  print('Ingrese la primera nota:');
  double? nota1 = double.tryParse(stdin.readLineSync() ?? '');
  print('Ingrese la segunda nota:');
  double? nota2 = double.tryParse(stdin.readLineSync() ?? '');
  print('Ingrese la tercera nota:');
  double? nota3 = double.tryParse(stdin.readLineSync() ?? '');

  if (nota1 != null && nota2 != null && nota3 != null) {
    double promedio = (nota1 + nota2 + nota3) / 3;
    print('El promedio es: $promedio');
  } else {
    print('Por favor, ingrese notas válidas.');
  }
}

void thirdExercise() {
  print('Ingrese el número de partidos ganados:');
  int? ganados = int.tryParse(stdin.readLineSync() ?? '0');
  print('Ingrese el número de partidos perdidos:');
  int? perdidos = int.tryParse(stdin.readLineSync() ?? '0');
  print('Ingrese el número de partidos empatados:');
  int? empatados = int.tryParse(stdin.readLineSync() ?? '0');

  if (ganados != null && perdidos != null && empatados != null) {
    int puntajeTotal = (ganados * 3) + (empatados * 1);
    print(
      'El numero de partidos ganados es:\n $ganados el numero de partidos perdidos es: $perdidos \n  el numero de partidos empatados es: $empatados',
    );
    print('El puntaje total es: $puntajeTotal');
  } else {
    print('Por favor, ingrese valores válidos.');
  }
}

void fourthExercise() {
  print('Ingrese el nombre del empleado:');
  String? nombreEmpleado = stdin.readLineSync();
  print('Ingrese la cantidad de horas trabajadas en el mes:');
  int? horasTrabajadas = int.tryParse(stdin.readLineSync() ?? '0');
  print('Ingrese la tarifa por hora:');
  double? tarifaPorHora = double.tryParse(stdin.readLineSync() ?? '0');

  if (nombreEmpleado != null &&
      horasTrabajadas != null &&
      tarifaPorHora != null) {
    double totalDevengado = horasTrabajadas * tarifaPorHora;
    print(
      'Nombre del empleado: $nombreEmpleado \n cantidad de horas trabajadas: $horasTrabajadas \n total devengado: \$${totalDevengado.toStringAsFixed(2)}',
    );
  } else {
    print('Por favor, ingrese datos válidos.');
  }
}

void fifthExercise() {
  print('ingrese el valor del cateto a:');
  double? catetoA = double.tryParse(stdin.readLineSync() ?? '0');
  print('ingrese el valor del cateto b:');
  double? catetoB = double.tryParse(stdin.readLineSync() ?? '0');
  if (catetoA != null && catetoB != null) {
    double hipotenusa = sqrt(pow(catetoA, 2) + pow(catetoB, 2));
    print('El valor de la hipotenusa es: ${hipotenusa.toStringAsFixed(2)}');
  } else {
    print('Por favor, ingrese valores válidos.');
  }
}

void sixthExercise() {
  print("ingrese la temperatura del horno en Centrigrados");
  double? temperatura = double.tryParse(stdin.readLineSync() ?? '0');
  if (temperatura != null) {
    double fahrenheit = (temperatura * 9 / 5) + 32;
    print(
      'La temperatura en Fahrenheit es: ${fahrenheit.toStringAsFixed(2)}°F',
    );
  } else {
    print('Por favor, ingrese una temperatura válida.');
  }
}
