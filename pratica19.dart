import 'package:flutter/material.dart';

class Transporte {
  final String titulo;
  final IconData icone;

  const Transporte(this.titulo, this.icone);
}

const List<Transporte> transportes = <Transporte>[
  Transporte('Carro', Icons.directions_car),
  Transporte('Bicicleta', Icons.directions_bike),
  Transporte('Barco', Icons.directions_boat),
  Transporte('Ônibus', Icons.directions_bus),
  Transporte('Trem', Icons.directions_railway),
];

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRota(),
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() => PrimeiraRotaState();
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  Transporte transporte = transportes[0];
  void selecionar(Transporte transporteEscolhido) =>
      setState(() => this.transporte = transporteEscolhido);
  List<PopupMenuItem<Transporte>> getListaItensMenu() {
    List<PopupMenuItem<Transporte>> lista;
    lista = transportes.skip(2).map(
      (Transporte transporte) {
        return PopupMenuItem<Transporte>(
          value: transporte,
          child: Text(transporte.titulo),
        );
      },
    ).toList();
    return lista;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.video_collection),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegundaRota()),
          ),
          tooltip: 'Coleção de videos',
        ),
        title: Text('Primeira Rota'),
        actions: <Widget>[
          IconButton(
            icon: Icon(transportes[0].icone),
            onPressed: () => selecionar(transportes[0]),
          ),
          IconButton(
            icon: Icon(transportes[1].icone),
            onPressed: () => selecionar(transportes[1]),
          ),
          PopupMenuButton(
              onSelected: selecionar,
              itemBuilder: (BuildContext context) => getListaItensMenu())
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Cartao(this.transporte),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Voltar para a Primeira Rota'),
        ),
      ),
    );
  }
}

class Cartao extends StatelessWidget {
  final Transporte transporte;
  Cartao(this.transporte);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              this.transporte.icone,
              size: 128,
              color: Colors.grey[500],
            ),
            Text(
              this.transporte.titulo,
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
