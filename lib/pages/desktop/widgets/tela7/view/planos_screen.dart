import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/desktop/widgets/tela7/widgets/planos_card.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

import '../../../../mobile/services/styles_mobile.dart';

// import '../../../services/styles_mobile.dart';

class PlanosDesktop extends StatelessWidget {
  const PlanosDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.height;
    // var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura - 60,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 15.0),
            child: AutoSizeText(
              'Planos Mensais',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              minFontSize: 35,
            ),
          ),
          // SizedBox(height: _largura <= motog4 ? 5 : 10),
          // Text(
          //   'Arraste para o lado para ver mais planos',
          //   style: Styles.subtitulo.copyWith(
          //     color: Styles.cinzou,
          //     fontSize: _largura <= motog4 ? 11 : 14,
          //   ),
          // ),
          SizedBox(height: _largura <= motog4 ? 5 : 10),
          PlanosCard(),
          SizedBox(height: _largura <= motog4 ? 5 : 20),
          Text(
            '*Planos mensais cobrados semestralmente;',
            style: Styles.subtitulo.copyWith(
              color: Styles.cinzou,
              fontSize: 14,
            ),
          ),
          Text(
            '**Os planos apresentados aqui são apenas de referência, podendo sofrer alterações previamente avisadas.',
            style: Styles.subtitulo.copyWith(
              color: Styles.cinzou,
              fontSize: 14,
            ),
          ),
          // Text(
          //   'podendo sofrer alterações previamente avisadas.',
          //   style: Styles.subtitulo.copyWith(
          //     color: Styles.cinzou,
          //     fontSize: mudarFontefooter(_largura),
          //   ),
          // ),
          SizedBox(height: 30),
          Center(
            child: IconeBotaoEstilizado(
              texto: 'Solicitar plano personalizado',
              altura: 40,
              tamanho_fonte: 16,
              tamanho_icone: 16,
              pressionado: abrirWhatsApp,
              icone: FontAwesomeIcons.whatsapp,
              cor: Styles.verdeGood,
              textColor: Styles.quaseWhite,
            ),
          ),
        ],
      ),
    );
  }
}
