import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import 'galeria/galeria.dart';

class PortfolioSM extends StatefulWidget {
  const PortfolioSM({Key? key}) : super(key: key);

  @override
  State<PortfolioSM> createState() => _PortfolioSMState();
}

class _PortfolioSMState extends State<PortfolioSM> {
  // @override
  // void initState() async {
  //   print('renderizou');
  //   Duration(seconds: 1);
  //   print('renderizou');

  //   await SnackBar(content: Text('teste'));
  //   super.initState();
  // }

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
              'Portfólio - Social Media',
              style: StylesMobile.tituloExtraBoldMenor,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Veja abaixo alguns projetos de design feito por nós:',
              style: StylesMobile.subtitulo,
            ),
          ),
          const SizedBox(height: 30),
          // CarrosselPortfolio(),
          GaleriaSM(),
        ],
      ),
    );
  }
}
