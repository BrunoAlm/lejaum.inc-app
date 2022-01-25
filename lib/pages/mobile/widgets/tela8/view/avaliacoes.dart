import 'package:flutter/material.dart';
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
  <audio style="height: 50px;" src="https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/audio/avaliacao1.mp3"}>
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
            Expanded(child: SizedBox()),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HtmlWidget(
                    _html,
                    key: Key(_html),
                    baseUrl: Uri.parse('avaliacao1.mp3'),
                  ),
                  Row()
                ],
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
                  Text('Informações'),
                  Text('Cnpj'),
                  Text('Networks'),
                  Text('Feito com  ❤️  por lejaum + bruno'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
