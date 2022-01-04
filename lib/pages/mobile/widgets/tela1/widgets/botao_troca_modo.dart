import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

class BotaoDarkMode extends StatefulWidget {
  const BotaoDarkMode({Key? key}) : super(key: key);

  @override
  _BotaoDarkModeState createState() => _BotaoDarkModeState();
}

class _BotaoDarkModeState extends State<BotaoDarkMode> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetBuilder<ThemeController>(
      builder: (controller) => Container(
        width: 110,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: controller.isDarkMode
                  ? StylesMobile.quaseBlack
                  : StylesMobile.quaseWhite,
              width: 2.0),
        ),
        child: TextButton.icon(
          icon:
              Icon(controller.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          onPressed: controller.trocaModo,
          label: Text(
            controller.isDarkMode ? 'escuro' : 'claro',
            style: TextStyle(
              fontFamily: 'Georama',
            ),
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
            controller.isDarkMode
                ? StylesMobile.quaseBlack
                : StylesMobile.quaseWhite,
          )),
        ),
      ),
    );
  }
}
