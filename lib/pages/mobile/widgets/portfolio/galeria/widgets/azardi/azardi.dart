import 'package:flutter/material.dart';

String logo_image = "assets/images/galeria/azardi_logo.png";

Widget logo_azardi() => Container(
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
Widget azardi2() => Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
Widget azardi3() => Container(
      width: 200,
      height: 200,
      color: Colors.pink,
    );
Widget azardi4() => Container(
      width: 200,
      height: 200,
      color: Colors.purple,
    );
Widget azardi5() => Container(
      width: 200,
      height: 200,
      color: Colors.blue[100],
    );
Widget azardi6() => Container(
      width: 200,
      height: 200,
      color: Colors.yellow,
    );
