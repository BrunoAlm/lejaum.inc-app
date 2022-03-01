import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

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
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            'Identidade Visual',
            maxLines: 1,
            style: Styles.tituloExtraBoldMenor,
            minFontSize: Get.size.width <= motog4 ? 30 : 35,
          ),
          const SizedBox(height: 20),
          GaleriaIDV(),
        ],
      ),
    );
  }
}
