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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Soluções',
                style: StylesMobile.tituloExtraBoldMenor,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Veja abaixo algumas das soluções que nós podemos oferecer:',
                style: StylesMobile.subtitulo.merge(
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(child: CardSolucao()),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Nós somos a solução certa\npara você e sua empresa!',
                style: StylesMobile.subtituloBoldao.merge(
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
