import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/responsividade.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/widgets/planos_card.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

import '../../../services/styles_mobile.dart';

class Planos extends StatelessWidget {
  const Planos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              'Planos Mensais',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              maxFontSize: 40,
              minFontSize: _largura <= motog4 ? 30 : 35,
            ),
            const SizedBox(height: 10),
            Text(
              'Arraste para o lado para ver mais planos',
              style: Styles.subtitulo.copyWith(
                color: Styles.cinzou,
                fontSize: _largura <= motog4 ? 11 : 14,
              ),
            ),
            const SizedBox(height: 10),
            PlanosCard(),
            SizedBox(height: _largura <= motog4 ? 10 : 20),
            Text(
              '*Planos mensais cobrados semestralmente;',
              style: Styles.subtitulo.copyWith(
                color: Styles.cinzou,
                fontSize: mudarFontefooter(_largura),
              ),
            ),
            Text(
              '**Os planos apresentados aqui são apenas de referência,',
              style: Styles.subtitulo.copyWith(
                color: Styles.cinzou,
                fontSize: mudarFontefooter(_largura),
              ),
            ),
            Text(
              'podendo sofrer alterações previamente avisadas.',
              style: Styles.subtitulo.copyWith(
                color: Styles.cinzou,
                fontSize: mudarFontefooter(_largura),
              ),
            ),
            SizedBox(height: _largura <= motog4 ? 20 : 60),
            Center(
              child: IconeBotaoEstilizado(
                texto: 'Solicitar plano personalizado',
                altura: _largura <= motog4 ? 30 : 40,
                tamanho_fonte: _largura <= motog4 ? 13 : 16,
                tamanho_icone: _largura <= motog4 ? 13 : 16,
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
