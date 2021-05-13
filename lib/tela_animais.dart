import 'package:flutter/material.dart';
import 'package:lista_novas_telas2/model_animais.dart';
import 'package:lista_novas_telas2/widgets/widgetsImagemGrid.dart';
import 'package:lista_novas_telas2/tela_tabuada.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Animais"),
      ),
      backgroundColor: Colors.black12,
      body: conBody(),

    );
  }

  conBody() {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.imgur.com/JLk64uw.png'),
            ),
            title: Text('Cachorro'),
            subtitle: Text('Clique para ver as característica deste  animal em  seu ambiente natural'),
            isThreeLine: true,
            onTap: () {
              print("clicou");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelAnimais("Cachorro",
                    "O cão, no Brasil também chamado de cachorro, é um mamífero carnívoro da família dos canídeos, subespécie do lobo, e talvez o mais antigo animal domesticado pelo ser humano. Teorias postulam que surgiu do lobo cinzento no continente asiático há mais de 100 000 anos.",
                    "https://www.petz.com.br/blog/wp-content/uploads/2021/03/piercing-para-cachorro-2.jpg")),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://i.imgur.com/nfgNYpy.png',),
            ),
            title: Text('Gato'),
            subtitle: Text('Clique para ver as característica deste  animal em  seu ambiente natural'),
            isThreeLine: true,
            onTap: () {
              print("clicou");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelAnimais("Gato",
                    " O gato, também conhecido como gato caseiro, gato urbano ou gato doméstico, é um mamífero carnívoro da família dos felídeos, muito popular como animal de estimação. Ocupando o topo da cadeia alimentar, é predador natural de diversos animais, como roedores, pássaros, lagartixas e alguns insetos.",
                    "https://i.imgur.com/vKnai01.png")),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('http://www.infoescola.com/wp-content/uploads/2008/07/coelho.jpg',),
            ),
            title: Text('Coelho'),
            subtitle: Text('Clique para ver as característica deste  animal em  seu ambiente natural'),
            isThreeLine: true,
            onTap: () {
              print("clicou");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelAnimais("Coelho",
                    " Os coelhos são mamíferos lagomorfos da família dos leporídeos, em geral dos gêneros Oryctolagus e Sylvilagus. Caracterizam-se pela cauda curta, as orelhas e patas compridas. Esses pequenos mamíferos encontram-se facilmente em muitas regiões do planeta. ",
                    "https://blog.cobasi.com.br/wp-content/uploads/2020/10/cuidar-de-coelho-1024x682.png")),
              );
              },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://www.jornaldaorla.com.br/arquivos/noticia/2017_3_31_18_3_55_1082.jpg',),
            ),
            title: Text('Urso'),
            subtitle: Text('Clique para ver as característica deste  animal em  seu ambiente natural'),
            isThreeLine: true,
            onTap: () {
              print("clicou");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelAnimais("Urso",
                    "Os Ursos constituem uma família de mamíferos plantígrados, da ordem Carnivora, geralmente de grande porte, contendo os ursos e os pandas. Wikipédia",
                    "https://img.r7.com/images/russia-vladimir-putin-15082019120439103")),
              );

              },
          ),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ramphastos_toco_-Birdworld%2C_Farnham%2C_Surrey%2C_England-8a.jpg/1200px-Ramphastos_toco_-Birdworld%2C_Farnham%2C_Surrey%2C_England-8a.jpg',),
            ),
            title: Text('Tucano'),
            subtitle: Text('Clique para ver as característica deste  animal em  seu ambiente natural'),
            isThreeLine: true,
            onTap: () {
              print("clicou");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelAnimais("Tucano",
                    "Os tucanos são aves da família Ramphastidae que vivem nas florestas da América Central e América do Sul. A família inclui cinco gêneros e mais de quarenta espécies diferentes.",
                    "https://pocaobrotas.com.br/wp-content/uploads/2020/12/Tucano-Toco-1024x585.png")),
              );
            },
          ),
        ),

      ],
    );
  }
}