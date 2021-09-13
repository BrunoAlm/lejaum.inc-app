import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/services/styles_desktop.dart';
import 'package:lejaum/pages/mobile/widgets/primeira_parte/botao_saiba_mais.dart';

class PrimeiraParteDesktop extends StatelessWidget {
  const PrimeiraParteDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/first_page_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 145.0, top: 50.0, right: 20.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NÃO VENDEMOS SERVIÇOS,',
              style: StylesDesktop.tituloFinoLinethrough,
            ),
            Text(
              'NÓS ENTREGAMOS SOLUÇÕES!',
              style: StylesDesktop.tituloExtraBold,
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apareça no digital para a pessoa certa e no momento certo.',
                    style: StylesDesktop.subtitulo,
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Seja reconhecido pelo seus clientes e fidelize eles.',
                    style: StylesDesktop.subtitulo,
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Transformamos Leads em Vendas.',
                    style: StylesDesktop.subtitulo,
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'Nós somos a solução pra você e sua empresa!',
                    style: StylesDesktop.subtitulo,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 107),
            BotaoSaibaMais(),
          ],
        ),
      ),
    );
  }
}
