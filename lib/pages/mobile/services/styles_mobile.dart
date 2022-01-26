import 'package:flutter/material.dart';

class Styles {
  static const Color quaseBlack = Color(0xFF201F1E);
  static const Color pretao = Color(0xFF1A1918);
  static const Color quaseWhite = Color(0xFFF4F4F4);
  static const Color laranjaum = Color(0xFFFF5400);
  static const Color cinzou = Color(0xFF7D7D7D);
  static const Color quaseCinza = Color(0xFF322F2E);
  static const Color lowBlueGray = Color(0xFF334756);
  static const Color mareloMostarda = Color(0xFFFA9905);
  static const Color verdeGood = Color(0xFF25D366);
  static const Color roxinho = Color(0xFF72147E);
  static const Color azulBaitolote = Color(0xFF191E26);
  static const String fonte = 'Georama';
  ThemeData teste = ThemeData();

  static const tituloFinoLinethrough = TextStyle(
    color: laranjaum,
    fontFamily: fonte,
    // fontSize: 38,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
    height: 1.28,
  );

  static const tituloExtraBold = TextStyle(
    color: laranjaum,
    fontFamily: fonte,
    // fontSize: 38,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    height: 1.28,
  );
  static const tituloExtraBoldMenor = TextStyle(
    color: laranjaum,
    fontFamily: fonte,
    // fontSize: 35,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    height: 1.28,
  );

  // subtitulo que fica em baixo dos titulos
  static const subtitulo = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 14,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );

// Titulos das Soluções
  static const tituloBold = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  // Subtitulos das Soluções
  static const subtituloSolucao = TextStyle(
    color: cinzou,
    fontFamily: fonte,
    fontSize: 11,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static const tituloIconTextSolucao = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 20,
    fontWeight: FontWeight.w800,
    height: 1.2,
  );
  static const subtituloIconTextSolucao = TextStyle(
    color: cinzou,
    fontFamily: fonte,
    fontSize: 15,
    fontStyle: FontStyle.italic,
    // fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static const textoPretoBold = TextStyle(
    color: pretao,
    fontFamily: fonte,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  static const textoBrancoBold = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 17,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // Subtitulo bold no final da tela
  static const subtituloBoldao = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 23,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  // box text style
  static final boxesStyle = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: quaseWhite,
  );

  // box text style bold
  static const boxesStyleBold = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w800,
    fontSize: 15,
    // color: laranjaum,
    color: quaseWhite,
  );

  static final boxesDecoration = BoxDecoration(
    // color: Color(0xFFF4F4F4),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 2, color: laranjaum),
  );

  static final planosTextFlagAtivado = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: laranjaum,
  );
  static final planosTextFlagDesativado = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: cinzou,
  );

  // TELA DE PLANOS
  static final TitleTextPlanosCardMoney = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w800,
    fontSize: 25,
    color: quaseBlack,
  );
  static final SubtitleTextPlanosCardMoney = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: quaseBlack,
  );

  // TELA DE AVALIAÇÕES
  static final nome_avaliador = TextStyle(
    // fontFamily: fonte,
    // fontSize: 10,
    // color: quaseWhite,
    fontWeight: FontWeight.bold,
  );
  static final avaliador = TextStyle(
    fontFamily: fonte,
    fontSize: 13,
    color: quaseWhite,
  );
  static final servico_avaliado = TextStyle(
    fontFamily: fonte,
    fontSize: 13,
    color: cinzou,
  );
  static final footer = TextStyle(
    fontFamily: fonte,
    fontSize: 14,
    height: 1.2,
    color: cinzou,
  );

  // static final carrosselTextTitulo = TextStyle(
  //   fontFamily: fonte,
  //   fontWeight: FontWeight.w800,
  //   fontSize: 25,
  //   height: 1.15,
  //   color: quaseBlack,
  // );
  // static final carrosselTextSubtitulo = TextStyle(
  //   fontFamily: fonte,
  //   fontWeight: FontWeight.w400,
  //   fontSize: 15,
  //   color: quaseBlack,
  // );
  // static final carrosselTextButton = TextStyle(
  //   fontFamily: fonte,
  //   fontWeight: FontWeight.w500,
  //   fontSize: 13,
  //   color: quaseWhite,
  // );
}
