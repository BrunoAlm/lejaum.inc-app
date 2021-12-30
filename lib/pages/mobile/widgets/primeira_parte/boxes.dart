import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

// final String font = 'Georama';
// final Color laranjaum = Color(0xFFFF5400);
// final Color quaseWhite = Color(0xFFF4F4F4);

Widget boxMao() => Row(
      children: [
        Expanded(
          child: Container(
            height: 80,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset(
                  'assets/images/boxes/mao_icon.png',
                  fit: BoxFit.cover,
                  height: 60,
                ),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Seja reconhecido pelos seus\n'),
                      TextSpan(text: 'clientes e fidelize eles com\n'),
                      TextSpan(
                          text: 'identidade visual',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxCoracao() => Row(
      children: [
        Expanded(
          child: Container(
            height: 66,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/like_insta_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Crie relacionamento com seu\n'),
                      TextSpan(text: 'público com '),
                      TextSpan(
                          text: 'social media',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxSino() => Row(
      children: [
        Expanded(
          child: Container(
            decoration: StylesMobile.boxesDecoration,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/sino_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Apareça no digital para a\n'),
                      TextSpan(text: 'pessoa certa e no momento\n'),
                      TextSpan(text: 'certo com '),
                      TextSpan(
                          text: 'tráfego pago',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget boxGrafico() => Row(
      children: [
        Expanded(
          child: Container(
            height: 66,
            decoration: StylesMobile.boxesDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 14),
                Image.asset('assets/images/boxes/grafico_icon.png'),
                const SizedBox(width: 15),
                RichText(
                  text: TextSpan(
                    style: StylesMobile.boxesStyle,
                    children: [
                      TextSpan(text: 'Transforme seus Leads em\n'),
                      TextSpan(text: 'Vendas com '),
                      TextSpan(
                          text: 'marketing',
                          style: StylesMobile.boxesStyleBold),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

// Widget todasBoxesMaisBotao(Function()? pressionado) =>

class TodasBoxes extends StatelessWidget {
  const TodasBoxes({Key? key, this.pressionou}) : super(key: key);
  final Function()? pressionou;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 170),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 310,
              child: Column(
                children: [
                  boxMao(),
                  // BoxMao(),
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
            BotaoEstilizado(
              texto: 'Ver portfólio',
              pressionado: pressionou!,
              altura: 40,
              largura: 160,
            ),
          ],
        ),
      ),
    );
  }
}
