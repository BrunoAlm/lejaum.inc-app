import 'package:flutter/material.dart';
import 'package:lejaum/services/styles.dart';

class Solucoes extends StatelessWidget {
  const Solucoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soluções',
              style: Styles.tituloExtraBold,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo algumas das soluções que nós podemos oferecer:',
              style: Styles.subtitulo,
            ),
            const SizedBox(height: 30),
            Text(
              'Nós somos a solução certa\npara você e sua empresa!',
              style: Styles.subtituloBoldao,
            ),
          ],
        ),
      ),
    );
  }
}
