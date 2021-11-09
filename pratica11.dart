import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratica11/Telas/NonaImagem.dart';
import 'package:pratica11/Telas/Oitavaimagem.dart';
import 'package:pratica11/Telas/QuartaImagem.dart';
import 'package:pratica11/Telas/QuintaImagem.dart';
import 'package:pratica11/Telas/SegundaImagem.dart';
import 'package:pratica11/Telas/SetimaImagem.dart';
import 'package:pratica11/Telas/SextaImagem.dart';
import 'package:pratica11/Telas/TerceiraImagem.dart';
import 'package:pratica11/Telas/primeiraImagem.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrimeiraImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuartaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuintaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SextaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetimaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OitavaImagem())
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NonaImagem())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
