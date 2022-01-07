
import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/planos_list.dart';

class PlanosCard extends StatelessWidget {
  const PlanosCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Container(
      width: largura,
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: planosList.length,
        itemBuilder: (_, index) => planosList[index],
      ),
    );
  }
}
