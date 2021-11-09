import 'package:flutter/material.dart';

class Corpo extends StatelessWidget {
  @override
  final String texto;

  Corpo(this.texto);

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${this.texto}',
        style: TextStyle(
            fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(25),
    );
  }
}
