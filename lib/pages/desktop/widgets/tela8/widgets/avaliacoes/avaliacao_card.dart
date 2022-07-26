import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class CardAvaliacao extends StatefulWidget {
  final String backgroundImage;
  final String audio;
  final String nomePessoa;
  final String nomeEmpresa;
  final String servico;
  const CardAvaliacao({
    Key? key,
    required this.backgroundImage,
    required this.audio,
    required this.nomePessoa,
    required this.nomeEmpresa,
    required this.servico,
  }) : super(key: key);

  @override
  State<CardAvaliacao> createState() => _CardAvaliacaoState();
}

class _CardAvaliacaoState extends State<CardAvaliacao> {
  @override
  Widget build(BuildContext context) {
    final _html = '''
<figure>
  <audio preload controls class="audio" src="https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/audio/${widget.audio}.mp3">
    Sorry, <code>AUDIO</code> tag is not supported.
  </audio>
</figure>
''';
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
              baseUrl: Uri.parse(widget.audio),
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
                    widget.backgroundImage,
                    filterQuality: FilterQuality.medium,
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
                            text: '${widget.nomePessoa} | ',
                            style: Styles.nome_avaliador,
                          ),
                          TextSpan(text: widget.nomeEmpresa),
                        ],
                      ),
                    ),
                    Text(
                      widget.servico,
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
