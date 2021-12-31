import 'package:flutter/material.dart';

String _logo_image = "assets/images/galeria/flor_do_grao/logo.png";
String _img1 = "assets/images/galeria/flor_do_grao/img1.webp";
String _img2 = "assets/images/galeria/flor_do_grao/img2.webp";
String _img3 = "assets/images/galeria/flor_do_grao/img3.webp";
String _img4 = "assets/images/galeria/flor_do_grao/img4.webp";
String _img5 = "assets/images/galeria/flor_do_grao/img5.webp";
String _img6 = "assets/images/galeria/flor_do_grao/img6.webp";
String _img7 = "assets/images/galeria/flor_do_grao/img7.webp";
String _img8 = "assets/images/galeria/flor_do_grao/img8.webp";

Widget logo_flor_do_grao() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(_logo_image, width: 130),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: BotaoEstilizado(texto: "Ver Mais", pressionado: () {}),
            // ),
          ],
        ),
      ),
    );
Widget grao1() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget grao2() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget grao3() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget grao4() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img4, fit: BoxFit.fill),
    );
Widget grao5() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img5, fit: BoxFit.fill),
    );
Widget grao6() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img6, fit: BoxFit.fill),
    );
Widget grao7() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img7, fit: BoxFit.fill),
    );
Widget grao8() => Container(
      width: 150,
      height: 198.79,
      child: Image.asset(_img8, fit: BoxFit.fill),
    );
