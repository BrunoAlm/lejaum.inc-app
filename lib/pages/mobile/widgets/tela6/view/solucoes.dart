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
            Text(
              'Soluções',
              style: Styles.tituloExtraBoldMenor,
            ),
            Text(
              'Veja abaixo algumas das soluções que nós podemos oferecer:',
              style: Styles.subtitulo.merge(
                TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(child: CardSolucao()),
            Text(
              'Nós somos a solução para sua\nempresa!',
              softWrap: true,
              textAlign: TextAlign.center,
              style: Styles.subtituloBoldao
                  .merge(TextStyle(color: Styles.laranjaum)),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
