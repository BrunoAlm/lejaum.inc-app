import 'package:flutter/material.dart';

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
          Container(
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
                  Text(
                    'Seja reconhecido pelo seus\nclientese fidelize eles com a\nidentidade visual.',
                    style: TextStyle(
                      color: laranjaum,
                      fontFamily: font,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxSino extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final Color quaseWhite = Color(0xFFF4F4F4);
  BoxSino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
                  Image.asset('assets/images/sino_icon.png'),
                  const SizedBox(width: 8),
                  Text(
                    'Apareça no digital para a\npessoa certa e no momento\ncerto.',
                    style: TextStyle(
                      color: laranjaum,
                      fontFamily: font,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  )
                ],
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
          Container(
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
                  Text(
                    'Transformamos Leads\n em Vendas com o marketing',
                    style: TextStyle(
                      color: laranjaum,
                      fontFamily: font,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
