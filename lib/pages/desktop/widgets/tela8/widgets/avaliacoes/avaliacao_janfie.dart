import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AvaliacaoJanfie extends StatelessWidget {
  const AvaliacaoJanfie({Key? key}) : super(key: key);
  final _html = '''
<figure>
  <audio preload controls class="audio" src="https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/audio/avaliacao1.mp3">
    Sorry, <code>AUDIO</code> tag is not supported.
  </audio>
</figure>
''';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Styles.quaseCinza,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HtmlWidget(
              _html,
              key: Key(_html),
              baseUrl: Uri.parse('avaliacao1.mp3'),
              customStylesBuilder: (element) {
                if (element.classes.contains('audio')) {
                  return {
                    // 'background': 'black'
                    'border-radius': '8px'
                    // 'background-color': 'rgb(241, 243, 244)',
                  };
                }

                return null;
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset(
                    'assets/images/galeria/janfie/avatar.png',
                  ).image,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Styles.avaliador,
                        children: [
                          TextSpan(
                            text: 'Letícia | ',
                            style: Styles.nome_avaliador,
                          ),
                          TextSpan(text: 'Janfie Boutique'),
                        ],
                      ),
                    ),
                    Text(
                      'Naming e Identidade Visual',
                      style: Styles.servico_avaliado,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
