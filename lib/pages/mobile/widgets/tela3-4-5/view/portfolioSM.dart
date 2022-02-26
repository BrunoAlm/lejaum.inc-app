import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/view/galeria.dart';

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
    return LayoutBuilder(builder: (_, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AutoSizeText(
              'Social Media',
              maxLines: 1,
              style: Styles.tituloExtraBoldMenor,
              maxFontSize: 40,
              minFontSize: 35,
            ),
            const SizedBox(height: 20),
            GaleriaSM(),
          ],
        ),
      );
    });
  }
}
