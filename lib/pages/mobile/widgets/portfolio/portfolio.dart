import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio/carrossel.dart';
import 'package:lejaum/services/styles.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49, left: 25),
        child: Column(
          children: [
            Text(
              'Portfólio',
              style: Styles.tituloExtraBold,
            ),
            const SizedBox(height: 30),
            CarrosselPortfolio(),
            Text(
              'Nós somos a solução certa\npara você e sua empresa!',
              style: Styles.subtitulo,
            ),
          ],
        ),
      ),
    );
  }
}
