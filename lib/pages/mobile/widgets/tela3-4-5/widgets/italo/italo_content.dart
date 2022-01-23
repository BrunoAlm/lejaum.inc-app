import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:url_launcher/url_launcher.dart';

String _logo_image = "assets/images/galeria/italo/logo.png";
String _img1 = "assets/images/galeria/italo/img1.webp";
String _img2 = "assets/images/galeria/italo/img2.webp";
String _img3 = "assets/images/galeria/italo/img3.webp";

Widget logo_italo() => Container(
  margin: const EdgeInsets.only(left: 10),
      width: 186.47,
      height: 198.79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        color: Styles.azulBaitolote,
        image: DecorationImage(
          image: AssetImage(_logo_image),
          fit: BoxFit.none,
          alignment: Alignment.center,
          // scale: 0.05,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Italo Bortolotti', style: Styles.textoBrancoBold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconeBotaoEstilizado(
              textColor: Colors.white,
              cor: Styles.laranjaum,
              texto: 'Ver projeto',
              pressionado: () async {
                var _url = "https://italobortolotti.com/";
                if (await canLaunch(_url)) {
                  await launch(_url);
                } else {
                  Get.showSnackbar(GetSnackBar(
                    message: 'Sem Internet?',
                  ));
                }
              },
              altura: 28,
              largura: 115.91,
              tamanho_fonte: 13,
              tamanho_icone: 13,
              icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
            ),
          ),
          // const SizedBox(height: 20),
        ],
      ),
    );

Widget italo1() => Container(
      // width: 320,
      // height: 198.79,
      child: Image.asset(
        _img1,
        fit: BoxFit.fill,
      ),
    );
Widget italo2() => Container(
      // width: 320,
      // height: 198.79,
      child: Image.asset(
        _img2,
        fit: BoxFit.fill,
      ),
    );
Widget italo3() => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          // width: 320,
          // height: 198.79,
          child: Image.asset(
            _img3,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
