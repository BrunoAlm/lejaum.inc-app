import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/textos_expansivo_1_m.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/textos_expansivo_2.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/textos_expansivo_2_m.dart';
import '../services/textos_expansivo_1.dart';

class Expansivelzada2 extends StatefulWidget {
  Expansivelzada2({Key? key}) : super(key: key);

  @override
  _Expansivelzada2State createState() => _Expansivelzada2State();
}

class _Expansivelzada2State extends State<Expansivelzada2> {
  // selected's value = 0. For default first item is open.
  int selected = 0; //attention
  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;
    double mudarFonteTitulo(double largura) {
      double tamanho_fonte = largura <= motog4 ? 18 : 23;
      return tamanho_fonte;
    }

    double mudarAlturaSvg(double largura) {
      double tamanho_fonte = largura <= motog4 ? 17 : 23;
      return tamanho_fonte;
    }

    double mudarFonteSubTitulo(double largura) {
      double tamanho_fonte = largura <= motog4 ? 13 : 16;
      return tamanho_fonte;
    }

    print('titulo 2 mobile  ${titulos_2_Expansividade_m.length}');
    print('titulo 2  ${titulos_2_Expansividade.length}');
    return Container(
      height: 500,
      child: ListView.builder(
        key: Key('builder ${selected.toString()}'), //attention
        padding: EdgeInsets.only(right: 13.0, bottom: 25.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _largura_da_tela <= motog4
            ? titulos_2_Expansividade_m.length
            : titulos_2_Expansividade.length,
        itemBuilder: (c, index) {
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
                        height: mudarAlturaSvg(_largura_da_tela),
                      ),
                      title: Text(
                          _largura_da_tela <= motog4
                              ? titulos_2_Expansividade_m[index]
                              : titulos_2_Expansividade[index],
                          style: Styles.tituloIconTextSolucao.copyWith(
                              color: Colors.white,
                              fontSize: mudarFonteTitulo(_largura_da_tela))),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            _largura_da_tela <= motog4
                                ? subtitulos_2_Expansividade_m[index]
                                : subtitulos_2_Expansividade[index],
                            style: Styles.subtituloIconTextSolucao.copyWith(
                              fontSize: mudarFonteSubTitulo(_largura_da_tela),
                            ),
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
