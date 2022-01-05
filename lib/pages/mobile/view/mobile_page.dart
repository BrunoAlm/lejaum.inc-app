import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import '../widgets/tela1/view/home_page_mobile.dart';
import '../widgets/tela2/view/oq_oferecemos.dart';
import '../widgets/tela3-4-5/widgets/portfolioIDV.dart';
import '../widgets/tela3-4-5/widgets/portfolioSM.dart';
import '../widgets/tela3-4-5/widgets/portfolioWB.dart';
import '../widgets/tela6/view/solucoes.dart';
import '../widgets/tela7/view/planos.dart';

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
        color: Theme.of(context).backgroundColor,
        height: altura,
        width: largura,
        child: GetBuilder<TestPageController>(builder: (context) {
          return PageView(
            controller: context.controller,
            children: [
              HomePageMobile(),
              TodasBoxes(),
              PortfolioSM(),
              PortfolioIDV(),
              PortifolioWB(),
              Solucoes(),
              Planos(),
            ],
            scrollDirection: Axis.vertical,
          );
        }),
      ),
    );
  }
}
