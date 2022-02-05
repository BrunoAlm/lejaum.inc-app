import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/view/card_solucao.dart';

class Solucoes extends StatefulWidget {
  Solucoes({Key? key}) : super(key: key);

  @override
  State<Solucoes> createState() => _SolucoesState();
}

class _SolucoesState extends State<Solucoes> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 49),
            AutoSizeText(
              'Soluções',
              style: Styles.tituloExtraBoldMenor,
              maxLines: 1,
              maxFontSize: 40,
              minFontSize: 35,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo algumas das soluções que nós podemos oferecer:',
              style: Styles.subtitulo.merge(
                TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(child: CardSolucao()),
            AutoSizeText(
              'Nós somos a solução para sua empresa!',
              maxLines: 2,
              maxFontSize: 40,
              minFontSize: 23,
              textAlign: TextAlign.center,
              style: Styles.subtituloBoldao
                  .merge(TextStyle(color: Styles.laranjaum)),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
