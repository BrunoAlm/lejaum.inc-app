import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import '../view/galeria.dart';

class PortfolioIDV extends StatefulWidget {
  const PortfolioIDV({Key? key}) : super(key: key);

  @override
  State<PortfolioIDV> createState() => _PortfolioIDVState();
}

class _PortfolioIDVState extends State<PortfolioIDV> {
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
              'Portfólio - Id. Visual',
              style: StylesMobile.tituloExtraBoldMenor,
            ),
          ),
          const SizedBox(height: 10),
          GaleriaIDV(),
        ],
      ),
    );
  }
}
