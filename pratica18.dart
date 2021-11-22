import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
        backgroundColor: Colors.red[800],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[800],
              ),
              accountName: Text('Matheus'),
              accountEmail: Text('matheus@flutter.com.br'),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://thumbs.dreamstime.com/b/%C3%ADcone-preto-do-s%C3%ADmbolo-da-infinidade-conceito-de-infinito-ilimitado-e-elemento-liso-simples-projeto-vetor-104525943.jpg'),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text('Rota 2'),
              subtitle: Text('Siga para a rota 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a rota 3');
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text('Rota 3'),
              subtitle: Text('Siga para a rota 3'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a rota 3');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Rota 1'),
              subtitle: Text('Voltar para a rota 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a rota 1');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text('Pratica 18'),
      ),
    );
  }
}
