import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela4/widgets/custom_bagulho_que_expande.dart';

class Solucoes extends StatefulWidget {
  Solucoes({Key? key}) : super(key: key);

  @override
  State<Solucoes> createState() => _SolucoesState();
}

class _SolucoesState extends State<Solucoes> {
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
            ExpandeBonito(
              titulo: 'Gestão de Tráfego',
              subtitulo:
                  'Anúncios online em Facebook, Google e outras\nplataformas;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Social Media',
              subtitulo:
                  'Gerenciamento de redes sociais, criação de posts pra\nconteúdo e etc;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Identidade Visual',
              subtitulo:
                  'Criação e desenvolvimento de logo, padrões, e tudo o\nque compõe uma identidade visual para uma marca;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Web Design',
              subtitulo:
                  'Criação e manutenção de Site, Páginas de\nCaptura e relacionados;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Consultoria em Marketing',
              subtitulo:
                  'Avaliação e Diagnóstico da empresa em relação\nas Estratégias de Marketing;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Design Gráfico',
              subtitulo:
                  'Criação de peças gráficas tais como: cartão de visitas,\nbanners, adesivos, rótulos e impressos no geral;',
            ),
            const SizedBox(height: 5),
            ExpandeBonito(
              titulo: 'Edição de Video',
              subtitulo:
                  'Edição de videos para anúncios, de aulas, videos\ninstitucionais e outros; (não inclui a filmagem)',
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
