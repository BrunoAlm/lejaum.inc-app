import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import '../services/lista_de_textos.dart';

class Expansivelzada extends StatefulWidget {
  Expansivelzada({Key? key}) : super(key: key);

  @override
  _ExpansivelzadaState createState() => _ExpansivelzadaState();
}

class _ExpansivelzadaState extends State<Expansivelzada> {
  // selected's value = 0. For default first item is open.
  int selected = 0; //attention
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
        child: Column(children: [
          ListView.builder(
            key: Key('builder ${selected.toString()}'), //attention
            padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: titulos_Expansividade.length,
            itemBuilder: (context, index) {
              return Column(children: <Widget>[
                Divider(
                  height: 17.0,
                  color: Colors.white,
                ),
                ExpansionTile(
                    key: Key(index.toString()), //attention
                    initiallyExpanded: index == selected, //attention

                    leading: Icon(
                      selected == index
                          ? FontAwesomeIcons.minusCircle
                          : FontAwesomeIcons.plusCircle,
                    ),
                    trailing: SizedBox(),
                    title: Text(
                      titulos_Expansividade[index],
                      style: StylesMobile.tituloIconTextSolucao.merge(
                        TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
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
              ]);
            },
          )
        ]),
      ),
    );
  }
}
