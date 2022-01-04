import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

import '../../../services/styles_mobile.dart';

class Planos extends StatelessWidget {
  const Planos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Planos',
                style: StylesMobile.tituloExtraBold,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Arraste para o lado para ver mais planos',
                style: StylesMobile.subtitulo,
              ),
            ),
            const SizedBox(height: 10),
            // Expanded(
            //   child: Container(
            //     color: StylesMobile.quaseWhite,
            //   ),
            // ),
            const SizedBox(height: 30),
            Center(
              child: BotaoEstilizado(
                texto: 'Solicitar plano personalizado',
                pressionado: abrirWhatsApp,
                icone: FontAwesomeIcons.whatsapp,
                cor: StylesMobile.verdeGood,
                textColor: StylesMobile.quaseWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
