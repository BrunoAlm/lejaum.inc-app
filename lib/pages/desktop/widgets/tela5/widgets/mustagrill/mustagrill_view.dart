import 'package:lejaum/pages/desktop/services/pdf_view/pdf_teste.dart';
import 'package:lejaum/pages/mobile/services/themes.dart';
import '../../../../services/galeria_content_list.dart';

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
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, _, __) => PdfTeste(pdfClicado: 2),
              opaque: false,
            ),
          );
        },
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
