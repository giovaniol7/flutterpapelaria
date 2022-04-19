import 'package:flutter/material.dart';
import 'widget_carrinho.dart';

class TelaCarrinho extends StatefulWidget {
  @override
  State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Carrinho", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: WidgetCarrinho("Bolsa Escolar", "R\$ 171,56", "https://imgs.ponto.com.br/1531380038/1xg.jpg?imwidth=500"),
                ),
            ),
            Card(
              child: ListTile(
                title: Text("Total Carrinho:"),
                trailing: Text("R\$ 171,56"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 10),
              child: RaisedButton(
                child: Text(
                  "Finalizar Pagamento",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {},
              ),
            ),
          ],
        ),
      )
    );
  }
}


