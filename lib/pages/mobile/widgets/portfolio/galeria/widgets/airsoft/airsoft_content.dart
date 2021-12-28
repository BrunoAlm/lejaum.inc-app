import 'package:flutter/material.dart';

String _logo_image = "assets/images/galeria/airsoft/logo.png";
String _img1 = "assets/images/galeria/airsoft/img1.png";
String _img2 = "assets/images/galeria/airsoft/img2.png";
String _img3 = "assets/images/galeria/airsoft/img3.png";
String _img4 = "assets/images/galeria/airsoft/img4.png";

Widget logo_airsoft() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(_logo_image),
            // BotaoSaibaMais(texto: "Ver Mais")
          ],
        ),
      ),
    );
Widget airsoft2() => Container(
      width: 250,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget airsoft3() => Container(
      width: 250,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget airsoft4() => Container(
      width: 250,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget airsoft5() => Container(
      width: 300,
      height: 198.79,
      child: Image.asset(_img4, fit: BoxFit.fill),
    );
