import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    colorScheme: ColorScheme(
      primary: StylesMobile.laranjaum,
      secondary: StylesMobile.quaseWhite,
      surface: Colors.white,
      background: StylesMobile.quaseWhite,
      error: StylesMobile.laranjaum,
      onPrimary: StylesMobile.quaseWhite,
      onSecondary: StylesMobile.quaseWhite,
      onSurface: StylesMobile.quaseWhite,
      onBackground: StylesMobile.laranjaum,
      onError: Colors.red,
      brightness: Brightness.light,
      // primaryVariant: StylesMobile.laranjaum,
      // secondaryVariant: StylesMobile.quaseWhite,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(StylesMobile.laranjaum),
    //   ),
    // ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: StylesMobile.quaseBlack,
    colorScheme: ColorScheme(
      primary: StylesMobile.laranjaum,
      secondary: StylesMobile.quaseWhite,
      surface: Colors.white,
      background: StylesMobile.quaseBlack,
      error: StylesMobile.laranjaum,
      onPrimary: StylesMobile.quaseWhite,
      onSecondary: StylesMobile.quaseWhite,
      onSurface: StylesMobile.quaseWhite,
      onBackground: StylesMobile.laranjaum,
      onError: Colors.red,
      brightness: Brightness.dark,
      // primaryVariant: StylesMobile.laranjaum,
      // secondaryVariant: StylesMobile.quaseBlack,
    ),
    iconTheme: IconThemeData(color: StylesMobile.quaseWhite),
  );
}

class ThemeController extends GetxController {
  bool isDarkMode = false;

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
