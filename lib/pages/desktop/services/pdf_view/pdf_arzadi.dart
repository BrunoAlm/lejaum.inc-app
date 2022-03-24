import 'package:flutter/material.dart';
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
    return Container(
      color: Colors.pink,
      height: 120,
      width: 120,
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
    );
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
