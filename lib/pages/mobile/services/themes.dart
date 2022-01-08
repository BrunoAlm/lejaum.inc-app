import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Themes {
  static final expansionTheme = ThemeData(
    textTheme: TextTheme(),
  );

  static final light = ThemeData.light().copyWith(
    backgroundColor: StylesMobile.quaseWhite,
    primaryColor: Colors.white,
    colorScheme: ColorScheme(
      primary: StylesMobile.laranjaum,
      secondary: StylesMobile.quaseBlack, // texto
      surface: Colors.black,
      background: StylesMobile.quaseWhite,
      error: StylesMobile.laranjaum,
      onPrimary: StylesMobile.quaseWhite,
      onSecondary: StylesMobile.quaseWhite,
      onSurface: StylesMobile.quaseWhite,
      onBackground: StylesMobile.laranjaum,
      onError: Colors.red,
      brightness: Brightness.light,
      primaryVariant: StylesMobile.laranjaum,
      secondaryVariant: StylesMobile.quaseWhite,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(StylesMobile.laranjaum),
    //   ),
    // ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: StylesMobile.pretao,
    colorScheme: ColorScheme(
      primary: StylesMobile.laranjaum,
      secondary: StylesMobile.quaseWhite, // texto
      surface: Colors.white,
      background: StylesMobile.quaseBlack,
      error: StylesMobile.laranjaum,
      onPrimary: StylesMobile.quaseWhite,
      onSecondary: StylesMobile.quaseWhite,
      onSurface: StylesMobile.quaseWhite,
      onBackground: StylesMobile.laranjaum,
      onError: Colors.red,
      brightness: Brightness.dark,
      primaryVariant: StylesMobile.laranjaum,
      secondaryVariant: StylesMobile.quaseBlack,
    ),
    iconTheme: IconThemeData(color: StylesMobile.quaseWhite),
  );
}

class ThemeController extends GetxController {
  bool isDarkMode = false;

  void trocaModo() {
    isDarkMode = !isDarkMode;
    isDarkMode
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
    update();
  }

  void ativaModoClaro() {
    isDarkMode = true;
    Get.changeThemeMode(ThemeMode.light);
    update();
  }

  void ativaModoEscuro() {
    isDarkMode = false;
    Get.changeThemeMode(ThemeMode.dark);
    update();
  }
}

class TestPageController extends GetxController {
  var controller = PageController();
}
