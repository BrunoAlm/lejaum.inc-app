import 'package:flutter/material.dart';

import '../widgets/galeria_content/galeria_content.dart';

class GaleriaSM extends StatelessWidget {
  const GaleriaSM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMedia1(),
        SocialMedia2(),
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
        Arzadi(),
        Janfie(),
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
        Lejaum(),
      ],
    );
  }
}
