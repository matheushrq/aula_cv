import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  MaterialApp(
    home: Inicio(),
    debugShowCheckedModeBanner: false,
  );
}

class Inicio extends StatefulWidget {

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  int indice = 0;
    final List<Widget> rotas = [
      PrimeiraRota(),
      SegundaRota(),
      TerceiraRota(),
    ];

    void aoPressionar(int indiceRotaSelecionada){
        setState(() {
          this.indice = indiceRotaSelecionada;
        }
      );
    }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: rotas[this.indice],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.indice,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Primeira rota',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: 'Segunda rota',
            )
          ],
          onTap: (int indiceDaRotaEscolhida){
            aoPressionar(indiceDaRotaEscolhida);
          },
        ),
     );
  }
}

class PrimeiraRota extends StatefulWidget {

  @override
  _PrimeiraRotaState createState() => _PrimeiraRotaState();
}

class _PrimeiraRotaState extends State<PrimeiraRota> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
    return Center(
      child: Text(
        'Primeira Rota',
        style: estilo,
      ),
    );
  }
}

class SegundaRota extends StatefulWidget {

  @override
  _SegundaRotaState createState() => _SegundaRotaState();
}

class _SegundaRotaState extends State<SegundaRota> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.amber[900],
    );
    return Center(
      child: Text(
        'Segunda Rota',
        style: estilo,
      ),
    );
  }
}

class TerceiraRota extends StatefulWidget {

  @override
  _TerceiraRotaState createState() => _TerceiraRotaState();
}

class _TerceiraRotaState extends State<TerceiraRota> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.pink,
    );
    return Center(
      child: Text(
        'Terceira Rota',
        style: estilo,
      ),
    );
  }
}
