import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

import '../view/galeria.dart';

class PortifolioWB extends StatefulWidget {
  const PortifolioWB({Key? key}) : super(key: key);

  @override
  _PortifolioWBState createState() => _PortifolioWBState();
}

class _PortifolioWBState extends State<PortifolioWB> {
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
              'Portfólio - Web Design',
              style: StylesMobile.tituloExtraBoldMenor,
            ),
          ),
          const SizedBox(height: 10),
          GaleriaWB(),
        ],
      ),
    );
  }
}
