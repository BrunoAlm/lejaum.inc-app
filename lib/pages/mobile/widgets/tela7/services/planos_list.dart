import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/abrir_whatsapp.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/responsividade.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/widgets/planos_options.dart';
import 'package:lejaum/widgets/botao_estilizado.dart';
import 'package:sizer/sizer.dart';

List<Widget> planosList = [
  Plano1(),
  Plano2(),
  Plano3(),
];
// var alturaDoCard = 38.h;
// var alturaDoUltimoCard = 41.h;

class Plano1 extends StatelessWidget {
  const Plano1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Relacionamento Basic',
            style: Styles.TitleTextPlanosCardMoney.copyWith(
              fontSize: mudarFonteTituloCard(_largura_da_tela),
            ),
          ),
          const SizedBox(height: 5),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: _largura_da_tela <= motog4 ? 46.h : 39.h,
                maxWidth: 85.w),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Styles.quaseWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 30),
                    FlagsDoPlanoAtivado(texto: 'Planejamento de Social Media'),
                    const SizedBox(height: 12),
                    FlagsDoPlanoAtivado(texto: 'até 2 Posts Semanais (8/mês)'),
                    // const SizedBox(height: 15),
                    const SizedBox(height: 12),
                    FlagsDoPlanoDesativado(
                        texto:
                            'Gestão de Anúncios\nno Facebook e no Instagram'),
                    const SizedBox(height: 12),
                    FlagsDoPlanoDesativado(
                        texto: 'Gestão de Anúncios no Google\ne Youtube'),
                    // Expanded(child: Container()),
                    // quoteDoPlano(),
                    // Expanded(child: Container()),
                    const SizedBox(height: 12),
                    CardSolicitacao(
                      // nome: 'Digital Master',
                      valor: 'Plano Básico: Social Media',
                      descricao: 'por ',
                      descricaoNegrito: 'R\$399,00',
                    ),
                    const SizedBox(height: 10),
                    BotaoEstilizado(
                      texto: 'Solicitar',
                      tamanho_fonte: _largura_da_tela <= motog4 ? 12 : 14,
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
        ],
      ),
    );
  }
}

class Plano2 extends StatelessWidget {
  const Plano2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Visibilidade Plus',
          style: Styles.TitleTextPlanosCardMoney.copyWith(
            fontSize: mudarFonteTituloCard(_largura_da_tela),
          ),
        ),
        const SizedBox(height: 5),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: _largura_da_tela <= motog4 ? 46.h : 39.h,
            maxWidth: 85.w,
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Styles.quaseWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 30),
                  FlagsDoPlanoAtivado(texto: 'Planejamento de Social Media'),
                  const SizedBox(height: 12),
                  FlagsDoPlanoAtivado(texto: 'até 3 Posts Semanais (12/mês)'),
                  // const SizedBox(height: 15),
                  const SizedBox(height: 12),
                  FlagsDoPlanoAtivado(
                      texto: 'Gestão de Anúncios\nno Facebook e no Instagram'),
                  const SizedBox(height: 12),
                  FlagsDoPlanoDesativado(
                      texto: 'Gestão de Anúncios no Google\ne Youtube'),
                  // Expanded(child: Container()),
                  // quoteDoPlano(),
                  // Expanded(child: Container()),
                  const SizedBox(height: 12),
                  CardSolicitacao(
                    // nome: 'Digital Master',
                    valor: 'Plano Médio: Social + Tráfego',
                    descricao: 'por ',
                    descricaoNegrito: 'R\$997,00',
                  ),
                  const SizedBox(height: 10),
                  BotaoEstilizado(
                    texto: 'Solicitar',
                    tamanho_fonte: _largura_da_tela <= motog4 ? 12 : 14,
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
      ],
    );
  }
}

class Plano3 extends StatelessWidget {
  const Plano3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Marketing Master',
            style: Styles.TitleTextPlanosCardMoney.copyWith(
              color: Styles.laranjaum,
              fontSize: mudarFonteTituloCard(_largura_da_tela),
            ),
          ),
          const SizedBox(height: 5),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: _largura_da_tela <= motog4 ? 48.h : 41.h,
                maxWidth: 85.w),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Styles.quaseWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 30),
                    FlagsDoPlanoAtivado(texto: 'Assessoria em Marketing'),
                    const SizedBox(height: 5),
                    QuoteDoPlano(texto: 'por um de nossos especialistas;'),
                    const SizedBox(height: 12),
                    FlagsDoPlanoAtivado(texto: 'Social Media Personalizado'),
                    // const SizedBox(height: 15),
                    const SizedBox(height: 12),
                    FlagsDoPlanoAtivado(texto: 'Gestão de Tráfego Completa'),
                    const SizedBox(height: 5),
                    QuoteDoPlano(
                        texto:
                            'Anuncios em redes sociais e de pesquisa, e-mail marketing entre outros;'),
                    const SizedBox(height: 12),

                    CardSolicitacao(
                      // nome: 'Digital Master',
                      valor: 'Plano Pro: Marketing Master',
                      descricao: 'por ',
                      descricaoNegrito: 'R\$1997,00',
                    ),
                    const SizedBox(height: 10),
                    BotaoEstilizado(
                      texto: 'Solicitar',
                      tamanho_fonte: _largura_da_tela <= motog4 ? 12 : 14,
                      pressionado: abrirWhatsApp,
                      cor: Styles.laranjaum,
                      textColor: Styles.quaseWhite,
                      altura: _largura_da_tela <= motog4 ? 28 : 29,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
