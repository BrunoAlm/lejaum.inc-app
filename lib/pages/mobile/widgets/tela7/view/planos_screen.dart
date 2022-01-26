import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/widgets/planos_card.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

import '../../../services/styles_mobile.dart';

class Planos extends StatelessWidget {
  const Planos({Key? key}) : super(key: key);

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
            AutoSizeText(
              'Planos Mensais',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              maxFontSize: 40,
              minFontSize: 35,
            ),
            const SizedBox(height: 15),
            Text(
              'Arraste para o lado para ver mais planos',
              style: Styles.subtitulo,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: PlanosCard(),
            ),
            const SizedBox(height: 40),
            Center(
              child: IconeBotaoEstilizado(
                texto: 'Solicitar plano personalizado',
                pressionado: abrirWhatsApp,
                icone: FontAwesomeIcons.whatsapp,
                cor: Styles.verdeGood,
                textColor: Styles.quaseWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
