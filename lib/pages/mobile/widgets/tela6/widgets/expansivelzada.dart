import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
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
      width: 300,
      height: 500,
      child: ListView.builder(
        key: Key('builder ${selected.toString()}'), //attention
        padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: titulos_Expansividade.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: Themes.expansionTheme,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ExpansionTile(
                    backgroundColor: StylesMobile.quaseBlack,
                    key: Key(index.toString()), //attention
                    initiallyExpanded: index == selected, //attention
                    leading: null,
                    trailing: SvgPicture.asset(
                      selected == index
                          ? "assets/svgs/seta_solucoes_cima.svg"
                          : "assets/svgs/seta_solucoes_baixo.svg",
                    ),
                    // tilePadding: const EdgeInsets.all(0),
                    // expandedAlignment: Alignment.centerLeft,

                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: Text(
                      titulos_Expansividade[index],
                      style: StylesMobile.tituloIconTextSolucao.merge(
                        TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
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
                    }),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
