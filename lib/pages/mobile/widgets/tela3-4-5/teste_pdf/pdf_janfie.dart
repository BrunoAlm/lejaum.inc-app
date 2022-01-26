// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class PdfJanfie extends StatefulWidget {
//   const PdfJanfie({Key? key}) : super(key: key);

//   @override
//   _PdfJanfieState createState() => _PdfJanfieState();
// }

// class _PdfJanfieState extends State<PdfJanfie> {
//   late PdfViewerController _pdfViewerController;

//   @override
//   void initState() {
//     _pdfViewerController = PdfViewerController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pdfViewerController;
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           'Janfie - Id. Visual e Naming',
//         ),
//       ),
//       body: SfPdfViewer.network(
//         'https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/pdf/janfie-apresentacao.pdf',
//         controller: _pdfViewerController,
//         onDocumentLoaded: (PdfDocumentLoadedDetails details) {
//           print(details.document.pages.count);
//         },
//       ),
//       floatingActionButton: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton.extended(
//             heroTag: 'previusPage',
//             onPressed: () {
//               _pdfViewerController.previousPage();
//             },
//             elevation: 10,
//             label: Icon(
//               Icons.keyboard_arrow_up,
//               color: Colors.black,
//             ),
//           ),
//           // Expanded(child: Container()),
//           FloatingActionButton.extended(
//             heroTag: 'nextPage',
//             onPressed: () {
//               _pdfViewerController.nextPage();
//             },
//             elevation: 10,
//             label: Icon(
//               Icons.keyboard_arrow_down,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:lejaum/pages/mobile/services/styles_mobile.dart';

class PdfJanfie extends StatelessWidget {
  const PdfJanfie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Janfie - Id. Visual e Naming',
          style: Styles.textoBrancoBold,
        ),
      ),
      body: Iframe(),
    );
  }
}

class Iframe extends StatelessWidget {
  Iframe() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src =
          'https://raw.githubusercontent.com/BrunoAlm/lejaum.inc-app/master/assets/pdf/janfie-apresentacao.pdf';
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        // width: 400,
        // height: 300,
        child: HtmlElementView(viewType: 'iframe'));
  }
}
