import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/tela8/widgets/avaliacoes/avaliacao_card.dart';

class AvaliacaoJanfie extends StatelessWidget {
  const AvaliacaoJanfie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardAvaliacao(
          audio: 'avaliacao_janfie',
          backgroundImage: 'assets/images/galeria/janfie/avatar.png',
          nomeEmpresa: 'Janfíe Boutique',
          nomePessoa: 'Letícia',
          servico: 'Naming e Identidade Visual',
        ),
        CardAvaliacao(
          audio: 'avaliacao_musta',
          backgroundImage: 'assets/images/galeria/mustagrill/avatar_red.png',
          nomeEmpresa: 'Musta Grill',
          nomePessoa: 'Rheiner',
          servico: 'Identidade Visual e Social Media',
        ),
      ],
    );
  }
}
