import 'package:flutter/material.dart';

String logo_image = "assets/images/galeria/janfie_logo.png";

Widget logo_janfie() => Container(
      width: 200,
      height: 200,
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
Widget janfie2() => Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
Widget janfie3() => Container(
      width: 200,
      height: 200,
      color: Colors.pink,
    );
Widget janfie4() => Container(
      width: 200,
      height: 200,
      color: Colors.purple,
    );
Widget janfie5() => Container(
      width: 200,
      height: 200,
      color: Colors.blue[100],
    );
Widget janfie6() => Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
    );
