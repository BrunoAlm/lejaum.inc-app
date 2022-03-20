import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/social_media_1/social_media_1_view.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/social_media_2/social_media_2_view.dart';

class GaleriaSM extends StatelessWidget {
  const GaleriaSM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMedia1(),
        SocialMedia2(),
      ],
    );
  }
}

// class GaleriaIDV extends StatelessWidget {
//   const GaleriaIDV({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Arzadi(),
//         Janfie(),
//       ],
//     );
//   }
// }

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
