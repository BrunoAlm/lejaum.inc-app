import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

String _logo_image = "assets/images/galeria/azardi/logo_preta.webp";
String _img1 = "assets/images/galeria/azardi/img1.jpg";
String _img2 = "assets/images/galeria/azardi/img2.jpg";
String _img3 = "assets/images/galeria/azardi/img3.jpg";
var _altura = 247.53;

Widget logo_azardi() => Container(
      width: 186.47,
      // height: _altura,
      decoration: BoxDecoration(
        color: Color(0xFF0E0D0C),
        image: DecorationImage(
            image: AssetImage(_logo_image), fit: BoxFit.contain),
      ),
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BotaoEstilizado(
            cor: StylesMobile.laranjaum,
            textColor: Colors.white,
            texto: 'Ver projeto',
            pressionado: () => Get.toNamed('/janfie-info'),
            altura: 25,
            largura: 103.91,
            tamanho_fonte: 10,
            tamanho_icone: 10,
            icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
Widget azardi1() => Container(
      width: 500,
      height: _altura,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget azardi2() => Container(
      width: 500,
      height: _altura,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget azardi3() => Container(
      width: 500,
      height: _altura,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
