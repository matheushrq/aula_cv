import 'package:flutter/material.dart';

class pratica08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pratica 08'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow
          ),
          padding: EdgeInsets.all(100),
          child: Image(
            image: NetworkImage('https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif',
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botao',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
