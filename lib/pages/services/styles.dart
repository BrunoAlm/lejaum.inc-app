import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  static const tituloFinoLinethrough = TextStyle(
    color: Color(0xFFFF5400),
    fontFamily: 'Georama',
    fontSize: 38,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
    height: 1.28,
  );

  static const tituloExtraBold = TextStyle(
    color: Color(0xFFFF5400),
    fontFamily: 'Georama',
    fontSize: 38,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    height: 1.28,
  );

  static const subtitulo = TextStyle(
    color: Colors.white,
    fontFamily: 'Georama',
    fontSize: 23,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  // box text style
  static const boxesStyle = TextStyle(
    fontFamily: 'Georama',
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Color(0xFFFF5400),
  );

  // box text style bold
  static const boxesStyleBold = TextStyle(
    fontFamily: 'Georama',
    fontWeight: FontWeight.w900,
    fontSize: 17,
    color: Color(0xFFFF5400),
  );

  static final boxesDecoration = BoxDecoration(
    color: Color(0xFFF4F4F4),
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 2, color: Color(0xFFFF5400)),
  );
}
