import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExpansionTile(
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      collapsedBackgroundColor: Styles.quaseBlack,
                      backgroundColor: Styles.quaseBlack,
                      key: Key(index.toString()), //attention
                      initiallyExpanded: index == selected, //attention
                      leading: null,
                      trailing: SvgPicture.asset(
                        selected == index
                            ? "assets/svgs/seta_solucoes_cima.svg"
                            : "assets/svgs/seta_solucoes_baixo.svg",
                      ),
                      title: Text(
                        titulos_Expansividade[index],
                        style: Styles.tituloIconTextSolucao.merge(
                          TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            subtitulos_Expansividade[index],
                            style: Styles.subtituloIconTextSolucao,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextButton(
                            onPressed: abrirWhatsApp,
                            style: ButtonStyle(
                              alignment: Alignment.centerLeft,
                              overlayColor: MaterialStateProperty.all(
                                  Styles.cinzou.withOpacity(0.5)),
                              splashFactory: InkSplash.splashFactory,
                            ),
                            child: Text(
                              'Clique para mais informações',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.underline,
                                decorationColor: Styles.cinzou,
                                color: Styles.cinzou,
                              ),
                            ),
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
              ),
            ],
          );
        },
      ),
    );
  }
}
