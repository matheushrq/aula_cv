import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PrimeiraRota(), routes: {
      RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
    });
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          child: Text('Navegar para a segunda rota'),
          onPressed: () {
            Navigator.pushNamed(context, RotaGenerica.caminhoDaRota,
                arguments: ArgumentosDaRota('Segunda Rota',
                    'Mensagem enviada da Primeira para a Segunda Rota como Argumento'));
          },
        ),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotagenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Text(
          argumentos.mensagem,
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  String mensagem;
  ArgumentosDaRota(this.titulo, this.mensagem);
}
