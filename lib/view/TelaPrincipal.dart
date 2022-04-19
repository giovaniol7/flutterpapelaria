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

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  //String pesquisa;
  //TelaPrincipal(this.pesquisa);
  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  List<CardItem> itens = [
    CardItem(
        urlImage: 'https://images-americanas.b2w.io/produtos/3951509671/imagens/bolsas-escolares-de-grande-capacidade-para-meninas-adolescentes-oxford-pano-bolsa-escola-bolsa-do-aluno-mochila-escolar-com-porta-de-carregamento-usb/3951509911_5_large.jpg',
        title: 'Bolsa Escolar Rosa',
        subtitle: 'R\$171,56'
    ),
    CardItem(
        urlImage: 'https://www.aguiadistribuidora.com.br/image/cache/catalog/27-09x1/27-09x5/mochila-bolsa-escolar-viagem-trabalho-city-masculino-denlexdl0079-28-l-1751-500x500.png',
        title: 'Bolsa Escolar Azul',
        subtitle: 'R\$85,00'
    ),
    CardItem(
        urlImage: 'https://imgs.ponto.com.br/1531380038/1xg.jpg?imwidth=500',
        title: 'Bolsa Azul',
        subtitle: 'R\$85,00'
    ),
  ];

  /*_listarProduto(String pesquisa){
    Api api = Api();
    return api.pesquisar(pesquisa);
  }*/

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Text("Bolsas", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            listCard(),
            Text("Lancheiras", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            listCard(),
            Text("Cadernos", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            listCard(),
          ],
        ),
      ),
    );
  }

  Widget listCard () => Container(
      height: 200,
      child: ListView.separated(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCard(itens: itens[index]),
          separatorBuilder: (context, _) => SizedBox(width: 1,),
          itemCount: 5
      )
  );

  Widget buildCard({required CardItem itens}) => Container(
    width: 150,
    child: Column(
        children: [
          Expanded(
              child: AspectRatio(
                aspectRatio: 2/2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(itens.urlImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: (){}
                      ),
                    ),
                  ),
                ),
              )
          ),
          const SizedBox(height: 4),
          Text(itens.title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(itens.subtitle, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
        ],
    )
  );
}
