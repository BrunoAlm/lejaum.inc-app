import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StylesDesktop {
  static const Color quaseBlack = Color(0xFF201F1E);
  static const Color quaseWhite = Color(0xFFF4F4F4);
  static const Color laranjaum = Color(0xFFFF5400);
  static const String fonte = 'Georama';

  static const tituloFinoLinethrough = TextStyle(
    color: laranjaum,
    fontFamily: fonte,
    fontSize: 48,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
    height: 1.28,
  );

  static const tituloExtraBold = TextStyle(
    color: laranjaum,
    fontFamily: fonte,
    fontSize: 48,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    height: 1.28,
  );

  // subtitulo central da primeira tela
  static const subtitulo = TextStyle(
    color: quaseWhite,
    fontFamily: fonte,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.17,
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
  static const boxesStyle = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: laranjaum,
  );

  // box text style bold
  static const boxesStyleBold = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w900,
    fontSize: 17,
    color: laranjaum,
  );

  static final boxesDecoration = BoxDecoration(
    color: Color(0xFFF4F4F4),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 2, color: laranjaum),
  );

  static final carrosselTextTitulo = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w800,
    fontSize: 25,
    height: 1.15,
    color: quaseBlack,
  );
  static final carrosselTextSubtitulo = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: quaseBlack,
  );
  static final carrosselTextButton = TextStyle(
    fontFamily: fonte,
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: quaseWhite,
  );
}
