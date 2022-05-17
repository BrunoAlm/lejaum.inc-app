import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela6/widgets/expansivelzada_desktop.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:get/get.dart';

class SolucoesDesktop extends StatefulWidget {
  SolucoesDesktop({Key? key}) : super(key: key);

  @override
  State<SolucoesDesktop> createState() => _SolucoesDesktopState();
}

class _SolucoesDesktopState extends State<SolucoesDesktop> {
  @override
  Widget build(BuildContext context) {
    // double upperText(double largura) {
    //   double tamanho_fonte = largura <= motog4 ? 11 : 14;
    //   print(largura);
    //   return tamanho_fonte;
    // }

    // double footerText(double largura) {
    //   double tamanho_fonte;
    //   tamanho_fonte = largura <= motog4 ? 18 : 24;
    //   return tamanho_fonte;
    // }

    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;

    return SizedBox(
      height: _altura - 60,
      width: _largura,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 30.0),
                child: AutoSizeText(
                  'Soluções',
                  style: Styles.tituloExtraBoldMenor,
                  maxLines: 1,
                  minFontSize: 35,
                  // minFontSize: constraints.maxWidth <= motog4 ? 30 : 35,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: AutoSizeText(
                  'Veja abaixo algumas das soluções que nós podemos oferecer:',
                  style: Styles.subtitulo.copyWith(
                      color: Get.theme.colorScheme.secondary,
                      // fontSize: upperText(constraints.maxWidth)),
                      fontSize: 14),
                ),
              ),
              const SizedBox(height: 20),
              // Expanded(child: CardSolucao()),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: ExpansivelzadaDesktop(),
              ),
              // const SizedBox(height: 20),
              Spacer(),
              Center(
                child: AutoSizeText(
                  'Nós somos a solução para sua empresa!',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: Styles.subtituloBoldao.copyWith(
                    color: Styles.laranjaum,
                    // fontSize: footerText(constraints.maxWidth),
                    fontSize: 24,
                  ),
                ),
              ),
              // SizedBox(height: constraints.maxWidth <= motog4 ? 20 : 50),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
