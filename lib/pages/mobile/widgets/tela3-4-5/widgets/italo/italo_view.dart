import 'package:lejaum/pages/mobile/widgets/tela3-4-5/services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Italo extends StatelessWidget {
  const Italo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _largura = MediaQuery.of(context).size.width;
    var _altura = 37.h;
    return GestureDetector(
      onTap: () => Get.toNamed('/janfie-pdf'),
      child: Container(
        height: _altura,
        width: _largura,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: italo_list.length,
          itemBuilder: (context, index) => italo_list[index],
        ),
      ),
    );
  }
}
