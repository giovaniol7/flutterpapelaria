import 'package:flutter/material.dart';

class WidgetCarrinho extends StatelessWidget {
  //Atributos que serão usados para receber
  //dados através do construtor
  final String nome;
  final String preco;
  final String imagem;

  const WidgetCarrinho(this.nome, this.preco, this.imagem, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _contador = 1;
    return Container(
      child: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imagem),
                ),
                title: Row(
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(nome, style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(preco, style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),),
                          ],
                        )
                    ),
                    IconButton(
                      onPressed: (){
                        _contador--;
                      },
                      icon: Icon(Icons.remove_circle, color: Colors.red[400],),
                    ),
                    Text('$_contador', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),),
                    IconButton(
                      onPressed: (){
                        _contador++;
                      },
                      icon: Icon(Icons.add_circle, color: Colors.green[400],),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}