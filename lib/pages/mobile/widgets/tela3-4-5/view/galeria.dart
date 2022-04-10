import 'package:flutter/material.dart';
import '../widgets/arzadi/arzadi_view.dart';
import '../widgets/janfie/janfie_view.dart';
import '../widgets/lejaum/lejaum_view.dart';
import '../widgets/mustagrill/mustagrill_view.dart';
import '../widgets/social_media_1/social_media_1_view.dart';
import '../widgets/social_media_2/social_media_2_view.dart';

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

class GaleriaIDV extends StatelessWidget {
  const GaleriaIDV({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Arzadi(),
        Janfie(),
      ],
    );
  }
}

class GaleriaIDV2 extends StatelessWidget {
  const GaleriaIDV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Mustagrill(),
        Lejaum(),
      ],
    );
  }
}
