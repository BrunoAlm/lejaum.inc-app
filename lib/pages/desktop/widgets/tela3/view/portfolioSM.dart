import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/galeria/galeria.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';

// import '../view/galeria.dart';
// import 'galeria_content/galeria_content.dart';

class PortfolioSM extends StatefulWidget {
  const PortfolioSM({Key? key}) : super(key: key);

  @override
  State<PortfolioSM> createState() => _PortfolioSMState();
}

class _PortfolioSMState extends State<PortfolioSM> {
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Container(
      height: _altura - 60,
      width: _largura,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 160, top: 30),
            child: AutoSizeText(
              'Social Media',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              minFontSize: _altura <= motog4 ? 30 : 35,
            ),
          ),
          const SizedBox(height: 20),
          GaleriaSM(),
        ],
      ),
    );
  }
}
