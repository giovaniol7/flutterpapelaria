//Stateless = stl+tab
import 'package:flutter/material.dart';
import 'package:provaparcial/view/TelaCatalogo.dart';

class CardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle
  });
}

class TelaProdutos extends StatefulWidget {
  const TelaProdutos({Key? key}) : super(key: key);
  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bolsas"),
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("Bolsa Escolar"),
                subtitle: Text("Rosa"),
                trailing: Text("R\$ 171,56"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://imgs.ponto.com.br/1531380038/1xg.jpg?imwidth=500'),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Bolsa"),
                subtitle: Text("Azul"),
                trailing: Text("R\$ 85,56"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.aguiadistribuidora.com.br/image/cache/catalog/27-09x1/27-09x5/mochila-bolsa-escolar-viagem-trabalho-city-masculino-denlexdl0079-28-l-1751-500x500.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
