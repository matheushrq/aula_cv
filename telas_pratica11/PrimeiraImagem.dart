import 'package:flutter/material.dart';

class PrimeiraImagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Nova York',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 30,
            ),
            Container(
              child: Text(
                'Nova York - USA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              child: Center(
                child: Text(
                  'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo. (Wikipedia)',
                  textAlign: TextAlign.center,
                ),
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}
