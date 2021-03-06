import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/services/styles_desktop.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
// import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import '../widgets/boxes.dart';

class TodasBoxesDesktop extends StatelessWidget {
  const TodasBoxesDesktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(DesktopListViewController());

    var _altura = MediaQuery.of(context).size.height;
    // var boxes = GlobalKey();
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      // key: boxes,
      height: _altura - 30,
      width: _largura,
      color: context.theme.backgroundColor,
      child: Center(
        child: Container(
          width: 670,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // padding: EdgeInsets.only(right: _largura * 0.30),
              Text(
                'O que nós oferecemos:',
                style: Styles.subtituloBoldao.merge(
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoxMao(),
                      const SizedBox(width: 10),
                      BoxSino(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoxCoracao(),
                      const SizedBox(width: 10),
                      BoxGrafico(),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Column(
              //       children: [
              //         BoxMao(),
              //         SizedBox(height: 22),
              //         BoxCoracao(),
              //         SizedBox(height: 22),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         BoxSino(),
              //         SizedBox(height: 22),
              //         BoxGrafico(),
              //       ],
              //     ),
              //   ],
              // ),
              GetBuilder<DesktopListViewController>(
                builder: (controller) => IconeBotaoEstilizado(
                  cor: Styles.laranjaum,
                  textColor: Colors.white,
                  texto: 'Ver portfólio',
                  pressionado: () {
                    Scrollable.ensureVisible(
                      controller.portfolioKey.currentContext!,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOutQuart,
                    );
                  },
                  altura: 40,
                  largura: 165,
                  icone: Icons.arrow_circle_down_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
