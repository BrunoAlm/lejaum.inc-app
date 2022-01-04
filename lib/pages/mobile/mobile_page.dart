import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela3/portfolio/portfolioWB.dart';
import 'widgets/tela2/boxes.dart';
import 'widgets/tela1/primeira_parte.dart';
import 'widgets/tela3/portfolio/portfolioIDV.dart';
import 'widgets/tela3/portfolio/portfolioSM.dart';
import 'widgets/tela4/solucoes/solucoes.dart';

class MobilePage extends StatefulWidget {
  MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    // PageController _pageController = PageController();
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    Get.put(TestPageController());
    return SingleChildScrollView(
      child: Container(
        height: altura,
        width: largura,
        child: GetBuilder<TestPageController>(builder: (context) {
          return PageView(
            controller: context.controller,
            children: [
              PrimeiraParteMobile(
                  segundaTela: () => context.controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutQuart,
                      ),
                  portfolio: () => context.controller.animateToPage(
                        2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOutQuart,
                      )),
              TodasBoxes(
                portifolio: () => context.controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuart),
              ),
              PortfolioSM(),
              PortfolioIDV(),
              PortifolioWB(),
              Solucoes(),
            ],
            scrollDirection: Axis.vertical,
          );
        }),
      ),
    );
  }
}
