import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/teste_pdf/pdf_azardi.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'pages/home_page_logic.dart';
import 'pages/mobile/widgets/tela3-4-5/teste_pdf/pdf_janfie.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: StylesMobile.laranjaum,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(360, name: MOBILE),
            ResponsiveBreakpoint.resize(410, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(625, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: Themes.light,
      darkTheme: Themes.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/janfie-pdf': (context) => const PdfJanfie(),
        '/azardi-pdf': (context) => const PdfAzardi(),
      },
    );
  }
}
