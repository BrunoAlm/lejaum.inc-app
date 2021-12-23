import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/portfolio/galeria/widgets/galeria_content.dart';

class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

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
