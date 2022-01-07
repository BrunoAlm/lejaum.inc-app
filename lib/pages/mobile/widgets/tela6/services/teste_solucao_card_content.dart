import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'lista_de_textos.dart';

List<Widget> solucoes_card_list = [
  CardSolucao1(),
  Container(),
];

class CardSolucao1 extends StatefulWidget {
  const CardSolucao1({Key? key}) : super(key: key);

  @override
  _CardSolucao1State createState() => _CardSolucao1State();
}

class _CardSolucao1State extends State<CardSolucao1> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: Key('builder ${selected.toString()}'), //attention
        itemCount: titulos_Expansividade.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: Key(index.toString()), //attention
            initiallyExpanded: index == selected, //attention
            title: Text(titulos_Expansividade[index]),
            trailing: Icon(
              selected == index
                  ? FontAwesomeIcons.arrowAltCircleDown
                  : FontAwesomeIcons.arrowAltCircleUp,
            ),
            onExpansionChanged: ((newState) {
              if (newState)
                setState(() {
                  Duration(seconds: 20000);
                  selected = index;
                });
              else
                setState(() {
                  selected = -1;
                });
            }),
            children: [Text(subtitulos_Expansividade[index])],
          );
        });
  }
}

class TesteSolucao extends StatefulWidget {
  const TesteSolucao({Key? key}) : super(key: key);

  @override
  _TesteSolucaoState createState() => _TesteSolucaoState();
}

class _TesteSolucaoState extends State<TesteSolucao> {
  @override
  Widget build(BuildContext context) {
    int selected = 0; //attention
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        key: Key('builder ${selected.toString()}'), //attention
        padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: titulos_Expansividade.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            child: Column(children: <Widget>[
              Divider(
                height: 17.0,
                color: Colors.white,
              ),
              ExpansionTile(
                  key: Key(index.toString()), //attention
                  initiallyExpanded: index == selected, //attention

                  leading: Icon(
                    selected == index
                        ? FontAwesomeIcons.arrowAltCircleDown
                        : FontAwesomeIcons.arrowAltCircleUp,
                  ),
                  trailing: SizedBox(),
                  title: Text(
                    titulos_Expansividade[index],
                    style: StylesMobile.tituloIconTextSolucao.merge(
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        subtitulos_Expansividade[index],
                        style: StylesMobile.subtituloIconTextSolucao,
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                  onExpansionChanged: ((newState) {
                    if (newState)
                      setState(() {
                        Duration(seconds: 20000);
                        selected = index;
                      });
                    else
                      setState(() {
                        selected = -1;
                      });
                  })),
            ]),
          );
        },
      ),
    );
  }
}
