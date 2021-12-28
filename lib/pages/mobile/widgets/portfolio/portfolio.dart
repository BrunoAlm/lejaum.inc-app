import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'galeria/galeria.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 49),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Portfólio',
              style: StylesMobile.tituloExtraBold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Veja abaixo alguns serviços de clientes satisfeitos:',
              style: StylesMobile.subtitulo,
            ),
          ),
          const SizedBox(height: 30),
          // CarrosselPortfolio(),
          Galeria(),
        ],
      ),
    );
  }
}
