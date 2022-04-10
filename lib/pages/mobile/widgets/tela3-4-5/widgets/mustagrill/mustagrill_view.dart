import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class Mustagrill extends StatelessWidget {
  const Mustagrill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    var _altura_da_tela = MediaQuery.of(context).size.height;
    var _altura_do_slider = _altura_da_tela <= motog4 ? 35.h : 39.h;
    // var _altura = 37.h;
    return Container(
      height: _altura_do_slider,
      width: _largura,
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () => Get.toNamed('/mustagrill_pdf_mobile'),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: mustagrill_list.length,
          itemBuilder: (context, index) => mustagrill_list[index],
        ),
      ),
    );
  }
}
