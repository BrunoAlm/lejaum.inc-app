import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

// String _logo_image = "assets/images/galeria/janfie/logo_nova.png";
Widget logo_italo() => Container(
      width: 186.47,
      height: 198.79,
      decoration: BoxDecoration(
        color: StylesMobile.quaseWhite,
        // image: DecorationImage(
        //   image: AssetImage(_logo_image),
        //   fit: BoxFit.fitHeight,
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Italo Bortolotti',
                style: StylesMobile.textoPretoSemFrescura),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: BotaoEstilizado(
              textColor: Colors.white,
              cor: StylesMobile.laranjaum,
              texto: 'Ver projeto',
              pressionado: () => Get.toNamed('/janfie-info'),
              altura: 25,
              largura: 103.91,
              tamanho_fonte: 10,
              tamanho_icone: 10,
              icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
            ),
          ),
          // const SizedBox(height: 20),
        ],
      ),
    );
