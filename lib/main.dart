import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('TRANFORMACION FINAL DE GOKU')),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/images.jpg', // Cambia por tu imagen
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Goku SSJ infinito',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Kame house', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
      Icon(Icons.star, color: Colors.red[500]),
      const Text('41'),
    ],
  ),
);

Color color = const Color.fromARGB(255, 176, 165, 39);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'Llamar'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'compartir'),
  ],
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'El Super Saiyajin Infinito es una transformación ficticia popularizada en Dragon Ball Fanon y versiones no canónicas como Dragon Ball AF, caracterizada por un poder y Ki ilimitados, otorgando al usuario la capacidad de mantenerse en combate sin cansarse y con una fuerza inimaginable. Físicamente, se distingue por un cabello excesivamente grande y, en algunas versiones, por un símbolo de infinito en la frente.',
    softWrap: true,
    style: TextStyle(fontSize: 16, height: 1.5),
    textAlign: TextAlign.justify,
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
