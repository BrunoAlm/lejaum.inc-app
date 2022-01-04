import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela4/widgets/icon_text.dart';

class Solucoes extends StatelessWidget {
  const Solucoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 49, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soluções',
              style: StylesMobile.tituloExtraBold,
            ),
            const SizedBox(height: 10),
            Text(
              'Veja abaixo algumas das soluções que nós podemos oferecer:',
              style: StylesMobile.subtitulo,
            ),
            const SizedBox(height: 10),
            IconText(
              titulo: 'Gestão de Tráfego',
              subtitulo:
                  'Anúncios online em Facebook, Google e outras plataformas;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Social Media',
              subtitulo:
                  'Gerenciamento de redes sociais, criação de posts pra conteúdo e etc;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Identidade Visual',
              subtitulo:
                  'Criação e desenvolvimento de logo, padrões, e tudo o que compõe uma identidade visual para uma marca;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Web Design',
              subtitulo:
                  'Criação e manutenção de Site, Páginas de Captura e relacionados;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Consultoria em Marketing',
              subtitulo:
                  'Avaliação e Diagnóstico da empresa em relação as Estratégias de Marketing;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Design Gráfico',
              subtitulo:
                  'Criação de peças gráficas tais como: cartão de visitas, banners, adesivos, rótulos e impressos no geral;',
            ),
            const SizedBox(height: 5),
            IconText(
              titulo: 'Edição de Video',
              subtitulo:
                  'Edição de videos para anúncios, de aulas, videos institucionais e outros; (não inclui a filmagem)',
            ),
            const SizedBox(height: 30),
            Text(
              'Nós somos a solução certa\npara você e sua empresa!',
              style: StylesMobile.subtituloBoldao,
            ),
          ],
        ),
      ),
    );
  }
}
