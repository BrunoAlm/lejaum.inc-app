import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/widgets/tela8/widgets/avaliacoes/avaliacao_page.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela8/widgets/footer.dart';

class AvaliacoesDesktop extends StatefulWidget {
  const AvaliacoesDesktop({Key? key}) : super(key: key);

  @override
  State<AvaliacoesDesktop> createState() => _AvaliacoesDesktopState();
}

class _AvaliacoesDesktopState extends State<AvaliacoesDesktop> {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura - 60,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 15),
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
                style: Styles.subtitulo.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            // Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: 350,
                child: AvaliacaoJanfie(),
              ),
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
              width: 400,
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
