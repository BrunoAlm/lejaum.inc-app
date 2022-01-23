// import 'package:flutter/material.dart';
// import 'package:pdf_render/pdf_render_widgets.dart';

// class PdfArzadi extends StatelessWidget {
//   const PdfArzadi({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: const Text('Pdf_render example app'),
//       ),
//       backgroundColor: Colors.grey,
//       body: Center(
//           child: PdfDocumentLoader.openAsset(
//         'assets/pdf/azardi_shop.pdf',
//         documentBuilder: (context, pdfDocument, pageCount) => LayoutBuilder(
//             builder: (context, constraints) => ListView.builder(
//                 itemCount: pageCount,
//                 itemBuilder: (context, index) => Container(
//                     margin: EdgeInsets.all(10),
//                     padding: EdgeInsets.all(10),
//                     color: Colors.black12,
//                     child: PdfPageView(
//                       pdfDocument: pdfDocument,
//                       pageNumber: index + 1,
//                     )))),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfArzadi extends StatefulWidget {
  const PdfArzadi({Key? key}) : super(key: key);

  @override
  _PdfArzadiState createState() => _PdfArzadiState();
}

class _PdfArzadiState extends State<PdfArzadi> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  void dispose() {
    _pdfViewerController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Arzadi - Id. Visual e Naming',
        ),
      ),
      body: Container(
        child: SfPdfViewer.asset(
          'assets/pdf/azardi_shop.pdf',
          controller: _pdfViewerController,
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: 'previusPage',
            onPressed: () {
              _pdfViewerController.previousPage();
            },
            elevation: 10,
            label: Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black,
            ),
          ),
          // Expanded(child: Container()),
          FloatingActionButton.extended(
            heroTag: 'nextPage',
            onPressed: () {
              _pdfViewerController.nextPage();
            },
            elevation: 10,
            label: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
