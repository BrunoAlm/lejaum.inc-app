import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/botao_texto.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/darkmode_button.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/lightmode_button.dart';

class DrawerLejaum extends StatefulWidget {
  const DrawerLejaum({Key? key}) : super(key: key);

  @override
  _DrawerLejaumState createState() => _DrawerLejaumState();
}

class _DrawerLejaumState extends State<DrawerLejaum> {
  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    Get.put(ThemeController());
    return Drawer(
      backgroundColor: context.theme.colorScheme.background,
      child: GetBuilder<TestController>(
        builder: (_pageController) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: StylesMobile.laranjaum,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/icons/logo_icon.svg'),
              ),
            ),
            const SizedBox(height: 55),
            BotaoDrawer(texto: 'Home', pressionado: () => Get.offAllNamed('/')),
            const SizedBox(height: 20),
            BotaoDrawer(
              texto: 'Sobre',
              pressionado: () {
                _pageController.controller.animateToPage(
                  1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                );
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 20),
            BotaoDrawer(
              texto: 'Portfólio',
              pressionado: () {
                _pageController.controller.animateToPage(
                  2,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                );
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 20),
            BotaoDrawer(texto: 'Ver Planos', pressionado: () {}),
            const SizedBox(height: 20),
            BotaoDrawer(
              texto: 'Whatsapp',
              pressionado: () {
                abrirWhatsApp();
              },
            ),
            const SizedBox(height: 55),
            GetBuilder<ThemeController>(
              builder: (controller) => Text(
                'Alterar tema:',
                style: StylesMobile.subtituloBoldao.copyWith(
                  fontSize: 18,
                  color: controller.isDarkMode
                      ? StylesMobile.quaseBlack
                      : StylesMobile.quaseWhite,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotaoDarkMode(),
                const SizedBox(width: 30),
                BotaoLightMode(),
              ],
            )
          ],
        ),
      ),
    );
  }

  abrirWhatsApp() async {
    // var whatsappUrl =
    //     "whatsapp://send?phone=+5569993510094&text=Oi! Vi o seu site e preciso de ajuda";
    var url_web = 'https://wa.link/hwu2yd';
    if (await canLaunch(url_web)) {
      await launch(url_web);
    } else {
      throw 'Could not launch $url_web';
    }
    // if (Platform.isAndroid) {
    //   if (await canLaunch(whatsappUrl)) {
    //     await launch(whatsappUrl);
    //   } else {
    //     throw 'Could not launch $whatsappUrl';
    //   }
    // } else {
    //   if (await canLaunch(url_web)) {
    //     await launch(url_web);
    //   } else {
    //     throw 'Could not launch $url_web';
    //   }
    // }
  }

  // openWhatsApp() async {
  //   var numero = "+919144040888";
  //   var mensagem = 'teste testado';
  //   var whatsappURl_android =
  //       "whatsapp://send?phone=" + numero + "&text=$mensagem";
  //   var whatappURL_ios = "https://wa.me/$numero?text=${Uri.parse("$mensagem")}";
  //   if (Platform.isIOS) {
  //     // for iOS phone only
  //     if (await canLaunch(whatappURL_ios)) {
  //       await launch(whatappURL_ios, forceSafariVC: false);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   } else {
  //     // android , web
  //     if (await canLaunch(whatsappURl_android)) {
  //       await launch(whatsappURl_android);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   }
  // }
}
