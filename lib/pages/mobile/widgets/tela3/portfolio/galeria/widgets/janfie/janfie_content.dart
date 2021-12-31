import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:get/get.dart';

String _logo_image = "assets/images/galeria/janfie/logo_nova.png";
String _img1 = "assets/images/galeria/janfie/img1.png";
String _img2 = "assets/images/galeria/janfie/img2.png";
String _img3 = "assets/images/galeria/janfie/img3.png";
// String _img4 = "assets/images/galeria/janfie/img4.png";

Widget logo_janfie() => Container(
      width: 186.47,
      height: 198.79,
      decoration: BoxDecoration(
        color: Color(0xFF0E0D0C),
        image: DecorationImage(
            image: AssetImage(_logo_image), fit: BoxFit.fitHeight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BotaoEstilizado(
            textColor: Colors.white,
            cor: StylesMobile.laranjaum,
            texto: 'Ver projeto',
            pressionado: () => Get.toNamed('/janfie-info'),
            icone: Icons.search,
          ),
          SizedBox(height: 30),
        ],
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
