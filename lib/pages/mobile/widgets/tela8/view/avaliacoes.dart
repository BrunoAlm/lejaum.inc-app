import 'package:flutter/material.dart';

import '../../../services/styles_mobile.dart';

class Avaliacoes extends StatelessWidget {
  const Avaliacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura,
      child: Padding(
        padding: const EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Avaliações',
                style: Styles.tituloExtraBoldMenor,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Veja algumas avaliações de nossos clientes:',
                style: Styles.subtitulo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
