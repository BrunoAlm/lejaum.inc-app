import 'package:flutter/material.dart';
import 'package:lejaum/pages/desktop/services/pdf_view/pdf_janfie.dart';
import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:lejaum/pages/mobile/widgets/tela3-4-5/widgets/galeria_widgets.dart';
// import 'package:lejaum/pages/mobile/services/styles_mobile.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfArzadiDesktop extends StatefulWidget {
  const PdfArzadiDesktop({Key? key}) : super(key: key);

  @override
  State<PdfArzadiDesktop> createState() => _PdfArzadiDesktopState();
}

class _PdfArzadiDesktopState extends State<PdfArzadiDesktop> {
  @override
  Widget build(BuildContext context) {
    var _altura = MediaQuery.of(context).size.height;
    var _largura = MediaQuery.of(context).size.width;
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: borrada(),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          // color: Colors.pink,
          height: _altura,
          width: _largura * 0.5,
          child: PdfDocumentLoader.openAsset(
            'assets/pdf/azardi_shop.pdf',
            documentBuilder: (context, pdfDocument, pageCount) => LayoutBuilder(
              builder: (context, constraints) => ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: pageCount,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(2),
                  padding: EdgeInsets.all(0),
                  color: Colors.black12,
                  child: PdfPageView(
                    pdfDocument: pdfDocument,
                    pageNumber: index + 1,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: _largura * 0.20,
        bottom: _altura - _altura * 0.95,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            color: Color(0xFF696969),
            child: IconButton(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  color: Styles.quaseWhite, size: 20),
            ),
          ),
        ),
      ),
      Positioned(
        right: _largura * 0.20,
        bottom: _altura - _altura * 0.95,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            color: Color(0xFF696969),
            child: IconButton(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, _, __) => PdfJanfieDesktop(),
                    opaque: false,
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward_ios_rounded,
                  color: Styles.quaseWhite, size: 20),
            ),
          ),
        ),
      ),
    ]);
  }
}
// class PdfArzadiDesktop extends StatelessWidget {
//   const PdfArzadiDesktop({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Styles.pretao,
//         title: const Text('Arzadi - Id. Visual e Naming',
//             style: Styles.textoBrancoBold),
//       ),
//       // backgroundColor: Colors.grey,
//       body: Center(
//         child: PdfDocumentLoader.openAsset(
//           'assets/pdf/azardi_shop.pdf',
//           documentBuilder: (context, pdfDocument, pageCount) => LayoutBuilder(
//             builder: (context, constraints) => ListView.builder(
//               scrollDirection: Axis.vertical,
//               itemCount: pageCount,
//               itemBuilder: (context, index) => Container(
//                 margin: EdgeInsets.all(2),
//                 padding: EdgeInsets.all(0),
//                 color: Colors.black12,
//                 child: PdfPageView(
//                   pdfDocument: pdfDocument,
//                   pageNumber: index + 1,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
