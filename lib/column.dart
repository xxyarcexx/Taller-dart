import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //navbar
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //navbar
          Container(
            //imagen 1
            height: 200,
            width: 392,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/images.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
