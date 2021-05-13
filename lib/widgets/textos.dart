import 'package:flutter/material.dart';
class Textos extends StatelessWidget{
 final String seuTexto;
  final double tamanho;
  @override
  Widget build(BuildContext context) {
    return Text(
      seuTexto,
      style: TextStyle(
          color:Colors.black,
          //backgroundColor: Colors.black12,
          fontSize: tamanho,
      ),

    );
  }
  Textos(this.seuTexto,this.tamanho);
}
