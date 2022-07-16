import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/widgets/tela4/widgets/janfie/janfie_content.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'package:sizer/sizer.dart';

String _logo_image = "assets/images/icons/logo_icon.svg";
String _img1 = "assets/images/galeria/lejaum/img1.webp";
String _img2 = "assets/images/galeria/lejaum/img2.webp";
String _img3 = "assets/images/galeria/lejaum/img3.webp";
String _img4 = "assets/images/galeria/lejaum/img4.webp";

class LogoLejaum extends StatelessWidget {
  const LogoLejaum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Styles.laranjaum,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      width: context.widthTransformer(reducedBy: 80),
      height: 198.79,
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Styles.laranjaum,
          ),
          child: SvgPicture.asset(_logo_image, fit: BoxFit.cover),
          padding: const EdgeInsets.all(20),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 20),
        //   child: IconeBotaoEstilizado(
        //     textColor: Colors.white,
        //     cor: Styles.laranjaum,
        //     texto: 'Ver projeto',
        //     altura: 28,
        //     largura: 115.91,
        //     tamanho_fonte: 13,
        //     tamanho_icone: 13,
        //     pressionado: () => Get.toNamed('/lejaum_pdf'),
        //     icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
        //   ),
        // ),
      ),
    );
  }
}

Widget lejaum1() => Container(
      child: Image.asset(
        _img1,
        fit: BoxFit.fill,
        cacheWidth: 403,
        cacheHeight: 227,
        filterQuality: FilterQuality.medium,
      ),
    );
Widget lejaum2() => Container(
      child: Image.asset(
        _img2,
        fit: BoxFit.fill,
        cacheWidth: 403,
        cacheHeight: 227,
        filterQuality: FilterQuality.medium,
      ),
    );
Widget lejaum3() => Container(
      child: Image.asset(
        _img3,
        fit: BoxFit.fill,
        cacheWidth: 403,
        cacheHeight: 227,
        filterQuality: FilterQuality.medium,
      ),
    );
Widget lejaum4() => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          child: Image.asset(
            _img4,
            fit: BoxFit.fill,
            cacheWidth: 403,
            cacheHeight: 227,
            filterQuality: FilterQuality.medium,
          ),
        ),
      ),
    );

class Lejaum5 extends StatelessWidget {
  const Lejaum5({Key? key}) : super(key: key);

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
              color: Styles.quaseBlack,
            ),
            child: CliqueParaVerOProjetoCompleto(
              cor: Styles.laranjaum,
              rota: 3,
            ),
            // height: 400,
            // width: 400,
          ),
        ),
      ),
    );
  }
}
