import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import '../widgets/boxes.dart';

class TodasBoxesDesktop extends StatelessWidget {
  const TodasBoxesDesktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura - 60,
      width: _largura,
      color: context.theme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: _largura * 0.26),
            child: Text(
              'O que nós oferecemos:',
              style: Styles.subtituloBoldao.merge(
                TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
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
          Padding(
            padding: EdgeInsets.only(left: _largura * 0.26),
            child: IconeBotaoEstilizado(
              cor: Styles.laranjaum,
              textColor: Colors.white,
              texto: 'Ver portfólio',
              pressionado: () {},
              altura: 40,
              largura: 165,
              icone: Icons.arrow_circle_down_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
