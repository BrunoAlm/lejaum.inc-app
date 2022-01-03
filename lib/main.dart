import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'pages/home_page_logic.dart';
// import 'pages/mobile/widgets/tela3/teste_pdf/pdf.dart';

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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: Themes.light,
      darkTheme: Themes.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        // '/janfie-info': (context) => const PdfJanfie(),
      },
    );
  }
}
