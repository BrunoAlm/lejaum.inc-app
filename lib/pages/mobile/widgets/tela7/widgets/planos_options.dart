import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/responsividade.dart';
// import 'package:lejaum/widgets/botao_estilizado.dart';
// import 'package:sizer/sizer.dart';

class FlagsDoPlanoAtivado extends StatelessWidget {
  const FlagsDoPlanoAtivado({Key? key, required this.texto}) : super(key: key);
  final String texto;
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 1.5),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Styles.laranjaum,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              FontAwesomeIcons.check,
              size: mudarAlturaIcone(largura),
              color: Styles.quaseWhite,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: AutoSizeText(
            texto,
            maxLines: 2,
            minFontSize: mudarFonteSubTituloCard(largura),
            // softWrap: true,
            style: Styles.planosTextFlagAtivado,
          ),
        ),
      ],
    );
  }
}

class FlagsDoPlanoDesativado extends StatelessWidget {
  const FlagsDoPlanoDesativado({Key? key, required this.texto})
      : super(key: key);
  final String texto;
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 1.5),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              // color: Styles.cinzou,
              border: Border.all(color: Styles.cinzou, width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              FontAwesomeIcons.times,
              size: mudarAlturaIcone(largura),
              color: Styles.cinzou,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: AutoSizeText(
            texto,
            maxLines: 3,
            minFontSize: mudarFonteSubTituloCard(largura),
            // softWrap: true,
            style: Styles.planosTextFlagDesativado,
          ),
        ),
      ],
    );
  }
}

class CardSolicitacao extends StatelessWidget {
  const CardSolicitacao({
    Key? key,
    required this.valor,
    required this.descricao,
    required this.descricaoNegrito,
  }) : super(key: key);
  final String valor;
  final String descricao;
  final String descricaoNegrito;
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return Container(
      height: largura <= motog4 ? 65 : 71,
      decoration: BoxDecoration(
        border: Border.all(color: Styles.laranjaum, width: 3),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              valor,
              style: Styles.SubtitleTextPlanosCardMoney,
              maxLines: 1,
              minFontSize: mudarFonteCardSolicitacao(largura),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                AutoSizeText(
                  descricao,
                  style: Styles.SubtitleTextPlanosCardMoney,
                  maxLines: 1,
                  minFontSize: mudarFonteCardSolicitacao(largura),
                ),
                AutoSizeText(
                  descricaoNegrito,
                  style: Styles.SubtitleTextPlanosCardMoney.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                  maxLines: 1,
                  minFontSize: mudarFonteCardSolicitacao(largura),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuoteDoPlano extends StatelessWidget {
  const QuoteDoPlano({Key? key, required this.texto}) : super(key: key);
  final String texto;
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(left: 22),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Styles.cinzou, width: 1),
        ),
      ),
      child: Container(
        width: 250,
        child: Text(
          texto,
          softWrap: true,
          style: TextStyle(
            color: Styles.cinzou,
            fontSize: mudarFonteQuote(largura),
            fontFamily: 'Georama',
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
