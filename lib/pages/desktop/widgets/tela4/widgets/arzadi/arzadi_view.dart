import 'package:lejaum/pages/desktop/services/pdf_view/pdf_arzadi.dart';
import 'package:lejaum/pages/desktop/widgets/tela3/widgets/galeria/widgets/galeria_widgets.dart';

import '../../../../services/galeria_content_list.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Arzadi extends StatelessWidget {
  const Arzadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _altura_do_slider = 35.h;
    var _largura = MediaQuery.of(context).size.width;
    return GestureDetector(
      // onTap: () => Get.toNamed('/arzadi_pdf'),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return Stack(children: [
            borrada(),
            PdfArzadiDesktop(),
          ]);
          },
        ));
      },
      child: Container(
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
