import 'package:flutter/material.dart';

import '../widgets/galeria_content.dart';

class GaleriaSM extends StatelessWidget {
  const GaleriaSM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlorDoGrao(),
        Airsoft(),
      ],
    );
  }
}

class GaleriaIDV extends StatelessWidget {
  const GaleriaIDV({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Azardi(),
        // const SizedBox(height: 20),
        Janfie(),
        const SizedBox(height: 20),
      ],
    );
  }
}

class GaleriaWB extends StatelessWidget {
  const GaleriaWB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Italo(),
        // const SizedBox(height: 20),
        Lejaum(),
        // const SizedBox(height: 20),
      ],
    );
  }
}
