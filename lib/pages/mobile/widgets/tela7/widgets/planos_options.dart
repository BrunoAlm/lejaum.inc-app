import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:sizer/sizer.dart';

Widget flagsDoPlanoAtivado(String texto) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 20),
          child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Styles.laranjaum,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(FontAwesomeIcons.check,
                  size: 6, color: Styles.quaseWhite)),
        ),
        // const SizedBox(width: 4),
        AutoSizeText(
          texto,
          maxLines: 2,
          maxFontSize: 25,
          minFontSize: 20,
          // softWrap: true,
          style: Styles.planosTextFlagAtivado,
        ),
      ],
    );
Widget flagsDoPlanoDesativado(String texto) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 20),
          child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Styles.cinzou,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                FontAwesomeIcons.times,
                size: 6,
                color: Colors.white,
              )),
        ),
        // const SizedBox(width: 4),
        AutoSizeText(
          texto,
          maxLines: 2,
          maxFontSize: 25,
          minFontSize: 18,
          // softWrap: true,
          style: Styles.planosTextFlagDesativado,
        ),
      ],
    );

Widget cardSolicitacao({String? nome, String? valor, String? descricao}) =>
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/planos_money.png'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2), BlendMode.lighten),
        ),
      ),
      // height: 190,
      height: 22.h,
      width: 290,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          // borderOnForeground: false,
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    nome!,
                    style: Styles.TitleTextPlanosCardMoney,
                    maxLines: 1,
                    maxFontSize: 30,
                    minFontSize: 27,
                  ),
                  const SizedBox(height: 10),
                  AutoSizeText(
                    valor!,
                    style: Styles.SubtitleTextPlanosCardMoney,
                    maxLines: 1,
                    maxFontSize: 22,
                    minFontSize: 18,
                  ),
                  const SizedBox(height: 5),
                  AutoSizeText(
                    descricao!,
                    style: Styles.SubtitleTextPlanosCardMoney,
                    maxLines: 1,
                    maxFontSize: 22,
                    minFontSize: 18,
                  ),
                  const SizedBox(height: 20),
                  BotaoEstilizado(
                    texto: 'Solicitar',
                    pressionado: abrirWhatsApp,
                    cor: Styles.laranjaum,
                    textColor: Styles.quaseWhite,
                    altura: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

Widget quoteDoPlano() => Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(left: 35),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Styles.cinzou, width: 1),
        ),
      ),
      child: Container(
        width: 250,
        child: Text(
          'Anuncios em redes sociais e de pesquisa, e-mail marketing entre outros;',
          softWrap: true,
          style: TextStyle(
              color: Styles.cinzou, fontSize: 16, fontFamily: 'Georama'),
        ),
      ),
    );
