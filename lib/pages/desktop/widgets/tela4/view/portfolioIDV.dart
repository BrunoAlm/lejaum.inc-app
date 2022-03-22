import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import '../widgets/galeria/galeria.dart';

class PortfolioIDV extends StatefulWidget {
  const PortfolioIDV({Key? key}) : super(key: key);

  @override
  State<PortfolioIDV> createState() => _PortfolioIDVState();
}

class _PortfolioIDVState extends State<PortfolioIDV> {
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura - 60,
      width: _largura,
      // margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: AutoSizeText(
              'Identidade Visual',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              minFontSize: Get.size.height <= motog4 ? 30 : 35,
            ),
          ),
          const SizedBox(height: 20),
          GaleriaIDV(),
        ],
      ),
    );
  }
}
