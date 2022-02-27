import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class Lejaum extends StatelessWidget {
  const Lejaum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_do_slider = _largura_da_tela <= 400 ? 35.h : 39.h;
    // var _altura = 37.h;
    return Container(
      height: _altura_do_slider,
      width: _largura,
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () => Get.toNamed('/lejaum_pdf'),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: lejaum_list.length,
          itemBuilder: (context, index) => lejaum_list[index],
        ),
      ),
    );
  }
}
