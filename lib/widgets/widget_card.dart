import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:lista_novas_telas2/widgets/widgetsImagemGrid.dart';

class Cards extends StatefulWidget {
 final String imagemFrente;
 final String imagemTras;
 final bool permiteTroca;
  Cards(this.imagemFrente,this.imagemTras,this.permiteTroca);


  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  GlobalKey <FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch : widget.permiteTroca,
        speed: 500,
        front: Container(
          child: SuaImagem(caminhoArquivo: widget.imagemFrente),
        ),
        back: Container(
          child: SuaImagem(caminhoArquivo: widget.imagemTras),
        )
    );
  }
}
