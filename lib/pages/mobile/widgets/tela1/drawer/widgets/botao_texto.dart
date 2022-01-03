import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

class BotaoDrawer extends StatefulWidget {
  BotaoDrawer({Key? key, required this.texto, required this.pressionado})
      : super(key: key);
  late final String texto;
  late final Function()? pressionado;
  @override
  State<BotaoDrawer> createState() => _BotaoDrawerState();
}

class _BotaoDrawerState extends State<BotaoDrawer> {
  Color branco = StylesMobile.quaseWhite;
  Color preto = StylesMobile.quaseBlack;
  Function()? pressionado;

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetBuilder<ThemeController>(
      builder: (controller) => TextButton(
        onPressed: pressionado,
        child: Text(
          widget.texto,
          style: StylesMobile.subtituloBoldao.copyWith(
            // fontStyle: FontStyle.normal,
            fontSize: 18,
            color: controller.isDarkMode ? preto : branco,
          ),
        ),
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size.fromWidth(150)),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 14),
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            StadiumBorder(
              side: BorderSide(
                  color: controller.isDarkMode ? preto : branco, width: 2.0),
            ),
          ),
          foregroundColor:
              MaterialStateProperty.all(controller.isDarkMode ? preto : branco),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
