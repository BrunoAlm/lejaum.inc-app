// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
// import 'package:lejaum/widgets/botao_estilizado.dart';
// // import 'package:url_launcher/url_launcher.dart';
// import 'package:sizer/sizer.dart';

// import '../janfie/janfie_content.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// String _logo_image = "assets/images/galeria/italo/logo.svg";
// String _img1 = "assets/images/galeria/italo/img1.png";
// String _img2 = "assets/images/galeria/italo/img2.png";
// String _img3 = "assets/images/galeria/italo/img3.png";

// class LogoItalo extends StatelessWidget {
//   const LogoItalo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(left: 10),
//       decoration: BoxDecoration(
//         color: Styles.azulBaitolote,
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
//       ),
//       width: context.widthTransformer(reducedBy: 20),
//       height: 198.79,
//       child: Center(
//         child: Container(
//           height: 200,
//           width: 200,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(100),
//             color: Styles.azulBaitolote,
//           ),
//           child: SvgPicture.asset(_logo_image, fit: BoxFit.cover),
//           padding: const EdgeInsets.all(8),
//         ),
//         // Padding(
//         //   padding: const EdgeInsets.only(bottom: 20),
//         //   child: IconeBotaoEstilizado(
//         //     textColor: Colors.white,
//         //     cor: Styles.laranjaum,
//         //     texto: 'Ver projeto',
//         //     altura: 28,
//         //     largura: 115.91,
//         //     tamanho_fonte: 13,
//         //     tamanho_icone: 13,
//         //     pressionado: () => Get.toNamed('/italo_pdf'),
//         //     icone: FaIcon(FontAwesomeIcons.searchPlus).icon,
//         //   ),
//         // ),
//       ),
//     );
//   }
// }

// Widget italo1() => Container(
//       child: Image.asset(
//         _img1,
//         fit: BoxFit.fill,
//       ),
//     );
// Widget italo2() => Container(
//       child: Image.asset(
//         _img2,
//         fit: BoxFit.fill,
//       ),
//     );
// Widget italo3() => Padding(
//       padding: const EdgeInsets.only(right: 10),
//       child: ClipRRect(
//         borderRadius: BorderRadius.only(
//             bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
//         child: Container(
//           child: Image.asset(
//             _img3,
//             fit: BoxFit.fill,
//           ),
//         ),
//       ),
//     );

// class Italo4 extends StatelessWidget {
//   const Italo4({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var _altura = 37.h;
//     return Container(
//       width: context.widthTransformer(reducedBy: 20),
//       height: _altura,
//       // height: 198.79,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 10),
//         child: ClipRRect(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           child: Container(
//             margin: const EdgeInsets.all(0),
//             decoration: BoxDecoration(
//               color: Color(0xff191E26),
//             ),
//             child: CliqueParaVerOProjetoCompleto(
//               cor: Styles.laranjaum,
//               rota: '/arzadi_pdf_mobile',
//             ),
//             // height: 400,
//             // width: 400,
//           ),
//         ),
//       ),
//     );
//   }
// }
