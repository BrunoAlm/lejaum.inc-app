import 'package:flutter/material.dart';
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

    return SingleChildScrollView(
      child: Container(
        height: altura,
        width: largura,
        child: PageView(
          children: [
            PrimeiraParteMobile(),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoxMao(),
                  BoxCoracao(),
                  BoxSino(),
                  BoxGrafico(),
                ],
              ),
            ),
            // Portfolio(),
            Solucoes(),
          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
