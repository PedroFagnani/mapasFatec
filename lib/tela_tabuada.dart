import 'package:flutter/material.dart';
import 'package:lista_novas_telas2/widgets/textos.dart';
import 'package:lista_novas_telas2/widgets/input.dart';
import 'package:lista_novas_telas2/widgets/button.dart';


class Tabuada extends StatefulWidget {
  @override
  _TabuadaState createState() => _TabuadaState();
}

class _TabuadaState extends State<Tabuada> {
  final _seuTexto = TextEditingController();
  int num = 0;
  String texto ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("TABUADA"),
      ),
      body: _buildBody(),


    );
  }

  _buildBody() {
    return Container(
      height: double.infinity,
      color: Colors.black54,
      child: Padding(
       padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
        children: <Widget>[
          InputTextos("Informe um número","Digite aqui",controller: _seuTexto,),
          Botoes("Calcular",20,onPressed: _onClick),
          Textos(texto,25),

        ],
      ),
      ),
    );

  }

  _onClick() {
    setState(() {
      texto ="";
      num = int.parse(_seuTexto.text);
      for(var i =1;i<=10;i++){
        var resp = i*num;
        texto +=("$num X $i = $resp\n");
      }

      print("clicou");
    });

  }

}
