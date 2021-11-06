import 'package:flutter/material.dart';

class pratica07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Pratica 07')),
      body: Center(
        child: Container(
          child: Image(
            image: NetworkImage(
              'https://picsum.photos/250?image=37'),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          padding: EdgeInsets.all(100),
          margin: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}
