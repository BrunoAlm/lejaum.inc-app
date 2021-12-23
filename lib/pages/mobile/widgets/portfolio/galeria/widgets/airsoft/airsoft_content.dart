import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte/botao_saiba_mais.dart';

String logo_image = "assets/images/galeria/airsoft_logo.png";

Widget logo_airsoft() => Container(
      width: 200,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Image.asset(logo_image),
            BotaoSaibaMais(texto: "Ver Mais")
          ],
        ),
      ),
    );
Widget airsoft2() => Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
Widget airsoft3() => Container(
      width: 200,
      height: 200,
      color: Colors.pink,
    );
Widget airsoft4() => Container(
      width: 200,
      height: 200,
      color: Colors.purple,
    );
Widget airsoft5() => Container(
      width: 200,
      height: 200,
      color: Colors.blue[100],
    );
Widget airsoft6() => Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
    );
