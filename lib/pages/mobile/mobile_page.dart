import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/botao_saiba_mais.dart';
import 'package:lejaum/pages/mobile/widgets/boxes.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte.dart';

class MobilePage extends StatelessWidget {
  MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1918),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimeiraParte(),
            BotaoSaibaMais(),
            BoxSino(),
            BoxMao(),
            BoxGrafico(),
          ],
        ),
      ),
    );
  }
}
