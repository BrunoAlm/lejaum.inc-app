import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
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
          BotaoEstilizado(
              texto: 'texto',
              pressionado: () {},
              icone: Icons.ac_unit,
              cor: StylesMobile.lowBlueGray,
              textColor: StylesMobile.quaseWhite),
          const SizedBox(height: 30),

          Container(
            decoration: BoxDecoration(
              color: context.theme.colorScheme.background,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: StylesMobile.laranjaum, width: 2.0),
            ),
            child: GetBuilder<ThemeController>(
              builder: (controller) => TextButton.icon(
                icon: Icon(
                  controller.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
                onPressed: () => controller.ativaModoDark(),
                label: Text(controller.texto),
              ),
            ),
          ),
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
