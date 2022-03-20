import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

import '../view/galeria.dart';

class PortifolioWB extends StatefulWidget {
  const PortifolioWB({Key? key}) : super(key: key);

  @override
  _PortifolioWBState createState() => _PortifolioWBState();
}

class _PortifolioWBState extends State<PortifolioWB> {
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura,
      width: _largura,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Web Design',
            maxLines: 1,
            style: Styles.tituloExtraBoldMenor,
            minFontSize: _altura <= motog4 ? 30 : 35,
          ),
          const SizedBox(height: 20),
          GaleriaWB(),
        ],
      ),
    );
  }
}
