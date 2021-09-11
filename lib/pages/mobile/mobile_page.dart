import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/botao_saiba_mais.dart';
import 'package:lejaum/pages/mobile/widgets/cards.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte.dart';

class MobilePage extends StatelessWidget {
  final String font = 'Georama';
  final double size = 38;
  final double height = 1.28;
  final Color laranjaum = Color(0xFFFF5400);
  final Color textoMeioCinza = Color(0xFFC4C4C4);

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
            CardSino(),
            CardMao(),
            CardGrafico(),
          ],
        ),
      ),
    );
  }
}
