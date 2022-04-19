//Stateless = stl+tab
import 'package:flutter/material.dart';
import 'package:provaparcial/view/TelaCarrinho.dart';
import 'package:provaparcial/view/TelaCatalogo.dart';
import 'package:provaparcial/view/TelaPerfil.dart';
import 'package:provaparcial/view/TelaPrincipal.dart';
import 'package:provaparcial/view/TelaSobre.dart';

import 'CustomSearchDelegate.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  //String _resultado = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      TelaPrincipal( ),
      TelaCatalogo(),
      TelaCarrinho(),
      TelaSobre(),
      TelaPerfil()
    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(width: 80 ,child: Image.asset('lib/imagens/Slogam.png')),
        foregroundColor: Colors.red.shade200,
        actions: <Widget>[
          IconButton(
              iconSize: 30,
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () async {
               String? res = await showSearch(context: context, delegate: CustomSearchDelegate());
               /*setState(() {
                 resultado = res;
               });*/
              },

          )
        ],
        backgroundColor: Colors.grey.shade300,
      ),
      body:
      Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("lib/imagens/background_2.png"), fit: BoxFit.cover),
            ),
          ),
          telas[_indiceAtual],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade300,
        fixedColor: Colors.red.shade800,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Catálogo',
            icon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            label: 'Carrinho',
            icon: Icon(Icons.add_shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Sobre',
            icon: Icon(Icons.info),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
