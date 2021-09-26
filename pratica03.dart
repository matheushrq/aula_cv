import 'package:flutter/material.dart';

void main() {
  String nome = "Matheus";
  String dia_da_semana = "domingo";
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ), //TextStyle.
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '! \nBoa noite!',
            ),
            TextSpan(
              text: '\nHoje é $dia_da_semana!',
              style: TextStyle(
                color: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
              )
            ),
          ],
        ),
      ),
    ),
  );
}
