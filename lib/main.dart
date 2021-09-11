import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color laranjaum = Color(0xFFFF5400);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: laranjaum,
          primaryVariant: laranjaum,
          secondary: laranjaum,
          secondaryVariant: laranjaum,
          surface: Colors.white,
          background: laranjaum,
          error: laranjaum,
          onPrimary: laranjaum,
          onSecondary: laranjaum,
          onSurface: laranjaum,
          onBackground: laranjaum,
          onError: Colors.red,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
