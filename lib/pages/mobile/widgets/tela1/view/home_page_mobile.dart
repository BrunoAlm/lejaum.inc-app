import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/widgets/linha_botao_1.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/widgets/linha_botao_2.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;

    double fontMotoG4(double largura) {
      double tamanho_fonte = largura <= motog4 ? 31 : 38;
      return tamanho_fonte;
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: _altura,
        decoration: BoxDecoration(
          color: context.theme.backgroundColor,
          image: DecorationImage(
            image: AssetImage("assets/images/first_page_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                'NÃO VENDEMOS',
                style: Styles.tituloFinoLinethrough,
                // maxFontSize: 38,
                maxLines: 1,
                minFontSize: fontMotoG4(_largura),
              ),
              AutoSizeText(
                'SERVIÇOS,',
                style: Styles.tituloFinoLinethrough,
                // maxFontSize: 38,
                maxLines: 1,
                minFontSize: fontMotoG4(_largura),
              ),
              AutoSizeText(
                'NÓS ENTREGAMOS',
                style: Styles.tituloExtraBold,
                // maxFontSize: 38,
                minFontSize: fontMotoG4(_largura),

                // overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              AutoSizeText(
                'SOLUÇÕES!',
                style: Styles.tituloExtraBold,
                maxLines: 1,
                minFontSize: fontMotoG4(_largura),
              ),
              const SizedBox(height: 35),
              LinhaBotao1(),
              SizedBox(height: 20),
              LinhaBotao2(),
            ],
          ),
        ),
      );
    });
  }
}
