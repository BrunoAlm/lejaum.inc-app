import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import '../view/galeria.dart';

class PortfolioSM extends StatefulWidget {
  const PortfolioSM({Key? key}) : super(key: key);

  @override
  State<PortfolioSM> createState() => _PortfolioSMState();
}

class _PortfolioSMState extends State<PortfolioSM> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Social Media',
              style: Styles.tituloExtraBoldMenor,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo alguns projetos de design feito por nós:',
              style: Styles.subtitulo.merge(
                TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            const SizedBox(height: 30),
            // CarrosselPortfolio(),
            GaleriaSM(),
          ],
        ),
      ),
    );
  }
}
