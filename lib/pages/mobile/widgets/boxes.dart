import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/services/styles.dart';

class BoxSino extends StatelessWidget {
  final Color quaseWhite = Color(0xFFF4F4F4);
  final Color laranjaum = Color(0xFFFF5400);
  BoxSino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: quaseWhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: laranjaum),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/sino_icon.png'),
                    const SizedBox(width: 8),
                    RichText(
                      text: TextSpan(
                        style: Styles.boxesStyle,
                        children: [
                          TextSpan(text: 'Apareça no digital para a\n'),
                          TextSpan(text: 'pessoa certa e no momento\n'),
                          TextSpan(text: 'certo com o '),
                          TextSpan(
                              text: 'tráfego pago.',
                              style: Styles.boxesStyleBold),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxMao extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFF4F4F4);
  BoxMao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: quaseWhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: laranjaum),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/mao_icon.png'),
                    const SizedBox(width: 8),
                    RichText(
                      text: TextSpan(
                        style: Styles.boxesStyle,
                        children: [
                          TextSpan(text: 'Seja reconhecido pelos seus\n'),
                          TextSpan(text: 'clientes e fidelize eles com a\n'),
                          TextSpan(
                              text: 'identidade visual.',
                              style: Styles.boxesStyleBold),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxGrafico extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFF4F4F4);
  BoxGrafico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: quaseWhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: laranjaum),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/grafico_icon.png'),
                    const SizedBox(width: 8),
                    RichText(
                      text: TextSpan(
                        style: Styles.boxesStyle,
                        children: [
                          TextSpan(text: 'Transformamos Leads\n'),
                          TextSpan(text: 'em Vendas com o '),
                          TextSpan(
                              text: 'marketing.', style: Styles.boxesStyleBold),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
