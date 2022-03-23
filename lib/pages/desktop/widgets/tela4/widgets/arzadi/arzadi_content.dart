import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import '../janfie/janfie_content.dart';

String _logo_image = "assets/images/galeria/azardi/logo_preta.webp";
String _img1 = "assets/images/galeria/azardi/img1.webp";
String _img2 = "assets/images/galeria/azardi/img2.webp";
String _img3 = "assets/images/galeria/azardi/img3.webp";

class LogoArzadi extends StatelessWidget {
  const LogoArzadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: context.widthTransformer(reducedBy: 80),
      // height: _altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        color: Color(0xFF0E0D0C),
        image: DecorationImage(
            image: AssetImage(_logo_image), fit: BoxFit.contain),
      ),
      // color: Colors.white,
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     IconeBotaoEstilizado(
      //       cor: Styles.laranjaum,
      //       textColor: Colors.white,
      //       texto: 'Ver projeto',
      //       pressionado: () => Get.toNamed('/arzadi_pdf'),
      //       altura: 28,
      //       largura: 115.91,
      //       tamanho_fonte: 13,
      //       tamanho_icone: 13,
      //       icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
      //     ),
      //     SizedBox(height: 20),
      //   ],
      // ),
    );
  }
}

Widget azardi1() => Container(
      // width: _largura,
      // height: _altura,
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget azardi2() => Container(
      // width: _largura,
      // height: _altura,
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget azardi3() => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          // width: _largura,
          // height: _altura,
          child: Image.asset(_img3, fit: BoxFit.fill),
        ),
      ),
    );

class Arzardi4 extends StatelessWidget {
  const Arzardi4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura = 37.h;
    return Container(
      width: context.widthTransformer(reducedBy: 80),
      height: _altura,
      // height: 198.79,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            margin: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: CliqueParaVerOProjetoCompleto(
              cor: Styles.laranjaum,
              rota: '/arzadi_pdf',
            ),
            // height: 400,
            // width: 400,
          ),
        ),
      ),
    );
  }
}
