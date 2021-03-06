import 'package:flutter/material.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/planos_list.dart';
import 'package:sizer/sizer.dart';

class PlanosCard extends StatelessWidget {
  const PlanosCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura_tela = MediaQuery.of(context).size.height;
    var controller = ScrollController(initialScrollOffset: largura * 0.77);
    return Container(
      width: largura,
      height: altura_tela <= motog4 ? 55.h : 55.h,
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: planosList.length,
        itemBuilder: (_, index) {
          return Container(
            width: largura * 0.85,
            // height: 43.h,
            child: planosList[index],
          );
        },
      ),
    );
  }
}
