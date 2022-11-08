import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';

import '../widgets/botao_texto.dart';
import '../widgets/botao_troca_modo.dart';

class DrawerLejaum extends StatefulWidget {
  const DrawerLejaum({Key? key}) : super(key: key);

  @override
  _DrawerLejaumState createState() => _DrawerLejaumState();
}

class _DrawerLejaumState extends State<DrawerLejaum> {
  @override
  Widget build(BuildContext context) {
    Get.put(MobilePageViewController());
    Get.put(ThemeController());
    return Drawer(
      backgroundColor: context.theme.backgroundColor,
      child: GetBuilder<MobilePageViewController>(
        builder: (_pageController) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Styles.laranjaum,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/icons/logo_icon.svg'),
              ),
            ),
            const SizedBox(height: 55),
            BotaoDrawer(
                texto: 'Início', pressionado: () => Get.offAllNamed('/')),
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
            //const SizedBox(height: 20),
            //BotaoDrawer(
              //texto: 'Ver Planos',
              //pressionado: () {
               // _pageController.controller.animateToPage(
                 // 6,
                //  duration: Duration(milliseconds: 500),
                //  curve: Curves.easeInOutQuart,
               // );
              //  Navigator.of(context).pop();
              //},
           // ),
            const SizedBox(height: 20),
            BotaoDrawer(
              texto: 'Avaliações',
              pressionado: () {
                _pageController.controller.animateToPage(
                  7,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                );
                Navigator.of(context).pop();
              },
            ),
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
                'Alterar tema para: ',
                style: Styles.subtituloBoldao.copyWith(
                  fontSize: 18,
                  color: controller.isDarkMode
                      ? Styles.quaseBlack
                      : Styles.quaseWhite,
                ),
              ),
            ),
            const SizedBox(height: 15),
            BotaoDarkMode(),
          ],
        ),
      ),
    );
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
