import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/lista_de_textos.dart';
import 'package:lejaum/pages/mobile/widgets/tela6/services/teste_solucao_card_content.dart';

class SolucoesCard extends StatelessWidget {
  const SolucoesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Container(
      // width: largura,
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: solucoes_card_list.length,
        itemBuilder: (_, index) => Container(
          width: largura,
          height: 100,
          child: ExpansionTile(
            title: Text(titulos_Expansividade[index]),
          ),
        ),
      ),
    );
  }
}
