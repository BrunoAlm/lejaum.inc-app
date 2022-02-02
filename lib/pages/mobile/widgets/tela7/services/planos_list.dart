import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';

List<String> planosCard1 = [
  "Planejamento de Social Media",
  "até 4 Posts Semanais(16/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];

List<String> planosCard2 = [
  "Planejamento de Social Media",
  "até 3 Posts Semanais(12/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];
List<String> planosCard3 = [
  "Planejamento de Social Media",
  "até 2 Posts Semanais(8/mês)",
  "Gestão de Anúncios no Facebook e Instagram",
  "Gestão de Anúncios no Google e Youtube",
];

List<Widget> planosList = [Plano1(), Plano2(), Plano3()];

class Plano1 extends StatelessWidget {
  const Plano1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Styles.quaseWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
            flagsDoPlanoAtivado('até 4 Posts Semanais\n(16/mês)'),
            flagsDoPlanoAtivado('Gestão de Tráfego\nCompleta'),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Styles.cinzou, width: 1),
                ),
              ),
              child: Container(
                width: 250,
                child: Text(
                  'Anuncios em redes sociais e de pesquisa, e-mail marketing entre outros;',
                  softWrap: true,
                  style: TextStyle(
                      color: Styles.cinzou,
                      fontSize: 16,
                      fontFamily: 'Georama'),
                ),
              ),
            ),
            cardSolicitacao(
              nome: 'Digital Master',
              valor: 'Plano Pro - R\$1.997,00',
              descricao: 'Social Media + Tráfego Pago',
            ),
          ],
        ),
      ),
    );
  }
}

class Plano2 extends StatelessWidget {
  const Plano2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Styles.quaseWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
            flagsDoPlanoAtivado('até 3 Posts Semanais\n(12/mês)'),
            flagsDoPlanoAtivado('Gestão de Anúncions\nno Facebook e Instagram'),
            flagsDoPlanoDesativado('Gestão de Anúncios no\nGoogle e Youtube'),
            cardSolicitacao(
              nome: 'Visibilidade Plus',
              valor: 'Plano Médio - R\$997,00',
              descricao: 'Social Media + Tráfego Pago',
            ),
          ],
        ),
      ),
    );
  }
}

class Plano3 extends StatelessWidget {
  const Plano3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Styles.quaseWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            flagsDoPlanoAtivado('Planejamento de Social\nMedia'),
            flagsDoPlanoAtivado('até 2 Posts Semanais\n(8/mês)'),
            flagsDoPlanoDesativado(
                'Gestão de Anúncions\nno Facebook e Instagram'),
            flagsDoPlanoDesativado('Gestão de Anúncios no\nGoogle e Youtube'),
            cardSolicitacao(
              nome: 'Relacionamento Basic',
              valor: 'Plano Básico - R\$399,00',
              descricao: 'Social Media',
            ),
          ],
        ),
      ),
    );
  }
}

Widget flagsDoPlanoAtivado(String texto) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 4),
          child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Styles.laranjaum,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(FontAwesomeIcons.check,
                  size: 6, color: Styles.quaseWhite)),
        ),
        // const SizedBox(width: 4),
        Text(
          texto,
          softWrap: true,
          style: Styles.planosTextFlagAtivado,
        ),
      ],
    );
Widget flagsDoPlanoDesativado(String texto) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 4),
          child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Styles.cinzou,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(FontAwesomeIcons.times, size: 6)),
        ),
        // const SizedBox(width: 4),
        Text(
          texto,
          softWrap: true,
          style: Styles.planosTextFlagDesativado,
        ),
      ],
    );

Widget cardSolicitacao({String? nome, String? valor, String? descricao}) =>
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/planos_money.png'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2), BlendMode.lighten),
        ),
      ),
      height: 150,
      width: 290,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          // borderOnForeground: false,
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    nome!,
                    style: Styles.TitleTextPlanosCardMoney,
                    maxFontSize: 20,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    valor!,
                    style: Styles.SubtitleTextPlanosCardMoney,
                  ),
                  Text(
                    descricao!,
                    style: Styles.SubtitleTextPlanosCardMoney,
                  ),
                  const SizedBox(height: 10),
                  BotaoEstilizado(
                    texto: 'Solicitar',
                    pressionado: abrirWhatsApp,
                    cor: Styles.laranjaum,
                    textColor: Styles.quaseWhite,
                    altura: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
