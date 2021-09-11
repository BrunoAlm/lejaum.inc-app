import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/botao_saiba_mais.dart';
import 'package:lejaum/pages/mobile/widgets/boxes.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte.dart';
import 'package:lejaum/pages/services/styles.dart';

class MobilePage extends StatelessWidget {
  MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1918),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/first_page_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimeiraParte(),
              Porfolio(),
            ],
          ),
        ),
      ),
    );
  }
}
