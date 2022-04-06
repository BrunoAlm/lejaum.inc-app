import 'package:flutter/material.dart';
import '../mustagrill/mustagrill_view.dart';
import '../lejaum/lejaum_view.dart';

class GaleriaIDV2 extends StatelessWidget {
  const GaleriaIDV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Mustagrill(),
        const SizedBox(height: 10),
        Lejaum(),
      ],
    );
  }
}
