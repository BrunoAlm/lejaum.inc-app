import 'package:flutter/material.dart';

class StylesMobile {
  static const Color quaseBlack = Color(0xFF201F1E);
  static const Color blackText = Color(0xFF1A1918);
  static const Color quaseWhite = Color(0xFFF4F4F4);
  static const Color laranjaum = Color(0xFFFF5400);
  static const Color cinzou = Color(0xFF7D7D7D);
  static const Color lowBlueGray = Color(0xFF334756);
  static const Color mareloMostarda = Color(0xFFFA9905);
  static const Color verdeGood = Color(0xFF25D366);
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
    fontSize: 30,
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
    fontStyle: FontStyle.normal,
    // fontWeight: FontWeight.w600,
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

  static const textoPretoSemFrescura = TextStyle(
    color: quaseBlack,
    fontFamily: fonte,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  static const textoBrancoSemFrescura = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 23,
    fontStyle: FontStyle.normal,
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
    fontSize: 17,
    color: quaseWhite,
  );

  // box text style bold
  static const boxesStyleBold = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w900,
    fontSize: 17,
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
