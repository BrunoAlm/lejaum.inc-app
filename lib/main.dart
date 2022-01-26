import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/teste_pdf/pdf_arzadi.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';
// import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';
import 'pages/home_page_logic.dart';
import 'pages/mobile/widgets/tela3-4-5/teste_pdf/pdf_janfie.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Styles.laranjaum,
    statusBarBrightness: Brightness.dark,
  ));
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        navigatorObservers: [
          routeObserver,
        ],
        
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: Themes.light,
        darkTheme: Themes.dark,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/janfie-pdf': (context) => const PdfJanfie(),
          '/azardi-pdf': (context) => const PdfArzadi(),
        },
      );
    });
  }
}
