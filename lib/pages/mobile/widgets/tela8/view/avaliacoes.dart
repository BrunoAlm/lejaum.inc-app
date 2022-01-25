import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

import '../../../services/styles_mobile.dart';

class Avaliacoes extends StatefulWidget {
  const Avaliacoes({Key? key}) : super(key: key);

  @override
  State<Avaliacoes> createState() => _AvaliacoesState();
}

class _AvaliacoesState extends State<Avaliacoes> {
  final _html = '''
<figure>
  <audio class="audio" src="https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/audio/avaliacao1.mp3">
    Sorry, <code>AUDIO</code> tag is not supported.
  </audio>
</figure>
''';

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura,
      child: Padding(
        padding: const EdgeInsets.only(top: 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Avaliações',
                style: Styles.tituloExtraBoldMenor,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Veja algumas avaliações de nossos clientes:',
                style: Styles.subtitulo,
              ),
            ),
            // Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Card(
                color: Styles.quaseCinza,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HtmlWidget(
                        _html,
                        key: Key(_html),
                        baseUrl: Uri.parse('avaliacao1.mp3'),
                        customStylesBuilder: (element) {
                          // if (element.classes.contains('audio')) {
                          //   return {
                          //     'width': '300px',
                          //     'height': '30px',
                          //     'font-size': '3px',
                          //   };
                          // }

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: Image.asset(
                                    'assets/images/galeria/janfie/avatar.png')
                                .image,
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
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              height: 100,
              width: Get.width,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(20, 20),
                  topRight: Radius.elliptical(20, 20),
                ),
                color: Styles.quaseBlack,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Informações', style: Styles.footer),
                  Text('Cnpj', style: Styles.footer),
                  Text('Networks', style: Styles.footer),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Feito com ', style: Styles.footer),
                      SvgPicture.asset('svgs/coracao.svg'),
                      Text(' por lejaum + bruno', style: Styles.footer),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
