import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

class BotaoLightMode extends StatefulWidget {
  const BotaoLightMode({Key? key}) : super(key: key);

  @override
  _BotaoLightModeState createState() => _BotaoLightModeState();
}

class _BotaoLightModeState extends State<BotaoLightMode> {
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetBuilder<ThemeController>(
      builder: (controller) => Container(
        width: 110,
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
          icon: Icon(Icons.light_mode),
          onPressed: controller.ativaModoClaro,
          label: Text('claro'),
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
