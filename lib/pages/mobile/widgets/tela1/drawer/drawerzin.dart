import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/botao_texto.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/darkmode_button.dart';
import 'package:lejaum/pages/mobile/widgets/tela1/drawer/widgets/lightmode_button.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

class DrawerLejaum extends StatefulWidget {
  const DrawerLejaum({Key? key}) : super(key: key);

  @override
  _DrawerLejaumState createState() => _DrawerLejaumState();
}

class _DrawerLejaumState extends State<DrawerLejaum> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return Drawer(
      backgroundColor: context.theme.colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: StylesMobile.laranjaum,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset('assets/images/icons/logo_icon.svg'),
            ),
          ),
          const SizedBox(height: 15),
          BotaoDrawer(texto: 'Home'),
          const SizedBox(height: 15),
          BotaoDrawer(texto: 'Sobre'),
          const SizedBox(height: 15),
          BotaoDrawer(texto: 'Portfólio'),
          const SizedBox(height: 15),
          BotaoDrawer(texto: 'Ver Planos'),
          const SizedBox(height: 15),
          BotaoDrawer(texto: 'Whatsapp'),
          const SizedBox(height: 15),
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
          // Container(
          //   decoration: BoxDecoration(
          //     color: context.theme.colorScheme.background,
          //     borderRadius: BorderRadius.circular(50),
          //     border: Border.all(color: StylesMobile.laranjaum, width: 2.0),
          //   ),
          //   child: GetBuilder<ThemeController>(
          //     builder: (controller) => TextButton.icon(
          //       icon: Icon(
          //         controller.isDarkMode ? Icons.dark_mode : Icons.light_mode,
          //       ),
          //       onPressed: () => controller.ativaModoDark(),
          //       label: Text('controller.texto'),
          //     ),
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {
          //     Get.isDarkMode
          //         ? Get.changeThemeMode(ThemeMode.light)
          //         : Get.changeThemeMode(ThemeMode.dark);
          //   },
          //   icon: Icon(
          //     Get.isDarkMode
          //         ? Icons.mode_night_outlined
          //         : Icons.light_mode_outlined,
          //   ),
          // ),
        ],
      ),
    );
  }
}
