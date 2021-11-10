import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: PrimeiraRota(),
    ));

class Mensagem {
  String titulo;
  String texto;
  Mensagem(this.titulo, this.texto);
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController tituloController = TextEditingController();
  final TextEditingController textoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: tituloController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        tituloController.clear();
                      }),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o titulo da mensagem'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: textoController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => textoController.clear()),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o texto da mensagem'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Mensagem mensagem = Mensagem(
                tituloController.text,
                textoController.text,
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SegundaRota(mensagem)));
            },
            child: Text(
              'Ir para a segunda rota',
            ),
          )
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Mensagem mensagem;
  SegundaRota(this.mensagem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${mensagem.titulo}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${mensagem.texto}',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
            ElevatedButton(
              child: Text('Ir para a primeira rota'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
