import 'package:flutter/material.dart';

String logo_image = "assets/images/galeria/azardi/logo.png";
String _img1 = "assets/images/galeria/azardi/img1.jpg";
String _img2 = "assets/images/galeria/azardi/img2.jpg";
String _img3 = "assets/images/galeria/azardi/img3.jpg";
String _img4 = "assets/images/galeria/azardi/img4.png";

Widget logo_azardi() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo_image),
            // BotaoSaibaMais(texto: "Ver Mais")
          ],
        ),
      ),
    );
Widget azardi2() => Container(
      width: 500,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget azardi3() => Container(
      width: 500,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget azardi4() => Container(
      width: 500,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget azardi5() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: Image.asset(_img4, fit: BoxFit.fill),
    );
