import 'package:flutter/material.dart';
import 'package:provaparcial/view/InputCustomizado.dart';
import 'package:provaparcial/view/TelaCadastro.dart';
import 'package:provaparcial/view/TelaCatalogo.dart';

class TelaPerfil extends StatefulWidget {
  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {

  TextEditingController _controllerEmail = TextEditingController(text: "gmail@gmail.com");
  TextEditingController _controllerSenha = TextEditingController(text: "1234567");

  bool _cadastrar = false;
  String _mensagemErro = "";

  _cadastrarUsuario(){}
  _logarUsuarioa(){}

  _validarCampos(){
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if(email.isNotEmpty && email.contains("@")){
      if(senha.isNotEmpty && senha.length > 6){

        if(_cadastrar){
          _cadastrarUsuario();
        }else{
          _logarUsuarioa();
        }
      }else{
        setState(() {
          _mensagemErro = "Preencha a senha! Digite mais de 6 caracteres!";
        });
      }
    }else{
      setState(() {
        _mensagemErro = "Preencha o E-mail válido!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  "lib/imagens/Slogam.png",
                  width: 200,
                  height: 150,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: InputCustomizado(
                  controller: _controllerEmail,
                  hint: "E-mail",
                  //autofocus: true,
                  type: TextInputType.emailAddress,
                ),
              ),
              InputCustomizado(
                controller: _controllerSenha,
                hint: "Senha",
                obscure: true,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 10),
                child: RaisedButton(
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                  onPressed: () {},
                ),
              ),
              Center(
                child: GestureDetector(
                  child: Text(
                    "Não tem conta? Cadastre-se!",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  onTap:  (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaCadastro()
                        )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(_mensagemErro, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
