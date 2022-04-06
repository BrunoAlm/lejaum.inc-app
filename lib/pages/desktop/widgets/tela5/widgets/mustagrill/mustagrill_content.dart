import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/widgets/tela4/widgets/janfie/janfie_content.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'package:sizer/sizer.dart';

String _logo_image = "assets/images/galeria/mustagrill/avatar.png";
String _img1 = "assets/images/galeria/mustagrill/img1.webp";
String _img2 = "assets/images/galeria/mustagrill/img2.webp";
String _img3 = "assets/images/galeria/mustagrill/img3.webp";
String _img4 = "assets/images/galeria/mustagrill/img4.webp";

class LogoMustagrill extends StatelessWidget {
  const LogoMustagrill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Styles.marromBase,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      width: context.widthTransformer(reducedBy: 80),
      height: 198.79,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            'MustaGrill',
            style: TextStyle(fontFamily: 'Georama'),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Styles.marromBase,
            ),
            child: Image.asset(_logo_image, fit: BoxFit.cover),
            padding: const EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}

Widget mustagrill1() => Container(
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget mustagrill2() => Container(
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget mustagrill3() => Container(
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget mustagrill4() => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          child: Image.asset(_img4, fit: BoxFit.fill),
        ),
      ),
    );

class Mustagrill5 extends StatelessWidget {
  const Mustagrill5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = 37.h;
    return Container(
      width: context.widthTransformer(reducedBy: 80),
      height: _altura,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            margin: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Styles.quaseBlack,
            ),
            child: CliqueParaVerOProjetoCompleto(
              cor: Styles.mareloTompero,
              rota: 2,
            ),
          ),
        ),
      ),
    );
  }
}
