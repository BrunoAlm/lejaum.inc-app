import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

class LinhaBotao2 extends StatelessWidget {
  const LinhaBotao2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MobilePageViewController());

    double _altura_do_botao = 35;
    double _largura_do_botao = 140;
    return GetBuilder<MobilePageViewController>(
      builder: (_pageController) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedIconeBotaoEstilizado(
            textColor: Colors.white,
            texto: "Ver Planos",
            altura: _altura_do_botao,
            largura: _largura_do_botao,
            pressionado: () => _pageController.controller.animateToPage(
              6,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOutQuart,
            ),
            icone: Icons.credit_card,
          ),
          SizedBox(width: 20),
          OutlinedIconeBotaoEstilizado(
            textColor: Colors.white,
            texto: "Whatsapp",
            altura: _altura_do_botao,
            largura: _largura_do_botao,
            pressionado: abrirWhatsApp,
            icone: FaIcon(FontAwesomeIcons.whatsapp).icon,
          ),
        ],
      ),
    );
  }
}
