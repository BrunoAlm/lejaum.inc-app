import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'galeria/galeria.dart';
// import 'package:lejaum/pages/mobile/widgets/portfolio/galeria/galeria.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfólio',
              style: StylesMobile.tituloExtraBold,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo alguns serviços de clientes satisfeitos:',
              style: StylesMobile.subtitulo,
            ),
            const SizedBox(height: 30),
            // CarrosselPortfolio(),
            Galeria(),
          ],
        ),
      ),
    );
  }
}
