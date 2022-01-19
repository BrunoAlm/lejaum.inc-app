import 'package:flutter/material.dart';

// String _logo_image = "assets/images/galeria/airsoft/logo.png";
String _img1 = "assets/images/galeria/airsoft/img1.webp";
String _img2 = "assets/images/galeria/airsoft/img2.webp";
String _img3 = "assets/images/galeria/airsoft/img3.webp";
String _img4 = "assets/images/galeria/airsoft/img4.webp";
String _img5 = "assets/images/galeria/airsoft/img5.webp";

// Widget logo_airsoft() => Container(
//       width: 240,
//       height: 240,
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(_logo_image),
//             // BotaoSaibaMais(texto: "Ver Mais")
//           ],
//         ),
//       ),
//     );
Widget airsoft1() => Container(
      width: 240,
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img1, fit: BoxFit.fill),
      ),
    );
Widget airsoft2() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 240,
      height: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img2, fit: BoxFit.fill),
      ),
    );
Widget airsoft3() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 240,
      height: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img3, fit: BoxFit.fill),
      ),
    );
Widget airsoft4() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 240,
      height: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img4, fit: BoxFit.fill),
      ),
    );
Widget airsoft5() => Container(
      margin: EdgeInsets.only(right: 10),
      width: 240,
      height: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(_img5, fit: BoxFit.fill),
      ),
    );
