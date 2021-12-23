import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte/botao_saiba_mais.dart';

String logo_image = "assets/images/galeria/flor_do_grao_logo.png";

Widget logo() => Container(
      width: 200,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo_image),
            // BotaoSaibaMais(texto: "Ver Mais"),
          ],
        ),
      ),
    );
Widget grao2() => Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
Widget grao3() => Container(
      width: 200,
      height: 200,
      color: Colors.pink,
    );
Widget grao4() => Container(
      width: 200,
      height: 200,
      color: Colors.purple,
    );
Widget grao5() => Container(
      width: 200,
      height: 200,
      color: Colors.blue[100],
    );
Widget grao6() => Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
    );
