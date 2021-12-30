import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/teste_pdf/pdf.dart';
import 'pages/home_page_logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Color laranjaum = Color(0xFFFF5400);
    // final Color quaseWhite = Color(0xFFF4F4F4);
    // final Color quaseBlack = Color(0xFF201F1E);

    // final Brightness modo;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/janfie-info': (context) => const PdfJanfie(),
      },
    );
  }
}
