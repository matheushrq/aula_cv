import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratica14/rota/rota.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeiraTela(),
        '/segunda': (context) => SegundaTela(),
        '/terceira': (context) => TerceiraTela(),
      },
    )
  );
}
