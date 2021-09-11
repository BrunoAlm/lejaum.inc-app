import 'package:flutter/material.dart';
import 'package:lejaum/pages/services/styles.dart';

class Porfolio extends StatelessWidget {
  const Porfolio({Key? key}) : super(key: key);

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
