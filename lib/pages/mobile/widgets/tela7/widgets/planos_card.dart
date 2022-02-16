import 'package:flutter/material.dart';
// import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela7/services/planos_list.dart';
import 'package:sizer/sizer.dart';

class PlanosCard extends StatelessWidget {
  const PlanosCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var controller = ScrollController(
      initialScrollOffset: largura * 0.77,
    );
    return Container(
      width: largura,
      height: 44.h,
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(), // this for snapping
        itemCount: planosList.length,
        itemBuilder: (_, index) {
          // return Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     color: Styles.quaseBlack,
          //     width: 80.w,
          //     height: 50.h,
          //     child: Column(
          //       children: [
          //         Text(planosTitle[index]),
          //         Card(
          //           color: Colors.white,
          //           child: Column(
          //             children: [

          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // );
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

// class MeuController extends PageController {
//   var initialPage = 1;
// }

// class PlanosCard extends StatelessWidget {
//   const PlanosCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var controller = MeuController();
//     var largura = MediaQuery.of(context).size.width;
//     return Container(
//       width: largura * 0.75,
//       height: 63.h,
//       child: PageView(
//         physics: BouncingScrollPhysics(),
//         allowImplicitScrolling: true,
//         controller: controller,
//         children: [
//           Plano1(),
//           Plano2(),
//           Plano3(),
//         ],
//       ),
//     );
//   }
// }
