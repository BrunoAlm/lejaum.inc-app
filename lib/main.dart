// PACKAGES INTERNOS
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// PACKAGES EXTERNOS
import 'package:get/get.dart';
import 'package:lejaum/pages/desktop/widgets/bio/bio.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:seo_renderer/seo_renderer.dart';

// HOMEPAGE
import 'pages/home_page_logic.dart';

// ESTILOS
import 'pages/mobile/services/styles_mobile.dart';
import 'pages/mobile/services/themes.dart';

// PÁGINAS DE PDF MOBILE
import 'pages/mobile/widgets/tela3-4-5/pdf_view/pdf_janfie.dart';
import 'pages/mobile/widgets/tela3-4-5/pdf_view/pdf_arzadi.dart';
import 'pages/mobile/widgets/tela3-4-5/pdf_view/pdf_mustagrill.dart';
import 'pages/mobile/widgets/tela3-4-5/pdf_view/pdf_lejaum.dart';

// PÁGINAS DE PDF DESKTOP

void main() {
  // Altera statusBarColor do MOBILE
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Styles.laranjaum,
    statusBarBrightness: Brightness.dark, 
  ));

  // n sei
  WidgetsFlutterBinding.ensureInitialized(); 
  // Remove o # da url
  setPathUrlStrategy();
  // MaterialApp
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
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/janfie_pdf_mobile': (context) => const PdfJanfie(),
          '/arzadi_pdf_mobile': (context) => const PdfArzadi(),
          '/mustagrill_pdf_mobile': (context) => const PdfMustagrill(),
          '/lejaum_pdf_mobile': (context) => const PdfLejaum(),
          '/bio': (context) => const Bio(),
          // '/janfie_pdf': (context) => const PdfJanfieDesktop(),
          // '/arzadi_pdf': (context) => const PdfArzadiDesktop(),
          // '/italo_pdf': (context) => const PdfItaloDesktop(),
          // '/lejaum_pdf': (context) => const PdfLejaumDesktop(),
        },
      );
    });
  }
}
