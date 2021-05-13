import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_novas_telas2/widgets/textos.dart';

class ModelAnimais extends StatelessWidget {
  final String nome;
  final String descricao;
  final String urlImagem;
  ModelAnimais(this.nome,this.descricao,this.urlImagem);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Veja curiosidades sobre "+nome),
      ),
      body: _metodoBody(),
        );

  }

  _metodoBody(){
    return Container(
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          Textos("Descubra mais sobre o "+nome,15),
          Textos(descricao,15),
          Image.network(urlImagem,scale: 0.3,),

        ],
      ),
    );
  }
}
