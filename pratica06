import 'package:flutter/material.dart';

class pratica06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Pratica 06'),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(textDirection: TextDirection.ltr, children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.purple,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.lightBlue,
                    Colors.black45
                  ],
                ),
              ),
              child: Image.network(
                'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif',
              ),
            )
          ]),
        ),
      ),
    );
  }
}
