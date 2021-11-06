import 'package:flutter/material.dart';

class pratica10 extends StatefulWidget {
  @override
  _pratica10State createState() => _pratica10State();
}

class _pratica10State extends State<pratica10> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = '';
  int resultado = 0;

  somar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    resultado = num01 + num02;
    this.resp = '$num01 + $num02 = $resultado';
    return this.resp;
  }
  subtrair() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    resultado = num01 - num02;
    this.resp = '$num01 - $num02 = $resultado';
    return this.resp;
  }

  multiplicar() {
    int num01 = int.parse(this.num01Controller.text);
    int num02 = int.parse(this.num02Controller.text);
    resultado = num01 * num02;
    this.resp = '$num01 * $num02 = $resultado';
    return this.resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double resultado = num01 / num02;
    this.resp = '$num01 / $num02 = ' + resultado.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pratica 10",
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o primeiro numero',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo numero',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(somar());
                  setState(somar);
                },
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(subtrair());
                  setState(subtrair);
                },
                child: Text(
                  '-',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(multiplicar());
                  setState(multiplicar);
                },
                child: Text(
                  'x',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(dividir());
                  setState(dividir);
                },
                child: Text(
                  '/',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  child: const Text('Calcular IMC?'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 4.0,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    //direcionamento aqui
                  },
                ),
                ElevatedButton(
                  child: const Text('Calcular Volume?'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 4.0,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    //direcionamento aqui
                  },
                ),
            ],
          ),
          Text(
            this.resp,
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
