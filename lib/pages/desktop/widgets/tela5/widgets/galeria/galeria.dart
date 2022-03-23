import 'package:flutter/material.dart';
import '../italo/italo_view.dart';
import '../lejaum/lejaum_view.dart';

class GaleriaWB extends StatelessWidget {
  const GaleriaWB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Italo(),
        const SizedBox(height: 10),
        Lejaum(),
      ],
    );
  }
}
