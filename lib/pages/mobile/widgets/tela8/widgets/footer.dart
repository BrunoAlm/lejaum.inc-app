import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Informações', style: Styles.footer),
        Text('Cnpj', style: Styles.footer),
        Text('Networks', style: Styles.footer),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Feito com ', style: Styles.footer),
            SvgPicture.asset('/svgs/coracao.svg'),
            Text(' por lejaum + bruno', style: Styles.footer),
          ],
        )
      ],
    );
  }
}
