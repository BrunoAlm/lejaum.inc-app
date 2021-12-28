import 'package:flutter/material.dart';

String _logo_image = "assets/images/galeria/flor_do_grao/logo.png";
String _img1 = "assets/images/galeria/flor_do_grao/img1.png";
String _img2 = "assets/images/galeria/flor_do_grao/img2.png";
String _img3 = "assets/images/galeria/flor_do_grao/img3.png";
String _img4 = "assets/images/galeria/flor_do_grao/img4.png";
String _img5 = "assets/images/galeria/flor_do_grao/img5.png";
String _img6 = "assets/images/galeria/flor_do_grao/img6.png";

Widget logo_flor_do_grao() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(_logo_image),
            // BotaoSaibaMais(texto: "Ver Mais"),
          ],
        ),
      ),
    );
Widget grao2() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget grao3() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget grao4() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget grao5() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img4, fit: BoxFit.fill),
    );
Widget grao6() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img5, fit: BoxFit.fill),
    );
Widget grao7() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img6, fit: BoxFit.fill),
    );
