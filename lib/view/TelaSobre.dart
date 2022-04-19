import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {

  Future<void> _mostrarInformacoes() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Informações'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Icon(Icons.info, color: Colors.white,),
                Text("O aplicativo com o tema de Papelaria."),
                Text("O objetivo do aplicativo é compras online."),
                Text("Desenvolvedor: Giovani Lazzarini"),
                Image.asset("lib/imagens/aluno.jpg", scale: 2,)
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: FlatButton(
                onPressed: () => {},
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.whatsapp, color: Colors.white,),
                    Text("(16) 99740-8844", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: FlatButton(
                onPressed: () => {},
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.white,),
                    Text("ideiapapelaria@hotmail.com", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: FlatButton(
                onPressed: (){
                  _mostrarInformacoes();
                },
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(Icons.info, color: Colors.white),
                    Text("Informações",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


