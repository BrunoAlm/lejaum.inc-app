import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import '../widgets/boxes.dart';

class TodasBoxes extends StatelessWidget {
  const TodasBoxes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(TestPageController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 170),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('O que nós oferecemos:', style: StylesMobile.subtituloBoldao),
            SizedBox(height: 22),
            SizedBox(
              width: 310,
              child: Column(
                children: [
                  boxMao(),
                  SizedBox(height: 22),
                  boxCoracao(),
                  SizedBox(height: 22),
                  boxSino(),
                  SizedBox(height: 22),
                  boxGrafico(),
                ],
              ),
            ),
            SizedBox(height: 30),
            GetBuilder<TestPageController>(
              builder: (_pageController) => BotaoEstilizado(
                cor: StylesMobile.laranjaum,
                textColor: Colors.white,
                texto: 'Ver portfólio',
                pressionado: () => _pageController.controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                ),
                altura: 40,
                largura: 165,
                icone: Icons.arrow_circle_down_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
