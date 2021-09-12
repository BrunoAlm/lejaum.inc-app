import 'package:flutter/material.dart';
import 'pages/web-app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color laranjaum = Color(0xFFFF5400);
    final Color quaseWhite = Color(0xFFF4F4F4);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Georama',
        colorScheme: ColorScheme(
          primary: laranjaum,
          primaryVariant: quaseWhite,
          secondary: quaseWhite,
          secondaryVariant: quaseWhite,
          surface: Colors.white,
          background: quaseWhite,
          error: laranjaum,
          onPrimary: quaseWhite,
          onSecondary: quaseWhite,
          onSurface: quaseWhite,
          onBackground: laranjaum,
          onError: Colors.red,
          brightness: Brightness.dark,
        ),
        iconTheme: IconThemeData(color: quaseWhite),
      ),
      home: const HomePage(),
    );
  }
}
