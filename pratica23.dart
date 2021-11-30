import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PrimeiraRota(),
    debugShowCheckedModeBanner: false,
  ));
}

class Produto {
  String url, nome, descricao;
  double preco;

  Produto(this.url, this.nome, this.descricao, this.preco);
}

class PrimeiraRota extends StatefulWidget {
  @override
  _PrimeiraRotaState createState() => _PrimeiraRotaState();
}

class _PrimeiraRotaState extends State<PrimeiraRota> {
  final List<Produto> produtos = <Produto>[];
  void adicionarProdutoNaLista(Produto produto) {
    setState(() {
      produtos.insert(0, produto);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: Corpo(this.produtos),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegundaRota()),
          ).then((novoProduto) => adicionarProdutoNaLista(novoProduto));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple[900],
      ),
    );
  }
}

class Corpo extends StatelessWidget {
  final List<Produto> produtos;
  Corpo(this.produtos);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: 25,
          top: 2.5,
          right: 25,
        ),
        itemCount: produtos.length,
        itemBuilder: (BuildContext context, int indice) {
          return Container(
            height: 80,
            margin: EdgeInsets.all(2),
            color: (indice % 2) == 0 ? Colors.blue[50] : Colors.grey[200],
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                  'https://picsum.photos/250?image=9',
                ),
              ),
              title: Text(
                '${produtos[indice].nome}',
              ),
              subtitle: Text(
                'R\$ ${produtos[indice].preco.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.purple[900],
                ),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          );
        });
  }
}

class SegundaRota extends StatefulWidget {
  @override
  _SegundaRotaState createState() => _SegundaRotaState();
}

class _SegundaRotaState extends State<SegundaRota> {
  ItemMenu? itemSelecionado;
  List<DropdownMenuItem<ItemMenu>>? listaItensMenu;
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController precoController = TextEditingController();

  @override
  void initState() {
    listaItensMenu = Menu.getListaItens();
    itemSelecionado = listaItensMenu![0].value;
    super.initState();
  }

  aoSelecionarItem(ItemMenu? itemSelecionado) {
    setState(
      () {
        this.itemSelecionado = itemSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar produto'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.only(left: 25, right: 25),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: DropdownButton(
              value: this.itemSelecionado,
              items: this.listaItensMenu,
              onChanged: this.aoSelecionarItem,
              icon: Icon(Icons.arrow_downward),
              isExpanded: true,
              iconSize: 24,
              elevation: 16,
              style: TextStyle(fontSize: 16, color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: this.nomeController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => this.nomeController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Nome'),
              )),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: descricaoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.descricaoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'descrição',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: this.precoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.precoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'preço',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
            child: ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                Produto produto = Produto(
                  url: this.itemSelecionado!.url,
                  nome: this.nomeController.text,
                  descricao: this.descricaoController.text,
                  preco: double.parse(this.precoController.text),
                );
                Navigator.pop(context, produto);
              },
            ),
          ),
        ],
      ),
    );
  }
}
