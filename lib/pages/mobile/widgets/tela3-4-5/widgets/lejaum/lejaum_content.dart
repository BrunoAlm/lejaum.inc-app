import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

String _logo_image = "assets/images/icons/logo_icon.svg";
String _img1 = "assets/images/galeria/lejaum/img1.webp";
String _img2 = "assets/images/galeria/lejaum/img2.webp";
String _img3 = "assets/images/galeria/lejaum/img3.webp";

Widget logo_lejaum() => Container(
      width: 186.47,
      height: 198.79,
      color: StylesMobile.quaseWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child:
                Text('Site lejaum', style: StylesMobile.textoPretoSemFrescura),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(double.maxFinite),
              color: StylesMobile.laranjaum,
            ),
            child: SvgPicture.asset(_logo_image),
            padding: const EdgeInsets.all(12),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconeBotaoEstilizado(
              textColor: Colors.white,
              cor: StylesMobile.laranjaum,
              texto: 'Ver projeto',
              altura: 28,
              largura: 115.91,
              tamanho_fonte: 13,
              tamanho_icone: 13,
              pressionado: () => Get.toNamed('/janfie-info'),
              icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
            ),
          ),

          // const SizedBox(height: 20),
        ],
      ),
    );

Widget lejaum1() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget lejaum2() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget lejaum3() => Container(
      width: 450,
      height: 198.79,
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
