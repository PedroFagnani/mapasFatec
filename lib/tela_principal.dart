import 'package:flutter/material.dart';
import 'tela_tabuada.dart';
import 'widgets/button.dart';
import  'tela_animais.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOMEPAGE"),
      ),
      body: _bodyBotoes(context),
      backgroundColor: Colors.black12,
    );
  }


  _bodyBotoes(context) {
    return Container(
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Botoes("Tabuada",40,
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tabuada()),
            );},
          ),
          Botoes("Animais",40,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Animais()),
              );},
          ),
        ],
      ),

    );
  }

}