import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/widgets/tela7/services/planos_list.dart';
import 'package:sizer/sizer.dart';

class PlanosCard extends StatelessWidget {
  const PlanosCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    // var altura_tela = MediaQuery.of(context).size.height;
    // var controller = ScrollController(initialScrollOffset: largura * 0.77);
    return Container(
      width: largura,
      height: 55.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Plano3(),
          const SizedBox(width: 5),
          Plano2(),
          const SizedBox(width: 5),
          Plano1(),
        ],
      ),
      // child: ListView.builder(
      //   controller: controller,
      //   scrollDirection: Axis.horizontal,
      //   physics: const BouncingScrollPhysics(), // this for snapping
      //   itemCount: planosList.length,
      //   itemBuilder: (_, index) {
      //     return Container(
      //       width: largura * 0.85,
      //       // height: 43.h,
      //       child: planosList[index],
      //     );
      //   },
      // ),
    );
  }
}
