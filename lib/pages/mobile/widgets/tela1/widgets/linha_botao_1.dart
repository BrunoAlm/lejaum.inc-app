import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import '../../../../../widgets/botao_estilizado.dart';

class LinhaBotao1 extends StatelessWidget {
  const LinhaBotao1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MobilePageViewController());
    double _altura_do_botao = 35;
    double _largura_do_botao = 140;
    return GetBuilder<MobilePageViewController>(
      builder: (_pageController) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconeBotaoEstilizado(
            textColor: Colors.white,
            texto: "Saber Mais",
            altura: _altura_do_botao,
            largura: _largura_do_botao,
            pressionado: () => _pageController.controller.nextPage(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOutQuart,
            ),
            icone: Icons.arrow_circle_down_outlined,
            cor: Styles.lowBlueGray,
          ),
          SizedBox(width: 20),
          IconeBotaoEstilizado(
            textColor: Styles.pretao,
            texto: "Portfólio",
            altura: _altura_do_botao,
            largura: _largura_do_botao,
            pressionado: () => _pageController.controller.animateToPage(
              2,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOutQuart,
            ),
            icone: Icons.arrow_circle_down_outlined,
            cor: Styles.mareloMostarda,
          ),
        ],
      ),
    );
  }
}
