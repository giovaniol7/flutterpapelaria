import 'package:flutter/material.dart';
import 'package:provaparcial/view/TelaProdutos.dart';

class TelaCatalogo extends StatefulWidget {
  @override
  State<TelaCatalogo> createState() => _TelaCatalogoState();
}

class _TelaCatalogoState extends State<TelaCatalogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Bolsas',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaProdutos()
                  )
              );
            },
          ),
          ListTile(
            title: Text('Cadernos',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          ListTile(
            title: Text('Lancheiras',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          ListTile(
            title: Text('Lápis',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          ListTile(
            title: Text('Borracha',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}


