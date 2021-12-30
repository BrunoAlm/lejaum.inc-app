import 'package:flutter/material.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:get/get.dart';

String _logo_image = "assets/images/galeria/janfie/logo.png";
String _img1 = "assets/images/galeria/janfie/img1.png";
String _img2 = "assets/images/galeria/janfie/img2.png";
String _img3 = "assets/images/galeria/janfie/img3.png";
// String _img4 = "assets/images/galeria/janfie/img4.png";

Widget logo_janfie() => Container(
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
Widget janfie1() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget janfie2() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget janfie3() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget janfie4() => Container(
      width: 186.47,
      height: 198.79,
      color: Colors.white,
      child: BotaoEstilizado(
        texto: "Clica",
        altura: 100,
        largura: 100,
        pressionado: () => Get.toNamed('/janfie-info'),
      ),
    );