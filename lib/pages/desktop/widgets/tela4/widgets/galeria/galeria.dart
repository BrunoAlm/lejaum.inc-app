import 'package:flutter/material.dart';
import '../arzadi/arzadi_view.dart';
import '../janfie/janfie_view.dart';

class GaleriaIDV extends StatelessWidget {
  const GaleriaIDV({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Arzadi(),
        const SizedBox(height: 10),
        Janfie(),
      ],
    );
  }
}

// class GaleriaWB extends StatelessWidget {
//   const GaleriaWB({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Italo(),
//         Lejaum(),
//       ],
//     );
//   }
// }
