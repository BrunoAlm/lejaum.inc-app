import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:sizer/sizer.dart';

String _logo_image = "assets/images/galeria/janfie/logo.webp";
String _img1 = "assets/images/galeria/janfie/img1.webp";
String _img2 = "assets/images/galeria/janfie/img2.webp";
String _img3 = "assets/images/galeria/janfie/img3.webp";
String _img4 = "assets/images/galeria/janfie/img4.webp";
String _gradient_image = "assets/images/galeria/janfie/gradient_image.png";

class LogoJanfie extends StatelessWidget {
  const LogoJanfie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: context.widthTransformer(reducedBy: 80),
      height: 198.79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        color: Color(0xFF0E0D0C),
        image:
            DecorationImage(image: AssetImage(_logo_image), fit: BoxFit.cover),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     IconeBotaoEstilizado(
      //       textColor: Colors.white,
      //       cor: Styles.laranjaum,
      //       texto: 'Ver projeto',
      //       altura: 28,
      //       largura: 115.91,
      //       tamanho_fonte: 13,
      //       tamanho_icone: 13,
      //       pressionado: () => Get.toNamed('/janfie_pdf'),
      //       icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
      //     ),
      //     SizedBox(height: 20),
      //   ],
      // ),
    );
  }
}

Widget janfie1() => Container(
      child: Image.asset(_img1, fit: BoxFit.fill),
    );
Widget janfie2() => Container(
      child: Image.asset(_img2, fit: BoxFit.fill),
    );
Widget janfie3() => Container(
      child: Image.asset(_img3, fit: BoxFit.fill),
    );
Widget janfie4() => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          child: Image.asset(_img4, fit: BoxFit.fill),
        ),
      ),
    );

class Janfie5 extends StatelessWidget {
  const Janfie5({Key? key}) : super(key: key);

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
              image: DecorationImage(
                image: AssetImage(_gradient_image),
                fit: BoxFit.fill,
              ),
            ),
            child: CliqueParaVerOProjetoCompleto(
              cor: Styles.roxinho,
              rota: '/janfie_pdf',
            ),
            // height: 400,
            // width: 400,
          ),
        ),
      ),
    );
  }
}

class CliqueParaVerOProjetoCompleto extends StatelessWidget {
  const CliqueParaVerOProjetoCompleto({
    Key? key,
    required this.rota,
    required this.cor,
  }) : super(key: key);

  final String rota;
  final Color cor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Clique aqui para ver o ',
            style: TextStyle(
              fontFamily: 'Georama',
              fontSize: 18,
            ),
          ),
          Text(
            'projeto completo',
            style: TextStyle(
              fontFamily: 'Georama',
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          IconeBotaoEstilizado(
            texto: 'Ver Projeto',
            pressionado: () => Get.toNamed(rota),
            icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
            cor: cor,
            tamanho_icone: 12,
            textColor: Styles.quaseWhite,
          ),
        ],
      ),
    );
  }
}
