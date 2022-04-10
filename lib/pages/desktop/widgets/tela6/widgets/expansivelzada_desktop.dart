import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/desktop/widgets/tela6/services/textos_expansivo_1_m.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

class ExpansivelzadaDesktop extends StatefulWidget {
  ExpansivelzadaDesktop({Key? key}) : super(key: key);

  @override
  _ExpansivelzadaDesktopState createState() => _ExpansivelzadaDesktopState();
}

class _ExpansivelzadaDesktopState extends State<ExpansivelzadaDesktop> {
  // selected's value = 0. For default first item is open.
  int selected = 0; //attention
  @override
  Widget build(BuildContext context) {
    // var _largura_da_tela = MediaQuery.of(context).size.width;
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_da_tela = MediaQuery.of(context).size.height;

    return Container(
      constraints: BoxConstraints(
        maxHeight: _altura_da_tela * .5,
        maxWidth: _largura_da_tela,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: ExpTeste1(
              listaSubtitulos: ExpansivoDesktop.subtitulos_01,
              listaTitulos: ExpansivoDesktop.titulos_01,
            ),
            width: 300,
          ),
          SizedBox(
            child: ExpTeste1(
              listaSubtitulos: ExpansivoDesktop.subtitulos_02,
              listaTitulos: ExpansivoDesktop.titulos_02,
            ),
            width: 300,
          ),
          SizedBox(
            child: ExpTeste1(
              listaSubtitulos: ExpansivoDesktop.subtitulos_03,
              listaTitulos: ExpansivoDesktop.titulos_03,
            ),
            width: 300,
          ),
        ],
      ),
    );

    // ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   shrinkWrap: true,
    //   addAutomaticKeepAlives: true,
    //   itemCount: titulos_expansividade_desktop.length,
    //   addRepaintBoundaries: false,
    //   itemExtent: 410,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       margin: EdgeInsets.all(10),
    //       padding: EdgeInsets.all(10),
    //       child: ExpansionTile(
    //         title: Text(titulos_expansividade_desktop[index]),
    //       ),
    //     );
    //   },
    // ),
  }
}

class ExpTeste1 extends StatefulWidget {
  final List<String> listaTitulos;
  final List<String> listaSubtitulos;
  const ExpTeste1(
      {Key? key, required this.listaTitulos, required this.listaSubtitulos})
      : super(key: key);

  @override
  State<ExpTeste1> createState() => _ExpTeste1State();
}

class _ExpTeste1State extends State<ExpTeste1> {
  int selected = 0; //attention

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: Key('builder ${selected.toString()}'), //attention
      padding: EdgeInsets.only(right: 23.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.listaTitulos.length,
      itemBuilder: (c, index) {
        return Theme(
          data: Themes.expansionTheme,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.8),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
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
                    height: 23,
                  ),
                  title: Text(
                    widget.listaTitulos[index],
                    style: Styles.tituloIconTextSolucao.copyWith(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 5),
                      child: Text(
                        widget.listaSubtitulos[index],
                        style: Styles.subtituloIconTextSolucao.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
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
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
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
        );
      },
    );
  }
}
