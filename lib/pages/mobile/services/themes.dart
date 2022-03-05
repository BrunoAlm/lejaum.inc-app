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
      // primaryVariant: Styles.laranjaum,
      // secondaryVariant: Styles.quaseWhite,
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
      // primaryVariant: Styles.laranjaum,
      // secondaryVariant: Styles.quaseBlack,
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

class MobilePageViewController extends GetxController {
  var controller = PageController();
}

class DesktopListViewController extends GetxController {
  var scrollController = ScrollController();
  var homeKey = GlobalKey();
  var boxesKey = GlobalKey();
}

class DirecaoDoSwipe extends GetxController {
  int imagemClicada = 0;
  bool direitaParaEsquerda = false;
  bool esquerdaParaDireita = false;

  void swipe(DragEndDetails details, int tamanhoDaLista) {
    if (details.primaryVelocity! < 0) {
      esquerdaParaDireita = false;
      direitaParaEsquerda = true;
      update();
    } else {
      direitaParaEsquerda = false;
      esquerdaParaDireita = true;
      update();
    }
    if (direitaParaEsquerda) {
      imagemClicada++;
      update();
    }
    if (direitaParaEsquerda && imagemClicada == tamanhoDaLista) {
      imagemClicada = 0;
      update();
    }
    if (esquerdaParaDireita) {
      imagemClicada--;
      update();
    }
    if (esquerdaParaDireita && imagemClicada == -1) {
      imagemClicada = tamanhoDaLista - 1;
      update();
    }
  }
}

// const double motog4 = 389;
const double motog4 = 700;
