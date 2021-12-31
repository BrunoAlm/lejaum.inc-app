import 'package:flutter/material.dart';

import 'widgets/galeria_content.dart';

class GaleriaSM extends StatelessWidget {
  const GaleriaSM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlorDoGrao(),
        const SizedBox(height: 20),
        Airsoft(),
        const SizedBox(height: 20),
      ],
    );
  }
}

class GaleriaIDV extends StatelessWidget {
  const GaleriaIDV({Key? key, this.teste}) : super(key: key);
  final BuildContext? teste;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Azardi(),
        const SizedBox(height: 20),
        Janfie(),
        const SizedBox(height: 20),
      ],
    );
  }
}
