import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/responsividade.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/textos_expansivo_1_m.dart';
import '../services/textos_expansivo_1.dart';

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
    // var _largura_da_tela = MediaQuery.of(context).size.width;
    var _largura_da_tela = MediaQuery.of(context).size.height;

    return Container(
      width: 300,
      height: 500,
      child: ListView.builder(
        key: Key('builder ${selected.toString()}'), //attention
        padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _largura_da_tela <= motog4
            ? titulos_1_Expansividade_m.length
            : titulos_1_Expansividade.length,
        itemBuilder: (c, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: Themes.expansionTheme,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: _largura_da_tela <= motog4 ? 4 : 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ListTileTheme(
                      dense: _largura_da_tela <= motog4 ? true : false,
                      // contentPadding: EdgeInsets.zero,
                      child: ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        collapsedBackgroundColor: Styles.quaseBlack,
                        backgroundColor: Styles.quaseBlack,
                        controlAffinity: ListTileControlAffinity.platform,
                        key: Key(index.toString()), //attention
                        initiallyExpanded: index == selected, //attention
                        leading: null,
                        trailing: SvgPicture.asset(
                          selected == index
                              ? "assets/svgs/seta_solucoes_cima.svg"
                              : "assets/svgs/seta_solucoes_baixo.svg",
                          height: mudarAlturaSvg(_largura_da_tela),
                        ),
                        title: Text(
                          _largura_da_tela <= motog4
                              ? titulos_1_Expansividade_m[index]
                              : titulos_1_Expansividade[index],
                          style: Styles.tituloIconTextSolucao.copyWith(
                            color: Colors.white,
                            fontSize: mudarFonteTitulo(_largura_da_tela),
                          ),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Text(
                              _largura_da_tela <= motog4
                                  ? subtitulos_1_Expansividade_m[index]
                                  : subtitulos_1_Expansividade[index],
                              style: Styles.subtituloIconTextSolucao.copyWith(
                                fontSize: mudarFonteSubTitulo(_largura_da_tela),
                              ),
                            ),
                          ),
                          SizedBox(height: _largura_da_tela <= motog4 ? 0 : 5),
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
                                style: Styles.linkTextSolucao.copyWith(
                                  fontSize:
                                      mudarFonteSubTitulo(_largura_da_tela - 1),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: _largura_da_tela <= motog4 ? 0 : 5),
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
              ),
            ],
          );
        },
      ),
    );
  }
}
