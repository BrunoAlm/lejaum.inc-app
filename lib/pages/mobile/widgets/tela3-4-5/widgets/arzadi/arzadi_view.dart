import 'package:lejaum/pages/mobile/widgets/tela3-4-5/services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Arzadi extends StatelessWidget {
  const Arzadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_do_slider = _largura_da_tela <= 400 ? 35.h : 39.h;
    // var _largura_do_slider = _altura_do_slider / 1.764;

    // var _altura = 37.h;
    // var _altura = 247.53;
    var _largura = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Get.toNamed('/arzadi_pdf'),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: _altura_do_slider,
        width: _largura,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: arzadi_list.length,
          itemBuilder: (_, index) => arzadi_list[index],
        ),
      ),
    );
  }
}
