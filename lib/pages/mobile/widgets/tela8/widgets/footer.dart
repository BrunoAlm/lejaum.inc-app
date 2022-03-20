import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Lejaum Marketing e Design LTDA', style: Styles.footer),
        Text('45.522.499/0001-35', style: Styles.footer),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () =>
                    acessarRedesSociais('https://www.facebook.com/lejaum'),
                child: Text(
                  'Facebook',
                  style: TextStyle(fontFamily: "Georama"),
                )),
            TextButton(
                onPressed: () => acessarRedesSociais(
                    'https://www.instagram.com/lejaum.me/?hl=pt-br'),
                child: Text(
                  'Instagram',
                  style: TextStyle(fontFamily: "Georama"),
                )),
            TextButton(
                onPressed: () =>
                    acessarRedesSociais('https://www.behance.net/lejaum'),
                child: Text(
                  'Behance',
                  style: TextStyle(fontFamily: "Georama"),
                )),
          ],
        ),
        // Text('Facebook | Instagram | Behance', style: Styles.footer),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Feito com ❤️  por lejaum', style: Styles.footer),
            // SvgPicture.asset('/svgs/coracao.svg'),
            // Text(' por lejaum', style: Styles.footer),
          ],
        )
      ],
    );
  }
}

Future<Function()?> acessarRedesSociais(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    Get.showSnackbar(GetSnackBar(
      message: 'Sem Internet?',
    ));
  }
}
