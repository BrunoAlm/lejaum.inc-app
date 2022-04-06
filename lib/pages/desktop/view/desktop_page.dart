import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/styles_desktop.dart';
import '../widgets/tela2/view/oq_oferecemos.dart';
import '../widgets/tela3/view/portfolioSM.dart';
import '../widgets/tela4/view/portfolioIDV.dart';
import '../widgets/tela5/view/portfolioIDV2.dart';
import '../widgets/home_page/home_page_desktop.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(DesktopListViewController());
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: _altura,
        maxWidth: _largura,
      ),
      // height: _altura - 60,
      // width: _largura,
      child: GetBuilder<DesktopListViewController>(
        builder: (context) => SingleChildScrollView(
          controller: context.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageDesktop(key: context.homeKey),
              TodasBoxesDesktop(key: context.boxesKey),
              PortfolioSM(key: context.portfolioKey),
              PortfolioIDV(),
              PortifolioIDV2(),
              // Solucoes(),
              // Planos(),
              // Avaliacoes(),
            ],
          ),
        ),
      ),
    );
  }
}
