import 'package:flutter/material.dart';

class InputCustomizado extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final bool autofocus;
  final TextInputType type;

  InputCustomizado({
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.autofocus = false,
    this.type = TextInputType.text
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //autofocus: true,
      controller: this.controller,
      obscureText: this.obscure,
      autofocus: this.autofocus,
      keyboardType: this.type,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          //enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          hintText: this.hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32))),
    );
  }
}
