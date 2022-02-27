import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/services/galeria_content_list.dart';

class Janfie extends StatefulWidget {
  const Janfie({Key? key}) : super(key: key);

  @override
  State<Janfie> createState() => _JanfieState();
}

class _JanfieState extends State<Janfie> {
  @override
  Widget build(BuildContext context) {
    var _largura_da_tela = MediaQuery.of(context).size.width;
    var _altura_do_slider = _largura_da_tela <= 400 ? 35.h : 39.h;
    var _largura = MediaQuery.of(context).size.width;
    // var _altura = 37.h;
    return GestureDetector(
      onTap: () => Get.toNamed('/janfie_pdf'),
      child: Container(
        height: _altura_do_slider,
        width: _largura,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // this for snapping
          itemCount: janfie_list.length,
          itemBuilder: (context, index) => janfie_list[index],
        ),
      ),
    );
  }
}
