import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:responsive_framework/responsive_framework.dart' as responsive;

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
              color:
                  controller.isDarkMode ? Styles.quaseBlack : Styles.quaseWhite,
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
            controller.isDarkMode ? Styles.quaseBlack : Styles.quaseWhite,
          )),
        ),
      ),
    );
  }
}

class BotaoDarkModeDesktop extends StatefulWidget {
  const BotaoDarkModeDesktop({
    Key? key,
  }) : super(key: key);

  @override
  _BotaoDarkModeDesktopState createState() => _BotaoDarkModeDesktopState();
}

class _BotaoDarkModeDesktopState extends State<BotaoDarkModeDesktop> {
  @override
  Widget build(BuildContext context) {
    double? _fonte =
        responsive.ResponsiveValue(context, defaultValue: 1.0, valueWhen: [
      responsive.Condition.equals(name: 'DESKTOP1', value: 14.0),
      responsive.Condition.equals(name: 'DESKTOP2', value: 17.0),
      responsive.Condition.equals(name: responsive.DESKTOP, value: 17.0),
    ]).value?.toDouble();
    Get.put(ThemeController());
    return GetBuilder<ThemeController>(
      builder: (controller) => HoverWidget(
        hoverChild: Container(
          decoration: BoxDecoration(
            color:
                controller.isDarkMode ? Styles.quaseBlack : Styles.quaseWhite,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: controller.isDarkMode
                    ? Styles.quaseBlack
                    : Styles.quaseWhite,
                width: 2.0),
          ),
          child: TextButton.icon(
            icon: Icon(
              controller.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              size: _fonte,
              color: Styles.laranjaum,
            ),
            onPressed: controller.trocaModo,
            label: Text(
              controller.isDarkMode ? 'escuro' : 'claro',
              style: TextStyle(
                color: Styles.laranjaum,
                fontFamily: 'Georama',
                fontSize: _fonte,
              ),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Styles.quaseWhite),
            ),
          ),
        ),
        onHover: (event) {},
        child: Container(
          decoration: BoxDecoration(
            color: Styles.laranjaum,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: controller.isDarkMode
                    ? Styles.quaseBlack
                    : Styles.quaseWhite,
                width: 2.0),
          ),
          child: TextButton.icon(
            icon: Icon(
              controller.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              size: _fonte,
            ),
            onPressed: controller.trocaModo,
            label: Text(
              controller.isDarkMode ? 'escuro' : 'claro',
              style: TextStyle(
                color: controller.isDarkMode
                    ? Styles.quaseBlack
                    : Styles.quaseWhite,
                fontFamily: 'Georama',
                fontSize: _fonte,
              ),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                controller.isDarkMode ? Styles.quaseBlack : Styles.quaseWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
