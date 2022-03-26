import 'package:lejaum/pages/desktop/services/pdf_view/pdf_janfie.dart';
import 'package:lejaum/pages/desktop/services/pdf_view/pdf_teste.dart';

import '../../../../services/galeria_content_list.dart';

import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../janfie/janfie_content.dart';

class Janfie extends StatelessWidget {
  const Janfie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura_do_slider = 35.h;
    var _largura = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
           pageBuilder: (context, _, __) => PdfTeste(pdfClicado: 1),
            opaque: false,
          ),
        );
      },
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
