import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio/portfolio2.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte/boxes.dart';
import 'package:lejaum/pages/mobile/widgets/solucoes/solucoes.dart';
import 'widgets/portfolio/portfolio.dart';
import 'widgets/primeira_parte/primeira_parte.dart';

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
              pressionou: () => _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart),
            ),
            // todasBoxesMaisBotao(pressionuou),
            TodasBoxes(
              pressionou: () => _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart),
            ),
            Portfolio(),
            Portfolio2(),
            Solucoes(),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
