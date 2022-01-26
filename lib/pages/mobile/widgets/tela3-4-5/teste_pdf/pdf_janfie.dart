import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfJanfie extends StatefulWidget {
  const PdfJanfie({Key? key}) : super(key: key);

  @override
  _PdfJanfieState createState() => _PdfJanfieState();
}

class _PdfJanfieState extends State<PdfJanfie> {
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
          'Janfie - Id. Visual e Naming',
        ),
      ),
      body: SfPdfViewer.network(
        'https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/pdf/janfie-apresentacao.pdf',
        controller: _pdfViewerController,
        onDocumentLoaded: (PdfDocumentLoadedDetails details) {
          print(details.document.pages.count);
        },
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















// import 'package:flutter/material.dart';
// import 'package:native_pdf_view/native_pdf_view.dart';

// class PdfJanfie extends StatefulWidget {
//   const PdfJanfie({Key? key}) : super(key: key);

//   @override
//   _PdfJanfieState createState() => _PdfJanfieState();
// }

// class _PdfJanfieState extends State<PdfJanfie> {
//   static final int _initialPage = 2;
//   int _actualPageNumber = _initialPage, _allPagesCount = 0;
//   bool isSampleDoc = true;
//   late PdfController _pdfController;

//   @override
//   void initState() {
//     _pdfController = PdfController(
//       document: PdfDocument.openAsset('assets/pdf/janfie-apresentacao.pdf'),
//       initialPage: _initialPage,
//     );
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pdfController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PdfView example'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.navigate_before),
//             onPressed: () {
//               _pdfController.previousPage(
//                 curve: Curves.ease,
//                 duration: Duration(milliseconds: 100),
//               );
//             },
//           ),
//           Container(
//             alignment: Alignment.center,
//             child: Text(
//               '$_actualPageNumber/$_allPagesCount',
//               style: TextStyle(fontSize: 22),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.navigate_next),
//             onPressed: () {
//               _pdfController.nextPage(
//                 curve: Curves.ease,
//                 duration: Duration(milliseconds: 100),
//               );
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.refresh),
//             onPressed: () {
//               if (isSampleDoc) {
//                 _pdfController.loadDocument(PdfDocument.openAsset(
//                     'assets/pdf/janfie-apresentacao.pdf'));
//               } else {
//                 _pdfController.loadDocument(PdfDocument.openAsset(
//                     'assets/pdf/janfie-apresentacao.pdf'));
//               }
//               isSampleDoc = !isSampleDoc;
//             },
//           )
//         ],
//       ),
//       body: PdfView(
//         documentLoader: Center(child: CircularProgressIndicator()),
//         pageLoader: Center(child: CircularProgressIndicator()),
//         controller: _pdfController,
//         onDocumentLoaded: (document) {
//           setState(() {
//             _allPagesCount = document.pagesCount;
//           });
//         },
//         onPageChanged: (page) {
//           setState(() {
//             _actualPageNumber = page;
//           });
//         },
//       ),
//     );
//   }
// }
