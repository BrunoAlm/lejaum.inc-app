import 'package:flutter/material.dart';
import 'package:lejaum/services/styles.dart';
import 'botao_saiba_mais.dart';
import 'boxes.dart';

class PrimeiraParte extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final double size = 38;
  final double height = 1.28;
  final Color textoMeioCinza = Color(0xFFC4C4C4);
  PrimeiraParte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/first_page_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, top: 50.0, right: 20.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NÃO VENDEMOS SERVIÇOS,',
              style: Styles.tituloFinoLinethrough,
            ),
            Text(
              'NÓS ENTREGAMOS SOLUÇÕES!',
              style: Styles.tituloExtraBold,
            ),
            BoxMao(),
            BoxCoracao(),
            BoxSino(),
            BoxGrafico(),
            BotaoSaibaMais(),
          ],
        ),
      ),
    );
  }
}