import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class BoxMao extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFF4F4F4);
  BoxMao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: StylesMobile.boxesDecoration,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 9, 0),
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
          ),
        ],
      ),
    );
  }
}

class BoxCoracao extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFF4F4F4);
  BoxCoracao({Key? key}) : super(key: key);

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
              decoration: StylesMobile.boxesDecoration,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
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
          ),
        ],
      ),
    );
  }
}

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
              decoration: StylesMobile.boxesDecoration,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
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
              decoration: StylesMobile.boxesDecoration,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 7, 9, 7),
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
                              text: 'marketing', style: StylesMobile.boxesStyleBold),
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
