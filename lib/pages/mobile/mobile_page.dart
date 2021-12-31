import 'package:flutter/material.dart';
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
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    PageController _pageController = PageController();

    return SingleChildScrollView(
      child: Container(
        height: altura,
        width: largura,
        child: PageView(
          controller: _pageController,
          children: [
            PrimeiraParteMobile(
                segundaTela: () => _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOutQuart,
                    ),
                portfolio: () => _pageController.animateToPage(
                      2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOutQuart,
                    )),
            TodasBoxes(
              portifolio: () => _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart),
            ),
            PortfolioSM(),
            PortfolioIDV(),
            Solucoes(),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
