import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Themes {
  static final expansionTheme = ThemeData(
    textTheme: TextTheme(),
  );

  static final light = ThemeData.light().copyWith(
    backgroundColor: Styles.quaseWhite,
    primaryColor: Colors.white,
    colorScheme: ColorScheme(
      primary: Styles.laranjaum,
      secondary: Styles.quaseBlack, // texto
      surface: Colors.black,
      background: Styles.quaseWhite,
      error: Styles.laranjaum,
      onPrimary: Styles.quaseWhite,
      onSecondary: Styles.quaseWhite,
      onSurface: Styles.quaseWhite,
      onBackground: Styles.laranjaum,
      onError: Colors.red,
      brightness: Brightness.light,
      primaryVariant: Styles.laranjaum,
      secondaryVariant: Styles.quaseWhite,
    ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: MaterialStateProperty.all(StylesMobile.laranjaum),
    //   ),
    // ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Styles.pretao,
    colorScheme: ColorScheme(
      primary: Styles.laranjaum,
      secondary: Styles.quaseWhite, // texto
      surface: Colors.white,
      background: Styles.quaseBlack,
      error: Styles.laranjaum,
      onPrimary: Styles.quaseWhite,
      onSecondary: Styles.quaseWhite,
      onSurface: Styles.quaseWhite,
      onBackground: Styles.laranjaum,
      onError: Colors.red,
      brightness: Brightness.dark,
      primaryVariant: Styles.laranjaum,
      secondaryVariant: Styles.quaseBlack,
    ),
    iconTheme: IconThemeData(color: Styles.quaseWhite),
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
