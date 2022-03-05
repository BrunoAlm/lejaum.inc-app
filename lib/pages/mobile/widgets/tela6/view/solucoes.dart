import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/view/card_solucao.dart';

class Solucoes extends StatefulWidget {
  Solucoes({Key? key}) : super(key: key);

  @override
  State<Solucoes> createState() => _SolucoesState();
}

class _SolucoesState extends State<Solucoes> {
  @override
  Widget build(BuildContext context) {
    double upperText(double largura) {
      double tamanho_fonte = largura <= motog4 ? 11 : 14;
      print(largura);
      return tamanho_fonte;
    }

    double footerText(double largura) {
      double tamanho_fonte;
      tamanho_fonte = largura <= motog4 ? 18 : 24;
      return tamanho_fonte;
    }

    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;

    return SizedBox(
      height: _altura,
      width: _largura,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              AutoSizeText(
                'Soluções',
                style: Styles.tituloExtraBoldMenor,
                maxLines: 1,
                minFontSize: constraints.maxHeight <= motog4 ? 30 : 35,
                // minFontSize: constraints.maxWidth <= motog4 ? 30 : 35,
              ),
              const SizedBox(height: 10),
              AutoSizeText(
                'Veja abaixo algumas das soluções que nós podemos oferecer:',
                style: Styles.subtitulo.copyWith(
                    color: Get.theme.colorScheme.secondary,
                    // fontSize: upperText(constraints.maxWidth)),
                    fontSize: upperText(constraints.maxHeight)),
              ),
              const SizedBox(height: 20),
              Expanded(child: CardSolucao()),
              AutoSizeText(
                'Nós somos a solução para\nsua empresa!',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Styles.subtituloBoldao.copyWith(
                  color: Styles.laranjaum,
                  // fontSize: footerText(constraints.maxWidth),
                  fontSize: footerText(constraints.maxHeight),
                ),
              ),
              // SizedBox(height: constraints.maxWidth <= motog4 ? 20 : 50),
              SizedBox(height: constraints.maxHeight <= motog4 ? 20 : 50),
            ],
          ),
        ),
      ),
    );
  }
}
