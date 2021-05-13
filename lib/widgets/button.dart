import 'package:flutter/material.dart';
class Botoes extends StatelessWidget {
  final String texto;
  final Function onPressed;
  final double tamanho;
  Botoes(this.texto,this.tamanho,{this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.green,
        child:Text(
          texto,
          style: TextStyle(
              color:Colors.white,
              fontSize: tamanho,
          ),
        ),
        onPressed: onPressed);
  }
}