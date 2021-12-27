import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import '../../../../widgets/botao_estilizado.dart';

class PrimeiraParteMobile extends StatelessWidget {
  final String font = 'Georama';
  final Color laranjaum = Color(0xFFFF5400);
  final double size = 38;
  final double height = 1.28;
  final Color textoMeioCinza = Color(0xFFC4C4C4);

  PrimeiraParteMobile({Key? key, this.pressionou}) : super(key: key);
  final Function()? pressionou;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NÃO VENDEMOS SERVIÇOS,',
              style: StylesMobile.tituloFinoLinethrough,
            ),
            Text(
              'NÓS ENTREGAMOS SOLUÇÕES!',
              style: StylesMobile.tituloExtraBold,
            ),
            const SizedBox(height: 30),
            // BoxMao(),
            // BoxCoracao(),
            // BoxSino(),
            // BoxGrafico(),
            BotaoEstilizado(texto: "Saber Mais", pressionado: pressionou!),
          ],
        ),
      ),
    );
  }
}
