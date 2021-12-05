import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          )
        ),
        Container(
          height: 10,
        ),
        Container(
          Container(
            width: 150,
            height: 150,
            child: Image.network(
              'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'
            ),
          ),
        ),
        Text(
          'Google Flutter',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
        )
      ],
    )
  );
}
