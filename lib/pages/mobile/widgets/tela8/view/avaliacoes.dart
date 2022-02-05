import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/widgets/tela8/widgets/avaliacoes/avaliacao_janfie.dart';
import 'package:lejaum/pages/mobile/widgets/tela8/widgets/footer.dart';

import '../../../services/styles_mobile.dart';

class Avaliacoes extends StatefulWidget {
  const Avaliacoes({Key? key}) : super(key: key);

  @override
  State<Avaliacoes> createState() => _AvaliacoesState();
}

class _AvaliacoesState extends State<Avaliacoes> {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura,
      child: Padding(
        padding: const EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: AutoSizeText(
                'Avaliações',
                maxLines: 1,
                style: Styles.tituloExtraBoldMenor,
                maxFontSize: 40,
                minFontSize: 35,
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
            // Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: AvaliacaoJanfie(),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(13.0),
            //   child: AvaliacaoJanfie(),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(13.0),
            //   child: AvaliacaoJanfie(),
            // ),
            Expanded(child: SizedBox()),
            Container(
              height: 100,
              width: Get.width,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(20, 20),
                  topRight: Radius.elliptical(20, 20),
                ),
                color: Styles.quaseBlack,
              ),
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
